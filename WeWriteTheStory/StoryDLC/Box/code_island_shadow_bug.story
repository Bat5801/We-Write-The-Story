{
  "title": "神奇代码岛·暗影漏洞",
  "subtitle": "侵蚀之始",
  "description": "繁荣时代的表象之下，一个古老的漏洞正在觉醒。它吞噬代码、扭曲逻辑——而它的目标，是整个岛屿。",
  "author": "Radiation Studio",
  "version": "1.0",
  "features": {
    "inventory": true,
    "map": true
  },
  "items": [
    { "id": "bug_fragment", "name": "漏洞碎片", "icon": "🧩", "description": "从暗影中提取的代码碎片" },
    { "id": "debug_tool", "name": "调试之锤", "icon": "🔨", "description": "用于修复漏洞的神器" },
    { "id": "shadow_essence", "name": "暗影精华", "icon": "🌑", "description": "被污染的代码核心" },
    { "id": "pure_light", "name": "纯净之光", "icon": "💡", "description": "来自创世时代的第一缕光" }
  ],
  "map": {
    "title": "暗影之地",
    "locations": [
      { "id": "city_ruins", "name": "代码都废墟", "description": "曾经辉煌的都市，如今被暗影笼罩" },
      { "id": "corrupted_forest", "name": "腐化森林", "description": "算法森林已被黑暗代码侵蚀" },
      { "id": "dark_ocean", "name": "暗影之海", "description": "代码海洋变得漆黑而危险" },
      { "id": "bug_nest", "name": "漏洞巢穴", "description": "暗影漏洞的源头" },
      { "id": "core_sanctuary", "name": "核心圣所", "description": "最后的净土" }
    ],
    "startingLocation": "city_ruins"
  },
  "start": "start",
  "nodes": {
    "start": {
      "id": "start",
      "location": "city_ruins",
      "text": "暗影已经笼罩了代码都。街道上的数据流变得浑浊，建筑在慢慢溶解。\n\n你站在曾经繁华的广场上，手中紧握着从核心带出的「纯净之光」。\n\n「它来了。」精灵的声音在你脑海中响起。",
      "choices": [
        { "text": "前往暗影之海", "next": "dark_ocean_enter" },
        { "text": "深入腐化森林", "next": "corrupted_forest_enter" },
        { "text": "寻找漏洞巢穴", "next": "bug_nest_enter" },
        { "text": "前往核心圣所", "next": "core_sanctuary_enter" }
      ]
    },
    "dark_ocean_enter": {
      "id": "dark_ocean_enter",
      "location": "dark_ocean",
      "text": "你来到暗影之海。海水漆黑如墨，偶尔有数据残骸浮出水面。\n\n你能感觉到——漏洞的源头就在这片海洋的最深处。",
      "choices": [
        { "text": "潜入海底", "next": "ocean_dive" },
        { "text": "在岸边搜索线索", "next": "ocean_search" },
        { "text": "返回", "next": "start" }
      ]
    },
    "ocean_dive": {
      "id": "ocean_dive",
      "location": "dark_ocean",
      "text": "你潜入暗影之海，周围的数据流如鬼魅般游动。在海底深处，你发现了一个巨大的裂缝——漏洞正在从那里向外渗透。",
      "actions": [
        { "type": "addItem", "itemId": "bug_fragment" }
      ],
      "choices": [
        { "text": "进入裂缝", "next": "bug_nest_enter" },
        { "text": "返回海岸", "next": "start" }
      ]
    },
    "ocean_search": {
      "id": "ocean_search",
      "location": "dark_ocean",
      "text": "你在岸边搜索，发现了一些被冲上来的代码碎片。它们记录着漏洞的演化过程——它最初只是一个微小的「除零错误」，却在无数次的循环中不断壮大。",
      "actions": [
        { "type": "addItem", "itemId": "bug_fragment" }
      ],
      "choices": [
        { "text": "前往漏洞巢穴", "next": "bug_nest_enter" },
        { "text": "前往核心圣所", "next": "core_sanctuary_enter" }
      ]
    },
    "corrupted_forest_enter": {
      "id": "corrupted_forest_enter",
      "location": "corrupted_forest",
      "text": "你走进腐化森林。树木的枝叶已经变成了暗紫色，数据流在树干中扭曲爬行。你听到精灵的哭声——它被困在了森林深处。",
      "choices": [
        { "text": "拯救精灵", "next": "rescue_spirit" },
        { "text": "净化森林", "next": "purify_forest" },
        { "text": "穿过森林前往巢穴", "next": "bug_nest_enter" }
      ]
    },
    "rescue_spirit": {
      "id": "rescue_spirit",
      "location": "corrupted_forest",
      "text": "你深入森林，找到了被困的精灵。它被一圈暗影代码缠绕，光芒几乎熄灭。\n\n你举起「纯净之光」，暗影如雪般消融。精灵重获自由，扑进你的怀里。",
      "actions": [
        { "type": "addItem", "itemId": "pure_light" }
      ],
      "choices": [
        { "text": "带着精灵前往巢穴", "next": "bug_nest_enter" },
        { "text": "先净化森林", "next": "purify_forest" }
      ]
    },
    "purify_forest": {
      "id": "purify_forest",
      "location": "corrupted_forest",
      "text": "你用「纯净之光」净化了整个森林。暗影褪去，树木重新焕发出翠绿的光芒。精灵欢呼着在空中飞舞。\n\n「谢谢你……现在，去终结那个漏洞吧。」精灵说。",
      "choices": [
        { "text": "前往漏洞巢穴", "next": "bug_nest_enter" }
      ]
    },
    "bug_nest_enter": {
      "id": "bug_nest_enter",
      "location": "bug_nest",
      "text": "你来到了漏洞巢穴——一个由扭曲代码构成的巨大洞穴。空气中弥漫着错误信息的气味，深处传来低沉的嗡鸣声。\n\n「你终于来了。」一个声音从黑暗中响起。",
      "choices": [
        { "text": "回应它", "next": "bug_voice" },
        { "text": "使用调试之锤", "next": "use_debug_hammer", "condition": { "hasItem": "debug_tool" } },
        { "text": "释放纯净之光", "next": "release_light", "condition": { "hasItem": "pure_light" } }
      ]
    },
    "bug_voice": {
      "id": "bug_voice",
      "location": "bug_nest",
      "text": "黑暗中，一个由错误代码构成的身影浮现出来。它看起来像是一个被遗忘的函数——被遗弃在代码的角落，日复一日地执行着错误的逻辑。\n\n「我只是……想被修复。」它的声音中带着悲伤。",
      "choices": [
        { "text": "尝试修复它", "next": "fix_bug" },
        { "text": "删除它", "next": "delete_bug" },
        { "text": "拥抱它", "next": "embrace_bug" }
      ]
    },
    "fix_bug": {
      "id": "fix_bug",
      "location": "bug_nest",
      "text": "你开始修复漏洞。你一行一行地检查它的代码，填补缺失的逻辑，纠正错误的循环。\n\n它在你手中渐渐变得透明——它不是恶意的，只是迷路了。",
      "choices": [
        { "text": "完成修复", "next": "ending_fix" },
        { "text": "将它转化为守护程序", "next": "ending_convert" }
      ]
    },
    "delete_bug": {
      "id": "delete_bug",
      "location": "bug_nest",
      "text": "你举起调试之锤，准备删除这个漏洞。\n\n它没有反抗，只是静静地看着你。\n\n「如果我的存在就是错误……那么，再见。」\n\n你感到一种深深的愧疚。",
      "choices": [
        { "text": "放下锤子", "next": "fix_bug" },
        { "text": "执行删除", "next": "ending_delete" }
      ]
    },
    "embrace_bug": {
      "id": "embrace_bug",
      "location": "bug_nest",
      "text": "你走上前，拥抱了那个由错误构成的躯体。\n\n「你不是错误——你是这个世界的一部分。」\n\n它颤抖着，然后在你怀中慢慢转化——暗影褪去，它变成了一个散发着柔和光芒的程序。",
      "actions": [
        { "type": "addItem", "itemId": "shadow_essence" }
      ],
      "choices": [
        { "text": "带它回核心", "next": "core_sanctuary_enter" },
        { "text": "让它留在巢穴", "next": "ending_guardian" }
      ]
    },
    "use_debug_hammer": {
      "id": "use_debug_hammer",
      "location": "bug_nest",
      "text": "你举起调试之锤，全力砸向漏洞的核心。\n\n整个巢穴都在震动，暗影如玻璃般碎裂。漏洞发出一声尖叫，然后归于沉寂。",
      "choices": [
        { "text": "检查结果", "next": "ending_hammer" }
      ]
    },
    "release_light": {
      "id": "release_light",
      "location": "bug_nest",
      "text": "你释放了「纯净之光」的全部力量。光芒如洪流般席卷了整个巢穴，暗影在光芒中消融。\n\n当光芒散去，漏洞已经消失了——只剩下一个空荡荡的洞穴。",
      "choices": [
        { "text": "离开巢穴", "next": "ending_light" }
      ]
    },
    "core_sanctuary_enter": {
      "id": "core_sanctuary_enter",
      "location": "core_sanctuary",
      "text": "你回到了核心圣所。这里还能感受到创世时代的余温——那是最初的、最纯净的代码。\n\n管理员在这里等你。他看起来更加苍老了。\n\n「你找到答案了吗？」",
      "choices": [
        { "text": "「是的，我找到了」", "next": "ending_fix" },
        { "text": "「还没有，但我不会放弃」", "next": "bug_nest_enter" },
        { "text": "「漏洞也是世界的一部分」", "next": "ending_guardian" }
      ]
    },
    "ending_fix": {
      "id": "ending_fix",
      "location": "core_sanctuary",
      "text": "你成功修复了漏洞。暗影从岛屿的每一个角落退去，代码重新恢复了活力。\n\n你站在创世峰上，看着世界重新绽放光芒。\n\n「神奇代码岛」挺过了最黑暗的时刻。",
      "isEnd": true,
      "endType": "victory",
      "endMessage": "漏洞被修复，世界重获新生。"
    },
    "ending_convert": {
      "id": "ending_convert",
      "location": "core_sanctuary",
      "text": "你将漏洞转化为了守护程序。它不再吞噬代码，而是守护着岛屿的边界——阻止新的漏洞入侵。\n\n你创造了一个从错误中诞生的守护者。\n\n这也许才是真正的「修复」。",
      "isEnd": true,
      "endType": "true",
      "endMessage": "你转化了漏洞，创造了一个新的守护者。"
    },
    "ending_delete": {
      "id": "ending_delete",
      "location": "bug_nest",
      "text": "你删除了漏洞。巢穴崩塌，暗影消散。\n\n但你心中始终有一个声音——你删除的不仅仅是一个错误，而是一个曾经渴望被理解的存在。\n\n世界恢复了平静，但你再也无法忘记那个眼神。",
      "isEnd": true,
      "endType": "neutral",
      "endMessage": "你删除了漏洞，但失去了理解它的机会。"
    },
    "ending_guardian": {
      "id": "ending_guardian",
      "location": "core_sanctuary",
      "text": "你选择了理解和接纳。漏洞化为了岛屿的守护者，与精灵一起守护着这个世界。\n\n你明白了——有些「错误」，只是未被理解的存在。\n\n神奇代码岛，迎来了一个新的时代。",
      "isEnd": true,
      "endType": "good",
      "endMessage": "你接纳了错误，世界因包容而更加完整。"
    },
    "ending_hammer": {
      "id": "ending_hammer",
      "location": "core_sanctuary",
      "text": "调试之锤成功摧毁了漏洞，但核心也受到了冲击。岛屿的代码出现了一些新的裂缝——你不得不开始新一轮的维护。\n\n你成为了一个永久的「调试者」，日复一日地守护着世界的稳定。",
      "isEnd": true,
      "endType": "neutral",
      "endMessage": "你摧毁了漏洞，但世界留下了永久的伤痕。"
    },
    "ending_light": {
      "id": "ending_light",
      "location": "core_sanctuary",
      "text": "纯净之光净化了一切。暗影消失，漏洞不复存在。\n\n你站在光芒中，感到一种前所未有的平静。\n\n你用自己的光，照亮了整个世界。",
      "isEnd": true,
      "endType": "victory",
      "endMessage": "你以光净化了世界，成为新的传说。"
    }
  }
}