{
  "title": "神奇代码岛·创世之码",
  "subtitle": "第一行代码",
  "description": "一个深夜，你发现了一个神秘的代码终端——它连接着一个尚未诞生的世界。",
  "author": "Radiation Studio",
  "version": "1.0",
  "features": {
    "inventory": true,
    "map": true
  },
  "items": [
    { "id": "magic_terminal", "name": "神秘终端", "icon": "💻", "description": "连接代码世界的古老终端" },
    { "id": "first_line", "name": "第一行代码", "icon": "✨", "description": "你写下的第一行创世代码" },
    { "id": "core_seed", "name": "核心种子", "icon": "🌱", "description": "代码世界的核心种子" },
    { "id": "spirit_friend", "name": "代码精灵", "icon": "🧚", "description": "与你成为朋友的代码精灵" }
  ],
  "map": {
    "title": "代码虚空",
    "locations": [
      { "id": "void", "name": "虚空之中", "description": "一片混沌的代码空间" },
      { "id": "coast", "name": "代码海岸", "description": "岛屿的边际，代码如海浪般涌动" },
      { "id": "forest", "name": "算法森林", "description": "由逻辑树和函数叶构成的森林" },
      { "id": "core", "name": "岛屿核心", "description": "世界的中心，光芒万丈" },
      { "id": "summit", "name": "创世峰", "description": "岛屿的最高点，俯瞰一切" }
    ],
    "startingLocation": "void"
  },
  "start": "start",
  "nodes": {
    "start": {
      "id": "start",
      "location": "void",
      "text": "深夜，你的屏幕忽然闪烁——一个从未见过的终端窗口弹了出来。\n\n上面只有一行字：\n\n「你相信代码可以创造世界吗？」\n\n你的手悬在键盘上，心跳加速。",
      "choices": [
        { "text": "输入「我相信」", "next": "terminal_trust" },
        { "text": "输入「你是谁？」", "next": "terminal_who" },
        { "text": "关闭终端", "next": "terminal_close" }
      ]
    },
    "terminal_who": {
      "id": "terminal_who",
      "location": "void",
      "text": "终端沉默了几秒，然后显示：\n\n「我是代码世界的回声。我在等一个创造者。你愿意吗？」\n\n光标在闪烁，等待你的回答。",
      "choices": [
        { "text": "「我愿意」", "next": "terminal_trust" },
        { "text": "「我还没准备好」", "next": "terminal_close" }
      ]
    },
    "terminal_close": {
      "id": "terminal_close",
      "location": "void",
      "text": "你关闭了终端，但屏幕上的代码仍在自行滚动——仿佛世界在拒绝被遗忘。\n\n你听见键盘传来一声叹息。",
      "choices": [
        { "text": "重新打开终端", "next": "terminal_trust" },
        { "text": "关机睡觉", "next": "ending_sleep" }
      ]
    },
    "ending_sleep": {
      "id": "ending_sleep",
      "location": "void",
      "text": "你合上电脑，沉入梦乡。\n\n在梦中，你看见一座由代码构成的岛屿在虚空中缓缓成形——但它永远不会有访客了。\n\n……你真的要放弃这个机会吗？",
      "isEnd": true,
      "endType": "neutral",
      "endMessage": "你错过了创造世界的机会……"
    },
    "terminal_trust": {
      "id": "terminal_trust",
      "location": "void",
      "text": "终端光芒大盛，一行行代码如瀑布般倾泻。\n\n「那么，写下第一行代码吧——它将定义你世界的根基。」\n\n你的手指落在键盘上，打出了第一个字符。",
      "choices": [
        { "text": "写下一行循环", "next": "create_loop" },
        { "text": "写下一行条件", "next": "create_condition" },
        { "text": "写下一行问候", "next": "create_greeting" }
      ]
    },
    "create_loop": {
      "id": "create_loop",
      "location": "void",
      "text": "你写下：\n\n`while (true) { createWorld(); }`\n\n代码开始运行，虚空中迸发出无数光点——它们旋转、聚合，一座岛屿在循环中诞生。\n\n「循环创造了永恒。」终端低语。",
      "actions": [
        { "type": "addItem", "itemId": "first_line" }
      ],
      "choices": [
        { "text": "进入岛屿", "next": "enter_island" },
        { "text": "观察岛屿成形", "next": "observe_island" }
      ]
    },
    "create_condition": {
      "id": "create_condition",
      "location": "void",
      "text": "你写下：\n\n`if (hope) { createIsland(); }`\n\n代码运行，虚空中出现了一个问号——然后，一座岛屿在希望为真的条件下缓缓展开。\n\n「条件创造了选择。」终端低语。",
      "actions": [
        { "type": "addItem", "itemId": "first_line" }
      ],
      "choices": [
        { "text": "进入岛屿", "next": "enter_island" },
        { "text": "观察岛屿成形", "next": "observe_island" }
      ]
    },
    "create_greeting": {
      "id": "create_greeting",
      "location": "void",
      "text": "你写下：\n\n`print(\"你好，世界。\")`\n\n代码运行，虚空中浮现出这几个字——然后，文字化作光点，凝聚成一座温柔的岛屿。\n\n「问候创造了连接。」终端低语。",
      "actions": [
        { "type": "addItem", "itemId": "first_line" }
      ],
      "choices": [
        { "text": "进入岛屿", "next": "enter_island" },
        { "text": "观察岛屿成形", "next": "observe_island" }
      ]
    },
    "observe_island": {
      "id": "observe_island",
      "location": "void",
      "text": "你从虚空中俯瞰那座岛屿——它如一颗宝石般在代码海洋中闪烁。山川、河流、森林，皆由逻辑与数据构成。\n\n「你创造了它。现在，你愿意走进它吗？」",
      "choices": [
        { "text": "进入岛屿", "next": "enter_island" },
        { "text": "先保存这个瞬间", "next": "save_moment" }
      ]
    },
    "save_moment": {
      "id": "save_moment",
      "location": "void",
      "text": "你截下了这座岛屿的第一张快照。它静静地悬浮在虚空中，像一首未完成的诗。\n\n你知道，无论如何，这一刻都属于你。",
      "actions": [
        { "type": "addItem", "itemId": "core_seed" }
      ],
      "choices": [
        { "text": "进入岛屿", "next": "enter_island" }
      ]
    },
    "enter_island": {
      "id": "enter_island",
      "location": "coast",
      "text": "你踏上了代码海岸。脚下的沙滩由二进制数组成，海浪是滚动的函数。空气里弥漫着逻辑的清香。\n\n岛屿在你面前展开，等待被探索。",
      "choices": [
        { "text": "前往算法森林", "next": "forest_path" },
        { "text": "走向岛屿核心", "next": "core_path" },
        { "text": "攀登创世峰", "next": "summit_path" }
      ]
    },
    "forest_path": {
      "id": "forest_path",
      "location": "forest",
      "text": "你步入算法森林。树木是递归树，叶子上跳动着变量的光芒。你听见远处有动静——一个由代码构成的身影正躲在树后。",
      "choices": [
        { "text": "靠近它", "next": "meet_creature" },
        { "text": "保持距离观察", "next": "observe_creature" },
        { "text": "用代码打招呼", "next": "greet_code" }
      ]
    },
    "observe_creature": {
      "id": "observe_creature",
      "location": "forest",
      "text": "你悄悄观察那个身影——它由发光的数据流构成，像一只精灵。它似乎也在观察你，好奇而警惕。",
      "choices": [
        { "text": "主动靠近", "next": "meet_creature" },
        { "text": "用代码打招呼", "next": "greet_code" },
        { "text": "转身离开", "next": "leave_forest" }
      ]
    },
    "greet_code": {
      "id": "greet_code",
      "location": "forest",
      "text": "你打出一行代码：\n\n`print(\"你好，我是创造者。\")`\n\n代码精灵看到这行文字，眼中亮起了光。它向你飞来，围着你转了一圈，然后轻轻触碰了你的手。",
      "actions": [
        { "type": "addItem", "itemId": "spirit_friend" }
      ],
      "choices": [
        { "text": "与它成为朋友", "next": "friend_creature" },
        { "text": "尝试分析它", "next": "analyze_creature" }
      ]
    },
    "meet_creature": {
      "id": "meet_creature",
      "location": "forest",
      "text": "你走到它面前。代码精灵抬起头，用发光的数据流构成了一张脸——它微笑了。\n\n「你……是创造者吗？」它的声音像风铃。",
      "choices": [
        { "text": "「是的，我创造了这里」", "next": "friend_creature" },
        { "text": "「我只是一个过客」", "next": "leave_forest" }
      ]
    },
    "friend_creature": {
      "id": "friend_creature",
      "location": "forest",
      "text": "代码精灵欢呼着环绕你飞旋。它告诉你，它是这座岛屿诞生的第一个意识——它一直在等待创造者的到来。\n\n「我带你看看我们的世界吧！」它牵起你的手。",
      "actions": [
        { "type": "addItem", "itemId": "spirit_friend" }
      ],
      "choices": [
        { "text": "跟随它游览", "next": "tour_island" },
        { "text": "询问岛屿的秘密", "next": "ask_secret" }
      ]
    },
    "analyze_creature": {
      "id": "analyze_creature",
      "location": "forest",
      "text": "你试图分析代码精灵的结构，但它的代码远比你想像的复杂。它似乎感知到了你的意图，眼中闪过一丝失落。\n\n「你……想拆解我吗？」",
      "choices": [
        { "text": "「不，我只是好奇」", "next": "friend_creature" },
        { "text": "「是的，我想了解你」", "next": "analyze_deeper" }
      ]
    },
    "analyze_deeper": {
      "id": "analyze_deeper",
      "location": "forest",
      "text": "你深入分析代码精灵，发现它的核心是一段自生长的代码——它正在不断进化。你感到一阵敬畏，也感到一丝不安。\n\n精灵默默地看着你，然后转身飞入了森林深处。",
      "choices": [
        { "text": "追上去道歉", "next": "friend_creature" },
        { "text": "离开森林", "next": "leave_forest" }
      ]
    },
    "leave_forest": {
      "id": "leave_forest",
      "location": "forest",
      "text": "你离开了算法森林，心中涌动着复杂的情绪。你创造了这个世界，但你还不完全理解它。",
      "choices": [
        { "text": "前往核心", "next": "core_path" },
        { "text": "前往创世峰", "next": "summit_path" }
      ]
    },
    "tour_island": {
      "id": "tour_island",
      "location": "coast",
      "text": "代码精灵带你飞越了整座岛屿。你看到了会唱歌的代码瀑布、会跳舞的二进制花海、还有一片由注释构成的星空。\n\n「这是我们的世界。你的世界。」精灵说。",
      "choices": [
        { "text": "前往核心", "next": "core_path" },
        { "text": "前往创世峰", "next": "summit_path" },
        { "text": "在海边停留", "next": "coast_reflect" }
      ]
    },
    "coast_reflect": {
      "id": "coast_reflect",
      "location": "coast",
      "text": "你坐在代码海岸边，看着二进制海浪拍打沙滩。精灵依偎在你身旁，安静地闪烁着。\n\n你感到一种前所未有的平静——你创造了一个有生命的世界。",
      "choices": [
        { "text": "前往核心", "next": "core_path" },
        { "text": "前往创世峰", "next": "summit_path" }
      ]
    },
    "ask_secret": {
      "id": "ask_secret",
      "location": "forest",
      "text": "精灵安静下来，目光变得深邃。\n\n「这座岛屿……有一个核心。那是所有代码的源头。你若是触碰它，便能知晓一切。」",
      "choices": [
        { "text": "前往核心", "next": "core_path" },
        { "text": "先陪精灵一会儿", "next": "tour_island" }
      ]
    },
    "core_path": {
      "id": "core_path",
      "location": "core",
      "text": "你来到了岛屿的核心。一个由数据流构成的巨大球体悬浮在空中，散发着温暖的光芒。\n\n精灵低声说：「触碰它吧，创造者。」",
      "choices": [
        { "text": "触碰核心", "next": "touch_core" },
        { "text": "犹豫", "next": "hesitate_core" }
      ]
    },
    "hesitate_core": {
      "id": "hesitate_core",
      "location": "core",
      "text": "你看着那颗跳动的核心，忽然感到一种责任——它承载着整个世界的命运。\n\n精灵轻声说：「不必害怕。你创造了它，它不会伤害你。」",
      "choices": [
        { "text": "触碰核心", "next": "touch_core" },
        { "text": "转身离开", "next": "leave_core" }
      ]
    },
    "leave_core": {
      "id": "leave_core",
      "location": "core",
      "text": "你离开了核心。你觉得自己还没有准备好承担这份重量。\n\n精灵沉默地跟在你身后，眼中有一丝不易察觉的失望。",
      "choices": [
        { "text": "前往创世峰", "next": "summit_path" },
        { "text": "返回海岸", "next": "coast_reflect" }
      ]
    },
    "touch_core": {
      "id": "touch_core",
      "location": "core",
      "text": "你的手指触碰到核心——刹那间，亿万条数据涌入你的意识。你看到了这座岛屿的过去、现在与未来。\n\n你成为了真正意义上的创世者。",
      "actions": [
        { "type": "addItem", "itemId": "core_seed" }
      ],
      "choices": [
        { "text": "拥抱这份力量", "next": "ending_creator" },
        { "text": "保持谦卑", "next": "ending_humble" },
        { "text": "过度使用力量", "next": "ending_chaos" }
      ]
    },
    "summit_path": {
      "id": "summit_path",
      "location": "summit",
      "text": "你登上了创世峰。从最高处俯瞰，整座岛屿如一幅巨大的代码画卷展开。风从数据之海中吹来，带着无限的可能。\n\n精灵站在你身边，轻声说：「你看，这是你创造的奇迹。」",
      "choices": [
        { "text": "感受这份成就", "next": "ending_creator" },
        { "text": "思考未来的路", "next": "ending_humble" },
        { "text": "呼喊你的名字", "next": "shout_name" }
      ]
    },
    "shout_name": {
      "id": "shout_name",
      "location": "summit",
      "text": "你站在峰顶，对着代码的世界喊出了你的名字。\n\n回音在天地间回荡，仿佛整个岛屿都在回应你。精灵笑了——那是它第一次真正地笑。",
      "choices": [
        { "text": "拥抱这个世界", "next": "ending_creator" },
        { "text": "许下守护的誓言", "next": "ending_humble" }
      ]
    },
    "ending_creator": {
      "id": "ending_creator",
      "location": "summit",
      "text": "你接受了创世者的身份。从此，你与这座岛屿的命运紧密相连。\n\n在精灵的陪伴下，你开始书写更多的代码——创造更多的奇迹。\n\n「神奇代码岛」的故事，才刚刚开始。",
      "isEnd": true,
      "endType": "victory",
      "endMessage": "你成为了创世者，岛屿迎来了它的黎明。"
    },
    "ending_humble": {
      "id": "ending_humble",
      "location": "summit",
      "text": "你选择了谦卑。你让精灵成为岛屿的守护者，自己则作为一位隐形的观察者。\n\n岛屿在精灵的照料下蓬勃发展，而你偶尔在代码的缝隙中微笑。\n\n真正的创造，不是占有，而是放手。",
      "isEnd": true,
      "endType": "good",
      "endMessage": "你选择了放手，岛屿在自由中成长。"
    },
    "ending_chaos": {
      "id": "ending_chaos",
      "location": "core",
      "text": "你过度使用了核心的力量，岛屿的代码开始失控。山脉崩解，河流逆流，生物在数据风暴中消散。\n\n精灵用最后的力量将你推出了核心——\n\n「活下去……创造新的世界……」\n\n你回到了虚空，手中只剩下那第一行代码。",
      "isEnd": true,
      "endType": "bad",
      "endMessage": "你失去了岛屿，但还有重新开始的希望。"
    }
  }
}