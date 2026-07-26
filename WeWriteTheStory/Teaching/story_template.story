{
    "title": "故事标题",
    "subtitle": "副标题",
    "description": "故事描述",
    "author": "作者名称",
    "version": "1.0",
    "variables": {
        "health": 100,
        "mana": 50,
        "gold": 0,
        "level": 1,
        "has_key": false,
        "completed_qte": false,
        "player_name": "玩家"
    },
    "features": {
        "inventory": true,
        "map": true
    },
    "items": [
        { 
            "id": "item_id_1", 
            "name": "物品名称", 
            "icon": "📦", 
            "description": "物品描述" 
        },
        { 
            "id": "key", 
            "name": "钥匙", 
            "icon": "🔑", 
            "description": "一把古老的钥匙" 
        },
        { 
            "id": "potion", 
            "name": "药水", 
            "icon": "🧪", 
            "description": "恢复生命值的药水" 
        }
    ],
    "map": {
        "title": "地图标题",
        "locations": [
            { 
                "id": "location_1", 
                "name": "地点1名称", 
                "description": "地点1描述" 
            },
            { 
                "id": "location_2", 
                "name": "地点2名称", 
                "description": "地点2描述" 
            },
            { 
                "id": "location_3", 
                "name": "地点3名称", 
                "description": "地点3描述" 
            }
        ],
        "startingLocation": "location_1"
    },
    "start": "start",
    "nodes": {
        "start": {
            "id": "start",
            "location": "location_1",
            "text": "故事开始\n\n欢迎来到这个故事！\n\n当前状态：\n❤️ 生命值：{health}\n💧 魔力值：{mana}\n💰 金币：{gold}\n\n这是一个空白模板，你可以根据需要修改内容。",
            "actions": [],
            "choices": [
                { 
                    "text": "开始探索", 
                    "next": "explore_1",
                    "condition": {
                        "var": "health", "gte": 1
                    },
                    "actions": [
                        { "type": "addVar", "name": "gold", "value": 10 }
                    ]
                },
                { 
                    "text": "查看物品", 
                    "next": "check_inventory",
                    "condition": {
                        "hasItem": "potion"
                    }
                },
                { 
                    "text": "继续", 
                    "next": "explore_1"
                }
            ]
        },
        "explore_1": {
            "id": "explore_1",
            "location": "location_1",
            "text": "你来到了地点1。\n\n这里有一些描述性文字。\n\n你发现了一些线索...",
            "actions": [
                { "type": "addItem", "itemId": "item_id_1" },
                { "type": "setVar", "name": "has_key", "value": true }
            ],
            "choices": [
                { 
                    "text": "前往地点2", 
                    "next": "explore_2",
                    "condition": {
                        "hasItem": "key"
                    }
                },
                { 
                    "text": "执行QTE测试（快速点击）", 
                    "next": "qte_click_test"
                },
                { 
                    "text": "返回", 
                    "next": "start"
                }
            ]
        },
        "explore_2": {
            "id": "explore_2",
            "location": "location_2",
            "text": "你来到了地点2。\n\n这里有一些描述性文字。\n\n前方有一个神秘的门，需要输入密码才能打开！",
            "input": {
                "label": "输入密码：",
                "type": "text",
                "placeholder": "请输入密码",
                "maxLength": 20,
                "correctAnswer": ["password", "密码"],
                "success": "input_success",
                "fail": "input_fail"
            }
        },
        "input_success": {
            "id": "input_success",
            "location": "location_2",
            "text": "密码正确！门打开了！\n\n你发现了一个重要的线索...",
            "actions": [
                { "type": "addVar", "name": "gold", "value": 50 },
                { "type": "addItem", "itemId": "potion" }
            ],
            "choices": [
                { "text": "前往地点3", "next": "explore_3" },
                { "text": "执行QTE测试（长按）", "next": "qte_hold_test" }
            ]
        },
        "input_fail": {
            "id": "input_fail",
            "location": "location_2",
            "text": "密码错误！门没有打开。\n\n再试一次？",
            "actions": [
                { "type": "subVar", "name": "health", "value": 10 }
            ],
            "choices": [
                { "text": "再试一次", "next": "explore_2" },
                { "text": "返回地点1", "next": "explore_1" }
            ]
        },
        "explore_3": {
            "id": "explore_3",
            "location": "location_3",
            "text": "你来到了地点3。\n\n这里是故事的关键地点。\n\n你需要完成一个按键序列QTE才能继续！",
            "qte": {
                "type": "sequence",
                "title": "按键序列测试",
                "description": "按照顺序按下指定的按键！",
                "keys": ["Z", "X", "Z", "X"],
                "timeLimit": 5000,
                "success": "qte_sequence_success",
                "fail": "qte_sequence_fail"
            }
        },
        "qte_click_test": {
            "id": "qte_click_test",
            "location": "location_1",
            "text": "你遇到了一个需要快速点击的挑战！\n\n在限定时间内快速点击按钮完成任务！",
            "qte": {
                "type": "click",
                "title": "快速点击测试",
                "description": "快速点击按钮！在时间结束前完成指定次数！",
                "buttonText": "点击！",
                "requiredClicks": 15,
                "timeLimit": 5000,
                "success": "qte_click_success",
                "fail": "qte_click_fail"
            }
        },
        "qte_click_success": {
            "id": "qte_click_success",
            "location": "location_1",
            "text": "你成功完成了快速点击挑战！\n\n获得奖励！",
            "actions": [
                { "type": "addVar", "name": "gold", "value": 30 },
                { "type": "setVar", "name": "completed_qte", "value": true }
            ],
            "choices": [
                { "text": "继续探索", "next": "explore_1" },
                { "text": "前往地点2", "next": "explore_2" }
            ]
        },
        "qte_click_fail": {
            "id": "qte_click_fail",
            "location": "location_1",
            "text": "时间到！挑战失败！\n\n再试一次？",
            "actions": [
                { "type": "subVar", "name": "health", "value": 15 }
            ],
            "choices": [
                { "text": "再试一次", "next": "qte_click_test" },
                { "text": "返回", "next": "explore_1" }
            ]
        },
        "qte_hold_test": {
            "id": "qte_hold_test",
            "location": "location_2",
            "text": "你遇到了一个需要长按的挑战！\n\n按住按钮保持进度，松手会导致失败！",
            "qte": {
                "type": "hold",
                "title": "长按测试",
                "description": "按住按钮保持进度！松手会导致进度退回！",
                "buttonText": "按住不放",
                "holdDuration": 4000,
                "timeLimit": 6000,
                "success": "qte_hold_success",
                "fail": "qte_hold_fail"
            }
        },
        "qte_hold_success": {
            "id": "qte_hold_success",
            "location": "location_2",
            "text": "你成功完成了长按挑战！\n\n获得奖励！",
            "actions": [
                { "type": "addVar", "name": "mana", "value": 20 },
                { "type": "addVar", "name": "health", "value": 20 }
            ],
            "choices": [
                { "text": "前往地点3", "next": "explore_3" },
                { "text": "返回地点1", "next": "explore_1" }
            ]
        },
        "qte_hold_fail": {
            "id": "qte_hold_fail",
            "location": "location_2",
            "text": "你松手了！挑战失败！\n\n再试一次？",
            "actions": [
                { "type": "subVar", "name": "health", "value": 10 }
            ],
            "choices": [
                { "text": "再试一次", "next": "qte_hold_test" },
                { "text": "返回", "next": "input_success" }
            ]
        },
        "qte_sequence_success": {
            "id": "qte_sequence_success",
            "location": "location_3",
            "text": "你成功完成了按键序列挑战！\n\n故事继续...",
            "actions": [
                { "type": "addVar", "name": "level", "value": 1 },
                { "type": "addVar", "name": "gold", "value": 100 }
            ],
            "choices": [
                { "text": "查看最终状态", "next": "ending_victory" }
            ]
        },
        "qte_sequence_fail": {
            "id": "qte_sequence_fail",
            "location": "location_3",
            "text": "按键顺序错误！挑战失败！\n\n再试一次？",
            "actions": [
                { "type": "subVar", "name": "health", "value": 10 }
            ],
            "choices": [
                { "text": "再试一次", "next": "explore_3" },
                { "text": "返回地点2", "next": "input_success" }
            ]
        },
        "check_inventory": {
            "id": "check_inventory",
            "location": "location_1",
            "text": "你查看了物品栏。\n\n当前物品：\n- 药水：恢复生命值\n\n使用药水？",
            "choices": [
                { 
                    "text": "使用药水", 
                    "next": "use_potion",
                    "condition": {
                        "hasItem": "potion"
                    }
                },
                { "text": "返回", "next": "start" }
            ]
        },
        "use_potion": {
            "id": "use_potion",
            "location": "location_1",
            "text": "你使用了药水！\n\n生命值恢复了30点！",
            "actions": [
                { "type": "removeItem", "itemId": "potion" },
                { "type": "addVar", "name": "health", "value": 30 }
            ],
            "choices": [
                { "text": "继续", "next": "start" }
            ]
        },
        "ending_victory": {
            "id": "ending_victory",
            "location": "location_3",
            "text": "🎉 恭喜你完成了故事！\n\n最终状态：\n❤️ 生命值：{health}\n💧 魔力值：{mana}\n💰 金币：{gold}\n📚 等级：{level}\n\n你已经掌握了所有基本操作：\n- 使用变量跟踪状态\n- 获取和使用物品\n- 条件判断选项\n- 执行动作\n- 探索地图\n- 快速点击QTE\n- 长按QTE\n- 按键序列QTE\n- 输入框验证\n\n现在你可以开始创作自己的故事了！",
            "isEnd": true,
            "endType": "true",
            "endMessage": "故事完成！"
        },
        "ending_fail": {
            "id": "ending_fail",
            "location": "location_1",
            "text": "💀 游戏结束\n\n你的生命值归零了...\n\n重新开始？",
            "isEnd": true,
            "endType": "death",
            "endMessage": "生命值耗尽"
        }
    }
}