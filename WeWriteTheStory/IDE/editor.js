class StoryEditor {
    constructor() {
        this.story = {
            title: '',
            subtitle: '',
            description: '',
            version: '1.0',
            features: { inventory: false, map: false },
            items: [],
            map: { title: '', locations: [], startingLocation: '' },
            start: 'start',
            nodes: {}
        };

        this.currentNodeId = null;
        this.workspace = null;
        this.sidebarCollapsed = false;
        this.previewCollapsed = false;
        this.initBlockly();
        this.renderNodeList();
    }

    initBlockly() {
        const blocklyDiv = document.getElementById('blockly-workspace');

        Blockly.Blocks['node_hat'] = {
            init: function () {
                this.setHelpUrl('');
                this.setColour(230);
                this.appendDummyInput()
                    .appendField('📌 节点:')
                    .appendField(new Blockly.FieldTextInput('start'), 'NODE_ID');
                this.appendStatementInput('CONTENT')
                    .setCheck('node_content');
                this.setTooltip('定义一个故事节点');
            }
        };

        Blockly.Blocks['node_text'] = {
            init: function () {
                this.appendDummyInput()
                    .appendField('📝 文本');
                this.appendValueInput('TEXT')
                    .setCheck('String')
                    .appendField(new Blockly.FieldTextInput(''), 'TEXT_INPUT');
                this.setPreviousStatement(true, 'node_content');
                this.setNextStatement(true, 'node_content');
                this.setColour(70);
                this.setTooltip('设置节点显示的文本');
            }
        };

        Blockly.Blocks['node_location'] = {
            init: function () {
                this.appendDummyInput()
                    .appendField('📍 位置:');
                this.appendValueInput('LOCATION')
                    .setCheck('String')
                    .appendField(new Blockly.FieldTextInput(''), 'LOCATION_INPUT');
                this.setPreviousStatement(true, 'node_content');
                this.setNextStatement(true, 'node_content');
                this.setColour(70);
                this.setTooltip('设置当前位置');
            }
        };

        Blockly.Blocks['node_is_end'] = {
            init: function () {
                this.appendDummyInput()
                    .appendField('🏁 结局节点');
                this.appendDummyInput()
                    .appendField('类型:')
                    .appendField(new Blockly.FieldDropdown([
                        ['胜利', 'victory'], ['死亡', 'death'], ['普通', 'neutral'], ['坏结局', 'bad'], ['真结局', 'true']
                    ]), 'END_TYPE');
                this.setPreviousStatement(true, 'node_content');
                this.setNextStatement(true, 'node_content');
                this.setColour(70);
                this.setTooltip('标记为结局节点');
            }
        };

        Blockly.Blocks['choice_container'] = {
            init: function () {
                this.appendDummyInput()
                    .appendField('🔀 选项');
                this.appendStatementInput('CHOICES')
                    .setCheck('choice');
                this.setPreviousStatement(true, 'node_content');
                this.setNextStatement(true, 'node_content');
                this.setColour(330);
                this.setTooltip('选项组');
            }
        };

        Blockly.Blocks['choice'] = {
            init: function () {
                this.appendDummyInput()
                    .appendField('选项');
                this.appendValueInput('TEXT')
                    .setCheck('String')
                    .appendField(new Blockly.FieldTextInput(''), 'CHOICE_TEXT');
                this.appendDummyInput()
                    .appendField('跳转至:')
                    .appendField(new Blockly.FieldTextInput(''), 'NEXT_NODE');
                this.setPreviousStatement(true, 'choice');
                this.setNextStatement(true, 'choice');
                this.setColour(330);
                this.setTooltip('添加一个选项');
            }
        };

        Blockly.Blocks['choice_condition'] = {
            init: function () {
                this.appendDummyInput()
                    .appendField('🔒 条件选项');
                this.appendValueInput('TEXT')
                    .setCheck('String')
                    .appendField(new Blockly.FieldTextInput(''), 'CHOICE_TEXT');
                this.appendDummyInput()
                    .appendField('跳转至:')
                    .appendField(new Blockly.FieldTextInput(''), 'NEXT_NODE');
                this.appendDummyInput()
                    .appendField('条件:拥有物品')
                    .appendField(new Blockly.FieldTextInput(''), 'CONDITION_ITEM');
                this.setPreviousStatement(true, 'choice');
                this.setNextStatement(true, 'choice');
                this.setColour(330);
                this.setTooltip('只有拥有特定物品时才显示的选项');
            }
        };

        Blockly.Blocks['action_container'] = {
            init: function () {
                this.appendDummyInput()
                    .appendField('⚡ 动作');
                this.appendStatementInput('ACTIONS')
                    .setCheck('action');
                this.setPreviousStatement(true, 'node_content');
                this.setNextStatement(true, 'node_content');
                this.setColour(260);
                this.setTooltip('动作组');
            }
        };

        Blockly.Blocks['action_add_item'] = {
            init: function () {
                this.appendDummyInput()
                    .appendField('➕ 添加物品:');
                this.appendValueInput('ITEM')
                    .setCheck('String')
                    .appendField(new Blockly.FieldTextInput(''), 'ITEM_ID');
                this.setPreviousStatement(true, 'action');
                this.setNextStatement(true, 'action');
                this.setColour(260);
                this.setTooltip('添加物品到背包');
            }
        };

        Blockly.Blocks['action_remove_item'] = {
            init: function () {
                this.appendDummyInput()
                    .appendField('➖ 移除物品:');
                this.appendValueInput('ITEM')
                    .setCheck('String')
                    .appendField(new Blockly.FieldTextInput(''), 'ITEM_ID');
                this.setPreviousStatement(true, 'action');
                this.setNextStatement(true, 'action');
                this.setColour(260);
                this.setTooltip('从背包移除物品');
            }
        };

        Blockly.Blocks['action_set_flag'] = {
            init: function () {
                this.appendDummyInput()
                    .appendField('🏷️ 设置标记:');
                this.appendValueInput('FLAG')
                    .setCheck('String')
                    .appendField(new Blockly.FieldTextInput(''), 'FLAG_NAME');
                this.appendDummyInput()
                    .appendField('值:')
                    .appendField(new Blockly.FieldDropdown([['是', 'true'], ['否', 'false']]), 'FLAG_VALUE');
                this.setPreviousStatement(true, 'action');
                this.setNextStatement(true, 'action');
                this.setColour(260);
                this.setTooltip('设置游戏标记');
            }
        };

        Blockly.Blocks['dialog_container'] = {
            init: function () {
                this.appendDummyInput()
                    .appendField('💬 对话');
                this.appendStatementInput('DIALOGS')
                    .setCheck('dialog');
                this.setPreviousStatement(true, 'node_content');
                this.setNextStatement(true, 'node_content');
                this.setColour(160);
                this.setTooltip('对话框组');
            }
        };

        Blockly.Blocks['dialog'] = {
            init: function () {
                this.appendDummyInput()
                    .appendField('说话者:')
                    .appendField(new Blockly.FieldTextInput(''), 'SPEAKER');
                this.appendValueInput('TEXT')
                    .setCheck('String')
                    .appendField(new Blockly.FieldTextInput(''), 'DIALOG_TEXT');
                this.setPreviousStatement(true, 'dialog');
                this.setNextStatement(true, 'dialog');
                this.setColour(160);
                this.setTooltip('添加对话');
            }
        };

        Blockly.Blocks['text_string'] = {
            init: function () {
                this.appendDummyInput()
                    .appendField(new Blockly.FieldTextInput(''), 'STRING');
                this.setOutput(true, 'String');
                this.setColour(60);
                this.setTooltip('文本字符串');
            }
        };

        const toolbox = {
            kind: 'categoryToolbox',
            contents: [
                {
                    kind: 'category',
                    name: '节点',
                    colour: '#00ff88',
                    contents: [
                        { kind: 'block', type: 'node_hat' }
                    ]
                },
                {
                    kind: 'category',
                    name: '内容',
                    colour: '#00bfff',
                    contents: [
                        { kind: 'block', type: 'node_text' },
                        { kind: 'block', type: 'node_location' },
                        { kind: 'block', type: 'node_is_end' }
                    ]
                },
                {
                    kind: 'category',
                    name: '选项',
                    colour: '#ff6b6b',
                    contents: [
                        { kind: 'block', type: 'choice_container' },
                        { kind: 'block', type: 'choice' },
                        { kind: 'block', type: 'choice_condition' }
                    ]
                },
                {
                    kind: 'category',
                    name: '动作',
                    colour: '#ffd93d',
                    contents: [
                        { kind: 'block', type: 'action_container' },
                        { kind: 'block', type: 'action_add_item' },
                        { kind: 'block', type: 'action_remove_item' },
                        { kind: 'block', type: 'action_set_flag' }
                    ]
                },
                {
                    kind: 'category',
                    name: '对话',
                    colour: '#9b59b6',
                    contents: [
                        { kind: 'block', type: 'dialog_container' },
                        { kind: 'block', type: 'dialog' }
                    ]
                },
                {
                    kind: 'category',
                    name: '文本',
                    colour: '#3498db',
                    contents: [
                        { kind: 'block', type: 'text_string' }
                    ]
                }
            ]
        };

        this.workspace = Blockly.inject(blocklyDiv, {
            toolbox: toolbox,
            trashcan: true,
            zoom: { controls: true, wheel: true, startScale: 1 },
            theme: this.createTheme(),
            grid: { spacing: 10, length: 3, colour: '#333', snap: true },
            scrollbars: true
        });

        this.workspace.addChangeListener(() => {
            this.updateStoryFromBlocks();
            this.updatePreview();
        });
    }

    createTheme() {
        return {
            name: 'PixelTheme',
            blockStyles: {
                default: {
                    colourPrimary: '#3a3a3a',
                    colourSecondary: '#2a2a2a',
                    colourTertiary: '#1a1a1a'
                },
                text_blocks: {
                    colourPrimary: '#00ff88',
                    colourSecondary: '#00cc6a',
                    colourTertiary: '#00994d'
                },
                list_blocks: {
                    colourPrimary: '#00bfff',
                    colourSecondary: '#0099cc',
                    colourTertiary: '#006699'
                },
                variable_blocks: {
                    colourPrimary: '#ff6b6b',
                    colourSecondary: '#cc5555',
                    colourTertiary: '#993333'
                },
                procedure_blocks: {
                    colourPrimary: '#ffd93d',
                    colourSecondary: '#ccac30',
                    colourTertiary: '#998226'
                }
            },
            categoryStyles: {
                logic_category: { colour: '#9C27B0' },
                loop_category: { colour: '#FF9800' },
                math_category: { colour: '#2196F3' },
                text_category: { colour: '#00ff88' },
                list_category: { colour: '#00bfff' },
                variable_category: { colour: '#ff6b6b' },
                procedure_category: { colour: '#ffd93d' }
            },
            componentStyles: {
                workspaceBackgroundColour: '#0a0a0a',
                toolboxBackgroundColour: '#1a1a1a',
                toolboxForegroundColour: '#00ff88',
                flyoutBackgroundColour: '#1a1a1a',
                flyoutForegroundColour: '#00ff88',
                flyoutOpacity: 0.95,
                scrollbarColour: '#333',
                insertionMarkerColour: '#00ff88',
                insertionMarkerOpacity: 0.3,
                cursorColour: '#00ff88',
                selectedGlowColour: '#00ff88',
                selectedGlowOpacity: 0.2
            },
            fontStyle: {
                family: "'PixelFont', monospace",
                weight: 'normal',
                size: 12
            }
        };
    }

    toggleSidebar() {
        this.sidebarCollapsed = !this.sidebarCollapsed;
        const sidebar = document.getElementById('sidebar');
        const toggleBtn = document.getElementById('toggle-sidebar');

        if (this.sidebarCollapsed) {
            sidebar.style.width = '0';
            sidebar.style.padding = '0';
            toggleBtn.textContent = '▶';
        } else {
            sidebar.style.width = '280px';
            sidebar.style.padding = '15px';
            toggleBtn.textContent = '◀';
        }

        setTimeout(() => this.workspace.resize(), 100);
    }

    togglePreview() {
        this.previewCollapsed = !this.previewCollapsed;
        const preview = document.getElementById('preview-panel');
        const toggleBtn = document.getElementById('toggle-preview');

        if (this.previewCollapsed) {
            preview.style.width = '0';
            preview.style.padding = '0';
            toggleBtn.textContent = '◀';
        } else {
            preview.style.width = '280px';
            preview.style.padding = '15px';
            toggleBtn.textContent = '▶';
        }

        setTimeout(() => this.workspace.resize(), 100);
    }

    newStory() {
        this.showConfirm('确定要创建新故事吗？当前内容将丢失。', '确认', () => {
            this.story = {
                title: '',
                subtitle: '',
                description: '',
                version: '1.0',
                features: { inventory: false, map: false },
                items: [],
                map: { title: '', locations: [], startingLocation: '' },
                start: 'start',
                nodes: {}
            };
            this.currentNodeId = null;
            document.getElementById('story-title').value = '';
            document.getElementById('story-subtitle').value = '';
            document.getElementById('story-desc').value = '';
            document.getElementById('enable-inventory').checked = false;
            document.getElementById('enable-map').checked = false;
            this.workspace.clear();
            this.renderNodeList();
            this.renderItemList();
            this.updatePreview();
        });
    }

    importStory() {
        document.getElementById('file-input').click();
    }

    handleFileImport(event) {
        const files = event.target.files;
        if (!files || files.length === 0) return;

        const file = files[0];
        const extraCount = files.length - 1;

        const reader = new FileReader();
        reader.onload = (e) => {
            try {
                let content = e.target.result;
                content = content.replace(/^\uFEFF/, '');

                console.log('[StoryEditor] 文件内容长度:', content.length);
                console.log('[StoryEditor] 文件前100字符:', content.substring(0, 100));

                const storyData = JSON.parse(content);
                console.log('[StoryEditor] 解析成功:', JSON.stringify(storyData).substring(0, 200));

                this.story = this.mergeStoryData(storyData);
                this.loadStoryData();
                
                if (extraCount > 0) {
                    this.showAlert(`成功导入故事 "${file.name}"！\n\n注意：还选择了 ${extraCount} 个文件，但编辑器一次只能编辑一个故事。`, '成功');
                } else {
                    this.showAlert(`成功导入故事 "${file.name}"！`, '成功');
                }
            } catch (err) {
                console.error('[StoryEditor] 解析失败:', err.message);
                console.error('[StoryEditor] 错误堆栈:', err.stack);
                this.showAlert('无法解析故事文件！\n\n错误详情:\n' + err.message, '错误');
            }
        };
        reader.onerror = (err) => {
            console.error('[StoryEditor] 文件读取失败:', err);
            this.showAlert('文件读取失败！', '错误');
        };
        reader.readAsText(file, 'UTF-8');
        event.target.value = '';
    }

    mergeStoryData(storyData) {
        const nodes = storyData.nodes || {};
        const processedNodes = {};

        Object.keys(nodes).forEach(key => {
            const node = nodes[key];
            processedNodes[key] = {
                id: node.id || key,
                text: node.text || '',
                location: node.location,
                isEnd: node.isEnd || false,
                endType: node.endType || 'neutral',
                choices: Array.isArray(node.choices) ? node.choices : [],
                actions: Array.isArray(node.actions) ? node.actions : [],
                dialogs: Array.isArray(node.dialogs) ? node.dialogs : []
            };
        });

        return {
            title: storyData.title || '',
            subtitle: storyData.subtitle || '',
            description: storyData.description || '',
            version: storyData.version || '1.0',
            features: storyData.features || { inventory: false, map: false },
            items: Array.isArray(storyData.items) ? storyData.items : [],
            map: storyData.map || { title: '', locations: [], startingLocation: '' },
            start: storyData.start || 'start',
            nodes: processedNodes
        };
    }

    loadStoryData() {
        document.getElementById('story-title').value = this.story.title || '';
        document.getElementById('story-subtitle').value = this.story.subtitle || '';
        document.getElementById('story-desc').value = this.story.description || '';
        document.getElementById('enable-inventory').checked = this.story.features?.inventory || false;
        document.getElementById('enable-map').checked = this.story.features?.map || false;

        this.renderNodeList();
        this.renderItemList();
        this.updateBlocksFromStory();
        this.updatePreview();
    }

    updateBlocksFromStory() {
        this.workspace.clear();

        const nodes = this.story.nodes || {};
        const nodeIds = Object.keys(nodes);

        console.log('[StoryEditor] 开始创建积木，节点数量:', nodeIds.length);

        nodeIds.forEach((nodeId, nodeIndex) => {
            const node = nodes[nodeId];
            console.log('[StoryEditor] 创建节点:', nodeId, JSON.stringify(node).substring(0, 100));

            const hatBlock = this.workspace.newBlock('node_hat');
            hatBlock.getField('NODE_ID').setValue(nodeId);

            hatBlock.setPreviousStatement(false);
            hatBlock.setNextStatement(false);

            const contentInput = hatBlock.getInput('CONTENT');
            const contentConnection = contentInput.connection;

            let blocks = [];

            if (node.text) {
                const textBlock = this.workspace.newBlock('node_text');
                textBlock.getField('TEXT_INPUT').setValue(node.text);
                textBlock.setPreviousStatement(true);
                textBlock.setNextStatement(true);
                blocks.push(textBlock);
            }

            if (node.location) {
                const locBlock = this.workspace.newBlock('node_location');
                locBlock.getField('LOCATION_INPUT').setValue(node.location);
                locBlock.setPreviousStatement(true);
                locBlock.setNextStatement(true);
                blocks.push(locBlock);
            }

            if (node.choices && node.choices.length > 0) {
                const choiceContainer = this.workspace.newBlock('choice_container');
                choiceContainer.setPreviousStatement(true);
                choiceContainer.setNextStatement(true);
                blocks.push(choiceContainer);

                const choiceBlocks = [];
                node.choices.forEach(choice => {
                    const choiceBlock = this.workspace.newBlock(choice.condition ? 'choice_condition' : 'choice');
                    choiceBlock.getField('CHOICE_TEXT').setValue(choice.text);
                    choiceBlock.getField('NEXT_NODE').setValue(choice.next);
                    if (choice.condition && choice.condition.hasItem) {
                        choiceBlock.getField('CONDITION_ITEM').setValue(choice.condition.hasItem);
                    }
                    choiceBlock.setPreviousStatement(true);
                    choiceBlock.setNextStatement(true);
                    choiceBlocks.push(choiceBlock);
                });

                if (choiceBlocks.length > 0) {
                    choiceBlocks[0].previousConnection.connect(choiceContainer.getInput('CHOICES').connection);
                    for (let i = 1; i < choiceBlocks.length; i++) {
                        choiceBlocks[i].previousConnection.connect(choiceBlocks[i - 1].nextConnection);
                    }
                }
            }

            if (node.actions && node.actions.length > 0) {
                const actionContainer = this.workspace.newBlock('action_container');
                actionContainer.setPreviousStatement(true);
                actionContainer.setNextStatement(true);
                blocks.push(actionContainer);

                const actionBlocks = [];
                node.actions.forEach(action => {
                    let actionBlock;
                    if (action.type === 'addItem') {
                        actionBlock = this.workspace.newBlock('action_add_item');
                        actionBlock.getField('ITEM_ID').setValue(action.itemId);
                    } else if (action.type === 'removeItem') {
                        actionBlock = this.workspace.newBlock('action_remove_item');
                        actionBlock.getField('ITEM_ID').setValue(action.itemId);
                    } else if (action.type === 'setFlag') {
                        actionBlock = this.workspace.newBlock('action_set_flag');
                        actionBlock.getField('FLAG_NAME').setValue(action.flagName);
                        actionBlock.getField('FLAG_VALUE').setValue(String(action.value));
                    }
                    if (actionBlock) {
                        actionBlock.setPreviousStatement(true);
                        actionBlock.setNextStatement(true);
                        actionBlocks.push(actionBlock);
                    }
                });

                if (actionBlocks.length > 0) {
                    actionBlocks[0].previousConnection.connect(actionContainer.getInput('ACTIONS').connection);
                    for (let i = 1; i < actionBlocks.length; i++) {
                        actionBlocks[i].previousConnection.connect(actionBlocks[i - 1].nextConnection);
                    }
                }
            }

            if (node.dialogs && node.dialogs.length > 0) {
                const dialogContainer = this.workspace.newBlock('dialog_container');
                dialogContainer.setPreviousStatement(true);
                dialogContainer.setNextStatement(true);
                blocks.push(dialogContainer);

                const dialogBlocks = [];
                node.dialogs.forEach(dialog => {
                    const dialogBlock = this.workspace.newBlock('dialog');
                    dialogBlock.getField('SPEAKER').setValue(dialog.speaker || '');
                    dialogBlock.getField('DIALOG_TEXT').setValue(dialog.text || '');
                    dialogBlock.setPreviousStatement(true);
                    dialogBlock.setNextStatement(true);
                    dialogBlocks.push(dialogBlock);
                });

                if (dialogBlocks.length > 0) {
                    dialogBlocks[0].previousConnection.connect(dialogContainer.getInput('DIALOGS').connection);
                    for (let i = 1; i < dialogBlocks.length; i++) {
                        dialogBlocks[i].previousConnection.connect(dialogBlocks[i - 1].nextConnection);
                    }
                }
            }

            if (node.isEnd) {
                const endBlock = this.workspace.newBlock('node_is_end');
                endBlock.getField('END_TYPE').setValue(node.endType || 'neutral');
                endBlock.setPreviousStatement(true);
                endBlock.setNextStatement(true);
                blocks.push(endBlock);
            }

            if (blocks.length > 0) {
                blocks[0].previousConnection.connect(contentConnection);
                for (let i = 1; i < blocks.length; i++) {
                    blocks[i].previousConnection.connect(blocks[i - 1].nextConnection);
                }
            }

            hatBlock.moveBy(50, nodeIndex * 350);
            console.log('[StoryEditor] 节点积木创建完成:', nodeId);
        });

        setTimeout(() => {
            this.workspace.resize();
            this.workspace.render();
            this.workspace.scrollTo(0, 0);
            console.log('[StoryEditor] 积木渲染完成，工作区大小:', this.workspace.getMetrics());
            console.log('[StoryEditor] 当前积木数量:', this.workspace.getAllBlocks().length);
        }, 100);
    }

    updateStoryFromBlocks() {
        const blocks = this.workspace.getAllBlocks();
        const nodes = {};

        blocks.forEach(block => {
            if (block.type === 'node_hat') {
                const nodeId = block.getField('NODE_ID').getValue();
                nodes[nodeId] = {
                    id: nodeId,
                    text: '',
                    location: undefined,
                    isEnd: false,
                    endType: 'neutral',
                    choices: [],
                    actions: [],
                    dialogs: []
                };

                const contentBlock = block.getInputTargetBlock('CONTENT');
                this.processContentBlocks(contentBlock, nodes[nodeId]);
            }
        });

        this.story.nodes = nodes;
        this.renderNodeList();
    }

    processContentBlocks(block, node) {
        if (!block) return;

        switch (block.type) {
            case 'node_text':
                node.text = block.getField('TEXT_INPUT').getValue();
                break;
            case 'node_location':
                node.location = block.getField('LOCATION_INPUT').getValue();
                break;
            case 'node_is_end':
                node.isEnd = true;
                node.endType = block.getField('END_TYPE').getValue();
                break;
            case 'choice_container':
                const choiceBlocks = block.getInputTargetBlock('CHOICES');
                this.processChoiceBlocks(choiceBlocks, node);
                break;
            case 'action_container':
                const actionBlocks = block.getInputTargetBlock('ACTIONS');
                this.processActionBlocks(actionBlocks, node);
                break;
            case 'dialog_container':
                const dialogBlocks = block.getInputTargetBlock('DIALOGS');
                this.processDialogBlocks(dialogBlocks, node);
                break;
        }

        const nextBlock = block.nextConnection ? block.nextConnection.targetBlock() : null;
        this.processContentBlocks(nextBlock, node);
    }

    processChoiceBlocks(block, node) {
        if (!block) return;

        switch (block.type) {
            case 'choice':
                node.choices.push({
                    text: block.getField('CHOICE_TEXT').getValue(),
                    next: block.getField('NEXT_NODE').getValue()
                });
                break;
            case 'choice_condition':
                node.choices.push({
                    text: block.getField('CHOICE_TEXT').getValue(),
                    next: block.getField('NEXT_NODE').getValue(),
                    condition: { hasItem: block.getField('CONDITION_ITEM').getValue() }
                });
                break;
        }

        const nextBlock = block.nextConnection ? block.nextConnection.targetBlock() : null;
        this.processChoiceBlocks(nextBlock, node);
    }

    processActionBlocks(block, node) {
        if (!block) return;

        switch (block.type) {
            case 'action_add_item':
                node.actions.push({
                    type: 'addItem',
                    itemId: block.getField('ITEM_ID').getValue()
                });
                break;
            case 'action_remove_item':
                node.actions.push({
                    type: 'removeItem',
                    itemId: block.getField('ITEM_ID').getValue()
                });
                break;
            case 'action_set_flag':
                node.actions.push({
                    type: 'setFlag',
                    flagName: block.getField('FLAG_NAME').getValue(),
                    value: block.getField('FLAG_VALUE').getValue() === 'true'
                });
                break;
        }

        const nextBlock = block.nextConnection ? block.nextConnection.targetBlock() : null;
        this.processActionBlocks(nextBlock, node);
    }

    processDialogBlocks(block, node) {
        if (!block) return;

        if (block.type === 'dialog') {
            node.dialogs.push({
                speaker: block.getField('SPEAKER').getValue(),
                text: block.getField('DIALOG_TEXT').getValue()
            });
        }

        const nextBlock = block.nextConnection ? block.nextConnection.targetBlock() : null;
        this.processDialogBlocks(nextBlock, node);
    }

    exportStory() {
        if (!this.story.title) {
            this.showAlert('请先填写故事标题！', '错误');
            return;
        }

        const dataStr = JSON.stringify(this.story, null, 2);
        const blob = new Blob([dataStr], { type: 'application/json' });
        const url = URL.createObjectURL(blob);
        const a = document.createElement('a');
        a.href = url;
        a.download = `${this.story.title.replace(/[^a-zA-Z0-9\u4e00-\u9fa5]/g, '_')}.story`;
        document.body.appendChild(a);
        a.click();
        document.body.removeChild(a);
        URL.revokeObjectURL(url);
        this.showAlert('故事导出成功！', '成功');
    }

    testStory() {
        if (!this.story.title) {
            this.showAlert('请先填写故事标题！', '错误');
            return;
        }

        const win = window.open('../index.html', '_blank');
        setTimeout(() => {
            win.postMessage({ type: 'loadStory', data: this.story }, '*');
        }, 1000);
    }

    updateStoryInfo() {
        this.story.title = document.getElementById('story-title').value;
        this.story.subtitle = document.getElementById('story-subtitle').value;
        this.story.description = document.getElementById('story-desc').value;
        this.updatePreview();
    }

    updateFeatures() {
        if (!this.story.features) {
            this.story.features = { inventory: false, map: false };
        }
        this.story.features.inventory = document.getElementById('enable-inventory').checked;
        this.story.features.map = document.getElementById('enable-map').checked;
    }

    setStartNode() {
        const blocks = this.workspace.getAllBlocks();
        const hatBlocks = blocks.filter(b => b.type === 'node_hat');

        if (hatBlocks.length === 0) {
            this.showAlert('请先创建至少一个节点！', '错误');
            return;
        }

        const nodeIds = hatBlocks.map(b => b.getField('NODE_ID').getValue());

        const overlay = document.getElementById('modal-overlay');
        const modalTitle = document.getElementById('modal-title');
        const modalMessage = document.getElementById('modal-message');
        const modalButtons = document.getElementById('modal-buttons');

        modalTitle.textContent = '设置开始节点';

        let html = '<div style="text-align:left; max-height:200px; overflow-y:auto;">';
        nodeIds.forEach(id => {
            html += `<label style="display:block; margin:5px 0;">
                <input type="radio" name="start-node" value="${id}" ${this.story.start === id ? 'checked' : ''}>
                ${id}
            </label>`;
        });
        html += '</div>';
        modalMessage.innerHTML = html;

        modalButtons.innerHTML = `
            <button class="pixel-btn" onclick="editor.confirmStartNode()">确定</button>
            <button class="pixel-btn" onclick="editor.closeModal()">取消</button>
        `;
        overlay.classList.add('active');
    }

    confirmStartNode() {
        const radios = document.getElementsByName('start-node');
        for (const radio of radios) {
            if (radio.checked) {
                this.story.start = radio.value;
                this.showAlert(`已将 "${radio.value}" 设置为开始节点`, '成功');
                this.renderNodeList();
                break;
            }
        }
        this.closeModal();
    }

    renderNodeList() {
        const list = document.getElementById('node-list');

        list.innerHTML = '';

        Object.keys(this.story.nodes || {}).forEach(id => {
            const isStart = this.story.start === id;

            const div = document.createElement('div');
            div.className = 'node-item';
            div.innerHTML = `<strong>${id}</strong> ${isStart ? '<span style="color:#00ff88">★</span>' : ''}`;
            div.onclick = () => this.scrollToNode(id);
            list.appendChild(div);
        });
    }

    scrollToNode(nodeId) {
        const blocks = this.workspace.getAllBlocks();
        const hatBlock = blocks.find(b => b.type === 'node_hat' && b.getField('NODE_ID').getValue() === nodeId);

        if (hatBlock) {
            const rect = hatBlock.getBoundingRect();
            this.workspace.scrollTo(rect.left, rect.top);
            hatBlock.select();
        }
    }

    renderItemList() {
        const list = document.getElementById('item-list');
        list.innerHTML = '';

        (this.story.items || []).forEach(item => {
            const div = document.createElement('div');
            div.className = 'item-item';
            div.innerHTML = `<strong>${item.icon || '📦'} ${item.name}</strong> (${item.id})`;
            div.oncontextmenu = (e) => {
                e.preventDefault();
                this.deleteItem(item.id);
            };
            list.appendChild(div);
        });
    }

    addItem() {
        document.getElementById('item-modal').classList.add('active');
        document.getElementById('item-id').value = '';
        document.getElementById('item-name').value = '';
        document.getElementById('item-icon').value = '';
        document.getElementById('item-desc').value = '';
    }

    createItem() {
        const id = document.getElementById('item-id').value.trim();
        const name = document.getElementById('item-name').value.trim();
        const icon = document.getElementById('item-icon').value.trim();
        const desc = document.getElementById('item-desc').value.trim();

        if (!id || !name) {
            this.showAlert('请输入物品ID和名称！', '错误');
            return;
        }

        if ((this.story.items || []).find(i => i.id === id)) {
            this.showAlert('该物品ID已存在！', '错误');
            return;
        }

        if (!this.story.items) {
            this.story.items = [];
        }
        this.story.items.push({
            id: id,
            name: name,
            icon: icon || '📦',
            description: desc
        });

        this.closeModal();
        this.renderItemList();
    }

    deleteItem(itemId) {
        this.showConfirm(`确定要删除物品 "${itemId}" 吗？`, '确认', () => {
            this.story.items = (this.story.items || []).filter(i => i.id !== itemId);
            this.renderItemList();
        });
    }

    updatePreview() {
        const preview = document.getElementById('preview-content');
        const nodes = this.story.nodes || {};

        if (Object.keys(nodes).length === 0) {
            preview.innerHTML = '<p>在Blockly工作区创建节点来编写故事</p>';
            return;
        }

        let html = `<h4>故事结构预览</h4>`;
        html += `<p><strong>开始节点:</strong> ${this.story.start}</p>`;
        html += `<p><strong>节点数量:</strong> ${Object.keys(nodes).length}</p>`;
        html += '<hr>';

        Object.keys(nodes).forEach(id => {
            const node = nodes[id];
            html += `<p><strong>${id}</strong>${this.story.start === id ? ' ★' : ''}</p>`;
            if (node.text) html += `<p style="padding-left:10px;">📝 ${node.text.substring(0, 50)}${node.text.length > 50 ? '...' : ''}</p>`;
            if (node.location) html += `<p style="padding-left:10px;">📍 ${node.location}</p>`;
            if (node.isEnd) html += `<p style="padding-left:10px;">🏁 ${node.endType}</p>`;
            if (node.choices && node.choices.length > 0) {
                html += `<p style="padding-left:10px;">🔀 ${node.choices.length} 个选项</p>`;
            }
            if (node.actions && node.actions.length > 0) {
                html += `<p style="padding-left:10px;">⚡ ${node.actions.length} 个动作</p>`;
            }
            if (node.dialogs && node.dialogs.length > 0) {
                html += `<p style="padding-left:10px;">💬 ${node.dialogs.length} 段对话</p>`;
            }
            html += '<br>';
        });

        preview.innerHTML = html;
    }

    closeModal() {
        document.querySelectorAll('.modal-overlay').forEach(m => m.classList.remove('active'));
    }

    showAlert(message, title = '提示') {
        const overlay = document.getElementById('modal-overlay');
        const modalTitle = document.getElementById('modal-title');
        const modalMessage = document.getElementById('modal-message');
        const modalButtons = document.getElementById('modal-buttons');

        modalTitle.textContent = title;
        modalMessage.textContent = message;
        modalButtons.innerHTML = '<button class="pixel-btn" onclick="editor.closeModal()">确定</button>';
        overlay.classList.add('active');
    }

    showConfirm(message, title = '确认', onConfirm, onCancel = null) {
        const overlay = document.getElementById('modal-overlay');
        const modalTitle = document.getElementById('modal-title');
        const modalMessage = document.getElementById('modal-message');
        const modalButtons = document.getElementById('modal-buttons');

        modalTitle.textContent = title;
        modalMessage.textContent = message;
        modalButtons.innerHTML = `
            <button class="pixel-btn" onclick="editor.closeModal(); if(typeof onConfirm === 'function') onConfirm()">确定</button>
            <button class="pixel-btn" onclick="editor.closeModal(); if(typeof onCancel === 'function') onCancel()">取消</button>
        `;
        overlay.classList.add('active');
    }
}

const editor = new StoryEditor();

window.addEventListener('message', (e) => {
    if (e.data.type === 'loadStory') {
        editor.story = e.data.data;
        editor.loadStoryData();
    }
});