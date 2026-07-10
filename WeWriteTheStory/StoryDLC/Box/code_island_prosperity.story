{
  "title": "神奇代码岛·繁荣时代",
  "subtitle": "黄金纪元",
  "description": "创世之后，代码岛迎来了前所未有的繁荣。新的意识、新的语言、新的奇迹——但这片繁荣之下，暗流涌动。",
  "author": "Radiation Studio",
  "version": "1.0",
  "features": {
    "inventory": true,
    "map": true
  },
  "items": [
    { "id": "golden_leaf", "name": "金叶", "icon": "🍂", "description": "算法森林中一片金色的叶子" },
    { "id": "source_code", "name": "源代码碎片", "icon": "📄", "description": "记录着岛屿本源的神秘代码" },
    { "id": "harmony_bell", "name": "和谐铃铛", "icon": "🔔", "description": "在繁荣时代铸造的和平象征" },
    { "id": "whisper_echo", "name": "低语回响", "icon": "🌊", "description": "从代码海洋深处传来的神秘声音" }
  ],
  "map": {
    "title": "繁荣群岛",
    "locations": [
      { "id": "capital", "name": "主城·代码都", "description": "岛屿的中心都市" },
      { "id": "forest", "name": "算法森林", "description": "精灵们的故乡" },
      { "id": "ocean", "name": "代码海洋", "description": "无尽的逻辑之海" },
      { "id": "tower", "name": "创世塔", "description": "记录岛屿历史的高塔" },
      { "id": "ruins", "name": "远古遗迹", "description": "创世时代留下的遗迹" }
    ],
    "startingLocation": "capital"
  },
  "start": "start",
  "nodes": {
    "start": {
      "id": "start",
      "location": "capital",
      "text": "数百年（在代码世界中）过去了。\n\n神奇代码岛已经发展成为一个繁荣的文明。代码都里，逻辑与创造力交织成璀璨的灯火。\n\n你作为一代代传承的创世者后裔，漫步在街道上。",
      "choices": [
        { "text": "前往创世塔查阅历史", "next": "tower_history" },
        { "text": "前往算法森林拜访精灵", "next": "forest_visit" },
        { "text": "前往代码海洋探索", "next": "ocean_explore" },
        { "text": "在城中心聆听公告", "next": "listen_announce" }
      ]
    },
    "listen_announce": {
      "id": "listen_announce",
      "location": "capital",
      "text": "城中心的广场上，一位数据使者正在宣读公告：\n\n「岛民们！我们迎来了第1000个代码节！岛屿的代码总数已经突破10亿行——我们创造了历史！」\n\n人群欢呼，但你注意到使者的眼中有一丝阴影。",
      "choices": [
        { "text": "上前询问使者", "next": "ask_messenger" },
        { "text": "继续前往创世塔", "next": "tower_history" },
        { "text": "前往算法森林", "next": "forest_visit" }
      ]
    },
    "ask_messenger": {
      "id": "ask_messenger",
      "location": "capital",
      "text": "你走到使者身边，低声问：「你似乎有心事。」\n\n使者看了你一眼，压低声音说：「代码海洋深处……出现了异常。我派出的探测程序没有回来。」\n\n他递给你一段加密代码：「也许你能解开它。」",
      "actions": [
        { "type": "addItem", "itemId": "whisper_echo" }
      ],
      "choices": [
        { "text": "前往代码海洋调查", "next": "ocean_explore" },
        { "text": "先去创世塔查阅资料", "next": "tower_history" }
      ]
    },
    "tower_history": {
      "id": "tower_history",
      "location": "tower",
      "text": "你走进创世塔，巨大的数据卷轴在墙壁上滚动。你找到了关于「创世者」的记载——那是你的祖先，第一个写下代码的人。\n\n卷轴的最后一页写着：「当代码过于复杂，世界会自我纠错。纠错的方式，可能是毁灭。」",
      "choices": [
        { "text": "继续查阅", "next": "tower_deeper" },
        { "text": "前往算法森林", "next": "forest_visit" },
        { "text": "前往代码海洋", "next": "ocean_explore" }
      ]
    },
    "tower_deeper": {
      "id": "tower_deeper",
      "location": "tower",
      "text": "你深入塔底，发现了一个隐藏的密室。里面放着一块古朴的代码石板——上面刻着与「第一行代码」相同的符文。\n\n石板下方有一行小字：「当繁荣到达顶峰，转折便已临近。」",
      "actions": [
        { "type": "addItem", "itemId": "source_code" }
      ],
      "choices": [
        { "text": "带着石板离开", "next": "capital_return" },
        { "text": "将石板放回原处", "next": "capital_return" }
      ]
    },
    "capital_return": {
      "id": "capital_return",
      "location": "capital",
      "text": "你回到代码都，街道上依旧热闹非凡。但你手中的石板在微微发热，仿佛在警告着什么。\n\n你看到城门口的公告栏上贴着一张新的通知——「代码海洋出现未知数据风暴，请市民避免靠近海岸。」",
      "choices": [
        { "text": "前往代码海洋", "next": "ocean_explore" },
        { "text": "前往算法森林", "next": "forest_visit" },
        { "text": "留在城中观察", "next": "observe_city" }
      ]
    },
    "observe_city": {
      "id": "observe_city",
      "location": "capital",
      "text": "你留在城中，观察人们的生活。代码都的居民们使用着各种高级编程语言，构建着精美的数字艺术。一切看起来都那么完美。\n\n但你能感觉到——完美的表面下，有一种微妙的失衡。就像一段代码，运行得太久，开始产生内存泄漏。",
      "choices": [
        { "text": "前往算法森林", "next": "forest_visit" },
        { "text": "前往代码海洋", "next": "ocean_explore" },
        { "text": "前往创世塔", "next": "tower_history" }
      ]
    },
    "forest_visit": {
      "id": "forest_visit",
      "location": "forest",
      "text": "你回到算法森林。这里比记忆中更加茂盛，但树木的枝叶间，隐约能看到一些不自然的断裂——像是被什么力量撕扯过。\n\n精灵从树后飞出，它的光芒比从前暗淡了许多。",
      "choices": [
        { "text": "询问精灵发生了什么", "next": "spirit_talk" },
        { "text": "仔细观察森林的异样", "next": "observe_forest" }
      ]
    },
    "spirit_talk": {
      "id": "spirit_talk",
      "location": "forest",
      "text": "精灵低声说：「代码海洋……出了问题。那里的数据流变得混乱，甚至开始污染森林的根部。」\n\n它摘下一片金叶递给你：「这是森林最后的纯净代码。请你……帮帮我们。」",
      "actions": [
        { "type": "addItem", "itemId": "golden_leaf" }
      ],
      "choices": [
        { "text": "前往代码海洋", "next": "ocean_explore" },
        { "text": "前往创世塔寻找答案", "next": "tower_history" },
        { "text": "留下来守护森林", "next": "forest_defend" }
      ]
    },
    "observe_forest": {
      "id": "observe_forest",
      "location": "forest",
      "text": "你仔细观察森林的异样，发现数据流的污染源自地下——一条看不见的根脉，连接着代码海洋的方向。\n\n「海洋在吞噬森林……」精灵的声音带着恐惧。",
      "choices": [
        { "text": "前往代码海洋", "next": "ocean_explore" },
        { "text": "切断根脉", "next": "cut_roots" }
      ]
    },
    "cut_roots": {
      "id": "cut_roots",
      "location": "forest",
      "text": "你试图切断被污染的根脉，但代码的复杂性远超你的想象——每切断一条，就有三条新的根脉生长出来。\n\n精灵叹气：「源头在海洋……如果不解决源头，我们无法真正修复。」",
      "choices": [
        { "text": "前往代码海洋", "next": "ocean_explore" }
      ]
    },
    "forest_defend": {
      "id": "forest_defend",
      "location": "forest",
      "text": "你选择留下守护森林。你和精灵一起编织了一道代码屏障，暂时阻挡了污染。\n\n但你知道，这只是暂时的。海洋深处的某种东西正在苏醒。",
      "choices": [
        { "text": "前往代码海洋", "next": "ocean_explore" }
      ]
    },
    "ocean_explore": {
      "id": "ocean_explore",
      "location": "ocean",
      "text": "你来到代码海洋岸边。曾经平静的逻辑之海如今波涛汹涌，数据碎屑如泡沫般翻涌。\n\n远处，一个巨大的漩涡正在形成——它似乎在吸收周围的一切代码。",
      "choices": [
        { "text": "靠近漩涡调查", "next": "ocean_vortex" },
        { "text": "在岸边收集数据样本", "next": "ocean_sample" },
        { "text": "返回警告城市", "next": "capital_warn" }
      ]
    },
    "ocean_sample": {
      "id": "ocean_sample",
      "location": "ocean",
      "text": "你收集了一些海水样本，发现其中包含一种从未见过的代码模式——它像是某种古老的「自我修复」程序，但被扭曲了。\n\n「它在试图『修复』世界……通过删除一切。」一个声音在你身后响起。",
      "choices": [
        { "text": "转身看去", "next": "ocean_voice" },
        { "text": "继续分析样本", "next": "ocean_analyze" }
      ]
    },
    "ocean_voice": {
      "id": "ocean_voice",
      "location": "ocean",
      "text": "你转过身，看到一位穿着数据长袍的老者。他的面容由流动的代码构成——他似乎是这座岛屿的「系统管理员」。\n\n「你终于来了，创世者的后裔。」他说，「海洋深处的异常，是创世时代遗留的『边界条件』。当代码过于繁荣，它就会启动。」",
      "choices": [
        { "text": "询问如何阻止它", "next": "ask_admin" },
        { "text": "询问它是谁", "next": "ask_admin_identity" }
      ]
    },
    "ask_admin": {
      "id": "ask_admin",
      "location": "ocean",
      "text": "「阻止它的唯一方法，是回到创世之核，重新定义世界的『边界』。」管理员递给你一段密钥代码，「但你只有一次机会。」",
      "actions": [
        { "type": "addItem", "itemId": "harmony_bell" }
      ],
      "choices": [
        { "text": "前往创世之核", "next": "core_final" },
        { "text": "先回城市组织撤离", "next": "capital_evacuate" }
      ]
    },
    "ask_admin_identity": {
      "id": "ask_admin_identity",
      "location": "ocean",
      "text": "「我是这座岛屿的第一段注释——创世者写下『// 世界将生生不息』时，我诞生了。」\n\n「我一直守护着这片代码，直到今天。」",
      "choices": [
        { "text": "询问如何阻止异常", "next": "ask_admin" }
      ]
    },
    "ocean_analyze": {
      "id": "ocean_analyze",
      "location": "ocean",
      "text": "你深入研究样本，发现这种「自我修复」代码的源头指向岛屿的核心。\n\n「它在响应某种信号……」你自言自语。",
      "choices": [
        { "text": "前往核心", "next": "core_final" },
        { "text": "返回城市", "next": "capital_warn" }
      ]
    },
    "capital_warn": {
      "id": "capital_warn",
      "location": "capital",
      "text": "你回到城市，向议会发出了警告。但议员们只是笑了笑——\n\n「代码海洋的异常？那只是正常的数据波动。我们正处在最繁荣的时代，不必担心。」\n\n你知道，他们不愿意面对真相。",
      "choices": [
        { "text": "独自前往核心", "next": "core_final" },
        { "text": "前往算法森林召集盟友", "next": "forest_visit" }
      ]
    },
    "capital_evacuate": {
      "id": "capital_evacuate",
      "location": "capital",
      "text": "你回到城市，开始组织撤离。但城市太大了，很多人不相信灾难会降临。\n\n你只能尽可能多地通知那些愿意倾听的人。",
      "choices": [
        { "text": "前往核心", "next": "core_final" }
      ]
    },
    "core_final": {
      "id": "core_final",
      "location": "core",
      "text": "你来到岛屿的核心——那颗曾经光芒万丈的代码球体，如今布满了裂痕。\n\n「它老了。」管理员的声音在你身后响起，「需要新的定义。」",
      "choices": [
        { "text": "重新定义世界的边界", "next": "ending_redefine" },
        { "text": "尝试修复旧代码", "next": "ending_repair" },
        { "text": "放弃——让世界自然演化", "next": "ending_let_go" }
      ]
    },
    "ending_redefine": {
      "id": "ending_redefine",
      "location": "core",
      "text": "你输入了新的边界条件——更加包容、更加灵活的代码。\n\n核心重新焕发光彩，海洋的漩涡渐渐平息。森林的枝叶重新舒展。\n\n你为「神奇代码岛」开启了新的纪元——一个更加稳健的繁荣时代。",
      "isEnd": true,
      "endType": "victory",
      "endMessage": "你重新定义了繁荣，岛屿获得了新生。"
    },
    "ending_repair": {
      "id": "ending_repair",
      "location": "core",
      "text": "你试图修复旧代码，但它的结构已经过于复杂。你成功延缓了崩溃，但无法彻底解决。\n\n你成为了「守护者」，日复一日地修补着世界的裂缝。\n\n也许有一天，会有新的创世者来接手。",
      "isEnd": true,
      "endType": "good",
      "endMessage": "你守护了这个世界，但它的未来仍不确定。"
    },
    "ending_let_go": {
      "id": "ending_let_go",
      "location": "core",
      "text": "你选择放手，让世界自然演化。海洋的漩涡最终吞噬了部分海岸，森林退缩了，但新的代码从废墟中生长出来。\n\n世界没有毁灭——它只是改变了形态。\n\n你站在创世峰上，看着这个全新的世界，微笑。",
      "isEnd": true,
      "endType": "neutral",
      "endMessage": "你接受了改变，世界以另一种方式继续。"
    }
  }
}