{
  "title": "神奇代码岛·永恒代码",
  "subtitle": "终章",
  "description": "重构之后，神奇代码岛进入了新的纪元。但时间本身开始成为敌人——代码正在老化，世界需要一次真正的「永恒化」。",
  "author": "Radiation Studio",
  "version": "1.0",
  "features": {
    "inventory": true,
    "map": true
  },
  "items": [
    { "id": "time_core", "name": "时间核心", "icon": "⏳", "description": "管理世界时间流速的核心" },
    { "id": "eternal_formula", "name": "永恒公式", "icon": "∞", "description": "让代码永不老化的秘密" },
    { "id": "memory_fragment", "name": "记忆碎片", "icon": "💠", "description": "精灵收集的关于过去的美好记忆" },
    { "id": "new_dawn", "name": "新黎明", "icon": "🌅", "description": "永恒化后的第一缕代码之光" }
  ],
  "map": {
    "title": "永恒之境",
    "locations": [
      { "id": "time_temple", "name": "时间神殿", "description": "管理世界时间的古老建筑" },
      { "id": "memory_garden", "name": "记忆花园", "description": "精灵们保存记忆的地方" },
      { "id": "eternal_forge", "name": "永恒熔炉", "description": "锻造永恒代码的地方" },
      { "id": "final_peak", "name": "终焉之峰", "description": "岛屿的最高点，时间的尽头" },
      { "id": "dawn_gate", "name": "黎明之门", "description": "通往新世界的入口" }
    ],
    "startingLocation": "time_temple"
  },
  "start": "start",
  "nodes": {
    "start": {
      "id": "start",
      "location": "time_temple",
      "text": "重构后的世界运行了数千年（在代码时间中）。一切都很好——但你知道，没有什么是永恒的。\n\n代码正在老化，就像任何语言一样，它需要更新。\n\n你站在时间神殿中，看着巨大的时钟核心缓缓转动。",
      "choices": [
        { "text": "检查时钟核心", "next": "check_clock" },
        { "text": "前往记忆花园", "next": "memory_garden_enter" },
        { "text": "前往永恒熔炉", "next": "eternal_forge_enter" },
        { "text": "前往终焉之峰", "next": "final_peak_enter" }
      ]
    },
    "check_clock": {
      "id": "check_clock",
      "location": "time_temple",
      "text": "你仔细检查时钟核心，发现它的代码正在出现「磨损」——就像一本被翻阅太多次的书，字迹开始模糊。\n\n「如果不采取措施，这个世界的时间就会停止。」管理员的声音在你身后响起。",
      "actions": [
        { "type": "addItem", "itemId": "time_core" }
      ],
      "choices": [
        { "text": "寻找永恒公式", "next": "search_eternal" },
        { "text": "前往记忆花园", "next": "memory_garden_enter" },
        { "text": "前往永恒熔炉", "next": "eternal_forge_enter" }
      ]
    },
    "search_eternal": {
      "id": "search_eternal",
      "location": "time_temple",
      "text": "你在时间神殿的深处搜索，找到了一份古老的卷轴——上面记载着「永恒公式」。\n\n它说：要让代码永恒，必须将「记忆」与「希望」融合，形成一种全新的代码结构。",
      "actions": [
        { "type": "addItem", "itemId": "eternal_formula" }
      ],
      "choices": [
        { "text": "前往记忆花园收集记忆", "next": "memory_garden_enter" },
        { "text": "前往永恒熔炉锻造", "next": "eternal_forge_enter" }
      ]
    },
    "memory_garden_enter": {
      "id": "memory_garden_enter",
      "location": "memory_garden",
      "text": "你走进记忆花园。这里盛开着由数据构成的花朵，每一朵都承载着岛屿的一段记忆——从创世的第一行代码，到重构时的艰难选择。\n\n精灵在花丛中忙碌，收集着最珍贵的记忆。",
      "choices": [
        { "text": "帮助精灵收集记忆", "next": "collect_memories" },
        { "text": "寻找某段特定的记忆", "next": "find_memory" },
        { "text": "前往永恒熔炉", "next": "eternal_forge_enter" }
      ]
    },
    "collect_memories": {
      "id": "collect_memories",
      "location": "memory_garden",
      "text": "你帮助精灵收集记忆。你们一起采集了创世之光的碎片、繁荣时代的金叶、暗影漏洞的教训、重构时的希望。\n\n这些记忆汇聚成一颗璀璨的「记忆核心」。",
      "actions": [
        { "type": "addItem", "itemId": "memory_fragment" }
      ],
      "choices": [
        { "text": "前往永恒熔炉", "next": "eternal_forge_enter" }
      ]
    },
    "find_memory": {
      "id": "find_memory",
      "location": "memory_garden",
      "text": "你在花园深处找到了一朵特别的花——它承载着「第一行代码」的记忆。你轻轻触碰它，瞬间感受到了创世者当时的心情：期待、敬畏、还有一丝不安。\n\n「这是最好的记忆。」精灵轻声说。",
      "actions": [
        { "type": "addItem", "itemId": "memory_fragment" }
      ],
      "choices": [
        { "text": "前往永恒熔炉", "next": "eternal_forge_enter" }
      ]
    },
    "eternal_forge_enter": {
      "id": "eternal_forge_enter",
      "location": "eternal_forge",
      "text": "你来到永恒熔炉。炽热的代码之焰在炉膛中燃烧，这是锻造永恒代码的地方。\n\n你看到炉中有一块未成形的「永恒核心」——它需要注入记忆与希望才能完整。",
      "choices": [
        { "text": "注入记忆碎片", "next": "forge_memory", "condition": { "hasItem": "memory_fragment" } },
        { "text": "注入永恒公式", "next": "forge_formula", "condition": { "hasItem": "eternal_formula" } },
        { "text": "独自创造", "next": "forge_alone" }
      ]
    },
    "forge_memory": {
      "id": "forge_memory",
      "location": "eternal_forge",
      "text": "你将记忆碎片投入熔炉，火焰瞬间变得温柔而明亮。永恒核心开始成形，其中流淌着岛屿的历史与情感。",
      "choices": [
        { "text": "继续注入希望", "next": "forge_hope" },
        { "text": "取出核心", "next": "forge_complete" }
      ]
    },
    "forge_formula": {
      "id": "forge_formula",
      "location": "eternal_forge",
      "text": "你将永恒公式注入熔炉，代码之焰按照公式重新排列。永恒核心的结构变得更加稳固、更加优雅。",
      "choices": [
        { "text": "注入记忆", "next": "forge_memory", "condition": { "hasItem": "memory_fragment" } },
        { "text": "取出核心", "next": "forge_complete" }
      ]
    },
    "forge_hope": {
      "id": "forge_hope",
      "location": "eternal_forge",
      "text": "你在熔炉中加入了「希望」——对未来的信念。火焰猛地升腾，永恒核心迸发出耀眼的光芒。\n\n它已经完整了——一个融合了记忆、公式与希望的全新核心。",
      "actions": [
        { "type": "addItem", "itemId": "new_dawn" }
      ],
      "choices": [
        { "text": "取出核心", "next": "forge_complete" }
      ]
    },
    "forge_alone": {
      "id": "forge_alone",
      "location": "eternal_forge",
      "text": "你决定独自创造。你用自己的经验和感悟，在熔炉中锻造了一个全新的核心。\n\n它没有记忆，没有公式——只有你此刻的意志。\n\n它纯净，但也脆弱。",
      "actions": [
        { "type": "addItem", "itemId": "new_dawn" }
      ],
      "choices": [
        { "text": "取出核心", "next": "forge_complete" }
      ]
    },
    "forge_complete": {
      "id": "forge_complete",
      "location": "eternal_forge",
      "text": "你从熔炉中取出了永恒核心。它在你手中散发着温和的光芒，仿佛一颗跳动的心脏。\n\n「现在，将它放入时间神殿。」精灵说，「让世界获得永恒。」",
      "choices": [
        { "text": "前往时间神殿", "next": "time_temple_final" },
        { "text": "前往终焉之峰", "next": "final_peak_enter" },
        { "text": "前往黎明之门", "next": "dawn_gate_enter" }
      ]
    },
    "final_peak_enter": {
      "id": "final_peak_enter",
      "location": "final_peak",
      "text": "你登上终焉之峰。从最高处俯瞰，整个世界尽收眼底——代码河流、算法森林、代码都的遗迹、新核心的光芒。\n\n「这就是你守护的世界。」精灵站在你身边，声音温柔。",
      "choices": [
        { "text": "将永恒核心置于峰顶", "next": "place_core_peak" },
        { "text": "前往时间神殿", "next": "time_temple_final" },
        { "text": "前往黎明之门", "next": "dawn_gate_enter" }
      ]
    },
    "place_core_peak": {
      "id": "place_core_peak",
      "location": "final_peak",
      "text": "你将永恒核心放置在终焉之峰的最高处。光芒从峰顶扩散开来，覆盖了整个世界。\n\n代码开始「重获青春」——它们不再老化，而是进入了永恒循环。\n\n世界获得了永恒，你站在峰顶，成为了永恒的见证者。",
      "choices": [
        { "text": "留在峰顶", "next": "ending_eternal" },
        { "text": "回到人间", "next": "ending_return" }
      ]
    },
    "time_temple_final": {
      "id": "time_temple_final",
      "location": "time_temple",
      "text": "你回到时间神殿，将永恒核心放入时钟中央。\n\n巨大的齿轮重新开始转动，但这一次——它们不再磨损。时间的流逝变得圆润而永恒。\n\n「世界将永远存在。」管理员的声音中带着欣慰。",
      "choices": [
        { "text": "守护神殿", "next": "ending_guardian" },
        { "text": "离开神殿", "next": "ending_return" }
      ]
    },
    "dawn_gate_enter": {
      "id": "dawn_gate_enter",
      "location": "dawn_gate",
      "text": "你来到了黎明之门。这是一扇通往「新世界」的门——它连接着代码世界之外的某个地方。\n\n精灵站在你身边，轻声说：「你可以选择留下，也可以选择离开。但无论你选择什么，这个世界都会记住你。」",
      "choices": [
        { "text": "穿过黎明之门", "next": "ending_dawn" },
        { "text": "留下来", "next": "ending_return" }
      ]
    },
    "ending_eternal": {
      "id": "ending_eternal",
      "location": "final_peak",
      "text": "你选择了永恒。你与终焉之峰融为一体，成为世界的一部分。\n\n千万年后，新的探索者登上峰顶，会看到一座由代码构成的雕像——那是你，守护了世界永恒的创世者。\n\n神奇代码岛，在永恒中继续书写它的故事。",
      "isEnd": true,
      "endType": "true",
      "endMessage": "你成为了永恒，世界因你而不朽。"
    },
    "ending_return": {
      "id": "ending_return",
      "location": "time_temple",
      "text": "你将永恒核心安置好后，选择回到平凡的生活。\n\n你不再是创世者，不再是英雄——你只是一个曾经创造过奇迹的普通人。\n\n但你心中的那份光，永远不会熄灭。\n\n每当代码世界需要你时，你会再次出现。",
      "isEnd": true,
      "endType": "good",
      "endMessage": "你回归平凡，但光永远在你心中。"
    },
    "ending_guardian": {
      "id": "ending_guardian",
      "location": "time_temple",
      "text": "你选择留在时间神殿，成为世界永恒的守护者。\n\n精灵陪伴在你身边，管理员偶尔会来与你对弈一局代码棋。\n\n你守护的不是一座岛屿，而是一个文明的记忆与未来。",
      "isEnd": true,
      "endType": "victory",
      "endMessage": "你成为了永恒守护者，世界因你而安宁。"
    },
    "ending_dawn": {
      "id": "ending_dawn",
      "location": "dawn_gate",
      "text": "你穿过了黎明之门。身后是神奇代码岛的永恒，前方是一个全新的世界——一个由你未曾见过的代码构成的地方。\n\n你回头看了一眼，精灵在门边向你挥手。\n\n你微笑，然后转身，走向新的黎明。\n\n神奇代码岛的故事结束了，但你的故事，才刚刚开始。",
      "isEnd": true,
      "endType": "true",
      "endMessage": "你走向了新的黎明，故事在另一个世界继续。"
    }
  }
}