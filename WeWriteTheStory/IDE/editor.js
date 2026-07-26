class NodaEditor {
    constructor() {
        this.nodes = [];
        this.connections = [];
        this.selectedNode = null;
        this.selectedPort = null;
        this.draggingNode = null;
        this.dragOffset = { x: 0, y: 0 };
        this.storyData = {
            title: '',
            subtitle: '',
            description: '',
            author: 'Unknown',
            version: '1.0',
            features: { inventory: false, map: false },
            variables: {},
            items: [],
            map: null,
            start: 'start',
            nodes: {}
        };
        this.nodeIdCounter = 1;
        this.choiceIdCounter = 1;
        this.canvasScale = 1;
        this.panning = false;
        this.panStart = { x: 0, y: 0 };
        this.init();
    }

    init() {
        this.setupEventListeners();
        this.loadStoryInfo();
    }

    setupEventListeners() {
        const scrollArea = document.getElementById('canvas-scroll-area');

        scrollArea.addEventListener('click', (e) => {
            if (e.target.id === 'canvas-container' || e.target.id === 'canvas-grid' || e.target.id === 'canvas-inner') {
                this.deselectAll();
            }
        });

        scrollArea.addEventListener('mousemove', (e) => {
            this.onCanvasMouseMove(e);
        });

        scrollArea.addEventListener('mouseup', (e) => {
            this.onCanvasMouseUp(e);
        });

        scrollArea.addEventListener('mousedown', (e) => {
            if (e.target.closest('.node')) return;
            this.startPan(e);
        });

        scrollArea.addEventListener('wheel', (e) => {
            e.preventDefault();
            this.handleZoom(e);
        }, { passive: false });

        document.addEventListener('mouseup', () => {
            this.stopPan();
        });

        document.addEventListener('mousemove', (e) => {
            this.onPanMove(e);
        });
    }

    addNode(type, event) {
        const scrollArea = document.getElementById('canvas-scroll-area');
        const rect = scrollArea.getBoundingClientRect();

        let x, y;

        if (event && event.clientX) {
            const canvasContainer = document.getElementById('canvas-container');
            if (canvasContainer.contains(event.target)) {
                x = (event.clientX - rect.left + scrollArea.scrollLeft - 110) / this.canvasScale;
                y = (event.clientY - rect.top + scrollArea.scrollTop - 60) / this.canvasScale;
            } else {
                x = (scrollArea.scrollLeft + rect.width / 2 - 110) / this.canvasScale;
                y = (scrollArea.scrollTop + rect.height / 2 - 60) / this.canvasScale;
            }
        } else {
            x = (scrollArea.scrollLeft + rect.width / 2 - 110) / this.canvasScale;
            y = (scrollArea.scrollTop + rect.height / 2 - 60) / this.canvasScale;
        }

        x = Math.max(0, x);
        y = Math.max(0, y);

        console.log('addNode:', type, 'x:', x, 'y:', y, 'canvasScale:', this.canvasScale);

        const nodeData = this.createNodeData(type, x, y);

        if (type === 'start') {
            const existingStart = this.nodes.find(n => n.type === 'start');
            if (existingStart) {
                this.showToast('只能有一个开始节点！');
                return;
            }
            nodeData.id = 'start';
        }

        this.nodes.push(nodeData);
        this.renderNode(nodeData);
        this.updateConnections();
        this.updateGotoTargetList();
        this.hideCanvasHint();
    }

    createNodeData(type, x, y) {
        const baseId = type + '_' + this.nodeIdCounter++;

        const nodeTypes = {
            story: {
                id: baseId,
                type: 'story',
                title: '新剧情节点',
                text: '在这里输入剧情文本...',
                location: '',
                choices: [],
                actions: [],
                x, y
            },
            start: {
                id: 'start',
                type: 'start',
                title: '开始',
                text: '故事开始',
                choices: [],
                x, y
            },
            end: {
                id: baseId,
                type: 'end',
                title: '结局',
                text: '故事结束',
                endType: 'neutral',
                endMessage: '',
                isEnd: true,
                x, y
            },
            choice: {
                id: baseId,
                type: 'choice',
                title: '选择',
                choices: [{ id: 'choice_' + this.choiceIdCounter++, text: '选项1', next: '' }],
                x, y
            },
            if: {
                id: baseId,
                type: 'if',
                title: '条件判断',
                varName: '',
                conditionType: 'equals',
                conditionValue: '',
                x, y
            },
            check_item: {
                id: baseId,
                type: 'check_item',
                title: '物品检测',
                itemId: '',
                x, y
            },
            check_var: {
                id: baseId,
                type: 'check_var',
                title: '变量检测',
                varName: '',
                conditionType: 'equals',
                conditionValue: '',
                x, y
            },
            add_item: {
                id: baseId,
                type: 'add_item',
                title: '添加物品',
                itemId: '',
                x, y
            },
            remove_item: {
                id: baseId,
                type: 'remove_item',
                title: '移除物品',
                itemId: '',
                x, y
            },
            set_var: {
                id: baseId,
                type: 'set_var',
                title: '设置变量',
                varName: '',
                value: '',
                x, y
            },
            add_var: {
                id: baseId,
                type: 'add_var',
                title: '增加变量',
                varName: '',
                value: '1',
                x, y
            },
            sub_var: {
                id: baseId,
                type: 'sub_var',
                title: '减少变量',
                varName: '',
                value: '1',
                x, y
            },
            toggle_var: {
                id: baseId,
                type: 'toggle_var',
                title: '切换变量',
                varName: '',
                x, y
            },
            goto: {
                id: baseId,
                type: 'goto',
                title: '跳转',
                gotoTarget: '',
                x, y
            },
            location: {
                id: baseId,
                type: 'location',
                title: '地点',
                locationName: '',
                x, y
            }
        };

        return nodeTypes[type] || nodeTypes.story;
    }

    renderNode(node) {
        const container = document.getElementById('nodes-container');
        const nodeEl = document.createElement('div');
        nodeEl.className = this.getNodeClass(node.type);
        nodeEl.id = 'node-' + node.id;
        nodeEl.style.left = node.x + 'px';
        nodeEl.style.top = node.y + 'px';

        nodeEl.innerHTML = this.getNodeHtml(node);
        container.appendChild(nodeEl);

        console.log('renderNode:', node.id, 'left:', nodeEl.style.left, 'top:', nodeEl.style.top);

        this.setupNodeEvents(nodeEl, node);
    }

    getNodeClass(type) {
        let baseClass = 'node ';
        switch (type) {
            case 'start': baseClass += 'start-node'; break;
            case 'end': baseClass += 'end-node'; break;
            case 'choice': baseClass += 'choice-node'; break;
            case 'if':
            case 'check_item':
            case 'check_var': baseClass += 'if-node'; break;
            case 'add_item':
            case 'remove_item':
            case 'set_var':
            case 'add_var':
            case 'sub_var':
            case 'toggle_var': baseClass += 'action-node'; break;
            default: baseClass += 'story-node';
        }
        return baseClass;
    }

    getNodeHtml(node) {
        const icon = this.getNodeIcon(node.type);
        const typeLabel = this.getNodeTypeLabel(node.type);

        let content = '';
        if (node.text) {
            content = `<div class="node-content"><div class="node-text-preview">${node.text}</div></div>`;
        } else if (node.varName) {
            let condInfo = '';
            if (node.conditionType && node.conditionValue) {
                const op = this.convertConditionType(node.conditionType);
                condInfo = ` ${op} ${node.conditionValue}`;
            }
            content = `<div class="node-content">变量: ${node.varName}${condInfo}</div>`;
        } else if (node.itemId) {
            content = `<div class="node-content">物品: ${node.itemId}</div>`;
        } else if (node.locationName) {
            content = `<div class="node-content">地点: ${node.locationName}</div>`;
        } else if (node.gotoTarget) {
            content = `<div class="node-content">跳转至: ${node.gotoTarget}</div>`;
        } else if (node.choices && node.choices.length > 0) {
            content = `<div class="node-content">${node.choices.length} 个选项</div>`;
        } else if (node.value) {
            content = `<div class="node-content">值: ${node.value}</div>`;
        }

        return `
            <div class="node-header">
                <span class="node-icon">${icon}</span>
                <span class="node-title">${node.title}</span>
                <span class="node-type-badge">${typeLabel}</span>
            </div>
            ${content}
            <div class="node-ports">
                ${this.getInputPorts(node)}
                ${this.getOutputPorts(node)}
            </div>
        `;
    }

    getNodeIcon(type) {
        const icons = {
            story: '📝',
            start: '🎬',
            end: '🏁',
            choice: '🔀',
            if: '🔍',
            check_item: '🎒',
            check_var: '📊',
            add_item: '➕',
            remove_item: '➖',
            set_var: '⚙️',
            add_var: '📈',
            sub_var: '📉',
            toggle_var: '🔄',
            goto: '🔗',
            location: '📍'
        };
        return icons[type] || '📦';
    }

    getNodeTypeLabel(type) {
        const labels = {
            story: '剧情',
            start: '开始',
            end: '结局',
            choice: '选择',
            if: '条件',
            check_item: '物品检测',
            check_var: '变量检测',
            add_item: '添加物品',
            remove_item: '移除物品',
            set_var: '设置变量',
            add_var: '增加变量',
            sub_var: '减少变量',
            toggle_var: '切换变量',
            goto: '跳转',
            location: '地点'
        };
        return labels[type] || type;
    }

    getInputPorts(node) {
        const ports = {
            story: '<div class="port input" data-port="input" data-node-id="' + node.id + '"></div>',
            start: '',
            end: '<div class="port input" data-port="input" data-node-id="' + node.id + '"></div>',
            choice: '<div class="port input" data-port="input" data-node-id="' + node.id + '"></div>',
            if: '<div class="port input" data-port="input" data-node-id="' + node.id + '"></div>',
            check_item: '<div class="port input" data-port="input" data-node-id="' + node.id + '"></div>',
            check_var: '<div class="port input" data-port="input" data-node-id="' + node.id + '"></div>',
            add_item: '<div class="port input" data-port="input" data-node-id="' + node.id + '"></div>',
            remove_item: '<div class="port input" data-port="input" data-node-id="' + node.id + '"></div>',
            set_var: '<div class="port input" data-port="input" data-node-id="' + node.id + '"></div>',
            add_var: '<div class="port input" data-port="input" data-node-id="' + node.id + '"></div>',
            sub_var: '<div class="port input" data-port="input" data-node-id="' + node.id + '"></div>',
            toggle_var: '<div class="port input" data-port="input" data-node-id="' + node.id + '"></div>',
            goto: '<div class="port input" data-port="input" data-node-id="' + node.id + '"></div>',
            location: '<div class="port input" data-port="input" data-node-id="' + node.id + '"></div>'
        };
        return ports[node.type] || '';
    }

    getOutputPorts(node) {
        if (node.type === 'end') return '';
        if (node.type === 'choice') return '<div class="port output" data-port="output" data-node-id="' + node.id + '"></div>';
        if (node.type === 'if' || node.type === 'check_item' || node.type === 'check_var') {
            return `
                <div class="port output" data-port="output_true" data-node-id="${node.id}">
                    <span class="port-label">是</span>
                </div>
                <div class="port output" data-port="output_false" data-node-id="${node.id}">
                    <span class="port-label">否</span>
                </div>
            `;
        }
        return '<div class="port output" data-port="output" data-node-id="' + node.id + '"></div>';
    }

    setupNodeEvents(nodeEl, node) {
        nodeEl.addEventListener('click', (e) => {
            e.stopPropagation();
            this.selectNode(node);
        });

        nodeEl.addEventListener('mousedown', (e) => {
            if (e.target.classList.contains('port')) return;
            e.stopPropagation();
            this.startDrag(nodeEl, node, e);
        });

        const ports = nodeEl.querySelectorAll('.port');
        ports.forEach(port => {
            port.addEventListener('mousedown', (e) => {
                e.stopPropagation();
                this.startConnection(node, port, e);
            });
        });
    }

    selectNode(node) {
        this.deselectAll();
        this.selectedNode = node;
        const nodeEl = document.getElementById('node-' + node.id);
        if (nodeEl) {
            nodeEl.classList.add('selected');
        }
        this.updatePropertiesPanel(node);
    }

    deselectAll() {
        this.selectedNode = null;
        this.selectedPort = null;
        document.querySelectorAll('.node.selected').forEach(el => el.classList.remove('selected'));
        document.getElementById('properties-empty').style.display = 'flex';
        document.getElementById('properties-content').classList.add('hidden');
        this.clearConnectionPreview();
    }

    startDrag(nodeEl, node, e) {
        this.draggingNode = node;
        const rect = nodeEl.getBoundingClientRect();
        this.dragOffset.x = e.clientX - rect.left;
        this.dragOffset.y = e.clientY - rect.top;
        nodeEl.style.zIndex = 100;
        document.addEventListener('mousemove', this.onGlobalMouseMove.bind(this));
        document.addEventListener('mouseup', this.onGlobalMouseUp.bind(this));
    }

    onGlobalMouseMove(e) {
        if (!this.draggingNode) return;

        const scrollArea = document.getElementById('canvas-scroll-area');
        const rect = scrollArea.getBoundingClientRect();

        let x = e.clientX - rect.left + scrollArea.scrollLeft - this.dragOffset.x;
        let y = e.clientY - rect.top + scrollArea.scrollTop - this.dragOffset.y;

        x = Math.max(-100, x);
        y = Math.max(-100, y);

        this.draggingNode.x = x;
        this.draggingNode.y = y;

        const nodeEl = document.getElementById('node-' + this.draggingNode.id);
        if (nodeEl) {
            nodeEl.style.left = x + 'px';
            nodeEl.style.top = y + 'px';
        }

        this.updateConnections();

        if (this.selectedPort) {
            this.updateConnectionPreview(e);
        }
    }

    onGlobalMouseUp() {
        if (this.draggingNode) {
            const nodeEl = document.getElementById('node-' + this.draggingNode.id);
            if (nodeEl) {
                nodeEl.style.zIndex = '';
            }
        }
        this.draggingNode = null;
        document.removeEventListener('mousemove', this.onGlobalMouseMove.bind(this));
        document.removeEventListener('mouseup', this.onGlobalMouseUp.bind(this));
    }

    onCanvasMouseMove(e) {
        if (this.selectedPort) {
            this.updateConnectionPreview(e);
        }
    }

    startPan(e) {
        this.panning = true;
        this.panStart = { x: e.clientX - document.getElementById('canvas-scroll-area').scrollLeft, y: e.clientY - document.getElementById('canvas-scroll-area').scrollTop };
    }

    onPanMove(e) {
        if (!this.panning) return;

        const scrollArea = document.getElementById('canvas-scroll-area');
        scrollArea.scrollLeft = e.clientX - this.panStart.x;
        scrollArea.scrollTop = e.clientY - this.panStart.y;
    }

    stopPan() {
        this.panning = false;
    }

    handleZoom(e) {
        const scrollArea = document.getElementById('canvas-scroll-area');
        const delta = e.deltaY > 0 ? -0.1 : 0.1;
        const newScale = Math.max(0.25, Math.min(2, this.canvasScale + delta));

        if (newScale !== this.canvasScale) {
            const canvasInner = document.getElementById('canvas-inner');
            const rect = scrollArea.getBoundingClientRect();

            const mouseX = e.clientX - rect.left;
            const mouseY = e.clientY - rect.top;

            const scrollX = scrollArea.scrollLeft;
            const scrollY = scrollArea.scrollTop;

            const newScrollX = mouseX + (scrollX - mouseX) * (newScale / this.canvasScale);
            const newScrollY = mouseY + (scrollY - mouseY) * (newScale / this.canvasScale);

            this.canvasScale = newScale;
            canvasInner.style.transform = `scale(${this.canvasScale})`;

            scrollArea.scrollLeft = newScrollX;
            scrollArea.scrollTop = newScrollY;

            this.updateConnections();
        }
    }

    onCanvasMouseUp(e) {
        if (this.selectedPort) {
            const target = e.target.closest('.port');
            console.log('onCanvasMouseUp:', 'selectedPort:', this.selectedPort.portType, 'target:', target ? target.dataset.nodeId : null, 'targetPortType:', target ? target.dataset.port : null);

            if (target && target !== this.selectedPort.portEl) {
                const targetNodeId = target.dataset.nodeId;
                const targetPortType = target.dataset.port;

                if (targetPortType === 'input') {
                    this.createConnection(this.selectedPort, {
                        nodeId: targetNodeId,
                        portType: targetPortType
                    });
                }
            }
            this.selectedPort = null;
            this.clearConnectionPreview();
        }
    }

    startConnection(node, port, e) {
        e.preventDefault();
        e.stopPropagation();
        this.selectedPort = {
            node: node,
            portType: port.dataset.port,
            portEl: port
        };
        console.log('startConnection:', 'nodeId:', node.id, 'portType:', port.dataset.port);

        this.connectionMouseMoveHandler = this.onConnectionMouseMove.bind(this);
        this.connectionMouseUpHandler = this.onConnectionMouseUp.bind(this);

        document.addEventListener('mousemove', this.connectionMouseMoveHandler);
        document.addEventListener('mouseup', this.connectionMouseUpHandler);
    }

    onConnectionMouseMove(e) {
        if (this.selectedPort) {
            console.log('onConnectionMouseMove:', 'selectedPort exists');
            this.updateConnectionPreview(e);
        }
    }

    onConnectionMouseUp(e) {
        if (this.selectedPort) {
            const target = e.target.closest('.port');
            console.log('onConnectionMouseUp:', 'selectedPort:', this.selectedPort.portType, 'target:', target ? target.dataset.nodeId : null);

            if (target && target !== this.selectedPort.portEl) {
                const targetNodeId = target.dataset.nodeId;
                const targetPortType = target.dataset.port;

                if (targetPortType === 'input') {
                    this.createConnection(this.selectedPort, {
                        nodeId: targetNodeId,
                        portType: targetPortType
                    });
                }
            }
            this.selectedPort = null;
            this.clearConnectionPreview();
        }

        document.removeEventListener('mousemove', this.connectionMouseMoveHandler);
        document.removeEventListener('mouseup', this.connectionMouseUpHandler);

        this.connectionMouseMoveHandler = null;
        this.connectionMouseUpHandler = null;
    }

    createConnection(source, target) {
        console.log('createConnection:', 'source:', JSON.stringify(source), 'target:', JSON.stringify(target));

        if (source.portType === 'input') {
            const temp = source;
            source = target;
            target = temp;
            console.log('Swapped source and target:', 'source:', JSON.stringify(source), 'target:', JSON.stringify(target));
        }

        const sourceId = source.node ? source.node.id : source.nodeId;
        const targetId = target.nodeId;

        console.log('createConnection:', 'sourceId:', sourceId, 'targetId:', targetId);

        if (sourceId === targetId) {
            console.log('createConnection:', 'Same node, returning');
            return;
        }

        const existingConn = this.connections.find(c =>
            c.sourceId === sourceId &&
            c.sourcePort === source.portType &&
            c.targetId === targetId
        );

        console.log('createConnection:', 'existingConn:', existingConn);

        if (!existingConn) {
            console.log('createConnection:', 'Adding new connection');
            this.connections.push({
                sourceId: sourceId,
                sourcePort: source.portType,
                targetId: targetId,
                targetPort: target.portType
            });
            console.log('createConnection:', 'connections array:', JSON.stringify(this.connections));
            this.updateConnections();
        } else {
            console.log('createConnection:', 'Connection already exists');
        }
    }

    updateConnectionPreview(e) {
        const svg = document.getElementById('connections-svg');
        let preview = document.getElementById('connection-preview');
        if (!preview) {
            preview = document.createElementNS('http://www.w3.org/2000/svg', 'path');
            preview.id = 'connection-preview';
            preview.setAttribute('stroke', '#58a6ff');
            preview.setAttribute('stroke-width', '2');
            preview.setAttribute('stroke-dasharray', '5,5');
            preview.setAttribute('fill', 'none');
            svg.appendChild(preview);
        }

        const portEl = this.selectedPort.portEl;
        const portRect = portEl.getBoundingClientRect();
        const scrollArea = document.getElementById('canvas-scroll-area');
        const containerRect = scrollArea.getBoundingClientRect();

        const startX = (portRect.left - containerRect.left + scrollArea.scrollLeft + portRect.width / 2) / this.canvasScale;
        const startY = (portRect.top - containerRect.top + scrollArea.scrollTop + portRect.height / 2) / this.canvasScale;

        const endX = (e.clientX - containerRect.left + scrollArea.scrollLeft) / this.canvasScale;
        const endY = (e.clientY - containerRect.top + scrollArea.scrollTop) / this.canvasScale;

        const midX = (startX + endX) / 2;
        const path = `M ${startX} ${startY} C ${midX} ${startY}, ${midX} ${endY}, ${endX} ${endY}`;

        preview.setAttribute('d', path);
    }

    clearConnectionPreview() {
        const preview = document.getElementById('connection-preview');
        if (preview) {
            preview.remove();
        }
    }

    updateConnections() {
        const svg = document.getElementById('connections-svg');
        svg.innerHTML = '';

        this.connections.forEach(conn => {
            this.drawConnection(conn);
        });
    }

    drawConnection(conn) {
        const svg = document.getElementById('connections-svg');
        const sourceNode = this.nodes.find(n => n.id === conn.sourceId);
        const targetNode = this.nodes.find(n => n.id === conn.targetId);

        if (!sourceNode || !targetNode) return;

        const sourceEl = document.getElementById('node-' + conn.sourceId);
        const targetEl = document.getElementById('node-' + conn.targetId);

        if (!sourceEl || !targetEl) return;

        const sourceRect = sourceEl.getBoundingClientRect();
        const targetRect = targetEl.getBoundingClientRect();

        let startX, startY, endX, endY;

        if (conn.sourcePort === 'output_true') {
            startX = sourceRect.right;
            startY = sourceRect.top + sourceRect.height * 0.35;
        } else if (conn.sourcePort === 'output_false') {
            startX = sourceRect.right;
            startY = sourceRect.top + sourceRect.height * 0.65;
        } else {
            startX = sourceRect.right;
            startY = sourceRect.top + sourceRect.height / 2;
        }

        endX = targetRect.left;
        endY = targetRect.top + targetRect.height / 2;

        const line = document.createElementNS('http://www.w3.org/2000/svg', 'path');
        line.className = 'connection-line';

        const scrollArea = document.getElementById('canvas-scroll-area');
        const rect = scrollArea.getBoundingClientRect();

        const midX = (startX + endX) / 2;
        const path = `M ${(startX - rect.left + scrollArea.scrollLeft) / this.canvasScale} ${(startY - rect.top + scrollArea.scrollTop) / this.canvasScale} C ${(midX - rect.left + scrollArea.scrollLeft) / this.canvasScale} ${(startY - rect.top + scrollArea.scrollTop) / this.canvasScale}, ${(midX - rect.left + scrollArea.scrollLeft) / this.canvasScale} ${(endY - rect.top + scrollArea.scrollTop) / this.canvasScale}, ${(endX - rect.left + scrollArea.scrollLeft) / this.canvasScale} ${(endY - rect.top + scrollArea.scrollTop) / this.canvasScale}`;

        line.setAttribute('d', path);

        line.addEventListener('click', (e) => {
            e.stopPropagation();
            this.removeConnection(conn);
        });

        svg.appendChild(line);
    }

    removeConnection(conn) {
        this.connections = this.connections.filter(c => c !== conn);
        this.updateConnections();
    }

    updatePropertiesPanel(node) {
        document.getElementById('properties-empty').style.display = 'none';
        document.getElementById('properties-content').classList.remove('hidden');

        document.getElementById('prop-id').value = node.id;

        document.getElementById('prop-story-title').style.display = ['story', 'start', 'end', 'choice', 'if', 'goto', 'location'].includes(node.type) ? 'flex' : 'none';
        document.getElementById('prop-title').value = node.title || '';

        document.getElementById('prop-story-text').style.display = ['story', 'start', 'end'].includes(node.type) ? 'flex' : 'none';
        document.getElementById('prop-text').value = node.text || '';

        document.getElementById('prop-choices').style.display = ['story', 'choice'].includes(node.type) ? 'flex' : 'none';
        this.renderChoices(node);

        document.getElementById('prop-condition').style.display = ['if', 'check_var'].includes(node.type) ? 'flex' : 'none';
        document.getElementById('prop-condition-type').value = node.conditionType || 'equals';
        document.getElementById('prop-condition-value').value = node.conditionValue || '';

        document.getElementById('prop-item').style.display = ['check_item', 'add_item', 'remove_item'].includes(node.type) ? 'flex' : 'none';
        document.getElementById('prop-item-id').value = node.itemId || '';

        document.getElementById('prop-variable').style.display = ['if', 'check_var', 'set_var', 'add_var', 'sub_var', 'toggle_var'].includes(node.type) ? 'flex' : 'none';
        document.getElementById('prop-var-name').value = node.varName || '';

        document.getElementById('prop-value').style.display = ['set_var', 'add_var', 'sub_var'].includes(node.type) ? 'flex' : 'none';
        document.getElementById('prop-value').value = node.value || '';

        document.getElementById('prop-end').style.display = node.type === 'end' ? 'flex' : 'none';
        document.getElementById('prop-end-type').value = node.endType || 'neutral';
        document.getElementById('prop-end-message').value = node.endMessage || '';

        document.getElementById('prop-goto').style.display = node.type === 'goto' ? 'flex' : 'none';
        document.getElementById('prop-goto-target').value = node.gotoTarget || '';

        document.getElementById('prop-location').style.display = node.type === 'location' ? 'flex' : 'none';
        document.getElementById('prop-location-name').value = node.locationName || '';

        document.getElementById('prop-actions').style.display = ['story', 'choice'].includes(node.type) ? 'flex' : 'none';
        this.renderActions(node);
    }

    renderChoices(node) {
        const list = document.getElementById('choices-list');
        list.innerHTML = '';

        const choices = node.choices || [];
        choices.forEach((choice, index) => {
            const item = document.createElement('div');
            item.className = 'choice-item';
            item.innerHTML = `
                <input type="text" value="${choice.text}" oninput="editor.updateChoice(${index}, 'text', this.value)" placeholder="选项文本" />
                <select class="choice-target" onchange="editor.updateChoice(${index}, 'next', this.value)">
                    <option value="">选择目标</option>
                    ${this.nodes.map(n =>
                `<option value="${n.id}" ${choice.next === n.id ? 'selected' : ''}>${n.title}</option>`
            ).join('')}
                </select>
                <button onclick="editor.removeChoice(${index})">✕</button>
            `;
            list.appendChild(item);
        });
    }

    addChoice() {
        if (!this.selectedNode) return;
        if (!this.selectedNode.choices) this.selectedNode.choices = [];

        this.selectedNode.choices.push({
            id: 'choice_' + this.choiceIdCounter++,
            text: '新选项',
            next: '',
            condition: null
        });

        this.renderChoices(this.selectedNode);
        this.updateNodeDisplay(this.selectedNode);
    }

    removeChoice(index) {
        if (!this.selectedNode || !this.selectedNode.choices) return;
        this.selectedNode.choices.splice(index, 1);
        this.renderChoices(this.selectedNode);
        this.updateNodeDisplay(this.selectedNode);
    }

    updateChoice(index, field, value) {
        if (!this.selectedNode || !this.selectedNode.choices) return;
        this.selectedNode.choices[index][field] = value;
        this.updateNodeDisplay(this.selectedNode);
    }

    renderActions(node) {
        const list = document.getElementById('actions-list');
        list.innerHTML = '';

        const actions = node.actions || [];
        actions.forEach((action, index) => {
            const item = document.createElement('div');
            item.className = 'action-item';

            let actionHtml = '';
            switch (action.type) {
                case 'addItem':
                    actionHtml = `<span>添加物品:</span> <input type="text" value="${action.itemId}" oninput="editor.updateAction(${index}, 'itemId', this.value)" />`;
                    break;
                case 'removeItem':
                    actionHtml = `<span>移除物品:</span> <input type="text" value="${action.itemId}" oninput="editor.updateAction(${index}, 'itemId', this.value)" />`;
                    break;
                case 'setVar':
                    actionHtml = `<span>设置变量:</span> <input type="text" value="${action.name}" oninput="editor.updateAction(${index}, 'name', this.value)" /> = <input type="text" value="${action.value}" oninput="editor.updateAction(${index}, 'value', this.value)" />`;
                    break;
                case 'addVar':
                    actionHtml = `<span>增加变量:</span> <input type="text" value="${action.name}" oninput="editor.updateAction(${index}, 'name', this.value)" /> + <input type="text" value="${action.value}" oninput="editor.updateAction(${index}, 'value', this.value)" />`;
                    break;
                case 'subVar':
                    actionHtml = `<span>减少变量:</span> <input type="text" value="${action.name}" oninput="editor.updateAction(${index}, 'name', this.value)" /> - <input type="text" value="${action.value}" oninput="editor.updateAction(${index}, 'value', this.value)" />`;
                    break;
                case 'toggleVar':
                    actionHtml = `<span>切换变量:</span> <input type="text" value="${action.name}" oninput="editor.updateAction(${index}, 'name', this.value)" />`;
                    break;
                case 'goto':
                    actionHtml = `<span>跳转至:</span> <select onchange="editor.updateAction(${index}, 'target', this.value)">
                        <option value="">选择目标</option>
                        ${this.nodes.map(n =>
                        `<option value="${n.id}" ${action.target === n.id ? 'selected' : ''}>${n.title}</option>`
                    ).join('')}
                    </select>`;
                    break;
            }

            item.innerHTML = `
                <div class="action-content">${actionHtml}</div>
                <button onclick="editor.removeAction(${index})">✕</button>
            `;
            list.appendChild(item);
        });
    }

    addAction(type) {
        if (!this.selectedNode) return;
        if (!this.selectedNode.actions) this.selectedNode.actions = [];

        const actionTypes = {
            addItem: { type: 'addItem', itemId: '' },
            removeItem: { type: 'removeItem', itemId: '' },
            setVar: { type: 'setVar', name: '', value: '' },
            addVar: { type: 'addVar', name: '', value: 1 },
            subVar: { type: 'subVar', name: '', value: 1 },
            toggleVar: { type: 'toggleVar', name: '' },
            goto: { type: 'goto', target: '' }
        };

        this.selectedNode.actions.push(actionTypes[type] || actionTypes.setVar);
        this.renderActions(this.selectedNode);
        this.updateNodeDisplay(this.selectedNode);
    }

    removeAction(index) {
        if (!this.selectedNode || !this.selectedNode.actions) return;
        this.selectedNode.actions.splice(index, 1);
        this.renderActions(this.selectedNode);
        this.updateNodeDisplay(this.selectedNode);
    }

    updateAction(index, field, value) {
        if (!this.selectedNode || !this.selectedNode.actions) return;
        this.selectedNode.actions[index][field] = value;
        this.updateNodeDisplay(this.selectedNode);
    }

    updateNodeProperty(property, value) {
        if (!this.selectedNode) return;

        this.selectedNode[property] = value;

        if (property === 'id') {
            const oldId = this.selectedNode.id;
            const newId = value;

            this.nodes.forEach(n => {
                if (n.gotoTarget === oldId) n.gotoTarget = newId;
                if (n.choices) {
                    n.choices.forEach(c => {
                        if (c.next === oldId) c.next = newId;
                    });
                }
                if (n.actions) {
                    n.actions.forEach(a => {
                        if (a.target === oldId) a.target = newId;
                    });
                }
            });

            this.connections.forEach(c => {
                if (c.sourceId === oldId) c.sourceId = newId;
                if (c.targetId === oldId) c.targetId = newId;
            });

            const nodeEl = document.getElementById('node-' + oldId);
            if (nodeEl) nodeEl.id = 'node-' + newId;
        }

        this.updateNodeDisplay(this.selectedNode);
        this.updateConnections();
        this.updateGotoTargetList();
    }

    updateNodeDisplay(node) {
        const nodeEl = document.getElementById('node-' + node.id);
        if (!nodeEl) return;
        nodeEl.innerHTML = this.getNodeHtml(node);
        this.setupNodeEvents(nodeEl, node);
    }

    updateGotoTargetList() {
        const select = document.getElementById('prop-goto-target');
        if (!select) return;

        const currentValue = select.value;
        select.innerHTML = '<option value="">选择目标节点</option>';

        this.nodes.forEach(node => {
            const option = document.createElement('option');
            option.value = node.id;
            option.textContent = node.title + ' (' + node.id + ')';
            select.appendChild(option);
        });

        select.value = currentValue;
    }

    deleteSelectedNode() {
        if (!this.selectedNode) return;

        const nodeId = this.selectedNode.id;

        this.connections = this.connections.filter(c =>
            c.sourceId !== nodeId && c.targetId !== nodeId
        );

        this.nodes = this.nodes.filter(n => n.id !== nodeId);

        const nodeEl = document.getElementById('node-' + nodeId);
        if (nodeEl) nodeEl.remove();

        this.deselectAll();
        this.updateConnections();
        this.updateGotoTargetList();

        if (this.nodes.length === 0) {
            this.showCanvasHint();
        }
    }

    hideCanvasHint() {
        document.getElementById('canvas-hint').style.display = 'none';
    }

    showCanvasHint() {
        document.getElementById('canvas-hint').style.display = 'flex';
    }

    newStory() {
        this.showConfirm('确定要新建故事吗？当前内容将丢失。', () => {
            this.nodes = [];
            this.connections = [];
            this.selectedNode = null;
            this.storyData = {
                title: '',
                subtitle: '',
                description: '',
                author: 'Unknown',
                version: '1.0',
                features: { inventory: false, map: false },
                variables: {},
                items: [],
                map: null,
                start: 'start',
                nodes: {}
            };
            document.getElementById('nodes-container').innerHTML = '';
            document.getElementById('connections-svg').innerHTML = '';
            this.deselectAll();
            this.loadStoryInfo();
            this.showCanvasHint();
        });
    }

    importStory() {
        document.getElementById('file-input').click();
    }

    handleFileImport(event) {
        const file = event.target.files[0];
        if (!file) return;

        const reader = new FileReader();
        reader.onload = (e) => {
            try {
                const data = JSON.parse(e.target.result);
                this.loadStory(data);
                this.showToast('故事导入成功！');
            } catch (err) {
                this.showToast('导入失败：无效的文件格式');
            }
        };
        reader.readAsText(file);
        event.target.value = '';
    }

    loadStory(story) {
        this.storyData = story;

        document.getElementById('story-title').value = story.title || '';
        document.getElementById('story-subtitle').value = story.subtitle || '';
        document.getElementById('story-desc').value = story.description || '';
        document.getElementById('story-author').value = story.author || 'Unknown';

        if (story.features) {
            document.getElementById('enable-inventory').checked = story.features.inventory || false;
            document.getElementById('enable-map').checked = story.features.map || false;
        }

        if (story.variables) {
            document.getElementById('story-variables').value = JSON.stringify(story.variables, null, 2);
        }

        if (story.items) {
            document.getElementById('story-items').value = JSON.stringify(story.items, null, 2);
        }

        this.nodes = [];
        this.connections = [];
        document.getElementById('nodes-container').innerHTML = '';
        document.getElementById('connections-svg').innerHTML = '';

        if (story.nodes) {
            let x = 100;
            let y = 100;

            Object.keys(story.nodes).forEach((key, index) => {
                const nodeData = story.nodes[key];
                nodeData.id = key;
                nodeData.x = x + (index % 4) * 250;
                nodeData.y = y + Math.floor(index / 4) * 140;

                this.nodes.push(nodeData);
                this.renderNode(nodeData);
            });

            this.buildConnectionsFromChoices();
            this.updateConnections();
            this.updateGotoTargetList();
            this.hideCanvasHint();
        }
    }

    buildConnectionsFromChoices() {
        this.nodes.forEach(node => {
            if (node.choices) {
                node.choices.forEach(choice => {
                    if (choice.next && this.nodes.find(n => n.id === choice.next)) {
                        const existing = this.connections.find(c =>
                            c.sourceId === node.id && c.targetId === choice.next
                        );
                        if (!existing) {
                            this.connections.push({
                                sourceId: node.id,
                                sourcePort: 'output',
                                targetId: choice.next,
                                targetPort: 'input'
                            });
                        }
                    }
                });
            }

            if (node.actions) {
                node.actions.forEach(action => {
                    if (action.type === 'goto' && action.target && this.nodes.find(n => n.id === action.target)) {
                        const existing = this.connections.find(c =>
                            c.sourceId === node.id && c.targetId === action.target
                        );
                        if (!existing) {
                            this.connections.push({
                                sourceId: node.id,
                                sourcePort: 'output',
                                targetId: action.target,
                                targetPort: 'input'
                            });
                        }
                    }
                });
            }
        });
    }

    exportStory() {
        const story = this.buildStoryData();

        const blob = new Blob([JSON.stringify(story, null, 2)], { type: 'application/json' });
        const url = URL.createObjectURL(blob);

        const a = document.createElement('a');
        a.href = url;
        a.download = (story.title || 'story') + '.story';
        a.click();

        URL.revokeObjectURL(url);
        this.showToast('故事导出成功！');
    }

    buildStoryData() {
        const variables = {};
        try {
            const varsStr = document.getElementById('story-variables').value;
            if (varsStr.trim()) {
                Object.assign(variables, JSON.parse(varsStr));
            }
        } catch (e) {
            console.warn('解析变量失败:', e);
        }

        const items = [];
        try {
            const itemsStr = document.getElementById('story-items').value;
            if (itemsStr.trim()) {
                const parsed = JSON.parse(itemsStr);
                if (Array.isArray(parsed)) {
                    items.push(...parsed);
                }
            }
        } catch (e) {
            console.warn('解析物品失败:', e);
        }

        const story = {
            title: document.getElementById('story-title').value || '未命名故事',
            subtitle: document.getElementById('story-subtitle').value || '',
            description: document.getElementById('story-desc').value || '',
            author: document.getElementById('story-author').value || 'Unknown',
            version: '1.0',
            features: {
                inventory: document.getElementById('enable-inventory').checked,
                map: document.getElementById('enable-map').checked
            },
            variables: variables,
            items: items,
            start: this.nodes.find(n => n.type === 'start')?.id || 'start',
            nodes: {}
        };

        this.nodes.forEach(node => {
            const nodeData = { ...node };
            delete nodeData.x;
            delete nodeData.y;

            if (node.type === 'end') {
                nodeData.isEnd = true;
            }

            if (node.type === 'location') {
                nodeData.location = node.locationName;
            }

            if (node.type === 'add_item') {
                if (!nodeData.actions) nodeData.actions = [];
                nodeData.actions.push({ type: 'addItem', itemId: node.itemId });
            } else if (node.type === 'remove_item') {
                if (!nodeData.actions) nodeData.actions = [];
                nodeData.actions.push({ type: 'removeItem', itemId: node.itemId });
            } else if (node.type === 'set_var') {
                if (!nodeData.actions) nodeData.actions = [];
                nodeData.actions.push({ type: 'setVar', name: node.varName, value: this.parseValue(node.value) });
            } else if (node.type === 'add_var') {
                if (!nodeData.actions) nodeData.actions = [];
                nodeData.actions.push({ type: 'addVar', name: node.varName, value: parseInt(node.value) || 1 });
            } else if (node.type === 'sub_var') {
                if (!nodeData.actions) nodeData.actions = [];
                nodeData.actions.push({ type: 'subVar', name: node.varName, value: parseInt(node.value) || 1 });
            } else if (node.type === 'toggle_var') {
                if (!nodeData.actions) nodeData.actions = [];
                nodeData.actions.push({ type: 'toggleVar', name: node.varName });
            } else if (node.type === 'goto') {
                if (!nodeData.actions) nodeData.actions = [];
                nodeData.actions.push({ type: 'goto', target: node.gotoTarget });
            }

            if (node.type === 'if' || node.type === 'check_var') {
                nodeData.condition = {
                    var: node.varName,
                    [this.getConditionOp(node.conditionType)]: this.parseValue(node.conditionValue)
                };
            } else if (node.type === 'check_item') {
                nodeData.condition = {
                    hasItem: node.itemId
                };
            }

            story.nodes[node.id] = nodeData;
        });

        return story;
    }

    getConditionOp(type) {
        const ops = {
            equals: 'eq',
            not_equals: 'ne',
            greater: 'gt',
            less: 'lt',
            greater_equal: 'gte',
            less_equal: 'lte'
        };
        return ops[type] || 'eq';
    }

    parseValue(value) {
        if (!isNaN(value)) return parseFloat(value);
        if (value === 'true') return true;
        if (value === 'false') return false;
        return value;
    }

    convertConditionType(type) {
        const map = {
            equals: '==',
            not_equals: '!=',
            greater: '>',
            less: '<',
            greater_equal: '>=',
            less_equal: '<='
        };
        return map[type] || '==';
    }

    testStory() {
        const story = this.buildStoryData();
        localStorage.setItem('testStory', JSON.stringify(story));
        window.open('../index.html?test=true', '_blank');
    }

    clearCanvas() {
        this.showConfirm('确定要清空画布吗？所有节点将被删除。', () => {
            this.nodes = [];
            this.connections = [];
            document.getElementById('nodes-container').innerHTML = '';
            document.getElementById('connections-svg').innerHTML = '';
            this.deselectAll();
            this.showCanvasHint();
        });
    }

    updateStoryInfo() {
        this.storyData.title = document.getElementById('story-title').value;
        this.storyData.subtitle = document.getElementById('story-subtitle').value;
        this.storyData.description = document.getElementById('story-desc').value;
        this.storyData.author = document.getElementById('story-author').value;

        try {
            this.storyData.variables = JSON.parse(document.getElementById('story-variables').value);
        } catch (e) {
            console.warn('变量格式错误:', e);
        }

        try {
            this.storyData.items = JSON.parse(document.getElementById('story-items').value);
        } catch (e) {
            console.warn('物品格式错误:', e);
        }
    }

    loadStoryInfo() {
        document.getElementById('story-title').value = this.storyData.title;
        document.getElementById('story-subtitle').value = this.storyData.subtitle;
        document.getElementById('story-desc').value = this.storyData.description;
        document.getElementById('story-author').value = this.storyData.author;
        document.getElementById('enable-inventory').checked = this.storyData.features?.inventory || false;
        document.getElementById('enable-map').checked = this.storyData.features?.map || false;
        document.getElementById('story-variables').value = JSON.stringify(this.storyData.variables || {}, null, 2);
        document.getElementById('story-items').value = JSON.stringify(this.storyData.items || [], null, 2);
    }

    updateFeatures() {
        this.storyData.features = {
            inventory: document.getElementById('enable-inventory').checked,
            map: document.getElementById('enable-map').checked
        };
    }

    toggleStoryInfo() {
        const content = document.getElementById('story-info-content');
        const toggle = document.querySelector('.info-toggle');

        if (content.classList.contains('hidden')) {
            content.classList.remove('hidden');
            toggle.classList.remove('collapsed');
        } else {
            content.classList.add('hidden');
            toggle.classList.add('collapsed');
        }
    }

    showToast(message) {
        const toast = document.createElement('div');
        toast.className = 'toast';
        toast.textContent = message;
        toast.style.cssText = `
            position: fixed;
            top: 20px;
            right: 20px;
            background: #58a6ff;
            color: white;
            padding: 12px 24px;
            border-radius: 8px;
            box-shadow: 0 4px 15px rgba(88, 166, 255, 0.3);
            z-index: 2000;
            animation: slideIn 0.3s ease;
        `;
        document.body.appendChild(toast);

        setTimeout(() => {
            toast.style.animation = 'slideOut 0.3s ease';
            setTimeout(() => toast.remove(), 300);
        }, 3000);
    }

    showConfirm(message, onConfirm) {
        const overlay = document.getElementById('modal-overlay');
        const title = document.getElementById('modal-title');
        const msg = document.getElementById('modal-message');
        const buttons = document.getElementById('modal-buttons');

        title.textContent = '确认';
        msg.textContent = message;
        buttons.innerHTML = `
            <button class="secondary-btn" onclick="editor.closeModal()">取消</button>
            <button class="primary-btn" onclick="editor.confirmAction()">确认</button>
        `;

        this.confirmCallback = onConfirm;
        overlay.classList.add('show');
    }

    confirmAction() {
        if (this.confirmCallback) {
            this.confirmCallback();
        }
        this.closeModal();
    }

    closeModal() {
        document.getElementById('modal-overlay').classList.remove('show');
        this.confirmCallback = null;
    }
}

const editor = new NodaEditor();

const style = document.createElement('style');
style.textContent = `
    @keyframes slideIn {
        from { transform: translateX(100%); opacity: 0; }
        to { transform: translateX(0); opacity: 1; }
    }
    @keyframes slideOut {
        from { transform: translateX(0); opacity: 1; }
        to { transform: translateX(100%); opacity: 0; }
    }
`;
document.head.appendChild(style);