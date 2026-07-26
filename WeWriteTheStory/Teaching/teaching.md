# 《魔法学院入门教程》创作指南

## 目录

1. [需求分析](#1-需求分析)
2. [结构设计](#2-结构设计)
3. [内容编写](#3-内容编写)
4. [功能实现](#4-功能实现)
5. [测试验证](#5-测试验证)
6. [完整代码解析](#6-完整代码解析)

---

## 1. 需求分析

### 1.1 目标

创建一个教学性质的 STORY 文件，展示所有核心功能，帮助新手开发者快速上手。

### 1.2 功能覆盖清单

| 功能模块       | 是否覆盖 | 说明                                        |
| -------------- | -------- | ------------------------------------------- |
| 基础节点与选项 | ✅       | 展示最基本的节点结构                        |
| 变量系统       | ✅       | 定义、使用、修改变量                        |
| 条件检测       | ✅       | 物品条件、变量条件、组合条件                |
| 动作系统       | ✅       | addItem、removeItem、setVar、addVar、subVar |
| 背包系统       | ✅       | 物品定义、获取、移除、显示                  |
| 地图系统       | ✅       | 位置标记、连接关系                          |
| 文本变量替换   | ✅       | {var_name} 语法                             |
| 多结局         | ✅       | 真结局、胜利结局                            |

### 1.3 故事背景

设定在一个魔法学院中，玩家扮演一名新入学的学徒，通过完成各种任务学习魔法。

---

## 2. 结构设计

### 2.1 故事流程设计

```
欢迎界面 (welcome)
    │
    ├── 查看背包 (check_inventory) ──┐
    ├── 探索宿舍 (explore_dorm) ─────┤
    │         │                      │
    │         └── 获取生命药水        │
    │                                │
    └── 开始学习 (learn_basics) ◀────┘
              │
              ├── 学习火球术 (learn_fireball)
              ├── 学习治愈术 (learn_heal)
              │      │
              │      └── 条件: health < 100
              └── 询问图书馆 (ask_library)
                    │
                    ├── 去庭院找钥匙 (go_courtyard)
                    │      │
                    │      ├── 用魔法移开石头
                    │      │      └── 条件: mana >= 20
                    │      └── 用手搬开石头
                    │            └── 条件: health >= 20
                    │
                    └── 去图书馆 (go_library)
                          │
                          ├── 阅读咒语书 (read_spell_book)
                          │      └── 条件: 有魔法杖
                          └── 询问宝藏室 (ask_treasure)
                                │
                                └── 去宝藏室 (go_treasure)
                                      │
                                      ├── 真结局: 学会3种魔法
                                      └── 胜利结局: 普通通关
```

### 2.2 变量设计

| 变量名                 | 类型   | 初始值 | 说明           |
| ---------------------- | ------ | ------ | -------------- |
| health                 | 数字   | 100    | 生命值         |
| mana                   | 数字   | 50     | 魔力值         |
| gold                   | 数字   | 0      | 金币           |
| level                  | 数字   | 1      | 等级           |
| spell_count            | 数字   | 0      | 学会的魔法数量 |
| player_name            | 字符串 | "学徒" | 玩家名称       |
| has_completed_tutorial | 布尔   | false  | 是否完成教程   |

### 2.3 物品设计

| 物品ID        | 名称     | 图标 | 获取位置 |
| ------------- | -------- | ---- | -------- |
| magic_wand    | 魔法杖   | 🪄   | 教室     |
| health_potion | 生命药水 | 🧪   | 宿舍     |
| spell_book    | 咒语书   | 📖   | 图书馆   |
| gold_coin     | 金币     | 💰   | 宝藏室   |
| school_key    | 学院钥匙 | 🔑   | 庭院     |

### 2.4 地图设计

| 位置          | 名称   | 连接                     |
| ------------- | ------ | ------------------------ |
| dormitory     | 宿舍   | classroom, courtyard     |
| classroom     | 教室   | dormitory, library       |
| library       | 图书馆 | classroom, treasure_room |
| courtyard     | 庭院   | dormitory, library       |
| treasure_room | 宝藏室 | library                  |

---

## 3. 内容编写

### 3.1 第一步：创建文件

1. 打开文本编辑器（如 VS Code）
2. 新建文件，命名为 `teaching.story`
3. 确保文件编码为 UTF-8

### 3.2 第二步：编写基础结构

```json
{
  "title": "魔法学院入门教程",
  "description": "一个完整的教学故事，展示所有 STORY 文件功能",
  "version": "1.0",
  "start": "welcome",
  "nodes": {}
}
```

### 3.3 第三步：添加变量定义

在 `start` 字段后添加：

```json
"variables": {
    "health": 100,
    "mana": 50,
    "gold": 0,
    "level": 1,
    "has_completed_tutorial": false,
    "spell_count": 0,
    "player_name": "学徒"
},
```

### 3.4 第四步：启用功能特性

```json
"features": {
    "inventory": true,
    "map": true
},
```

### 3.5 第五步：定义物品

```json
"items": [
    { "id": "magic_wand", "name": "魔法杖", "icon": "🪄" },
    { "id": "health_potion", "name": "生命药水", "icon": "🧪" },
    { "id": "spell_book", "name": "咒语书", "icon": "📖" },
    { "id": "gold_coin", "name": "金币", "icon": "💰" },
    { "id": "school_key", "name": "学院钥匙", "icon": "🔑" }
],
```

### 3.6 第六步：定义地图

```json
"map": {
    "startingLocation": "dormitory",
    "locations": {
        "dormitory": { "name": "宿舍", "description": "你的房间" },
        "classroom": { "name": "教室", "description": "学习魔法的地方" },
        "library": { "name": "图书馆", "description": "藏书丰富的地方" },
        "courtyard": { "name": "庭院", "description": "练习魔法的场地" },
        "treasure_room": { "name": "宝藏室", "description": "存放宝物的地方" }
    },
    "connections": {
        "dormitory": ["classroom", "courtyard"],
        "classroom": ["dormitory", "library"],
        "library": ["classroom", "treasure_room"],
        "courtyard": ["dormitory", "library"],
        "treasure_room": ["library"]
    }
},
```

### 3.7 第七步：编写节点内容

从欢迎节点开始：

```json
"nodes": {
    "welcome": {
        "text": "🌟 欢迎来到魔法学院，{player_name}！\n\n当前状态：\n❤️ 生命值：{health}\n💧 魔力值：{mana}\n💰 金币：{gold}\n📚 等级：{level}",
        "location": "dormitory",
        "choices": [
            {
                "text": "开始学习",
                "next": "learn_basics",
                "actions": [
                    { "type": "setVar", "name": "mana", "value": 60 }
                ]
            },
            { "text": "查看背包", "next": "check_inventory" },
            { "text": "探索宿舍", "next": "explore_dorm" }
        ]
    }
}
```

### 3.8 第八步：添加条件选项

在学习节点中添加条件选项：

```json
"learn_basics": {
    "text": "📚 你来到了教室。艾拉老师正在等你。",
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
        }
    ]
}
```

### 3.9 第九步：添加结局节点

```json
"ending_victory": {
    "text": "🌟🌟🌟 恭喜你完成了魔法学院入门教程！\n\n最终状态：\n❤️ 生命值：{health}\n💧 魔力值：{mana}\n💰 金币：{gold}\n📚 等级：{level}\n✨ 学会的魔法：{spell_count} 种",
    "isEnd": true,
    "endType": "true",
    "actions": [
        { "type": "setVar", "name": "has_completed_tutorial", "value": true }
    ]
}
```

---

## 4. 功能实现

### 4.1 变量替换

在文本中使用 `{变量名}` 语法：

```json
"text": "欢迎来到魔法学院，{player_name}！\n生命值：{health}"
```

### 4.2 变量操作

使用 `actions` 修改变量：

```json
"actions": [
    { "type": "setVar", "name": "mana", "value": 60 },
    { "type": "addVar", "name": "gold", "value": 10 },
    { "type": "subVar", "name": "health", "value": 10 },
    { "type": "toggleVar", "name": "has_key" }
]
```

### 4.3 条件检测

组合条件示例：

```json
"condition": {
    "and": [
        { "hasItem": "magic_wand" },
        { "var": "mana", "gte": 20 }
    ]
}
```

### 4.4 物品管理

获取和移除物品：

```json
"actions": [
    { "type": "addItem", "itemId": "magic_wand" },
    { "type": "removeItem", "itemId": "school_key" }
]
```

### 4.5 地图导航

设置当前位置：

```json
"location": "classroom"
```

---

## 5. 测试验证

### 5.1 JSON 格式验证

使用 VS Code 的 JSON 验证功能或在线工具：

1. VS Code: Ctrl+Shift+I 格式化文件
2. 在线工具: https://jsonlint.com/

### 5.2 节点完整性检查

确保所有引用的节点都存在：

| 节点 ID         | 是否存在 |
| --------------- | -------- |
| welcome         | ✅       |
| check_inventory | ✅       |
| explore_dorm    | ✅       |
| learn_basics    | ✅       |
| learn_fireball  | ✅       |
| learn_heal      | ✅       |
| ask_library     | ✅       |
| go_courtyard    | ✅       |
| get_key         | ✅       |
| get_key_manual  | ✅       |
| go_library      | ✅       |
| read_spell_book | ✅       |
| ask_treasure    | ✅       |
| go_treasure     | ✅       |
| ending_victory  | ✅       |
| ending_neutral  | ✅       |

### 5.3 条件逻辑测试

| 条件                           | 预期行为                         |
| ------------------------------ | -------------------------------- |
| 学习火球术需要魔法杖和足够魔力 | 没有魔法杖或魔力不足时选项不显示 |
| 学习治愈术需要生命值低于100    | 生命值满时选项不显示             |
| 打开宝藏室需要学院钥匙         | 没有钥匙时选项不显示             |
| 真结局需要学会3种魔法          | 魔法不足3种时显示普通结局选项    |

### 5.4 运行测试

将文件放入 `stories/` 目录，通过游戏测试：

1. 启动游戏
2. 找到「魔法学院入门教程」故事
3. 测试所有选项分支
4. 验证变量显示正确
5. 验证背包物品显示正确
6. 验证地图位置更新正确

---

## 6. 完整代码解析

### 6.1 文件结构概览

```
teaching.story
├── title: 故事标题
├── description: 故事描述
├── version: 版本号
├── variables: 变量定义
├── features: 功能开关
├── items: 物品定义
├── map: 地图数据
├── start: 起始节点
└── nodes: 剧情节点集合
    ├── welcome: 欢迎界面
    ├── learn_basics: 学习基础魔法
    ├── go_library: 前往图书馆
    ├── go_treasure: 前往宝藏室
    └── ending_victory: 真结局
```

### 6.2 核心代码片段解析

#### 6.2.1 变量定义与使用

```json
"variables": {
    "health": 100,
    "mana": 50,
    "player_name": "学徒"
},
```

定义了玩家的初始状态。在文本中使用 `{player_name}`、`{health}` 引用。

#### 6.2.2 条件选项

```json
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
    }
]
```

只有同时满足"拥有魔法杖"和"魔力值大于等于20"两个条件时，这个选项才会显示。

#### 6.2.3 动作执行

```json
"actions": [
    { "type": "addItem", "itemId": "magic_wand" },
    { "type": "subVar", "name": "mana", "value": 20 },
    { "type": "setFlag", "flag": { "can_use_fireball": true } }
]
```

进入节点时执行三个动作：

1. 添加魔法杖到背包
2. 魔力值减少20
3. 设置标记表示可以使用火球术

#### 6.2.4 多结局设计

```json
"go_treasure": {
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
        }
    ]
}
```

根据玩家学会的魔法数量，显示不同的选项，导向不同的结局。

---

## 总结

通过这个教学示例，你已经学会了：

1. **基本结构**：如何组织一个完整的 STORY 文件
2. **变量系统**：如何定义、使用和修改变量
3. **条件检测**：如何根据状态显示不同选项
4. **动作系统**：如何执行物品获取、变量修改等操作
5. **背包系统**：如何管理物品
6. **地图系统**：如何设置位置和导航

现在你可以开始创作自己的故事了！参考 API.md 中的详细文档，发挥你的想象力吧！
