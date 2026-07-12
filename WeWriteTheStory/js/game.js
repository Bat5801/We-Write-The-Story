class StoryGame {
    constructor() {
        this.stories = [];
        this.collections = [];
        this.currentStory = null;
        this.currentNode = null;
        this.typingInterval = null;
        this.isTyping = false;
        this.completedStories = this.loadCompletedStories();

        // 检测 localStorage 是否可用
        this.localStorageAvailable = false;
        try {
            const testKey = '_test_storage_';
            localStorage.setItem(testKey, '1');
            localStorage.removeItem(testKey);
            this.localStorageAvailable = true;
        } catch (e) {
            console.warn('[Storage] localStorage 不可用:', e.message);
        }
        if (!this.localStorageAvailable) {
            console.warn('[Storage] 导入故事将无法保存！请用 HTTP 服务器打开页面（例如 VS Code Live Server）。');
        }

        this.inventory = [];
        this.currentLocation = null;
        this.gameState = {};

        this.init();
    }

    showModal(title, message, buttons) {
        const overlay = document.getElementById('modal-overlay');
        const modalTitle = document.getElementById('modal-title');
        const modalMessage = document.getElementById('modal-message');
        const modalButtons = document.getElementById('modal-buttons');

        modalTitle.textContent = title;
        modalMessage.textContent = message;
        modalButtons.innerHTML = '';

        buttons.forEach(btn => {
            const button = document.createElement('button');
            button.className = 'pixel-btn';
            button.textContent = btn.text;
            button.onclick = () => {
                overlay.classList.remove('active');
                if (btn.onclick) btn.onclick();
            };
            modalButtons.appendChild(button);
        });

        overlay.classList.add('active');
    }

    showAlert(message, title = '提示') {
        this.showModal(title, message, [
            { text: '确定', onclick: null }
        ]);
    }

    showConfirm(message, title = '确认', onConfirm, onCancel = null) {
        this.showModal(title, message, [
            { text: '确定', onclick: onConfirm },
            { text: '取消', onclick: onCancel }
        ]);
    }

    async init() {
        this.updateLoading('正在加载字体...', 10);

        await this.loadFont();
        this.updateLoading('正在加载故事...', 50);

        await this.loadDefaultStories();

        const urlParams = new URLSearchParams(window.location.search);
        if (urlParams.get('test') === 'true') {
            const testStory = localStorage.getItem('testStory');
            if (testStory) {
                try {
                    const story = JSON.parse(testStory);
                    story.id = 'test_story';
                    this.stories.push(story);
                    this.updateLoading('正在启动测试...', 90);
                    setTimeout(() => {
                        this.hideLoading();
                        this.startStory('test_story');
                    }, 300);
                    return;
                } catch (e) {
                    console.error('加载测试故事失败:', e);
                }
            }
        }

        this.updateLoading('正在初始化...', 90);

        this.renderLevelList();

        setTimeout(() => {
            this.updateLoading('加载完成！', 100);
            setTimeout(() => {
                this.hideLoading();
            }, 500);
        }, 300);

        document.addEventListener('keydown', (e) => {
            if (e.code === 'Space') {
                e.preventDefault();
                this.handleSkip();
            }
        });
    }

    updateLoading(text, progress) {
        const loadingBar = document.getElementById('loading-bar');
        const loadingText = document.getElementById('loading-text');
        if (loadingBar) loadingBar.style.width = progress + '%';
        if (loadingText) loadingText.textContent = text;
    }

    hideLoading() {
        const loadingScreen = document.getElementById('loading-screen');
        if (loadingScreen) {
            loadingScreen.classList.add('hidden');
        }
    }

    loadFont() {
        return new Promise((resolve) => {
            const font = new FontFace('PixelFont', 'url(assets/fonts/mplus_hzk_12.ttf)');
            font.load().then(() => {
                document.fonts.add(font);
                resolve();
            }).catch(() => {
                console.log('字体加载失败，使用默认字体');
                resolve();
            });
        });
    }

    loadCompletedStories() {
        try {
            const saved = localStorage.getItem('completedStories');
            return saved ? JSON.parse(saved) : [];
        } catch {
            return [];
        }
    }

    loadImportedStories() {
        if (!this.localStorageAvailable) {
            console.log('[LocalStorage] localStorage不可用，跳过加载');
            return [];
        }
        try {
            const saved = localStorage.getItem('importedStories');
            if (!saved) {
                console.log('[LocalStorage] 没有找到已保存的导入故事');
                return [];
            }
            const stories = JSON.parse(saved);
            let loadedCount = 0;
            stories.forEach(story => {
                if (!story.id) {
                    story.id = story.title.replace(/[^a-zA-Z0-9]/g, '_');
                }
                if (Array.isArray(story.nodes)) {
                    const nodesObj = {};
                    story.nodes.forEach(node => {
                        if (node.id) nodesObj[node.id] = node;
                    });
                    story.nodes = nodesObj;
                }
                if (!story.start && story.nodes && story.nodes.start) {
                    story.start = 'start';
                }
                // 如果已存在（内置故事），替换为新版本（导入的更新）
                const existingIndex = this.stories.findIndex(s => s.id === story.id);
                if (existingIndex >= 0) {
                    this.stories[existingIndex] = story;
                    console.log('[LocalStorage] 更新已有故事:', story.title);
                } else {
                    this.stories.push(story);
                    console.log('[LocalStorage] 加载导入的故事:', story.title);
                }
                loadedCount++;
            });
            console.log('[LocalStorage] 共加载', loadedCount, '个导入故事');
            return stories;
        } catch (err) {
            console.log('[LocalStorage] 加载导入故事失败:', err.message);
            return [];
        }
    }

    saveImportedStory(story) {
        if (!this.localStorageAvailable) {
            this.showAlert('您的浏览器不支持本地存储！\n请用 HTTP 服务器打开页面（如 VS Code Live Server）。', '⚠️ 无法保存');
            return false;
        }
        try {
            const saved = localStorage.getItem('importedStories');
            let importedStories = saved ? JSON.parse(saved) : [];

            // 检查是否已存在，避免重复
            const existingIndex = importedStories.findIndex(s => s.id === story.id);
            if (existingIndex >= 0) {
                importedStories[existingIndex] = story;
            } else {
                importedStories.push(story);
            }

            const jsonStr = JSON.stringify(importedStories);
            localStorage.setItem('importedStories', jsonStr);
            console.log('[LocalStorage] 保存导入故事:', story.title, '大小:', (jsonStr.length / 1024).toFixed(1) + 'KB');
            return true;
        } catch (err) {
            console.log('[LocalStorage] 保存失败:', err.message);
            this.showAlert('保存失败！可能是故事文件过大，试试找个小点的故事导入。', '⚠️ localStorage 保存失败');
            return false;
        }
    }

    clearImportedStories() {
        localStorage.removeItem('importedStories');
        this.stories = this.stories.filter(s => {
            // 保留内置故事（从 storyFiles 加载的）
            const builtInIds = new Set();
            if (window.storyFiles) {
                window.storyFiles.forEach(f => builtInIds.add(f.id));
            }
            // 保留合集中的故事
            this.collections.forEach(col => col.stories.forEach(s => builtInIds.add(s.id)));
            return builtInIds.has(s.id);
        });
        this.renderLevelList();
    }

    deleteImportedStory(storyId) {
        // 从 localStorage 中删除
        try {
            const saved = localStorage.getItem('importedStories');
            let importedStories = saved ? JSON.parse(saved) : [];
            importedStories = importedStories.filter(s => s.id !== storyId);
            localStorage.setItem('importedStories', JSON.stringify(importedStories));
        } catch (err) {
            console.log('[LocalStorage] 删除失败:', err);
        }

        // 从当前列表中删除
        this.stories = this.stories.filter(s => s.id !== storyId);

        // 重新渲染列表
        this.renderLevelList();
        this.showAlert('已删除该故事', '🗑️ 删除成功');
    }

    isImportedStory(storyId) {
        // 检查是否是导入的故事（存在于 localStorage 中）
        try {
            const saved = localStorage.getItem('importedStories');
            const importedStories = saved ? JSON.parse(saved) : [];
            return importedStories.some(s => s.id === storyId);
        } catch {
            return false;
        }
    }

    confirmDeleteStory(storyId) {
        const story = this.stories.find(s => s.id === storyId);
        if (!story) return;

        this.showConfirm(`确定要删除故事「${story.title}」吗？\n删除后可以重新导入。`, '🗑️ 删除故事', () => {
            this.deleteImportedStory(storyId);
        });
    }

    saveCompletedStory(storyId) {
        if (!this.completedStories.includes(storyId)) {
            this.completedStories.push(storyId);
            localStorage.setItem('completedStories', JSON.stringify(this.completedStories));
        }
    }

    async loadDefaultStories() {
        // 通过 XHR 加载所有 storyFiles 中列出的故事
        if (window.storyFiles) {
            const files = window.storyFiles;
            console.log('[StoryLoader] 开始加载', files.length, '个故事文件...');

            const loadPromises = files.map(fileInfo => {
                return this.tryLoadWithXHR('stories/' + fileInfo.name, fileInfo.id);
            });

            await Promise.all(loadPromises);
            console.log('[StoryLoader] 故事文件加载完成，共', this.stories.length, '个故事');
        } else {
            console.error('[StoryLoader] 未找到 storyFiles 配置');
        }

        if (window.storyCollections) {
            this.collections = window.storyCollections;
            console.log('[StoryLoader] 加载合集:', this.collections.length);
        }

        // 强行调用 DLC: 盗棺笔记系列（直接从 StoryDLC 目录加载）
        await this.loadStolenCoffinDLC();

        // 加载用户导入并保存的故事
        this.loadImportedStories();
    }

    async loadStolenCoffinDLC() {
        const dlcFiles = [
            'StoryDLC/AmC-TheStolenCoffin/TheStolenCoffin(1).story',
            'StoryDLC/AmC-TheStolenCoffin/TheStolenCoffin(2).story'
        ];

        const dlcStories = [];

        for (const filePath of dlcFiles) {
            try {
                const content = await this.loadTextWithXHR(filePath);
                const storyData = JSON.parse(content);
                const fileName = filePath.split('/').pop().replace('.story', '');

                if (this.validateStory(storyData)) {
                    storyData.id = 'stolen_coffin_' + fileName;
                    this.processStoryData(storyData, storyData.id + '.story');
                    dlcStories.push({
                        id: storyData.id,
                        title: storyData.title
                    });
                    console.log('[DLC] 成功加载盗棺笔记:', fileName);
                }
            } catch (err) {
                console.log('[DLC] 尝试XHR加载失败，尝试fetch:', filePath);
                try {
                    const response = await fetch(filePath);
                    const content = await response.text();
                    const storyData = JSON.parse(content);
                    const fileName = filePath.split('/').pop().replace('.story', '');

                    if (this.validateStory(storyData)) {
                        storyData.id = 'stolen_coffin_' + fileName;
                        this.processStoryData(storyData, storyData.id + '.story');
                        dlcStories.push({
                            id: storyData.id,
                            title: storyData.title
                        });
                        console.log('[DLC] fetch成功加载盗棺笔记:', fileName);
                    }
                } catch (err2) {
                    console.log('[DLC] fetch也失败:', filePath, err2.message);
                }
            }
        }

        if (dlcStories.length > 0) {
            const dlcCollection = {
                id: 'stolen_coffin_collection',
                title: '⚰️ 盗棺笔记系列(作者：@AmC)',
                description: '南岭三十六坳，坳坳通阴。棺债未清，补名不止。爷爷的棺材里，传来了敲击声……',
                stories: dlcStories
            };
            this.collections.push(dlcCollection);
            console.log('[DLC] 盗棺笔记合集已添加，共', dlcStories.length, '章');
        }
    }

    loadTextWithXHR(url) {
        return new Promise((resolve, reject) => {
            const xhr = new XMLHttpRequest();
            xhr.open('GET', url, true);
            xhr.overrideMimeType('application/json;charset=utf-8');
            xhr.onload = () => {
                if (xhr.status === 200 || (xhr.status === 0 && xhr.responseText)) {
                    resolve(xhr.responseText);
                } else {
                    reject(new Error(`HTTP ${xhr.status}`));
                }
            };
            xhr.onerror = () => reject(new Error('Network error'));
            xhr.send();
        });
    }

    tryLoadWithXHR(url, storyId = null) {
        return new Promise((resolve) => {
            const xhr = new XMLHttpRequest();
            const encodedUrl = encodeURI(url);
            xhr.open('GET', encodedUrl, true);
            xhr.onload = () => {
                if (xhr.status === 200) {
                    try {
                        const storyData = JSON.parse(xhr.responseText);
                        const fileName = url.split('/').pop().replace('?v=', '');
                        if (this.validateStory(storyData)) {
                            this.processStoryData(storyData, fileName, storyId);
                            console.log(`[StoryLoader] XHR成功加载: ${fileName}`);
                        }
                    } catch (err) {
                        console.log(`[StoryLoader] XHR解析失败: ${url}`, err.message);
                    }
                }
                resolve();
            };
            xhr.onerror = () => {
                console.log(`[StoryLoader] XHR网络错误: ${url}`);
                resolve();
            };
            xhr.send();
        });
    }

    processStoryData(storyData, fileName, storyId = null) {
        if (this.validateStory(storyData)) {
            const id = storyId || fileName.replace('.story', '');
            storyData.id = id;

            if (Array.isArray(storyData.nodes)) {
                const nodesObj = {};
                storyData.nodes.forEach(node => {
                    if (node.id) {
                        nodesObj[node.id] = node;
                    }
                });
                storyData.nodes = nodesObj;
            }

            if (!storyData.start && storyData.nodes && storyData.nodes.start) {
                storyData.start = 'start';
            }
            this.stories.push(storyData);
        }
    }

    loadStoryWithXHR(url) {
        return new Promise((resolve, reject) => {
            const xhr = new XMLHttpRequest();
            xhr.open('GET', url, true);
            xhr.onload = () => {
                if (xhr.status === 200) {
                    try {
                        resolve(JSON.parse(xhr.responseText));
                    } catch (err) {
                        reject(err);
                    }
                } else {
                    reject(new Error(`HTTP ${xhr.status}`));
                }
            };
            xhr.onerror = () => reject(new Error('Network error'));
            xhr.send();
        });
    }



    importStoryFile(event) {
        const file = event.target.files[0];
        if (!file) return;

        const reader = new FileReader();
        reader.onload = (e) => {
            try {
                const storyData = JSON.parse(e.target.result);
                if (this.validateStory(storyData)) {
                    if (!storyData.id) {
                        storyData.id = file.name.replace('.story', '').replace(/[^a-zA-Z0-9]/g, '_');
                    }
                    const existingStory = this.stories.find(s => s.id === storyData.id);
                    if (existingStory) {
                        const index = this.stories.indexOf(existingStory);
                        this.stories[index] = storyData;
                    } else {
                        this.stories.push(storyData);
                    }
                    // 保存到 localStorage，刷新后保留
                    this.saveImportedStory(storyData);
                    this.renderLevelList();
                    this.showAlert(`成功导入故事 "${file.name}"！\n刷新页面后故事仍会保留。`, '🎉 成功');
                } else {
                    this.showAlert('无效的故事文件格式！', '❌ 错误');
                }
            } catch {
                this.showAlert('无法解析故事文件！', '❌ 错误');
            }
        };
        reader.readAsText(file);

        event.target.value = '';
    }

    validateStory(story) {
        if (!story || !story.title || !story.nodes) return false;

        if (story.start) return true;

        if (typeof story.nodes === 'object' && story.nodes.start) return true;

        if (Array.isArray(story.nodes)) {
            return story.nodes.some(node => node.id === 'start');
        }

        return false;
    }

    renderLevelList() {
        const list = document.getElementById('level-list');

        if (this.stories.length === 0 && this.collections.length === 0) {
            list.innerHTML = `
                <div class="empty-state">
                    <p>暂无可用故事</p>
                    <p style="margin-top:10px">点击下方按钮导入.story文件</p>
                </div>
            `;
            return;
        }

        let html = '';

        if (this.collections.length > 0) {
            html += '<div class="collection-section">';
            html += '<h3 class="collection-title">📚 系列合集</h3>';
            html += '<div class="collection-list">';

            this.collections.forEach(collection => {
                const completedCount = collection.stories.filter(s =>
                    this.completedStories.includes(s.id)
                ).length;
                const totalCount = collection.stories.length;

                html += `
                    <div class="collection-item" onclick="game.startCollection('${collection.id}')">
                        <div class="collection-info">
                            <h3>${collection.title}</h3>
                            <p>${collection.description}</p>
                            <p class="collection-progress">进度: ${completedCount}/${totalCount}</p>
                        </div>
                        <div class="collection-arrow">→</div>
                    </div>
                `;
            });

            html += '</div></div>';
        }

        const collectionStoryIds = new Set();
        this.collections.forEach(col => {
            col.stories.forEach(s => collectionStoryIds.add(s.id));
        });

        const independentStories = this.stories.filter(s => !collectionStoryIds.has(s.id));

        if (independentStories.length > 0) {
            html += '<div class="story-section">';
            html += '<h3 class="story-title">📖 独立故事</h3>';
            html += '<div class="story-list">';

            independentStories.forEach(story => {
                const isCompleted = this.completedStories.includes(story.id);
                const isImported = this.isImportedStory(story.id);
                const deleteBtn = isImported ?
                    `<button class="delete-story-btn" onclick="event.stopPropagation(); game.confirmDeleteStory('${story.id}')">🗑️</button>` : '';

                html += `
                    <div class="level-item" onclick="game.startStory('${story.id}')">
                        <div class="level-info">
                            <h3>${story.title} ${isImported ? '<span class="imported-badge">导入</span>' : ''}</h3>
                            <p>${story.description || '暂无描述'}</p>
                        </div>
                        <div class="level-status ${isCompleted ? 'completed' : 'incomplete'}">
                            ${deleteBtn}
                            ${isCompleted ? '已完成' : '未完成'}
                        </div>
                    </div>
                `;
            });

            html += '</div></div>';
        }

        list.innerHTML = html;
    }

    startCollection(collectionId) {
        const collection = this.collections.find(c => c.id === collectionId);
        if (!collection) return;

        const collectionScreen = document.getElementById('collection-screen');
        const collectionTitle = document.getElementById('collection-title');
        const collectionDesc = document.getElementById('collection-desc');
        const storyList = document.getElementById('collection-story-list');

        collectionTitle.textContent = collection.title;
        collectionDesc.textContent = collection.description;

        let html = '';
        collection.stories.forEach((story, index) => {
            const isCompleted = this.completedStories.includes(story.id);

            html += `
                <div class="collection-story-item" onclick="game.startStory('${story.id}')">
                    <div class="story-number">${index + 1}</div>
                    <div class="story-info">
                        <h4>${story.title}</h4>
                        <div class="story-status">${isCompleted ? '✓ 已完成' : '○ 未开始'}</div>
                    </div>
                </div>
            `;
        });

        storyList.innerHTML = html;
        this.showScreen('collection-screen');
    }

    startStory(storyId) {
        const story = this.stories.find(s => s.id === storyId);
        if (!story) {
            this.showAlert('故事加载失败，请刷新页面重试！', '❌ 错误');
            return;
        }

        this.currentStory = story;
        this.inventory = [];
        this.gameState = {};
        this.variables = {};
        this.currentLocation = null;

        if (story.variables) {
            Object.assign(this.variables, story.variables);
        }

        if (story.features && story.features.inventory) {
            this.inventory = [];
        }

        if (story.map && story.map.startingLocation) {
            this.currentLocation = story.map.startingLocation;
        }

        const title = story.subtitle ? `${story.title} - ${story.subtitle}` : story.title;
        document.getElementById('story-title').textContent = title;

        const inventoryPanel = document.getElementById('inventory-panel');
        const mapPanel = document.getElementById('map-panel');

        const variablesPanel = document.getElementById('variables-panel');

        if (story.features && story.features.inventory) {
            inventoryPanel.classList.remove('hidden');
        } else {
            inventoryPanel.classList.add('hidden');
        }

        if (story.variables && Object.keys(story.variables).length > 0) {
            variablesPanel.classList.remove('hidden');
        } else {
            variablesPanel.classList.add('hidden');
        }

        if (story.features && story.features.map) {
            mapPanel.classList.remove('hidden');
        } else {
            mapPanel.classList.add('hidden');
        }

        this.updateInventoryDisplay();
        this.updateVariablesDisplay();
        this.updateMapDisplay();

        this.showScreen('game-screen');
        this.goToNode(story.start || 'start');
    }

    goToNode(nodeId) {
        const node = this.currentStory.nodes[nodeId];
        if (!node) {
            this.showAlert('节点不存在！', '❌ 错误');
            this.quitGame();
            return;
        }

        this.currentNode = node;
        this.stopTyping();

        if (node.location) {
            this.currentLocation = node.location;
            this.updateMapDisplay();
        }

        if (node.actions && node.actions.length > 0) {
            node.actions.forEach(action => {
                this.executeAction(action);
            });
            this.updateInventoryDisplay();
            this.updateVariablesDisplay();
        }

        if (node.isEnd) {
            this.typeText(node.text);
            setTimeout(() => {
                this.showEnding();
            }, node.text.length * 50 + 500);
            return;
        }

        if (node.qte) {
            this.typeText(node.text);
            setTimeout(() => {
                this.showQTE(node.qte);
            }, node.text.length * 50 + 300);
            return;
        }

        if (node.input) {
            this.typeText(node.text);
            setTimeout(() => {
                this.showInput(node.input);
            }, node.text.length * 50 + 300);
            return;
        }

        this.typeText(node.text);
    }

    showQTE(qteConfig) {
        const choicesContainer = document.getElementById('choices-container');
        choicesContainer.innerHTML = '';

        const qteContainer = document.createElement('div');
        qteContainer.className = 'qte-container';
        qteContainer.id = 'qte-container';

        const qteHeader = document.createElement('div');
        qteHeader.className = 'qte-header';
        qteHeader.textContent = qteConfig.title || 'QTE';
        qteContainer.appendChild(qteHeader);

        const qteText = document.createElement('div');
        qteText.className = 'qte-text';
        qteText.textContent = qteConfig.description || '';
        qteContainer.appendChild(qteText);

        const progressContainer = document.createElement('div');
        progressContainer.className = 'qte-progress-container';

        if (qteConfig.type === 'click') {
            const progressBar = document.createElement('div');
            progressBar.className = 'qte-progress-bar';
            progressBar.style.width = '0%';
            progressContainer.appendChild(progressBar);

            const progressText = document.createElement('div');
            progressText.className = 'qte-progress-text';
            progressText.textContent = `0/${qteConfig.requiredClicks}`;
            progressContainer.appendChild(progressText);

            qteContainer.appendChild(progressContainer);

            const qteButton = document.createElement('button');
            qteButton.className = 'qte-button';
            qteButton.textContent = qteConfig.buttonText || '点击！';
            qteContainer.appendChild(qteButton);

            const timerBar = document.createElement('div');
            timerBar.className = 'qte-timer-bar';
            timerBar.style.width = '100%';
            qteContainer.appendChild(timerBar);

            choicesContainer.appendChild(qteContainer);

            const timeLimit = qteConfig.timeLimit || 5000;
            const requiredClicks = qteConfig.requiredClicks || 10;
            let clickCount = 0;
            const startTime = Date.now();

            const updateTimer = () => {
                const elapsedTime = Date.now() - startTime;
                const remainingTime = Math.max(0, timeLimit - elapsedTime);
                const percentage = (remainingTime / timeLimit) * 100;
                timerBar.style.width = `${percentage}%`;

                if (remainingTime <= 0) {
                    clearInterval(timerInterval);
                    qteContainer.remove();
                    this.goToNode(qteConfig.fail);
                }
            };

            const timerInterval = setInterval(updateTimer, 50);
            updateTimer();

            qteButton.addEventListener('click', () => {
                clickCount++;
                const progressPercentage = (clickCount / requiredClicks) * 100;
                progressBar.style.width = `${progressPercentage}%`;
                progressText.textContent = `${clickCount}/${requiredClicks}`;

                if (clickCount >= requiredClicks) {
                    clearInterval(timerInterval);
                    qteContainer.remove();
                    this.goToNode(qteConfig.success);
                }
            });
        } else if (qteConfig.type === 'hold') {
            const progressBar = document.createElement('div');
            progressBar.className = 'qte-progress-bar';
            progressBar.style.width = '0%';
            progressContainer.appendChild(progressBar);

            const progressText = document.createElement('div');
            progressText.className = 'qte-progress-text';
            progressText.textContent = '按住按钮！';
            progressContainer.appendChild(progressText);

            qteContainer.appendChild(progressContainer);

            const qteButton = document.createElement('button');
            qteButton.className = 'qte-button hold-button';
            qteButton.textContent = qteConfig.buttonText || '长按！';
            qteContainer.appendChild(qteButton);

            const timerBar = document.createElement('div');
            timerBar.className = 'qte-timer-bar';
            timerBar.style.width = '100%';
            qteContainer.appendChild(timerBar);

            choicesContainer.appendChild(qteContainer);

            const holdDuration = qteConfig.holdDuration || 3000;
            const timeLimit = qteConfig.timeLimit || 5000;
            let holdStartTime = 0;
            let isHolding = false;
            let holdProgress = 0;
            const startTime = Date.now();

            const updateTimer = () => {
                const elapsedTime = Date.now() - startTime;
                const remainingTime = Math.max(0, timeLimit - elapsedTime);
                const percentage = (remainingTime / timeLimit) * 100;
                timerBar.style.width = `${percentage}%`;

                if (remainingTime <= 0) {
                    clearInterval(timerInterval);
                    qteContainer.remove();
                    this.goToNode(qteConfig.fail);
                }
            };

            const updateHoldProgress = () => {
                if (isHolding) {
                    holdProgress += 50;
                    const percentage = Math.min((holdProgress / holdDuration) * 100, 100);
                    progressBar.style.width = `${percentage}%`;

                    if (holdProgress >= holdDuration) {
                        clearInterval(timerInterval);
                        clearInterval(holdInterval);
                        qteContainer.remove();
                        this.goToNode(qteConfig.success);
                    }
                } else {
                    holdProgress = Math.max(0, holdProgress - 100);
                    const percentage = Math.max((holdProgress / holdDuration) * 100, 0);
                    progressBar.style.width = `${percentage}%`;
                }
            };

            const timerInterval = setInterval(updateTimer, 50);
            const holdInterval = setInterval(updateHoldProgress, 50);
            updateTimer();

            qteButton.addEventListener('mousedown', () => {
                isHolding = true;
                qteButton.classList.add('holding');
            });

            qteButton.addEventListener('mouseup', () => {
                isHolding = false;
                qteButton.classList.remove('holding');
            });

            qteButton.addEventListener('mouseleave', () => {
                isHolding = false;
                qteButton.classList.remove('holding');
            });

            qteButton.addEventListener('touchstart', (e) => {
                e.preventDefault();
                isHolding = true;
                qteButton.classList.add('holding');
            });

            qteButton.addEventListener('touchend', (e) => {
                e.preventDefault();
                isHolding = false;
                qteButton.classList.remove('holding');
            });
        } else if (qteConfig.type === 'sequence') {
            const sequence = qteConfig.sequence || ['A', 'B', 'X', 'Y'];
            let currentIndex = 0;

            const progressBar = document.createElement('div');
            progressBar.className = 'qte-progress-bar';
            progressBar.style.width = '0%';
            progressContainer.appendChild(progressBar);

            const progressText = document.createElement('div');
            progressText.className = 'qte-progress-text';
            progressText.textContent = `按下: ${sequence[currentIndex]}`;
            progressContainer.appendChild(progressText);

            qteContainer.appendChild(progressContainer);

            const timerBar = document.createElement('div');
            timerBar.className = 'qte-timer-bar';
            timerBar.style.width = '100%';
            qteContainer.appendChild(timerBar);

            choicesContainer.appendChild(qteContainer);

            const timeLimit = qteConfig.timeLimit || 3000;
            const startTime = Date.now();

            const updateTimer = () => {
                const elapsedTime = Date.now() - startTime;
                const remainingTime = Math.max(0, timeLimit - elapsedTime);
                const percentage = (remainingTime / timeLimit) * 100;
                timerBar.style.width = `${percentage}%`;

                if (remainingTime <= 0) {
                    clearInterval(timerInterval);
                    document.removeEventListener('keydown', handleKeyPress);
                    qteContainer.remove();
                    this.goToNode(qteConfig.fail);
                }
            };

            const timerInterval = setInterval(updateTimer, 50);
            updateTimer();

            const handleKeyPress = (e) => {
                const key = e.key.toUpperCase();
                if (key === sequence[currentIndex]) {
                    currentIndex++;
                    const progressPercentage = (currentIndex / sequence.length) * 100;
                    progressBar.style.width = `${progressPercentage}%`;

                    if (currentIndex >= sequence.length) {
                        clearInterval(timerInterval);
                        document.removeEventListener('keydown', handleKeyPress);
                        qteContainer.remove();
                        this.goToNode(qteConfig.success);
                    } else {
                        progressText.textContent = `按下: ${sequence[currentIndex]}`;
                    }
                }
            };

            document.addEventListener('keydown', handleKeyPress);
        }
    }

    showInput(inputConfig) {
        const choicesContainer = document.getElementById('choices-container');
        choicesContainer.innerHTML = '';

        const inputContainer = document.createElement('div');
        inputContainer.className = 'input-container';
        inputContainer.id = 'input-container';

        const inputLabel = document.createElement('div');
        inputLabel.className = 'input-label';
        inputLabel.textContent = inputConfig.label || '输入:';
        inputContainer.appendChild(inputLabel);

        const input = document.createElement('input');
        input.type = inputConfig.type || 'text';
        input.className = 'story-input';
        input.placeholder = inputConfig.placeholder || '';
        input.maxLength = inputConfig.maxLength || 50;
        if (inputConfig.type === 'password') {
            input.type = 'password';
        }
        inputContainer.appendChild(input);

        const confirmBtn = document.createElement('button');
        confirmBtn.className = 'pixel-btn qte-confirm-btn';
        confirmBtn.textContent = '确认';
        inputContainer.appendChild(confirmBtn);

        choicesContainer.appendChild(inputContainer);

        const handleSubmit = () => {
            const value = input.value.trim();
            inputContainer.remove();

            if (inputConfig.correctAnswer) {
                const correct = Array.isArray(inputConfig.correctAnswer)
                    ? inputConfig.correctAnswer.includes(value)
                    : value === inputConfig.correctAnswer;

                if (correct) {
                    if (inputConfig.successVar) {
                        this.variables[inputConfig.successVar] = true;
                        this.updateVariablesDisplay();
                    }
                    this.goToNode(inputConfig.success);
                } else {
                    if (inputConfig.failVar) {
                        this.variables[inputConfig.failVar] = true;
                        this.updateVariablesDisplay();
                    }
                    this.goToNode(inputConfig.fail);
                }
            } else {
                if (inputConfig.storeVar) {
                    this.variables[inputConfig.storeVar] = value;
                    this.updateVariablesDisplay();
                }
                this.goToNode(inputConfig.next);
            }
        };

        confirmBtn.addEventListener('click', handleSubmit);

        input.addEventListener('keypress', (e) => {
            if (e.key === 'Enter') {
                handleSubmit();
            }
        });

        setTimeout(() => {
            input.focus();
        }, 100);
    }

    addToInventory(itemId) {
        if (!itemId) return;

        const existingItem = this.inventory.find(i => i.id === itemId);
        if (!existingItem) {
            const itemData = this.currentStory.items?.find(i => i.id === itemId);
            if (itemData) {
                this.inventory.push({ ...itemData });
            } else {
                this.inventory.push({ id: itemId, name: itemId, icon: '📦' });
            }
            this.variables['has_' + itemId] = true;
        }
        this.updateInventoryDisplay();
    }

    removeFromInventory(itemId) {
        if (!itemId) return;
        const wasPresent = this.inventory.some(i => i.id === itemId);
        this.inventory = this.inventory.filter(i => i.id !== itemId);
        if (wasPresent) {
            this.variables['has_' + itemId] = false;
        }
        this.updateInventoryDisplay();
    }

    hasItem(itemId) {
        return this.inventory.some(i => i.id === itemId);
    }

    executeAction(action) {
        if (!action || !action.type) return;

        switch (action.type) {
            case 'addItem':
                this.addToInventory(action.itemId);
                break;
            case 'removeItem':
                this.removeFromInventory(action.itemId);
                break;
            case 'setFlag':
                if (action.flag) {
                    Object.assign(this.gameState, action.flag);
                }
                break;
            case 'setVar':
                if (action.name !== undefined) {
                    this.variables[action.name] = action.value;
                }
                break;
            case 'addVar':
                if (action.name !== undefined) {
                    this.variables[action.name] = (this.variables[action.name] || 0) + (action.value || 0);
                }
                break;
            case 'subVar':
                if (action.name !== undefined) {
                    this.variables[action.name] = (this.variables[action.name] || 0) - (action.value || 0);
                }
                break;
            case 'toggleVar':
                if (action.name !== undefined) {
                    this.variables[action.name] = !this.variables[action.name];
                }
                break;
        }
    }

    replaceVariables(text) {
        if (!text) return text;
        return text.replace(/\{(\w+)\}/g, (match, varName) => {
            if (this.variables.hasOwnProperty(varName)) {
                return String(this.variables[varName]);
            }
            return match;
        });
    }

    updateInventoryDisplay() {
        const inventoryList = document.getElementById('inventory-items');
        if (!inventoryList) return;

        inventoryList.innerHTML = '';

        if (this.inventory.length === 0) {
            inventoryList.innerHTML = '<div class="inventory-empty">背包为空</div>';
            return;
        }

        this.inventory.forEach(item => {
            const itemElement = document.createElement('div');
            itemElement.className = 'inventory-item';

            let icon = item.icon || '📦';
            if (!icon) {
                if (item.name.includes('钥匙')) icon = '🔑';
                else if (item.name.includes('手机')) icon = '📱';
                else if (item.name.includes('手电筒')) icon = '🔦';
                else if (item.name.includes('书') || item.name.includes('日记') || item.name.includes('卷轴')) icon = '📖';
                else if (item.name.includes('地图')) icon = '🗺️';
                else if (item.name.includes('药') || item.name.includes('纱布') || item.name.includes('矿泉水')) icon = '🧪';
                else if (item.name.includes('锤子') || item.name.includes('匕首')) icon = '🔨';
                else if (item.name.includes('徽章')) icon = '🛡️';
                else if (item.name.includes('戒指')) icon = '💍';
                else if (item.name.includes('神器') || item.name.includes('宝石')) icon = '💎';
            }

            itemElement.innerHTML = `<span class="inventory-icon">${icon}</span> <span class="inventory-name">${item.name || item.id}</span>`;
            inventoryList.appendChild(itemElement);
        });
    }

    updateVariablesDisplay() {
        const variablesList = document.getElementById('variables-list');
        if (!variablesList) return;

        variablesList.innerHTML = '';

        if (!this.variables || Object.keys(this.variables).length === 0) {
            variablesList.innerHTML = '<div class="variables-empty">无变量</div>';
            return;
        }

        Object.keys(this.variables).forEach(key => {
            if (key.startsWith('has_')) return;

            const value = this.variables[key];
            const varElement = document.createElement('div');
            varElement.className = 'variable-item';

            let displayValue = value;
            let valueColor = '#4ade80';
            if (typeof value === 'boolean') {
                displayValue = value ? '✅ 是' : '❌ 否';
                valueColor = value ? '#4ade80' : '#f87171';
            } else if (typeof value === 'number') {
                if (key.includes('health') || key.includes('hp') || key.includes('life')) {
                    valueColor = '#ef4444';
                } else if (key.includes('mana') || key.includes('mp') || key.includes('magic')) {
                    valueColor = '#3b82f6';
                } else if (key.includes('gold') || key.includes('money') || key.includes('coin')) {
                    valueColor = '#fbbf24';
                }
            }

            varElement.innerHTML = `<span class="variable-name">${key}:</span> <span class="variable-value" style="color: ${valueColor}">${displayValue}</span>`;
            variablesList.appendChild(varElement);
        });
    }

    updateMapDisplay() {
        const mapContainer = document.getElementById('game-map');
        if (!mapContainer || !this.currentStory.features?.map) {
            mapContainer.innerHTML = '';
            return;
        }

        const map = this.currentStory.map;
        if (!map || !map.locations) {
            mapContainer.innerHTML = '';
            return;
        }

        let html = '';
        if (map.title) {
            html += `<div class="map-title">�️ ${map.title}</div>`;
        }

        html += '<div class="map-content">';

        const locations = Array.isArray(map.locations) ? map.locations : [];
        const currentLoc = locations.find(l => l.id === this.currentLocation);

        if (currentLoc) {
            html += `<div class="current-location">📍 ${currentLoc.name}</div>`;
            if (currentLoc.description) {
                html += '<div class="map-description">' + currentLoc.description + '</div>';
            }
        }

        html += '<div class="map-locations">';
        locations.forEach(loc => {
            const isCurrent = this.currentLocation === loc.id;
            html += `<div class="map-location-item ${isCurrent ? 'current' : ''}">${loc.name}</div>`;
        });
        html += '</div></div>';

        mapContainer.innerHTML = html;
    }

    typeText(text) {
        const processedText = this.replaceVariables(text);
        const storyText = document.getElementById('story-text');
        const choicesContainer = document.getElementById('choices-container');

        storyText.innerHTML = '';
        choicesContainer.innerHTML = '';
        this.isTyping = true;

        let index = 0;
        this.typingInterval = setInterval(() => {
            if (index < processedText.length) {
                storyText.innerHTML += processedText.charAt(index);
                storyText.scrollTop = storyText.scrollHeight;
                index++;
            } else {
                this.stopTyping();
                this.showChoices();
            }
        }, 50);
    }

    stopTyping() {
        if (this.typingInterval) {
            clearInterval(this.typingInterval);
            this.typingInterval = null;
        }
        this.isTyping = false;
    }

    handleSkip() {
        if (this.isTyping) {
            this.stopTyping();
            document.getElementById('story-text').textContent = this.currentNode.text;
            this.showChoices();
        }
    }

    showChoices() {
        const choicesContainer = document.getElementById('choices-container');
        choicesContainer.innerHTML = '';

        const node = this.currentNode;

        if (!node.choices || node.choices.length === 0) {
            return;
        }

        node.choices.forEach((choice, index) => {
            if (choice.condition && !this.checkCondition(choice.condition)) {
                return;
            }

            const btn = document.createElement('button');
            btn.className = 'choice-btn';
            btn.innerHTML = `[${index + 1}] ${this.replaceVariables(choice.text)}`;
            btn.onclick = () => {
                if (choice.actions && choice.actions.length > 0) {
                    choice.actions.forEach(action => {
                        this.executeAction(action);
                    });
                }
                this.goToNode(choice.next);
            };
            choicesContainer.appendChild(btn);
        });
    }

    checkCondition(condition) {
        if (!condition) return true;

        if (condition.and) {
            return condition.and.every(c => this.checkCondition(c));
        }

        if (condition.or) {
            return condition.or.some(c => this.checkCondition(c));
        }

        if (condition.hasItem) {
            if (!this.hasItem(condition.hasItem) && !this.variables['has_' + condition.hasItem]) {
                return false;
            }
        }

        if (condition.notHasItem) {
            if (this.hasItem(condition.notHasItem) || this.variables['has_' + condition.notHasItem]) {
                return false;
            }
        }

        if (condition.flag && !this.gameState[condition.flag]) {
            return false;
        }

        if (condition.var !== undefined) {
            const varValue = this.variables[condition.var];

            if (condition.eq !== undefined && varValue !== condition.eq) {
                return false;
            }
            if (condition.ne !== undefined && varValue === condition.ne) {
                return false;
            }
            if (condition.gt !== undefined && varValue <= condition.gt) {
                return false;
            }
            if (condition.lt !== undefined && varValue >= condition.lt) {
                return false;
            }
            if (condition.gte !== undefined && varValue < condition.gte) {
                return false;
            }
            if (condition.lte !== undefined && varValue > condition.lte) {
                return false;
            }
            if (condition.not !== undefined && !!varValue !== !condition.not) {
                return false;
            }
        }

        return true;
    }

    showEnding() {
        const endType = this.currentNode.endType || 'normal';

        if (endType !== 'death') {
            this.saveCompletedStory(this.currentStory.id);
            this.renderLevelList();
        }

        switch (endType) {
            case 'death':
                this.showDeathScreen();
                break;
            case 'bad':
                this.showBadEnding();
                break;
            case 'true':
                this.showTrueEnding();
                break;
            case 'victory':
            case 'good':
            default:
                this.showGoodEnding();
                break;
        }
    }

    showGoodEnding() {
        const message = document.getElementById('ending-message');
        message.textContent = this.currentNode.endMessage || '🎉 恭喜你完成了这个故事！';
        this.showScreen('victory-screen');
    }

    showBadEnding() {
        const message = document.getElementById('ending-message');
        message.textContent = '故事结束了，但这并不是最好的结局...';
        this.showScreen('victory-screen');
    }

    showTrueEnding() {
        const message = document.getElementById('ending-message');
        message.textContent = '✨ 你找到了真正的结局！这是最完美的故事！';
        this.showScreen('victory-screen');
    }

    showDeathScreen() {
        const message = document.getElementById('death-message');
        message.textContent = this.currentNode.endMessage || this.currentNode.text;
        this.showScreen('death-screen');
    }

    showScreen(screenId) {
        document.querySelectorAll('.screen').forEach(screen => {
            screen.classList.remove('active');
        });
        document.getElementById(screenId).classList.add('active');
    }

    quitGame() {
        this.stopTyping();
        this.currentStory = null;
        this.currentNode = null;
        this.inventory = [];
        this.gameState = {};
        this.showScreen('level-select');
    }
}

let game;

function initGame() {
    game = new StoryGame();
}

function showMainMenu() {
    game.showScreen('main-menu');
}

function showLevelSelect() {
    game.renderLevelList();
    game.showScreen('level-select');
}

function showAbout() {
    game.showScreen('about-screen');
}

function toggleFullscreen() {
    if (!document.fullscreenElement) {
        document.documentElement.requestFullscreen().catch(err => {
            console.log('全屏模式不可用');
        });
    } else {
        document.exitFullscreen();
    }
}

function exitGame() {
    game.showConfirm('确定要退出游戏吗？', '🚪 退出', () => {
        window.close();
    });
}

function restartStory() {
    if (game.currentStory) {
        game.startStory(game.currentStory.id);
    } else {
        showLevelSelect();
    }
}

function importStoryFile() {
    const input = document.getElementById('story-file-input');
    if (input && input.files && input.files[0]) {
        game.importStoryFile({ target: input });
    }
}

function backToLevelSelect() {
    game.showScreen('level-select');
}

document.addEventListener('DOMContentLoaded', initGame);