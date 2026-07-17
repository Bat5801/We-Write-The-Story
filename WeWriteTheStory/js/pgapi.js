class PGAPI {
    constructor() {
        this.KY2 = '6EB9DF713ABFF26D118579B7023881C1';
        this.API_BASE = 'https://api.pgaot.com';
        this.TABLES = {
            USERS: '189b9fb3c7ac3940a0bcc3f1de784a1',
            LEADERBOARD: '807004cd6ddabf26bcb0b9feaf824ebd'
        };
        this.currentUser = null;
        this.sdkReady = false;
    }

    async waitSDK() {
        if (this.sdkReady) return;
        console.log('[PGAPI] 等待加密库加载...');
        return new Promise(resolve => {
            let attempts = 0;
            const check = () => {
                attempts++;
                if (window.pgsign && typeof window.pgsign.ajax === 'function') {
                    window.pgsign.ky2 = this.KY2;
                    this.sdkReady = true;
                    console.log('[PGAPI] 加密库加载成功');
                    resolve();
                } else if (attempts >= 200) {
                    console.warn('[PGAPI] 加密库超时未加载，请检查网络');
                    resolve();
                } else {
                    setTimeout(check, 100);
                }
            };
            setTimeout(check, 200);
        });
    }

    async ajax(url, params, method = 'POST', headers = {}) {
        await this.waitSDK();

        if (window.pgsign && typeof window.pgsign.ajax === 'function') {
            return new Promise((resolve, reject) => {
                window.pgsign.ajax(
                    url,
                    params,
                    method,
                    { ...headers, 'Content-Type': 'application/json;charset=UTF-8' }
                ).then(result => {
                    try {
                        const data = typeof result === 'string' ? JSON.parse(result) : result;
                        if (data.code === 200) {
                            resolve(data);
                        } else if (data.code === 1010) {
                            reject(new Error(data.msg || '无权访问（检查数据表访问权限和白名单）'));
                        } else {
                            reject(new Error(data.msg || '请求失败，错误码: ' + data.code));
                        }
                    } catch (e) {
                        reject(new Error('解析响应失败: ' + e.message));
                    }
                }).catch(reject);
            });
        } else {
            throw new Error('加密库加载失败，请刷新页面重试');
        }
    }

    async queryTable(tableId, fields = '*', filter = '', sort = '', page = 1, limit = 100) {
        return this.ajax(this.API_BASE + '/dbs/cloud/get_table_data', {
            tableid: tableId,
            fields: fields,
            filter: filter,
            sort: sort,
            page: page,
            limit: limit
        });
    }

    async insertTable(tableId, data) {
        return this.ajax(this.API_BASE + '/dbs/cloud/insert_table_data', {
            tableid: tableId,
            data: data
        });
    }

    async updateTable(tableId, data, filter) {
        return this.ajax(this.API_BASE + '/dbs/cloud/update_table_data', {
            tableid: tableId,
            data: data,
            filter: filter
        });
    }

    async register(username, password, nickname) {
        const hashedPassword = await this.hashPassword(password);
        const exists = await this.queryTable(
            this.TABLES.USERS,
            'username',
            'username="' + username + '"',
            '',
            1,
            1
        );
        if (exists.count > 0) {
            throw new Error('用户名已存在');
        }
        return this.insertTable(this.TABLES.USERS, {
            username: username,
            password: hashedPassword,
            nickname: nickname || username,
            createdAt: Date.now()
        });
    }

    async login(username, password) {
        const hashedPassword = await this.hashPassword(password);
        const result = await this.queryTable(
            this.TABLES.USERS,
            '*',
            'username="' + username + '" AND password="' + hashedPassword + '"',
            '',
            1,
            1
        );
        if (result.count === 0) {
            throw new Error('用户名或密码错误');
        }
        this.currentUser = result.fields[0];
        localStorage.setItem('wwt_user', JSON.stringify(this.currentUser));
        return this.currentUser;
    }

    logout() {
        this.currentUser = null;
        localStorage.removeItem('wwt_user');
    }

    loadUser() {
        const saved = localStorage.getItem('wwt_user');
        if (saved) {
            try { this.currentUser = JSON.parse(saved); } catch { this.currentUser = null; }
        }
        return this.currentUser;
    }

    async hashPassword(password) {
        const msgBuffer = new TextEncoder().encode(password);
        const hashBuffer = await crypto.subtle.digest('SHA-256', msgBuffer);
        const hashArray = Array.from(new Uint8Array(hashBuffer));
        return hashArray.map(b => b.toString(16).padStart(2, '0')).join('');
    }

    async submitScore(storyId, score, playTime, endType) {
        if (!this.currentUser) return;
        await this.waitSDK();
        try {
            const existing = await this.queryTable(
                this.TABLES.LEADERBOARD,
                'score',
                'username="' + this.currentUser.username + '" AND storyId="' + storyId + '"',
                '',
                1,
                1
            );
            const data = {
                username: this.currentUser.username,
                nickname: this.currentUser.nickname,
                score: score.toString(),
                storyId: storyId,
                playTime: playTime.toString(),
                endType: endType,
                createdAt: Date.now().toString()
            };
            if (existing.count > 0) {
                const currentScore = parseInt(existing.fields[0].score) || 0;
                if (score > currentScore) {
                    await this.updateTable(
                        this.TABLES.LEADERBOARD,
                        data,
                        'username="' + this.currentUser.username + '" AND storyId="' + storyId + '"'
                    );
                }
            } else {
                await this.insertTable(this.TABLES.LEADERBOARD, data);
            }
        } catch (e) {
            console.warn('提交分数失败:', e.message);
        }
    }

    async getLeaderboard(storyId = '', limit = 50) {
        const filter = storyId
            ? 'storyId="' + storyId + '" AND endType="good"'
            : 'endType="good"';
        const result = await this.queryTable(this.TABLES.LEADERBOARD, '*', filter, 'score DESC', 1, limit);
        return result.fields || [];
    }
}

const pgApi = new PGAPI();
