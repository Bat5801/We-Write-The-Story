{
  "title": "哈利·波特与阿兹卡班囚徒",
  "description": "三年级，哈利在霍格沃茨度过了一个多事之秋——摄魂怪、活点地图、小天狼星布莱克的越狱、以及关于父母死亡的真相。哈利将面对最危险的敌人，也迎来最亲密的家人。",
  "version": "2.0",
  "variables": {
    "blew_up_aunt": false,
    "rode_knight_bus": false,
    "met_lupin": false,
    "has_firebolt": false,
    "friends_with_ron": true,
    "friends_with_hermione": true,
    "enemy_with_malfoy": true,
    "knows_about_sirius": false,
    "knows_about_pettigrew": false,
    "knows_about_animagus": false,
    "saw_grim": false,
    "buckbeak_condemned": false,
    "buckbeak_saved": false,
    "used_time_turner": false,
    "saved_sirius": false,
    "pettigrew_escaped": false,
    "sirius_fled": false,
    "house_points": 0,
    "dark_side": 0,
    "chose_griffindor": true,
    "chose_slytherin": false,
    "lupin_resigned": false,
    "snape_revealed": false,
    "dementor_attack_quidditch": false,
    "got_map": false,
    "seen_patronus": false,
    "cast_patronus": false
  },
  "features": {
    "inventory": true,
    "map": true
  },
  "items": [
    { "id": "firebolt", "name": "火弩箭", "icon": "🧹" },
    { "id": "map", "name": "活点地图", "icon": "🗺️" },
    { "id": "marauders_photo", "name": "劫道者照片", "icon": "📸" },
    { "id": "buckbeak", "name": "巴克比克", "icon": "🦅" },
    { "id": "time_turner", "name": "时间转换器", "icon": "⏳" },
    { "id": "pettigrew_rat", "name": "斑斑（老鼠）", "icon": "🐀" }
  ],
  "map": {
    "startingLocation": "privet_drive",
    "locations": {
      "privet_drive": { "name": "女贞路4号", "description": "德思礼家，碗橱中的童年" },
      "knight_bus": { "name": "骑士公交", "description": "紫色三层巴士，魔法应急交通工具" },
      "leaky_cauldron": { "name": "破釜酒吧", "description": "伦敦的对角巷入口" },
      "diagon_alley": { "name": "对角巷", "description": "巫师购物街" },
      "hogwarts_express": { "name": "霍格沃茨特快", "description": "开往魔法学校的列车" },
      "hogwarts": { "name": "霍格沃茨城堡", "description": "魔法学校主楼" },
      "hogwarts_great_hall": { "name": "礼堂", "description": "宴会与分院之地" },
      "hogwarts_quidditch_pitch": { "name": "魁地奇球场", "description": "飞天扫帚赛场" },
      "forbidden_forest": { "name": "禁林", "description": "危险的魔法森林" },
      "shrieking_shack": { "name": "尖叫棚屋", "description": "霍格莫德最闹鬼的房子" },
      "hogwarts_hospital_wing": { "name": "校医院", "description": "庞弗雷夫人的病房" }
    },
    "connections": {
      "privet_drive": ["knight_bus"],
      "knight_bus": ["leaky_cauldron"],
      "leaky_cauldron": ["diagon_alley"],
      "diagon_alley": ["hogwarts_express"],
      "hogwarts_express": ["hogwarts"],
      "hogwarts": ["hogwarts_great_hall", "hogwarts_quidditch_pitch", "forbidden_forest", "hogwarts_hospital_wing"],
      "hogwarts_great_hall": ["hogwarts"],
      "hogwarts_quidditch_pitch": ["hogwarts"],
      "forbidden_forest": ["shrieking_shack", "hogwarts"],
      "shrieking_shack": ["forbidden_forest"],
      "hogwarts_hospital_wing": ["hogwarts"]
    }
  },
  "start": "start",
  "nodes": {

    "start": {
      "text": "🏠 女贞路4号。\n三年级暑假，你终于可以离开德思礼家了。\n但暑假还没结束——玛姬姑妈要来。\n她是你姨父的姐姐，最讨厌你和你父母。",
      "location": "privet_drive",
      "choices": [
        { "text": "😰 迎接玛姬姑妈", "next": "marge_visit" }
      ]
    },

    "marge_visit": {
      "text": "👩 玛姬姑妈到了。她带着她的斗牛犬利皮。\n她全程侮辱你的父母——「你爸爸就是个没用的酒鬼，你妈妈……」\n🔥 你控制不住魔力——\n她像气球一样膨胀起来，飘到了天花板上！",
      "location": "privet_drive",
      "actions": [
        { "type": "setVar", "name": "blew_up_aunt", "value": true }
      ],
      "choices": [
        { "text": "💨 跑出家门", "next": "run_away" }
      ]
    },

    "run_away": {
      "text": "🏃 你冲出了女贞路，拖着行李箱漫无目的地走。\n🌙 夜色中，一辆三层紫色的公交车轰然出现——\n🚌 「骑士公交！紧急情况下召唤！」\n售票员斯坦·桑帕克问你要去哪。",
      "location": "privet_drive",
      "choices": [
        { "text": "🚌 坐上骑士公交", "next": "knight_bus" }
      ]
    },

    "knight_bus": {
      "text": "🚌 骑士公交疯狂地穿梭在街道间。\n你决定去破釜酒吧——\n🪄 你到了伦敦，破釜酒吧的老板汤姆欢迎你。\n你住进了酒吧，等待开学。",
      "location": "knight_bus",
      "actions": [
        { "type": "setVar", "name": "rode_knight_bus", "value": true }
      ],
      "choices": [
        { "text": "🛍️ 去对角巷买东西", "next": "diagon_3" }
      ]
    },

    "diagon_3": {
      "text": "🛍️ 你在对角巷遇到了罗恩和赫敏。\n罗恩得到了一只新魔杖，赫敏买了只猫——克鲁克山，姜黄色大猫。\n你还遇到了卢平教授——新来的黑魔法防御术老师。\n他看起来很憔悴，但温和有礼。",
      "location": "diagon_alley",
      "actions": [
        { "type": "setVar", "name": "met_lupin", "value": true }
      ],
      "choices": [
        { "text": "🚂 去霍格沃茨", "next": "hogwarts_express_3" }
      ]
    },

    "hogwarts_express_3": {
      "text": "🚂 火车上，摄魂怪袭击了包厢！\n💀 你感到前所未有的冰冷，你听到母亲的尖叫——\n你昏倒了。\n卢平教授用守护神驱走了摄魂怪，给了你一块巧克力。",
      "location": "hogwarts_express",
      "actions": [
        { "type": "setVar", "name": "seen_patronus", "value": true }
      ],
      "choices": [
        { "text": "🍫 吃巧克力", "next": "arrival_3" }
      ]
    },

    "arrival_3": {
      "text": "🏰 开学宴会上，邓布利多宣布——\n摄魂怪将守卫霍格沃茨，追捕逃犯小天狼星·布莱克。\n小天狼星是伏地魔的追随者，他背叛了你的父母。\n🔔 你恨他。",
      "location": "hogwarts_great_hall",
      "choices": [
        { "text": "📚 开始新学期", "next": "first_week_3" }
      ]
    },

    "first_week_3": {
      "text": "📚 三年级课程——\n占卜课：特里劳尼教授预言你「将有生命危险」，并看到「不祥」（一条大黑狗）。\n保护神奇生物课：海格教你们巴克比克——一只鹰头马身有翼兽。\n你成功驯服了它。",
      "location": "hogwarts",
      "choices": [
        { "text": "🦅 骑巴克比克", "next": "buckbeak_ride" },
        { "text": "🔮 去上占卜课", "next": "divination" }
      ]
    },

    "buckbeak_ride": {
      "text": "🦅 巴克比克带你飞了一圈，你赢得了它的信任。\n马尔福也尝试——但他侮辱了巴克比克，被它抓伤了胳膊。\n马尔福发誓要报复。",
      "location": "hogwarts",
      "choices": [
        { "text": "📖 继续上课", "next": "lupin_class" }
      ]
    },

    "divination": {
      "text": "🔮 特里劳尼看到水晶球里的「不祥」，她说你会死。\n但你觉得她只是在故弄玄虚。",
      "location": "hogwarts",
      "choices": [
        { "text": "📖 去上黑魔法防御术", "next": "lupin_class" }
      ]
    },

    "lupin_class": {
      "text": "🪄 卢平教授的课完全不同——\n他教你们对付博格特。\n你的博格特变成摄魂怪，你无法施展守护神咒。\n卢平阻止了你，说以后会单独教你。",
      "location": "hogwarts",
      "actions": [
        { "type": "setVar", "name": "met_lupin", "value": true }
      ],
      "choices": [
        { "text": "🧹 魁地奇训练", "next": "quidditch_3" },
        { "text": "📜 调查小天狼星", "next": "investigate_sirius" }
      ]
    },

    "quidditch_3": {
      "text": "🧹 伍德宣布——今年格兰芬多对战拉文克劳。\n你收到了匿名礼物——一把火弩箭！\n世界上最好的扫帚！\n但赫敏怀疑是小天狼星送的，报告了麦格。\n扫帚被扣留检查。",
      "location": "hogwarts_quidditch_pitch",
      "actions": [
        { "type": "addItem", "itemId": "firebolt" },
        { "type": "setVar", "name": "has_firebolt", "value": true }
      ],
      "choices": [
        { "text": "😤 生赫敏的气", "next": "quidditch_match_3" },
        { "text": "🤝 理解赫敏", "next": "quidditch_match_3" }
      ]
    },

    "quidditch_match_3": {
      "text": "🏆 格兰芬多对拉文克劳——\n你骑着光轮2000（火弩箭还没归还）升空。\n💀 突然，一群摄魂怪冲进球场！\n你从扫帚上坠落——\n卢平救了你的命。",
      "location": "hogwarts_quidditch_pitch",
      "actions": [
        { "type": "setVar", "name": "dementor_attack_quidditch", "value": true }
      ],
      "choices": [
        { "text": "🏥 住院", "next": "after_quidditch_3" }
      ]
    },

    "after_quidditch_3": {
      "text": "🏥 你醒来后，赫敏告诉你——\n卢平教授已经同意私下教你守护神咒。\n你开始练习召唤守护神。",
      "location": "hogwarts_hospital_wing",
      "choices": [
        { "text": "🪄 学习守护神咒", "next": "patronus_lessons" }
      ]
    },

    "patronus_lessons": {
      "text": "🪄 卢平教你——\n「守护神是你内心最快乐的回忆。」\n你努力回忆——\n起初只有银色的薄雾，后来渐渐成形。\n你不断练习。",
      "location": "hogwarts",
      "actions": [
        { "type": "setVar", "name": "cast_patronus", "value": true }
      ],
      "choices": [
        { "text": "📜 继续调查小天狼星", "next": "investigate_sirius" }
      ]
    },

    "investigate_sirius": {
      "text": "📰 你从报纸上得知——\n小天狼星·布莱克曾是伏地魔的追随者，他背叛了你父母，杀死了十二个麻瓜和小矮星彼得。\n你发誓要找到他。",
      "location": "hogwarts",
      "actions": [
        { "type": "setVar", "name": "knows_about_sirius", "value": true }
      ],
      "choices": [
        { "text": "🗺️ 寻找活点地图", "next": "get_map" }
      ]
    },

    "get_map": {
      "text": "🗺️ 你发现了一个秘密——\n活点地图！\n它详细显示了霍格沃茨每一条通道，每个人。\n上面签着：月亮脸、虫尾巴、大脚板、尖头叉子。\n你拿到了它。",
      "location": "hogwarts",
      "actions": [
        { "type": "addItem", "itemId": "map" },
        { "type": "setVar", "name": "got_map", "value": true }
      ],
      "choices": [
        { "text": "🕵️ 用地图探查", "next": "map_exploration" }
      ]
    },

    "map_exploration": {
      "text": "🕵️ 你发现地图上——\n有个叫「虫尾巴」的人出现在城堡里，但你看不见他。\n你决定夜间巡逻。",
      "location": "hogwarts",
      "choices": [
        { "text": "🌙 去三楼走廊", "next": "sirius_encounter" }
      ]
    },

    "sirius_encounter": {
      "text": "🌙 你在走廊遇到了小天狼星！\n他把你拉进空教室——\n「哈利，听我说——我是你父亲最好的朋友！我不是背叛者！」\n但罗恩和赫敏冲了进来，小天狼星逃走了。",
      "location": "hogwarts",
      "choices": [
        { "text": "🤔 质疑小天狼星的话", "next": "after_sirius" }
      ]
    },

    "after_sirius": {
      "text": "🤔 你开始怀疑小天狼星的清白。\n赫敏说——「也许我们弄错了。」\n但你还不能确定。",
      "location": "hogwarts",
      "choices": [
        { "text": "🎄 圣诞假期", "next": "christmas_3" }
      ]
    },

    "christmas_3": {
      "text": "🎄 圣诞节，你收到了火弩箭——是匿名礼物。\n你终于可以骑它了。\n🎁 赫敏送你一本《魔法史》，罗恩送你一套巧克力。\n小天狼星又出现了——你看到他变成一条大黑狗。",
      "location": "hogwarts",
      "actions": [
        { "type": "setVar", "name": "saw_grim", "value": true }
      ],
      "choices": [
        { "text": "🔍 追踪黑狗", "next": "track_sirius" }
      ]
    },

    "track_sirius": {
      "text": "🐕 你跟着黑狗来到禁林边缘——\n他变成了一个人：小天狼星！\n「你爸爸是我的朋友，哈利。我发誓——我从未背叛他。」\n然后他逃走了。",
      "location": "forbidden_forest",
      "choices": [
        { "text": "🤯 震惊", "next": "after_track" }
      ]
    },

    "after_track": {
      "text": "📅 学期继续——\n巴克比克被魔法部判死刑！\n海格痛苦万分。\n你决定救巴克比克。",
      "location": "hogwarts",
      "actions": [
        { "type": "setVar", "name": "buckbeak_condemned", "value": true }
      ],
      "choices": [
        { "text": "🦅 计划救巴克比克", "next": "buckbeak_rescue_plan" }
      ]
    },

    "buckbeak_rescue_plan": {
      "text": "📋 你们制定计划——\n在行刑当天，用时间转换器救它。\n但赫敏说时间转换器非常危险。\n「只能用在最紧要的关头。」",
      "location": "hogwarts",
      "choices": [
        { "text": "⏳ 使用时间转换器", "next": "time_turner_use" },
        { "text": "🕊️ 顺其自然", "next": "buckbeak_dies" }
      ]
    },

    "buckbeak_dies": {
      "text": "🕊️ 你没有行动，巴克比克被斩首。\n海格悲痛欲绝。\n你失去了一个朋友。",
      "location": "hogwarts",
      "actions": [
        { "type": "addVar", "name": "dark_side", "value": 10 }
      ],
      "choices": [
        { "text": "继续", "next": "climax" }
      ]
    },

    "time_turner_use": {
      "text": "⏳ 赫敏拿出了时间转换器——\n它是个小时玻璃沙漏。\n「我们回到过去三个小时，救巴克比克。」\n你旋转沙漏，时光倒流。",
      "location": "hogwarts",
      "actions": [
        { "type": "addItem", "itemId": "time_turner" },
        { "type": "setVar", "name": "used_time_turner", "value": true }
      ],
      "choices": [
        { "text": "🦅 去救巴克比克", "next": "save_buckbeak" }
      ]
    },

    "save_buckbeak": {
      "text": "🦅 你们回到过去，释放了巴克比克，把它藏到禁林深处。\n然后你们赶往尖叫棚屋——\n小天狼星在那里！",
      "location": "forbidden_forest",
      "actions": [
        { "type": "setVar", "name": "buckbeak_saved", "value": true }
      ],
      "choices": [
        { "text": "🏃 去尖叫棚屋", "next": "shrieking_shack" }
      ]
    },

    "shrieking_shack": {
      "text": "🏚️ 尖叫棚屋里，小天狼星抓住了罗恩的宠物老鼠斑斑。\n「就是它——虫尾巴！小矮星彼得！」\n斑斑变成了一个矮胖的男人！\n「天哪……」",
      "location": "shrieking_shack",
      "actions": [
        { "type": "addItem", "itemId": "pettigrew_rat" },
        { "type": "setVar", "name": "knows_about_pettigrew", "value": true },
        { "type": "setVar", "name": "knows_about_animagus", "value": true }
      ],
      "choices": [
        { "text": "😱 听真相", "next": "pettigrew_confession" }
      ]
    },

    "pettigrew_confession": {
      "text": "🗣️ 小矮星彼得承认——\n他才是背叛者！\n他出卖了你父母，嫁祸给小天狼星。\n小天狼星是清白的！",
      "location": "shrieking_shack",
      "choices": [
        { "text": "⚔️ 抓住彼得", "next": "pettigrew_escape" }
      ]
    },

    "pettigrew_escape": {
      "text": "🐀 卢平变成狼人（满月），小天狼星与之搏斗。\n混乱中，小矮星彼得逃走了！\n他变成老鼠消失了。\n小天狼星追了出去。",
      "location": "shrieking_shack",
      "actions": [
        { "type": "setVar", "name": "pettigrew_escaped", "value": true }
      ],
      "choices": [
        { "text": "🌙 去救小天狼星", "next": "sirius_capture" }
      ]
    },

    "sirius_capture": {
      "text": "🌙 摄魂怪包围了小天狼星——\n它们要「吻」他，吸走他的灵魂！\n你挺身而出，召唤出守护神——\n🦌 一头银色的牡鹿！\n你击退了摄魂怪！",
      "location": "forbidden_forest",
      "actions": [
        { "type": "setVar", "name": "cast_patronus", "value": true },
        { "type": "setVar", "name": "saved_sirius", "value": true }
      ],
      "choices": [
        { "text": "⏳ 再次使用时间转换器", "next": "time_turner_again" },
        { "text": "🏰 回城堡", "next": "sirius_flees_alt" }
      ]
    },

    "time_turner_again": {
      "text": "⏳ 你再次旋转沙漏，回到更早的时间——\n你去救巴克比克，然后带着它飞向天台。\n小天狼星骑上巴克比克，飞走了。\n「后会有期，哈利。」\n他消失在月光中。",
      "location": "hogwarts",
      "actions": [
        { "type": "setVar", "name": "sirius_fled", "value": true },
        { "type": "setVar", "name": "saved_sirius", "value": true }
      ],
      "choices": [
        { "text": "🏰 回到现在", "next": "ending_3" }
      ]
    },

    "sirius_flees_alt": {
      "text": "🏰 你没能救走小天狼星，他被摄魂怪吻了。\n他死了。\n你失去了唯一可能有的家人。",
      "location": "hogwarts",
      "isEnd": true,
      "endType": "death"
    },

    "climax": {
      "text": "⏳ 你错过了拯救机会，小天狼星被抓住。\n他的清白永远无法被证明。\n结局：错失",
      "location": "hogwarts",
      "isEnd": true,
      "endType": "neutral"
    },

    "ending_3": {
      "text": "🌟🌟🌟 《哈利·波特与阿兹卡班囚徒》——\n\n🏆 你救出了小天狼星，他逃走了。\n🦅 巴克比克也获得了自由。\n🐀 小矮星彼得逃走了，但真相大白。\n🤝 你和赫敏、罗恩的友谊更加深厚。\n\n💀 伏地魔最忠实的仆人在外面游荡，\n但魔法世界知道——小天狼星·布莱克是无辜的。\n\n🏠 最重要的是——你有教父了。\n\n✨ 阿兹卡班的阴影已散去，新的冒险在等着你。",
      "location": "hogwarts",
      "isEnd": true,
      "endType": "true"
    },

    "ending_alternative_good": {
      "text": "🌟🌟 虽然小天狼星没能逃跑，但你证明了他的清白。\n邓布利多承诺会为他申诉。\n正义虽然迟到，但没有缺席。",
      "location": "hogwarts",
      "isEnd": true,
      "endType": "victory"
    },

    "ending_dark_3": {
      "text": "💀 你选择相信小天狼星是罪犯，与他对抗。\n你错过了真相，错过了亲人。\n伏地魔的势力暗流涌动。\n结局：黑暗中的迷失",
      "location": "hogwarts",
      "isEnd": true,
      "endType": "death"
    },

    "slytherin_climax": {
      "text": "🐍 作为斯莱特林，你面临选择——\n帮助小天狼星，还是向魔法部告发他？",
      "location": "hogwarts",
      "choices": [
        { "text": "🕊️ 帮助他", "next": "time_turner_use" },
        { "text": "💀 告发他", "next": "ending_dark_3" }
      ]
    },

    "sirius_encounter_alt": {
      "text": "🌙 你在走廊遇到了小天狼星，但你没有相信他。\n你呼叫了教授，他被捕了。\n后来你才后悔。",
      "location": "hogwarts",
      "choices": [
        { "text": "继续", "next": "ending_dark_3" }
      ]
    },

    "investigate_sirius_alt": {
      "text": "📜 你从另一个渠道得知——卢平可能是狼人。\n你开始怀疑卢平。",
      "location": "hogwarts",
      "choices": [
        { "text": "🔍 调查卢平", "next": "lupin_investigate" },
        { "text": "继续查小天狼星", "next": "investigate_sirius" }
      ]
    },

    "lupin_investigate": {
      "text": "🔍 你发现卢平每月缺席，且斯内普提起过狼人。\n你越来越怀疑。",
      "location": "hogwarts",
      "choices": [
        { "text": "继续", "next": "quidditch_match_3" }
      ]
    },

    "save_buckbeak_fail": {
      "text": "⏳ 你时间没算好，巴克比克还是被杀了。\n你失去了一个机会。",
      "location": "forbidden_forest",
      "choices": [
        { "text": "继续", "next": "climax" }
      ]
    },

    "firebolt_returned": {
      "text": "🧹 麦格教授归还了你的火弩箭，它通过了检查。\n你终于可以骑它了。",
      "location": "hogwarts",
      "actions": [
        { "type": "addItem", "itemId": "firebolt" }
      ],
      "choices": [
        { "text": "🧹 去魁地奇", "next": "quidditch_match_3" }
      ]
    },

    "patronus_final": {
      "text": "🦌 你成功召唤出完整的守护神——一头牡鹿。\n卢平微笑着说：「你父亲也变过这个。」\n你明白了——你父母永远与你同在。",
      "location": "hogwarts",
      "actions": [
        { "type": "setVar", "name": "cast_patronus", "value": true }
      ],
      "choices": [
        { "text": "📜 结局", "next": "ending_3" }
      ]
    },

    "pettigrew_captured": {
      "text": "🐀 你成功抓住了小矮星彼得，将他交给了魔法部。\n小天狼星被平反，重获自由。\n但彼得被摄魂怪吻了。",
      "location": "hogwarts",
      "actions": [
        { "type": "setVar", "name": "pettigrew_escaped", "value": false }
      ],
      "choices": [
        { "text": "🏆 结局", "next": "ending_alternative_good" }
      ]
    },

    "sirius_flees_alt2": {
      "text": "🌙 小天狼星骑上巴克比克飞走，但他答应会写信给你。\n你有了真正的家人。",
      "location": "hogwarts",
      "actions": [
        { "type": "setVar", "name": "sirius_fled", "value": true }
      ],
      "choices": [
        { "text": "🏰 回城堡", "next": "ending_3" }
      ]
    }
  }
}