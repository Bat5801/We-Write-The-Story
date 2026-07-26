# WeWriteTheStory STORY 文件 API 教程

## 目录

1. [基本概念](#1-基本概念)
2. [文件创建流程](#2-文件创建流程)
3. [文件命名规范](#3-文件命名规范)
4. [核心语法结构](#4-核心语法结构)
5. [功能模块说明](#5-功能模块说明)
6. [最佳实践指南](#6-最佳实践指南)
7. [常见问题解决方案](#7-常见问题解决方案)

---

## 1. 基本概念

### 1.1 什么是 .story 文件？

`.story` 文件是《我们写下的故事书》游戏使用的**互动叙事文件格式**，本质上是一个 JSON 格式的纯文本文件。它定义了故事的剧情节点、选项分支、变量系统、背包物品等所有游戏元素。

### 1.2 文件结构概述

一个完整的 `.story` 文件包含以下核心部分：

| 部分          | 说明           | 必选  |
| ------------- | -------------- | ----- |
| `title`       | 故事标题       | ✅ 是 |
| `description` | 故事描述       | ❌ 否 |
| `version`     | 版本号         | ❌ 否 |
| `start`       | 起始节点 ID    | ✅ 是 |
| `nodes`       | 剧情节点集合   | ✅ 是 |
| `variables`   | 自定义变量定义 | ❌ 否 |
| `items`       | 物品定义       | ❌ 否 |
| `features`    | 功能特性开关   | ❌ 否 |
| `map`         | 地图数据       | ❌ 否 |

---

## 2. 文件创建流程

### 2.1 方法一：使用文本编辑器创建（推荐）

**步骤 1：新建文本文件**

- 右键点击空白处 → 新建 → 文本文档（.txt）
- 或使用 VS Code、Notepad++ 等编辑器新建文件

**步骤 2：编写内容**

- 按照本教程的语法规范编写 JSON 内容
- 确保所有字符串用双引号 `"` 包裹
- 确保 JSON 格式正确（逗号、括号配对）

**步骤 3：保存文件**

- 选择「另存为」
- 设置「编码」为 UTF-8
- 将文件名改为 `xxx.story`（xxx 为你的故事名）

**步骤 4：放入游戏目录**

- 将文件复制到 `stories/` 目录下
- 或通过游戏的「导入故事」功能导入

### 2.2 方法二：使用游戏内置编辑器

- 打开游戏 → 点击「故事编辑器」
- 使用 Blockly 积木进行可视化创作
- 点击「导出」保存为 `.story` 文件

### 2.3 方法三：使用 IDE 编写

推荐使用 VS Code，配合以下插件：

- **JSON** 插件：提供语法高亮和格式化
- **Prettier**：自动格式化 JSON

---

## 3. 文件命名规范

### 3.1 命名规则

| 规则           | 说明                                      | 示例                              |
| -------------- | ----------------------------------------- | --------------------------------- |
| 使用小写字母   | 文件名全小写                              | `my_story.story`                  |
| 使用下划线分隔 | 不用空格或连字符                          | `dragon_quest.story`              |
| 不使用特殊字符 | 只允许字母、数字、下划线                  | `horror_school_prologue.story`    |
| 文件名即为 ID  | 加载后 ID 自动设为文件名（去掉 `.story`） | `example.story` → ID 为 `example` |

### 3.2 系列故事命名

对于系列故事，建议采用统一命名规范：

```
# 校园惊魂系列
horror_school_prologue.story    # 序章
horror_school_chapter1.story    # 第一章
horror_school_chapter2.story    # 第二章
horror_school_chapter3.story    # 第三章
horror_school_chapter4.story    # 第四章

# 三体系列
three_body_part1.story          # 第一部
three_body_part2.story          # 第二部
three_body_part3.story          # 第三部
```

---

## 4. 核心语法结构

### 4.1 基本框架

```json
{
  "title": "故事标题",
  "description": "故事描述",
  "version": "1.0",
  "start": "起始节点ID",
  "nodes": {
    "起始节点ID": {
      "text": "剧情文本内容",
      "choices": [{ "text": "选项文本", "next": "下一节点ID" }]
    }
  }
}
```

### 4.2 节点（Node）

节点是故事的基本单位，每个节点包含一段剧情文本和若干选项。

#### 4.2.1 基本节点结构

```json
"node_id": {
    "text": "这里是剧情文本，会逐字显示给玩家",
    "choices": [
        {
            "text": "选项1的文本",
            "next": "下一个节点的ID"
        },
        {
            "text": "选项2的文本",
            "next": "another_node"
        }
    ]
}
```

#### 4.2.2 结束节点

结束节点需要设置 `isEnd: true`，并指定结束类型：

```json
"ending_node": {
    "text": "故事结束文本",
    "isEnd": true,
    "endType": "victory"
}
```

**结束类型（endType）**：

| 类型      | 说明     | 对应屏幕                 |
| --------- | -------- | ------------------------ |
| `victory` | 胜利结局 | 胜利屏幕                 |
| `good`    | 好结局   | 胜利屏幕                 |
| `bad`     | 坏结局   | 胜利屏幕（显示特殊提示） |
| `true`    | 真结局   | 胜利屏幕（显示特殊提示） |
| `death`   | 死亡结局 | 死亡屏幕                 |
| `neutral` | 中立结局 | 胜利屏幕                 |

### 4.3 变量系统（Variables）

#### 4.3.1 定义变量

在故事顶部定义初始变量：

```json
{
    "title": "示例故事",
    "variables": {
        "health": 100,
        "gold": 0,
        "has_key": false,
        "player_name": "冒险者"
    },
    "start": "start",
    "nodes": { ... }
}
```

#### 4.3.2 文本中使用变量

使用 `{变量名}` 语法在文本中引用变量：

```json
"status_node": {
    "text": "你好，{player_name}！\n生命值：{health}\n金币：{gold}"
}
```

#### 4.3.3 变量操作

通过 `actions` 修改变量：

```json
"get_gold": {
    "text": "你找到了50枚金币！",
    "actions": [
        { "type": "setVar", "name": "gold", "value": 50 },
        { "type": "addVar", "name": "gold", "value": 50 },
        { "type": "subVar", "name": "health", "value": 10 },
        { "type": "toggleVar", "name": "has_key" }
    ],
    "choices": [
        { "text": "继续前进", "next": "next_node" }
    ]
}
```

**变量操作类型**：

| 类型        | 说明         | 示例                                                 |
| ----------- | ------------ | ---------------------------------------------------- |
| `setVar`    | 设置变量值   | `{"type": "setVar", "name": "gold", "value": 100}`   |
| `addVar`    | 变量增加数值 | `{"type": "addVar", "name": "health", "value": -20}` |
| `subVar`    | 变量减少数值 | `{"type": "subVar", "name": "gold", "value": 30}`    |
| `toggleVar` | 切换布尔值   | `{"type": "toggleVar", "name": "has_key"}`           |

### 4.4 条件检测（Condition）

#### 4.4.1 基础条件

```json
"choices": [
    {
        "text": "使用钥匙开门",
        "next": "door_open",
        "condition": {
            "hasItem": "gold_key",
            "notHasItem": "broken_key",
            "flag": "has_visited_temple"
        }
    }
]
```

**基础条件类型**：

| 条件         | 说明                     |
| ------------ | ------------------------ |
| `hasItem`    | 玩家拥有指定物品时显示   |
| `notHasItem` | 玩家不拥有指定物品时显示 |
| `flag`       | 游戏状态标记为真时显示   |

#### 4.4.2 变量条件

```json
"choices": [
    {
        "text": "挑战BOSS",
        "next": "boss_fight",
        "condition": {
            "var": "health",
            "gte": 50
        }
    }
]
```

**变量比较操作**：

| 操作符 | 说明             | 示例           |
| ------ | ---------------- | -------------- |
| `eq`   | 等于             | `"eq": 100`    |
| `ne`   | 不等于           | `"ne": 0`      |
| `gt`   | 大于             | `"gt": 50`     |
| `lt`   | 小于             | `"lt": 100`    |
| `gte`  | 大于等于         | `"gte": 10`    |
| `lte`  | 小于等于         | `"lte": 99`    |
| `not`  | 非（检查布尔值） | `"not": false` |

#### 4.4.3 组合条件

使用 `and` 和 `or` 组合多个条件：

```json
"choices": [
    {
        "text": "打开宝箱",
        "next": "treasure_room",
        "condition": {
            "and": [
                { "hasItem": "gold_key" },
                { "var": "health", "gte": 30 }
            ]
        }
    },
    {
        "text": "逃跑",
        "next": "escape",
        "condition": {
            "or": [
                { "var": "health", "lt": 20 },
                { "notHasItem": "weapon" }
            ]
        }
    }
]
```

### 4.5 动作系统（Actions）

动作可以在进入节点或选择选项时执行。

#### 4.5.1 节点动作

```json
"enter_room": {
    "text": "你进入了房间，发现了一把钥匙。",
    "actions": [
        { "type": "addItem", "itemId": "gold_key" },
        { "type": "setFlag", "flag": { "has_visited_room": true } },
        { "type": "setVar", "name": "health", "value": 80 }
    ],
    "choices": [ ... ]
}
```

#### 4.5.2 选项动作

```json
"choices": [
    {
        "text": "喝下药水",
        "next": "healed",
        "actions": [
            { "type": "removeItem", "itemId": "health_potion" },
            { "type": "addVar", "name": "health", "value": 30 }
        ]
    }
]
```

**完整动作类型表**：

| 类型         | 说明             | 参数                        |
| ------------ | ---------------- | --------------------------- |
| `addItem`    | 添加物品到背包   | `itemId`: 物品ID            |
| `removeItem` | 从背包移除物品   | `itemId`: 物品ID            |
| `setFlag`    | 设置游戏状态标记 | `flag`: 对象 `{key: value}` |
| `setVar`     | 设置变量值       | `name`, `value`             |
| `addVar`     | 变量增加         | `name`, `value`             |
| `subVar`     | 变量减少         | `name`, `value`             |
| `toggleVar`  | 切换布尔变量     | `name`                      |

### 4.6 背包系统（Inventory）

#### 4.6.1 启用背包功能

```json
{
    "title": "带背包的故事",
    "features": {
        "inventory": true
    },
    "items": [
        { "id": "gold_key", "name": "金钥匙", "icon": "🔑" },
        { "id": "health_potion", "name": "生命药水", "icon": "🧪" },
        { "id": "magic_sword", "name": "魔法剑", "icon": "⚔️" }
    ],
    "start": "start",
    "nodes": { ... }
}
```

#### 4.6.2 物品定义

| 字段   | 说明              | 必选  |
| ------ | ----------------- | ----- |
| `id`   | 物品唯一标识      | ✅ 是 |
| `name` | 物品显示名称      | ✅ 是 |
| `icon` | 物品图标（emoji） | ❌ 否 |

#### 4.6.3 自动变量跟踪

获取或移除物品时，系统会自动设置变量：

- 获取物品 `gold_key` → 变量 `has_gold_key` 设为 `true`
- 移除物品 `gold_key` → 变量 `has_gold_key` 设为 `false`

可以通过条件检测这些变量：

```json
"condition": {
    "var": "has_gold_key",
    "eq": true
}
```

### 4.7 地图系统（Map）

#### 4.7.1 启用地图功能

```json
{
    "title": "带地图的故事",
    "features": {
        "map": true
    },
    "map": {
        "startingLocation": "village",
        "locations": {
            "village": {
                "name": "村庄",
                "description": "你出生的地方"
            },
            "forest": {
                "name": "森林",
                "description": "神秘的森林"
            },
            "cave": {
                "name": "洞穴",
                "description": "黑暗的洞穴"
            }
        },
        "connections": {
            "village": ["forest"],
            "forest": ["village", "cave"],
            "cave": ["forest"]
        }
    },
    "start": "start",
    "nodes": { ... }
}
```

#### 4.7.2 设置当前位置

在节点中设置 `location` 字段：

```json
"enter_forest": {
    "text": "你进入了森林。",
    "location": "forest",
    "choices": [ ... ]
}
```

---

## 5. 功能模块说明

### 5.1 文本显示

- 支持换行符 `\n`
- 支持变量替换 `{var_name}`
- 自动逐字打字效果

### 5.2 选项系统

- 支持条件显示（满足条件才显示选项）
- 支持选项动作（选择后执行动作）
- 支持变量替换（选项文本中的 `{var_name}`）

### 5.3 变量系统

- 支持字符串、数字、布尔值
- 支持算术运算（addVar、subVar）
- 支持文本中动态替换

### 5.4 条件系统

- 支持物品检测
- 支持变量比较
- 支持逻辑组合（and/or）

### 5.5 背包系统

- 物品获取/移除
- 物品状态跟踪（自动变量）
- 条件检测物品

### 5.6 地图系统

- 位置标记
- 连接关系
- 可视化显示

### 5.7 QTE 系统（Quick Time Event）

QTE 是限时互动事件，支持三种类型：快速点击、长按、按键序列。

#### 5.7.1 快速点击 QTE

```json
"digging_qte": {
    "text": "墓穴的泥土异常坚硬，你必须快速挥动铁锹才能打开棺木！",
    "qte": {
        "type": "click",
        "title": "快速挖掘",
        "description": "在时间耗尽前完成挖掘！",
        "buttonText": "挥动铁锹",
        "requiredClicks": 15,
        "timeLimit": 5000,
        "success": "dig_success",
        "fail": "dig_fail"
    }
}
```

#### 5.7.2 长按 QTE

```json
"hold_breath_qte": {
    "text": "尸毒正在蔓延，你必须屏住呼吸才能撑过去！",
    "qte": {
        "type": "hold",
        "title": "屏住呼吸",
        "description": "按住按钮保持呼吸，松手会导致失败！",
        "buttonText": "屏住！",
        "holdDuration": 3000,
        "timeLimit": 5000,
        "success": "breath_success",
        "fail": "breath_fail"
    }
}
```

#### 5.7.3 按键序列 QTE

```json
"escape_qte": {
    "text": "僵尸抓住了你！按顺序按下按键挣脱！",
    "qte": {
        "type": "sequence",
        "title": "紧急逃脱",
        "description": "按顺序按下显示的按键！",
        "sequence": ["A", "S", "D", "F"],
        "timeLimit": 4000,
        "success": "escape_success",
        "fail": "escape_fail"
    }
}
```

#### 5.7.4 QTE 参数说明

| 参数             | 类型   | 说明                                | 默认值               |
| ---------------- | ------ | ----------------------------------- | -------------------- |
| `type`           | string | QTE 类型：`click`/`hold`/`sequence` | 必填                 |
| `title`          | string | QTE 标题                            | "QTE"                |
| `description`    | string | QTE 描述文本                        | ""                   |
| `buttonText`     | string | 按钮显示文本                        | "点击！" / "长按！"  |
| `requiredClicks` | number | 快速点击需要的次数                  | 10                   |
| `timeLimit`      | number | 时间限制（毫秒）                    | 5000                 |
| `holdDuration`   | number | 长按需要的持续时间（毫秒）          | 3000                 |
| `sequence`       | array  | 按键序列数组                        | ["A", "B", "X", "Y"] |
| `success`        | string | 成功后跳转到的节点 ID               | 必填                 |
| `fail`           | string | 失败后跳转到的节点 ID               | 必填                 |

### 5.8 输入框系统（Input）

输入框系统允许玩家输入文本，支持密码验证和变量存储。

#### 5.8.1 密码输入验证

```json
"password_check": {
    "text": "你发现了一个密码锁，上面刻着'生死之间'四个字...",
    "input": {
        "label": "输入密码：",
        "type": "password",
        "placeholder": "请输入密码",
        "maxLength": 20,
        "correctAnswer": "黄泉路",
        "success": "password_correct",
        "fail": "password_wrong",
        "successVar": "password_unlocked",
        "failVar": "password_failed"
    }
}
```

#### 5.8.2 普通文本输入

```json
"name_input": {
    "text": "请输入你的名字：",
    "input": {
        "label": "姓名：",
        "type": "text",
        "placeholder": "输入你的名字",
        "maxLength": 10,
        "storeVar": "player_name",
        "next": "name_confirmed"
    }
}
```

#### 5.8.3 多答案验证

```json
"riddle_input": {
    "text": "道士问：'什么东西早晨四条腿，中午两条腿，晚上三条腿？'",
    "input": {
        "label": "你的答案：",
        "type": "text",
        "correctAnswer": ["人", "人类", "man"],
        "success": "riddle_solved",
        "fail": "riddle_failed"
    }
}
```

#### 5.8.4 输入框参数说明

| 参数            | 类型         | 说明                                  | 默认值                      |
| --------------- | ------------ | ------------------------------------- | --------------------------- |
| `label`         | string       | 输入框标签文本                        | "输入:"                     |
| `type`          | string       | 输入类型：`text`/`password`           | "text"                      |
| `placeholder`   | string       | 占位提示文本                          | ""                          |
| `maxLength`     | number       | 最大输入长度                          | 50                          |
| `correctAnswer` | string/array | 正确答案（支持数组多答案）            | 无                          |
| `success`       | string       | 验证成功后跳转节点                    | 必填（有 correctAnswer 时） |
| `fail`          | string       | 验证失败后跳转节点                    | 必填（有 correctAnswer 时） |
| `successVar`    | string       | 成功时设置为 true 的变量名            | 无                          |
| `failVar`       | string       | 失败时设置为 true 的变量名            | 无                          |
| `storeVar`      | string       | 存储输入值的变量名                    | 无                          |
| `next`          | string       | 提交后跳转节点（无 correctAnswer 时） | 必填                        |

---

## 6. 最佳实践指南

### 6.1 JSON 格式规范

1. **使用双引号**：所有字符串必须用双引号 `"` 包裹
2. **逗号规则**：最后一个元素后面不要加逗号
3. **括号配对**：确保 `{}` 和 `[]` 正确配对
4. **编码格式**：保存为 UTF-8 编码

### 6.2 节点设计原则

1. **单一职责**：每个节点只描述一个场景或事件
2. **清晰的选项**：选项文本要清晰表达选择的后果
3. **避免死循环**：确保选项不会导致无限循环
4. **提供退出机制**：每个分支都应有明确的结局

### 6.3 变量命名规范

1. **使用小写字母**：`health` 而非 `Health`
2. **使用下划线**：`player_name` 而非 `playerName`
3. **语义化命名**：`has_key` 而非 `key_flag`
4. **一致性**：保持命名风格一致

### 6.4 测试建议

1. **逐节点测试**：从起始节点开始，测试每个选项
2. **测试边界条件**：测试变量为 0、负数等情况
3. **测试条件分支**：测试满足和不满足条件的情况
4. **使用 JSON 验证工具**：确保文件格式正确

### 6.5 性能优化

1. **避免过大文件**：单个文件建议不超过 500KB
2. **合理分割系列故事**：长篇故事分成多个文件
3. **减少不必要的变量**：只定义需要使用的变量

---

## 7. 常见问题解决方案

### 7.1 JSON 解析错误

**问题现象**：游戏提示"无法解析故事文件！"

**可能原因**：

- 使用了单引号而非双引号
- 括号没有正确配对
- 最后一个元素后面有多余的逗号
- 文件编码不是 UTF-8

**解决方案**：

- 使用 JSON 验证工具检查格式（如 JSONLint）
- 使用 VS Code 的格式化功能（Ctrl+Shift+I）
- 确保所有字符串用双引号包裹

### 7.2 变量不显示

**问题现象**：文本中的 `{var_name}` 没有被替换

**可能原因**：

- 变量名拼写错误
- 变量未在 `variables` 中定义
- 变量在使用前未被设置

**解决方案**：

- 检查变量名拼写
- 在故事顶部定义初始变量
- 使用 `setVar` 动作设置变量值

### 7.3 选项不显示

**问题现象**：某个选项没有显示出来

**可能原因**：

- 条件不满足
- 条件表达式错误
- 变量值不符合预期

**解决方案**：

- 检查条件表达式
- 确认变量值正确
- 添加调试文本显示变量值

### 7.4 物品不出现

**问题现象**：获取物品后背包中没有显示

**可能原因**：

- 未启用背包功能（`features.inventory`）
- 物品 ID 拼写错误
- 物品未在 `items` 中定义

**解决方案**：

- 在 `features` 中启用背包功能
- 检查物品 ID 是否正确
- 在 `items` 中定义物品

### 7.5 故事无法开始

**问题现象**：点击故事后无法进入游戏

**可能原因**：

- `start` 字段指定的节点不存在
- 起始节点缺少 `text` 字段
- 节点 ID 拼写错误

**解决方案**：

- 检查 `start` 字段的值
- 确认起始节点存在且完整
- 检查节点 ID 是否一致

### 7.6 文件无法导入

**问题现象**：使用"导入故事"功能失败

**可能原因**：

- 文件编码不是 UTF-8
- 文件不是有效的 JSON
- 文件大小超过浏览器限制

**解决方案**：

- 使用 UTF-8 编码保存
- 验证 JSON 格式
- 分割大型文件

---

## 附录：完整示例

以下是一个简单但完整的 `.story` 文件示例：

```json
{
  "title": "新手教程",
  "description": "一个简单的教学故事",
  "version": "1.0",
  "variables": {
    "score": 0,
    "has_treasure": false
  },
  "features": {
    "inventory": true
  },
  "items": [
    { "id": "map", "name": "地图", "icon": "🗺️" },
    { "id": "key", "name": "钥匙", "icon": "🔑" }
  ],
  "start": "beginning",
  "nodes": {
    "beginning": {
      "text": "欢迎来到新手教程！\n你的得分：{score}",
      "choices": [
        {
          "text": "开始冒险",
          "next": "get_map",
          "actions": [{ "type": "setVar", "name": "score", "value": 10 }]
        }
      ]
    },
    "get_map": {
      "text": "你发现了一张地图！",
      "actions": [{ "type": "addItem", "itemId": "map" }],
      "choices": [{ "text": "继续前进", "next": "crossroad" }]
    },
    "crossroad": {
      "text": "你来到了一个岔路口。",
      "choices": [
        {
          "text": "走左边（需要钥匙）",
          "next": "treasure_room",
          "condition": {
            "hasItem": "key"
          }
        },
        {
          "text": "走右边",
          "next": "get_key"
        }
      ]
    },
    "get_key": {
      "text": "你找到了一把钥匙！",
      "actions": [
        { "type": "addItem", "itemId": "key" },
        { "type": "addVar", "name": "score", "value": 20 }
      ],
      "choices": [{ "text": "返回岔路口", "next": "crossroad" }]
    },
    "treasure_room": {
      "text": "🎉 恭喜！你找到了宝藏！\n最终得分：{score}",
      "isEnd": true,
      "endType": "victory"
    }
  }
}
```
