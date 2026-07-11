{
    "title": "魔法学院入门教程",
    "description": "一个完整的教学故事，展示所有 STORY 文件功能",
    "version": "1.0",
    "variables": {
        "health": 100,
        "mana": 50,
        "gold": 0,
        "level": 1,
        "has_completed_tutorial": false,
        "spell_count": 0,
        "player_name": "学徒"
    },
    "features": {
        "inventory": true,
        "map": true
    },
    "items": [
        { "id": "magic_wand", "name": "魔法杖", "icon": "🪄" },
        { "id": "health_potion", "name": "生命药水", "icon": "🧪" },
        { "id": "spell_book", "name": "咒语书", "icon": "📖" },
        { "id": "gold_coin", "name": "金币", "icon": "💰" },
        { "id": "school_key", "name": "学院钥匙", "icon": "🔑" }
    ],
    "map": {
        "startingLocation": "dormitory",
        "locations": {
            "dormitory": {
                "name": "宿舍",
                "description": "你的房间"
            },
            "classroom": {
                "name": "教室",
                "description": "学习魔法的地方"
            },
            "library": {
                "name": "图书馆",
                "description": "藏书丰富的地方"
            },
            "courtyard": {
                "name": "庭院",
                "description": "练习魔法的场地"
            },
            "treasure_room": {
                "name": "宝藏室",
                "description": "存放宝物的地方"
            }
        },
        "connections": {
            "dormitory": ["classroom", "courtyard"],
            "classroom": ["dormitory", "library"],
            "library": ["classroom", "treasure_room"],
            "courtyard": ["dormitory", "library"],
            "treasure_room": ["library"]
        }
    },
    "start": "welcome",
    "nodes": {
        "welcome": {
            "text": "🌟 欢迎来到魔法学院，{player_name}！\n\n这是你的入门教程，将带你了解所有基本操作。\n\n当前状态：\n❤️ 生命值：{health}\n💧 魔力值：{mana}\n💰 金币：{gold}\n📚 等级：{level}",
            "location": "dormitory",
            "choices": [
                {
                    "text": "开始学习",
                    "next": "learn_basics",
                    "actions": [
                        { "type": "setVar", "name": "mana", "value": 60 }
                    ]
                },
                {
                    "text": "查看背包",
                    "next": "check_inventory"
                },
                {
                    "text": "探索宿舍",
                    "next": "explore_dorm"
                }
            ]
        },
        "check_inventory": {
            "text": "🎒 打开背包...\n\n你的背包目前是空的。\n\n在冒险中，你会获得各种物品。\n物品会自动跟踪状态，比如获取钥匙后，变量 has_key 会变为 true。",
            "choices": [
                { "text": "返回", "next": "welcome" }
            ]
        },
        "explore_dorm": {
            "text": "你在宿舍里探索，发现了一张纸条：\n\n'去教室找艾拉老师学习基础魔法。'\n\n你还发现了一个抽屉，里面有一瓶生命药水！",
            "actions": [
                { "type": "addItem", "itemId": "health_potion" },
                { "type": "addVar", "name": "gold", "value": 10 }
            ],
            "choices": [
                { "text": "前往教室", "next": "learn_basics" },
                { "text": "返回", "next": "welcome" }
            ]
        },
        "learn_basics": {
            "text": "📚 你来到了教室。艾拉老师正在等你。\n\n'欢迎，{player_name}！今天我们学习基础魔法。'\n\n老师递给你一根魔法杖。",
            "location": "classroom",
            "actions": [
                { "type": "addItem", "itemId": "magic_wand" },
                { "type": "setVar", "name": "spell_count", "value": 1 }
            ],
            "choices": [
                {
                    "text": "学习火球术",
                    "next": "learn_fireball",
                    "condition": {
                        "and": [
                            { "hasItem": "magic_wand" },
                            { "var": "mana", "gte": 20 }
                        ]
                    }
                },
                {
                    "text": "学习治愈术",
                    "next": "learn_heal",
                    "condition": {
                        "var": "health", "lt": 100
                    }
                },
                {
                    "text": "询问关于图书馆",
                    "next": "ask_library"
                }
            ]
        },
        "learn_fireball": {
            "text": "🔥 你举起魔法杖，念出咒语：'Ignis Ardor!'\n\n一团火球从杖尖喷出，击中了远处的靶子！\n\n艾拉老师满意地点点头：'很好！消耗了 20 魔力。'",
            "actions": [
                { "type": "subVar", "name": "mana", "value": 20 },
                { "type": "addVar", "name": "spell_count", "value": 1 },
                { "type": "setFlag", "flag": { "can_use_fireball": true } }
            ],
            "choices": [
                { "text": "继续学习", "next": "learn_basics" },
                { "text": "去图书馆", "next": "go_library" }
            ]
        },
        "learn_heal": {
            "text": "💚 你举起魔法杖，念出治愈咒语：'Vitae Restauro!'\n\n温暖的光芒包围着你，伤口慢慢愈合。\n\n生命值恢复了 30 点！",
            "actions": [
                { "type": "subVar", "name": "mana", "value": 15 },
                { "type": "addVar", "name": "health", "value": 30 },
                { "type": "addVar", "name": "spell_count", "value": 1 }
            ],
            "choices": [
                { "text": "继续学习", "next": "learn_basics" },
                { "text": "去图书馆", "next": "go_library" }
            ]
        },
        "ask_library": {
            "text": "'图书馆里有很多古老的咒语书，' 老师说。\n'但要进入宝藏室，你需要一把特殊的钥匙。'\n\n'钥匙藏在庭院的喷泉下面。'",
            "choices": [
                { "text": "去庭院找钥匙", "next": "go_courtyard" },
                { "text": "先去图书馆", "next": "go_library" }
            ]
        },
        "go_courtyard": {
            "text": "🏡 你来到了庭院。中央有一个喷泉，水花四溅。\n\n你仔细观察，发现喷泉底座有一个暗格。\n\n你需要移开一块石头才能打开暗格。",
            "location": "courtyard",
            "choices": [
                {
                    "text": "用魔法移开石头",
                    "next": "get_key",
                    "condition": {
                        "var": "mana", "gte": 10
                    },
                    "actions": [
                        { "type": "subVar", "name": "mana", "value": 10 }
                    ]
                },
                {
                    "text": "用手搬开石头",
                    "next": "get_key_manual",
                    "condition": {
                        "var": "health", "gte": 20
                    },
                    "actions": [
                        { "type": "subVar", "name": "health", "value": 10 }
                    ]
                },
                { "text": "放弃", "next": "learn_basics" }
            ]
        },
        "get_key": {
            "text": "✨ 你用魔法移开了石头，暗格打开了！\n\n里面放着一把闪闪发光的钥匙——学院钥匙！",
            "actions": [
                { "type": "addItem", "itemId": "school_key" },
                { "type": "addVar", "name": "gold", "value": 20 }
            ],
            "choices": [
                { "text": "去图书馆", "next": "go_library" },
                { "text": "返回教室", "next": "learn_basics" }
            ]
        },
        "get_key_manual": {
            "text": "💪 你用力搬开了石头，虽然有点累，但暗格打开了！\n\n里面放着一把闪闪发光的钥匙——学院钥匙！",
            "actions": [
                { "type": "addItem", "itemId": "school_key" },
                { "type": "addVar", "name": "gold", "value": 10 }
            ],
            "choices": [
                { "text": "去图书馆", "next": "go_library" },
                { "text": "返回教室", "next": "learn_basics" }
            ]
        },
        "go_library": {
            "text": "📖 你来到了图书馆。书架上摆满了古老的书籍。\n\n一位图书管理员走过来：'欢迎！需要帮忙吗？'\n\n你注意到角落有一本发光的书。",
            "location": "library",
            "choices": [
                {
                    "text": "阅读发光的书",
                    "next": "read_spell_book",
                    "condition": {
                        "hasItem": "magic_wand"
                    }
                },
                {
                    "text": "询问宝藏室",
                    "next": "ask_treasure"
                },
                { "text": "返回教室", "next": "learn_basics" }
            ]
        },
        "read_spell_book": {
            "text": "📚 你打开发光的书，里面记载着高级咒语！\n\n'这是一本失传的咒语书，' 管理员惊叹道。\n\n你学会了新的魔法！",
            "actions": [
                { "type": "addItem", "itemId": "spell_book" },
                { "type": "addVar", "name": "mana", "value": 30 },
                { "type": "addVar", "name": "spell_count", "value": 2 },
                { "type": "setFlag", "flag": { "learned_advanced_spell": true } }
            ],
            "choices": [
                { "text": "继续探索", "next": "go_library" },
                { "text": "去宝藏室", "next": "go_treasure" }
            ]
        },
        "ask_treasure": {
            "text": "'宝藏室在图书馆深处，' 管理员说。\n'但门是锁着的，需要学院钥匙才能打开。'\n\n你有钥匙吗？",
            "choices": [
                {
                    "text": "用钥匙开门",
                    "next": "go_treasure",
                    "condition": {
                        "hasItem": "school_key"
                    }
                },
                {
                    "text": "去庭院找钥匙",
                    "next": "go_courtyard",
                    "condition": {
                        "notHasItem": "school_key"
                    }
                },
                { "text": "返回", "next": "go_library" }
            ]
        },
        "go_treasure": {
            "text": "🏰 你来到了宝藏室门前。\n\n门上有一个钥匙孔，你用学院钥匙打开了门。\n\n里面金光闪闪，堆满了金币和魔法物品！",
            "location": "treasure_room",
            "actions": [
                { "type": "removeItem", "itemId": "school_key" },
                { "type": "addItem", "itemId": "gold_coin" },
                { "type": "addVar", "name": "gold", "value": 100 },
                { "type": "addVar", "name": "level", "value": 1 }
            ],
            "choices": [
                {
                    "text": "拿取宝藏",
                    "next": "ending_victory",
                    "condition": {
                        "var": "spell_count", "gte": 3
                    }
                },
                {
                    "text": "拿取宝藏（但还没学够魔法）",
                    "next": "ending_neutral"
                },
                {
                    "text": "返回继续学习",
                    "next": "learn_basics"
                }
            ]
        },
        "ending_victory": {
            "text": "🌟🌟🌟 恭喜你完成了魔法学院入门教程！\n\n最终状态：\n❤️ 生命值：{health}\n💧 魔力值：{mana}\n💰 金币：{gold}\n📚 等级：{level}\n✨ 学会的魔法：{spell_count} 种\n\n你已经掌握了所有基本操作：\n- 使用变量跟踪状态\n- 获取和使用物品\n- 条件判断选项\n- 执行动作\n- 探索地图\n\n现在你可以开始创作自己的故事了！",
            "isEnd": true,
            "endType": "true",
            "actions": [
                { "type": "setVar", "name": "has_completed_tutorial", "value": true }
            ]
        },
        "ending_neutral": {
            "text": "🎉 恭喜你找到了宝藏！\n\n最终状态：\n❤️ 生命值：{health}\n💧 魔力值：{mana}\n💰 金币：{gold}\n📚 等级：{level}\n\n虽然你拿到了宝藏，但还可以学习更多魔法。\n建议重新游玩，尝试学习所有魔法！",
            "isEnd": true,
            "endType": "victory"
        }
    }
}
