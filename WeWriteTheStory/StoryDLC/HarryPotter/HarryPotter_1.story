{
  "title": "哈利·波特与魔法石",
  "description": "大难不死的男孩踏入魔法世界，在霍格沃茨经历惊心动魄的冒险。你的选择将决定命运——是成为英雄，还是坠入黑暗？",
  "version": "2.0",
  "variables": {
    "house": "",
    "friends_with_ron": false,
    "friends_with_hermione": false,
    "friends_with_malfoy": false,
    "enemy_with_malfoy": false,
    "knows_fluffy": false,
    "knows_philosopher_stone": false,
    "defeated_troll": false,
    "won_quidditch": false,
    "saw_mirror": false,
    "hatched_dragon": false,
    "sent_dragon_away": false,
    "went_to_forest": false,
    "passed_guardians": false,
    "got_stone": false,
    "defeated_quarrel": false,
    "helped_quarrel": false,
    "house_points": 0,
    "dark_side": 0,
    "has_invisibility_cloak": false,
    "has_wand": false,
    "has_owl": false,
    "has_money": false,
    "met_hagrid": false,
    "knows_about_hogwarts": false,
    "read_letter": false,
    "letter_taken": false,
    "chose_griffindor": false,
    "chose_slytherin": false,
    "chose_ravenclaw": false,
    "chose_hufflepuff": false
  },
  "features": {
    "inventory": true,
    "map": true
  },
  "items": [
    { "id": "letter", "name": "霍格沃茨录取通知书", "icon": "📜" },
    { "id": "cake", "name": "海格的生日蛋糕", "icon": "🎂" },
    { "id": "wand", "name": "冬青木凤凰羽魔杖", "icon": "🪄" },
    { "id": "hedwig", "name": "海德薇", "icon": "🦉" },
    { "id": "cloak", "name": "隐形衣", "icon": "🧥" },
    { "id": "flute", "name": "海格的笛子", "icon": "🎵" },
    { "id": "stone", "name": "魔法石", "icon": "💎" }
  ],
  "map": {
    "startingLocation": "privet_drive",
    "locations": {
      "privet_drive": { "name": "女贞路4号", "description": "德思礼家的房子，楼梯下的碗橱" },
      "zoo": { "name": "动物园", "description": "爬虫馆，与蟒蛇对话的地方" },
      "rock_on_sea": { "name": "海边孤岛", "description": "暴风雨中的小屋，海格在此找到你" },
      "diagon_alley": { "name": "对角巷", "description": "巫师购物街，破釜酒吧入口" },
      "gringotts": { "name": "古灵阁", "description": "巫师银行，由妖精掌管" },
      "kings_cross": { "name": "国王十字车站", "description": "9¾站台，霍格沃茨特快出发地" },
      "hogwarts_express": { "name": "霍格沃茨特快", "description": "驶向魔法学校的红色列车" },
      "hogwarts": { "name": "霍格沃茨城堡", "description": "魔法学校的核心" },
      "hogwarts_great_hall": { "name": "礼堂", "description": "宴会与分院仪式所在地" },
      "hogwarts_quidditch_pitch": { "name": "魁地奇球场", "description": "飞天扫帚比赛的场地" },
      "hogwarts_library": { "name": "图书馆", "description": "禁书区藏有无数秘密" },
      "hogwarts_hospital_wing": { "name": "校医院", "description": "庞弗雷夫人照料伤患" },
      "forbidden_forest": { "name": "禁林", "description": "危险生物出没的森林" },
      "hagrids_hut": { "name": "海格的小屋", "description": "猎场看守的住所，靠近禁林" }
    },
    "connections": {
      "privet_drive": ["zoo", "rock_on_sea"],
      "zoo": ["privet_drive"],
      "rock_on_sea": ["diagon_alley"],
      "diagon_alley": ["gringotts", "kings_cross"],
      "gringotts": ["diagon_alley"],
      "kings_cross": ["hogwarts_express"],
      "hogwarts_express": ["hogwarts"],
      "hogwarts": ["hogwarts_great_hall", "hogwarts_quidditch_pitch", "hogwarts_library", "hogwarts_hospital_wing", "forbidden_forest", "hagrids_hut"],
      "hogwarts_great_hall": ["hogwarts"],
      "hogwarts_quidditch_pitch": ["hogwarts"],
      "hogwarts_library": ["hogwarts"],
      "hogwarts_hospital_wing": ["hogwarts"],
      "forbidden_forest": ["hogwarts", "hagrids_hut"],
      "hagrids_hut": ["hogwarts", "forbidden_forest"]
    }
  },
  "start": "start",
  "nodes": {

    "start": {
      "text": "🏠 1991年，女贞路4号。\n你叫哈利·波特，住楼梯下的碗橱，被德思礼一家虐待。\n今天，弗农姨父决定带全家去动物园——你预感会有怪事发生。",
      "location": "privet_drive",
      "choices": [
        { "text": "🐍 去动物园", "next": "zoo" }
      ]
    },

    "zoo": {
      "text": "🦁 在爬虫馆，你与一条巴西蟒蛇对话，玻璃突然消失，达力掉了进去。\n德思礼一家吓坏了，你被关禁闭。\n📬 几天后，第一封信来了——",
      "location": "zoo",
      "choices": [
        { "text": "📩 拆开信", "next": "read_letter" },
        { "text": "🕵️ 先藏起来，观察动静", "next": "hide_letter" }
      ]
    },

    "read_letter": {
      "text": "📜 信上写着：\n「霍格沃茨魔法学校——校长阿不思·邓布利多。\n亲爱的波特先生，您已获准入学……」\n⚡ 你是巫师！",
      "location": "privet_drive",
      "actions": [
        { "type": "addItem", "itemId": "letter" },
        { "type": "setVar", "name": "read_letter", "value": true },
        { "type": "setVar", "name": "knows_about_hogwarts", "value": true }
      ],
      "choices": [
        { "text": "📖 继续", "next": "letter_taken" }
      ]
    },

    "hide_letter": {
      "text": "🕵️ 你小心翼翼把信藏在床垫下。\n但第二天，弗农姨父发现了它，怒吼着撕碎了信。\n更多的信像雪片飞来，德思礼一家决定逃离。",
      "location": "privet_drive",
      "actions": [
        { "type": "setVar", "name": "letter_taken", "value": true }
      ],
      "choices": [
        { "text": "🚗 跟着他们逃跑", "next": "on_the_run" }
      ]
    },

    "letter_taken": {
      "text": "😡 弗农抢走了信，但第二天更多信涌来——\n从门缝、烟囱、甚至鸡蛋里！\n德思礼一家仓皇逃到海边孤岛。",
      "location": "rock_on_sea",
      "choices": [
        { "text": "🌊 在暴风雨中等待", "next": "hagrid_arrives" }
      ]
    },

    "on_the_run": {
      "text": "🚗 你们住进海边一座破旧小屋，狂风暴雨。\n你在地上画了生日蛋糕——今天是你11岁生日。\n💥 门被撞开，一个巨人挤了进来。",
      "location": "rock_on_sea",
      "choices": [
        { "text": "🧔 看看是谁", "next": "hagrid_arrives" }
      ]
    },

    "hagrid_arrives": {
      "text": "🧔 巨人说：「对不起，来晚了。我叫鲁伯·海格，霍格沃茨的钥匙管理员。\n哈利，你是个巫师——你父母不是车祸死的，是被一个叫伏地魔的黑巫师杀的。」",
      "location": "rock_on_sea",
      "actions": [
        { "type": "addItem", "itemId": "cake" },
        { "type": "setVar", "name": "met_hagrid", "value": true }
      ],
      "choices": [
        { "text": "😢 问父母的事", "next": "hagrid_parents" },
        { "text": "🏰 问霍格沃茨的事", "next": "hagrid_hogwarts" }
      ]
    },

    "hagrid_parents": {
      "text": "😢 海格沉声说：「你父母是英雄，他们为了救你而死。\n你活了下来，额头的伤疤就是证据。\n伏地魔消失了，但你必须小心——他随时可能回来。」",
      "location": "rock_on_sea",
      "choices": [
        { "text": "🏰 问霍格沃茨", "next": "hagrid_hogwarts" }
      ]
    },

    "hagrid_hogwarts": {
      "text": "📜 海格递给你霍格沃茨的信，并呵斥德思礼一家。\n达力屁股上长出了猪尾巴！\n「明天我带你去对角巷买学习用品。」",
      "location": "rock_on_sea",
      "actions": [
        { "type": "setVar", "name": "knows_about_hogwarts", "value": true }
      ],
      "choices": [
        { "text": "🪄 去对角巷", "next": "diagon_alley" }
      ]
    },

    "diagon_alley": {
      "text": "🧙 破釜酒吧后墙敲三下——对角巷豁然开朗。\n猫头鹰、扫帚、巫师袍……你眼花缭乱。\n海格说：「先去古灵阁取钱。」",
      "location": "diagon_alley",
      "choices": [
        { "text": "🏦 去古灵阁", "next": "gringotts" },
        { "text": "🪄 先买魔杖", "next": "wand_shop" }
      ]
    },

    "gringotts": {
      "text": "🏦 妖精银行，小推车飞驰过地下隧道。\n687号金库——堆满金币银币，是你父母留给你的遗产。\n海格又去了713号金库，取走一个小包裹。",
      "location": "gringotts",
      "actions": [
        { "type": "setVar", "name": "has_money", "value": true }
      ],
      "choices": [
        { "text": "🔍 追问包裹的事", "next": "vault_713" },
        { "text": "🛍️ 去购物", "next": "shopping" }
      ]
    },

    "vault_713": {
      "text": "🔐 海格低声说：「这是霍格沃茨的最高机密，不能告诉你。」\n你隐约觉得那东西与魔法石有关。",
      "location": "gringotts",
      "choices": [
        { "text": "🛍️ 去购物", "next": "shopping" }
      ]
    },

    "wand_shop": {
      "text": "🪄 奥利凡德魔杖店——你试了无数根，最后冬青木凤凰羽魔杖选择了你。\n「这根魔杖的兄弟是那根给了你伤疤的魔杖。」",
      "location": "diagon_alley",
      "actions": [
        { "type": "addItem", "itemId": "wand" },
        { "type": "setVar", "name": "has_wand", "value": true }
      ],
      "choices": [
        { "text": "🛍️ 继续购物", "next": "shopping" }
      ]
    },

    "shopping": {
      "text": "🛒 你买了长袍、坩埚、课本，还有一只雪白的猫头鹰——取名海德薇。",
      "location": "diagon_alley",
      "actions": [
        { "type": "addItem", "itemId": "hedwig" },
        { "type": "setVar", "name": "has_owl", "value": true }
      ],
      "choices": [
        { "text": "🚂 去国王十字车站", "next": "kings_cross" }
      ]
    },

    "kings_cross": {
      "text": "🚉 国王十字车站9¾站台——你推车冲向柱子，穿了过去。\n霍格沃茨特快喷着蒸汽等在那里。",
      "location": "kings_cross",
      "choices": [
        { "text": "🚂 上车", "next": "train" }
      ]
    },

    "train": {
      "text": "🚂 你找到一个空包厢，不久一个红头发男孩推开门。\n「这有人吗？我叫罗恩·韦斯莱。」\n他和你分享零食，你们聊得很开心。",
      "location": "hogwarts_express",
      "choices": [
        { "text": "🤝 和罗恩交朋友", "next": "train_friend" },
        { "text": "😐 礼貌但保持距离", "next": "train_alone" }
      ]
    },

    "train_friend": {
      "text": "🤝 你和罗恩成了好友，他告诉你魔法世界的很多事。\n不一会儿，一个棕色头发的女孩闯进来——「你们看见纳威的蟾蜍了吗？哦，你是哈利·波特！我在《现代魔法史》上读过你。」\n她是赫敏·格兰杰。",
      "location": "hogwarts_express",
      "actions": [
        { "type": "setVar", "name": "friends_with_ron", "value": true }
      ],
      "choices": [
        { "text": "😊 和赫敏打招呼", "next": "train_hermione" },
        { "text": "🤷 不太在意", "next": "train_malfoy_enter" }
      ]
    },

    "train_alone": {
      "text": "😐 你婉拒了罗恩的亲近，独自望着窗外。\n不久，一个淡金色头发的男孩走进来——「我是德拉科·马尔福，你肯定是波特。我听说过你。你最好和正确的人交朋友。」",
      "location": "hogwarts_express",
      "choices": [
        { "text": "⚔️ 拒绝马尔福", "next": "train_malfoy_confront" },
        { "text": "🤝 接受马尔福的友谊", "next": "train_malfoy_friend" }
      ]
    },

    "train_hermione": {
      "text": "😊 你和赫敏、罗恩聊得火热。马尔福突然出现，嘲讽罗恩的家族。\n你毫不犹豫地顶了回去。马尔福脸色铁青地走了。",
      "location": "hogwarts_express",
      "actions": [
        { "type": "setVar", "name": "friends_with_hermione", "value": true },
        { "type": "setVar", "name": "enemy_with_malfoy", "value": true }
      ],
      "choices": [
        { "text": "🚂 继续到霍格沃茨", "next": "arrival" }
      ]
    },

    "train_malfoy_enter": {
      "text": "🧝 马尔福走进包厢，他看了你和罗恩一眼：「波特，我建议你选对朋友。韦斯莱家没什么值得交往的。」",
      "location": "hogwarts_express",
      "choices": [
        { "text": "⚔️ 为罗恩辩护", "next": "train_malfoy_confront" },
        { "text": "🤝 向马尔福示好", "next": "train_malfoy_friend" },
        { "text": "😶 保持中立", "next": "train_malfoy_neutral" }
      ]
    },

    "train_malfoy_confront": {
      "text": "⚡ 「马尔福，我能自己选择朋友。」你冷冷地说。\n马尔福眯起眼：「你会后悔的。」然后摔门而去。",
      "location": "hogwarts_express",
      "actions": [
        { "type": "setVar", "name": "enemy_with_malfoy", "value": true }
      ],
      "choices": [
        { "text": "🚂 到达霍格沃茨", "next": "arrival" }
      ]
    },

    "train_malfoy_friend": {
      "text": "🤝 你握了马尔福的手。罗恩露出失望的表情。\n马尔福笑了：「明智的选择，波特。我们会是朋友。」\n但你的内心隐隐不安。",
      "location": "hogwarts_express",
      "actions": [
        { "type": "setVar", "name": "friends_with_malfoy", "value": true }
      ],
      "choices": [
        { "text": "🚂 到达霍格沃茨", "next": "arrival" }
      ]
    },

    "train_malfoy_neutral": {
      "text": "😶 你什么都没说。马尔福哼了一声走了。罗恩松了一口气。",
      "location": "hogwarts_express",
      "choices": [
        { "text": "🚂 到达霍格沃茨", "next": "arrival" }
      ]
    },

    "arrival": {
      "text": "🌙 火车抵达霍格莫德，新生乘小船穿过黑湖，霍格沃茨城堡灯火辉煌。",
      "location": "hogwarts",
      "choices": [
        { "text": "🏰 进入大厅", "next": "sorting_hat" }
      ]
    },

    "sorting_hat": {
      "text": "🎩 分院帽唱完歌，麦格教授一个个点名。\n赫敏→格兰芬多，马尔福→斯莱特林，罗恩→格兰芬多。\n「哈利·波特！」\n你戴上帽子，一个声音在脑中响起：\n「很有天赋，渴望证明自己。斯莱特林能帮你走向辉煌……」",
      "location": "hogwarts_great_hall",
      "choices": [
        { "text": "🗣️ 大声说「我不要斯莱特林！」", "next": "sorting_griffindor" },
        { "text": "🤫 默不作声，让分院帽决定", "next": "sorting_random" }
      ]
    },

    "sorting_griffindor": {
      "text": "🧙 「那就——格兰芬多！」\n格兰芬多长桌爆发出欢呼，罗恩和赫敏拍手欢迎你。",
      "location": "hogwarts_great_hall",
      "actions": [
        { "type": "setVar", "name": "house", "value": "格兰芬多" },
        { "type": "setVar", "name": "chose_griffindor", "value": true },
        { "type": "addVar", "name": "house_points", "value": 10 },
        { "type": "setVar", "name": "friends_with_ron", "value": true },
        { "type": "setVar", "name": "friends_with_hermione", "value": true }
      ],
      "choices": [
        { "text": "🎉 庆祝", "next": "feast" }
      ]
    },

    "sorting_random": {
      "text": "🧙 分院帽沉默片刻：「既然你愿意接受命运，那就——斯莱特林！」\n斯莱特林长桌响起掌声，马尔福得意地朝你微笑。\n你看到罗恩和赫敏惊愕的表情。",
      "location": "hogwarts_great_hall",
      "actions": [
        { "type": "setVar", "name": "house", "value": "斯莱特林" },
        { "type": "setVar", "name": "chose_slytherin", "value": true },
        { "type": "setVar", "name": "friends_with_malfoy", "value": true },
        { "type": "setVar", "name": "enemy_with_malfoy", "value": false }
      ],
      "choices": [
        { "text": "🐍 接受现实", "next": "feast_slytherin" }
      ]
    },

    "feast": {
      "text": "🍽️ 晚宴丰盛无比，你第一次感受到家的温暖。\n级长带你去格兰芬多公共休息室——胖夫人画像后的温暖房间。",
      "location": "hogwarts_great_hall",
      "choices": [
        { "text": "🛏️ 睡觉", "next": "first_week_griffindor" }
      ]
    },

    "feast_slytherin": {
      "text": "🍽️ 斯莱特林的晚宴同样丰盛，但气氛阴冷。\n马尔福把你介绍给克拉布和高尔，你被一群纯血统学生包围。\n公共休息室在湖底，窗外有巨乌贼游过。",
      "location": "hogwarts_great_hall",
      "choices": [
        { "text": "🛏️ 睡觉", "next": "first_week_slytherin" }
      ]
    },

    "first_week_griffindor": {
      "text": "📚 第一周：魔药课斯内普针对你，飞行课你天赋惊人。\n麦格教授甚至破例让你加入魁地奇队。\n你和罗恩、赫敏形影不离。",
      "location": "hogwarts",
      "choices": [
        { "text": "🧹 去飞行课", "next": "flying_lesson" },
        { "text": "📖 去图书馆查资料", "next": "library_investigate" }
      ]
    },

    "first_week_slytherin": {
      "text": "📚 斯莱特林的同学对你还算友善，但马尔福总想拉拢你。\n魔药课斯内普对你异常优待，让你备受侧目。\n你感觉有些孤立。",
      "location": "hogwarts",
      "choices": [
        { "text": "🧹 去飞行课", "next": "flying_lesson_slytherin" },
        { "text": "🤝 跟马尔福去闲逛", "next": "malfoy_outing" }
      ]
    },

    "flying_lesson": {
      "text": "🧹 霍琦夫人教你们召唤扫帚，你的扫帚立刻跳到你手中。\n马尔福抢了纳威的记忆球，你飞上去夺了回来。\n麦格教授目睹一切，把你选为格兰芬多找球手。",
      "location": "hogwarts",
      "actions": [
        { "type": "addVar", "name": "house_points", "value": 20 }
      ],
      "choices": [
        { "text": "🏆 接受", "next": "quidditch_offer" }
      ]
    },

    "flying_lesson_slytherin": {
      "text": "🧹 你同样轻松驾驭扫帚，马尔福挑衅你进行低空追逐。\n你赢了，但被霍琦夫人扣了5分。\n斯莱特林队长弗林特过来告诉你，下周有魁地奇选拔。",
      "location": "hogwarts",
      "choices": [
        { "text": "🏆 参加选拔", "next": "quidditch_slytherin" },
        { "text": "🤷 不感兴趣", "next": "first_week_slytherin_continue" }
      ]
    },

    "quidditch_offer": {
      "text": "🧹 伍德给了你一把光轮2000，你成为百年最年轻的找球手。\n罗恩和赫敏欢呼，马尔福在走廊堵住你——「半夜决斗，敢来吗？」",
      "location": "hogwarts",
      "choices": [
        { "text": "⚔️ 接受决斗", "next": "midnight_duel" },
        { "text": "❌ 拒绝", "next": "refuse_duel" }
      ]
    },

    "refuse_duel": {
      "text": "❌ 你拒绝了，但内心不安。\n几天后，你听说三楼有只三头犬……",
      "location": "hogwarts",
      "choices": [
        { "text": "🔍 去调查", "next": "three_headed_dog" },
        { "text": "📚 专心学习", "next": "halloween_griffindor" }
      ]
    },

    "midnight_duel": {
      "text": "🌙 你和罗恩溜出去，没看到马尔福，却误入三楼——\n三头犬路威站在活板门上！",
      "location": "hogwarts",
      "actions": [
        { "type": "setVar", "name": "knows_fluffy", "value": true }
      ],
      "choices": [
        { "text": "🏃 逃跑", "next": "three_headed_dog" }
      ]
    },

    "three_headed_dog": {
      "text": "🐶 你们逃回宿舍，赫敏也跟来了。她指出路威在守护某样东西——很可能就是海格从古灵阁取走的小包裹。",
      "location": "hogwarts",
      "choices": [
        { "text": "🔍 深入调查", "next": "investigate" },
        { "text": "🎃 先过万圣节", "next": "halloween_griffindor" }
      ]
    },

    "investigate": {
      "text": "📖 你们潜入图书馆禁书区，找到了尼可·勒梅——魔法石的创造者。\n魔法石能点石成金、制造长生不老药。\n有人想偷它！",
      "location": "hogwarts_library",
      "actions": [
        { "type": "setVar", "name": "knows_philosopher_stone", "value": true }
      ],
      "choices": [
        { "text": "🎃 万圣节晚会", "next": "halloween_griffindor" }
      ]
    },

    "halloween_griffindor": {
      "text": "🎃 万圣节晚宴，奇洛冲进来喊「巨怪在地下室！」\n你发现赫敏不在——她在女厕所哭泣。",
      "location": "hogwarts_great_hall",
      "choices": [
        { "text": "🏃 去救赫敏", "next": "troll_fight" },
        { "text": "😰 和人群一起逃跑", "next": "troll_escape" }
      ]
    },

    "troll_fight": {
      "text": "🏃 你和罗恩冲进女厕所，巨怪正挥棒砸向赫敏。\n你跳上巨怪后背，罗恩用漂浮咒让巨怪自己的木棒砸晕了它。\n麦格教授赶来，赫敏主动揽责，你们成了朋友。",
      "location": "hogwarts",
      "actions": [
        { "type": "setVar", "name": "defeated_troll", "value": true },
        { "type": "addVar", "name": "house_points", "value": 30 }
      ],
      "choices": [
        { "text": "🏆 继续冒险", "next": "quidditch_match" }
      ]
    },

    "troll_escape": {
      "text": "😰 你逃走了，赫敏被罗恩救出，但你们的关系疏远了。\n你内心愧疚。",
      "location": "hogwarts",
      "choices": [
        { "text": "🏆 继续", "next": "quidditch_match" }
      ]
    },

    "quidditch_match": {
      "text": "🏆 格兰芬多对斯莱特林——你骑上扫帚，但突然失控。\n赫敏发现斯内普在念咒，点燃了他的袍子。\n你抓住飞贼，格兰芬多获胜！",
      "location": "hogwarts_quidditch_pitch",
      "actions": [
        { "type": "setVar", "name": "won_quidditch", "value": true },
        { "type": "addVar", "name": "house_points", "value": 50 }
      ],
      "choices": [
        { "text": "🎄 圣诞假期", "next": "christmas" }
      ]
    },

    "quidditch_slytherin": {
      "text": "🏆 你参加斯莱特林选拔，轻松成为找球手。\n比赛中你对阵格兰芬多，你抓住飞贼，为斯莱特林赢得胜利。\n但马尔福总是嘲讽你，让你觉得不太舒服。",
      "location": "hogwarts_quidditch_pitch",
      "actions": [
        { "type": "setVar", "name": "won_quidditch", "value": true },
        { "type": "addVar", "name": "house_points", "value": 50 }
      ],
      "choices": [
        { "text": "🎄 圣诞假期", "next": "christmas_slytherin" }
      ]
    },

    "malfoy_outing": {
      "text": "🧝 马尔福带你去斯莱特林公共休息室，介绍其他纯血统学生。\n他暗示如果你加入他们，将来会很有权势。",
      "location": "hogwarts",
      "choices": [
        { "text": "👍 点头同意", "next": "malfoy_ally" },
        { "text": "🤔 犹豫", "next": "first_week_slytherin_continue" }
      ]
    },

    "malfoy_ally": {
      "text": "⚡ 你与马尔福结盟，但内心觉得这不太对。",
      "location": "hogwarts",
      "actions": [
        { "type": "addVar", "name": "dark_side", "value": 10 }
      ],
      "choices": [
        { "text": "继续", "next": "first_week_slytherin_continue" }
      ]
    },

    "first_week_slytherin_continue": {
      "text": "📖 你继续上课，但总感觉孤独。\n你开始暗中观察奇洛教授，觉得他有些不对劲。",
      "location": "hogwarts",
      "choices": [
        { "text": "🔍 调查奇洛", "next": "investigate_slytherin" },
        { "text": "🎃 万圣节", "next": "halloween_slytherin" }
      ]
    },

    "investigate_slytherin": {
      "text": "🔍 你独自调查，发现魔法石的秘密，并怀疑斯内普想偷它。",
      "location": "hogwarts_library",
      "actions": [
        { "type": "setVar", "name": "knows_philosopher_stone", "value": true }
      ],
      "choices": [
        { "text": "🎃 万圣节", "next": "halloween_slytherin" }
      ]
    },

    "halloween_slytherin": {
      "text": "🎃 万圣节，巨怪闯入。你听到赫敏在女厕所哭——但你和她并不亲近。\n马尔福怂恿你去看笑话。",
      "location": "hogwarts_great_hall",
      "choices": [
        { "text": "😈 和马尔福去看笑话", "next": "troll_slytherin_evil" },
        { "text": "🏃 独自去救赫敏", "next": "troll_slytherin_good" },
        { "text": "🙈 什么也不做", "next": "troll_slytherin_neutral" }
      ]
    },

    "troll_slytherin_evil": {
      "text": "😈 你和马尔福在远处嘲笑赫敏，但后来巨怪被教授制服。\n赫敏看到你们，从此仇视斯莱特林。",
      "location": "hogwarts",
      "actions": [
        { "type": "addVar", "name": "dark_side", "value": 15 }
      ],
      "choices": [
        { "text": "继续", "next": "after_troll_slytherin" }
      ]
    },

    "troll_slytherin_good": {
      "text": "🏃 你独自冲进去，用魔杖击中巨怪，救出赫敏。\n赫敏惊讶于你的勇敢，你们成了朋友——尽管学院不同。",
      "location": "hogwarts",
      "actions": [
        { "type": "setVar", "name": "defeated_troll", "value": true },
        { "type": "setVar", "name": "friends_with_hermione", "value": true },
        { "type": "addVar", "name": "house_points", "value": 30 }
      ],
      "choices": [
        { "text": "继续", "next": "after_troll_slytherin" }
      ]
    },

    "troll_slytherin_neutral": {
      "text": "🙈 你假装没听见，后来巨怪被教授们处理掉。\n你什么也没改变。",
      "location": "hogwarts",
      "choices": [
        { "text": "继续", "next": "after_troll_slytherin" }
      ]
    },

    "after_troll_slytherin": {
      "text": "📅 学期继续，你逐渐发现魔法石背后更大的阴谋。",
      "location": "hogwarts",
      "choices": [
        { "text": "🎄 圣诞假期", "next": "christmas_slytherin" }
      ]
    },

    "christmas": {
      "text": "🎄 圣诞早晨，你收到一件匿名礼物——隐形衣。\n你穿上它在城堡游荡，发现厄里斯魔镜，看到父母。\n邓布利多出现，告诫你不要沉迷。",
      "location": "hogwarts",
      "actions": [
        { "type": "addItem", "itemId": "cloak" },
        { "type": "setVar", "name": "has_invisibility_cloak", "value": true },
        { "type": "setVar", "name": "saw_mirror", "value": true }
      ],
      "choices": [
        { "text": "🔍 继续调查", "next": "after_christmas" }
      ]
    },

    "christmas_slytherin": {
      "text": "🎄 你收到父母遗物——隐形衣。你同样发现魔镜，看到父母。邓布利多也出现。",
      "location": "hogwarts",
      "actions": [
        { "type": "addItem", "itemId": "cloak" },
        { "type": "setVar", "name": "has_invisibility_cloak", "value": true },
        { "type": "setVar", "name": "saw_mirror", "value": true }
      ],
      "choices": [
        { "text": "🔍 调查魔法石", "next": "after_christmas_slytherin" }
      ]
    },

    "after_christmas": {
      "text": "📜 你们进一步调查，确认魔法石被藏在三头犬下。\n海格意外透露——要过路威，只需音乐。",
      "location": "hogwarts",
      "choices": [
        { "text": "🐉 海格的龙蛋", "next": "dragon" },
        { "text": "🕵️ 直接准备闯关", "next": "trapdoor_prep" }
      ]
    },

    "after_christmas_slytherin": {
      "text": "📜 你独自调查，发现魔法石的真相。\n海格无意中说出音乐能驯服路威。",
      "location": "hogwarts",
      "choices": [
        { "text": "🐉 海格的龙蛋", "next": "dragon_slytherin" },
        { "text": "🕵️ 独自闯关", "next": "trapdoor_prep_slytherin" }
      ]
    },

    "dragon": {
      "text": "🐉 海格在酒馆赢了一颗龙蛋，孵化出挪威脊背龙「诺伯」。\n但龙长得太快，你们决定送走它。",
      "location": "hagrids_hut",
      "actions": [
        { "type": "setVar", "name": "hatched_dragon", "value": true }
      ],
      "choices": [
        { "text": "🦅 送走诺伯", "next": "send_dragon" }
      ]
    },

    "dragon_slytherin": {
      "text": "🐉 你帮海格孵化龙，但马尔福告密，你们差点被抓住。\n你决定单独处理。",
      "location": "hagrids_hut",
      "actions": [
        { "type": "setVar", "name": "hatched_dragon", "value": true }
      ],
      "choices": [
        { "text": "🦅 送走诺伯", "next": "send_dragon_slytherin" }
      ]
    },

    "send_dragon": {
      "text": "🌙 你们把诺伯送到天文塔，查理的朋友接走了它。\n但你们被费尔奇抓住，罚去禁林。",
      "location": "hogwarts",
      "actions": [
        { "type": "setVar", "name": "sent_dragon_away", "value": true }
      ],
      "choices": [
        { "text": "🌲 去禁林", "next": "forbidden_forest" }
      ]
    },

    "send_dragon_slytherin": {
      "text": "🌙 你独自把诺伯送走，但被马尔福跟踪，他威胁要告发你。\n你选择妥协，与他一起隐瞒。\n禁林之行依然不可避免。",
      "location": "hogwarts",
      "actions": [
        { "type": "setVar", "name": "sent_dragon_away", "value": true },
        { "type": "addVar", "name": "dark_side", "value": 5 }
      ],
      "choices": [
        { "text": "🌲 去禁林", "next": "forbidden_forest" }
      ]
    },

    "forbidden_forest": {
      "text": "🌲 禁林中，你们发现一头死独角兽，血液被吸干。\n一个兜帽身影在喝血——那是伏地魔！\n你被追捕，但被一匹独角兽救下。",
      "location": "forbidden_forest",
      "actions": [
        { "type": "setVar", "name": "went_to_forest", "value": true }
      ],
      "choices": [
        { "text": "🏃 逃回城堡", "next": "forest_return" }
      ]
    },

    "forest_return": {
      "text": "🏰 你得知伏地魔想要魔法石复活，邓布利多却已离开。\n你决定自己保护石头。",
      "location": "hogwarts",
      "choices": [
        { "text": "⚔️ 闯关", "next": "trapdoor" }
      ]
    },

    "trapdoor_prep": {
      "text": "🌙 你准备好后，和罗恩、赫敏一起跳下活板门。",
      "location": "hogwarts",
      "choices": [
        { "text": "⬇️ 跳下去", "next": "trapdoor" }
      ]
    },

    "trapdoor_prep_slytherin": {
      "text": "🌙 你犹豫是否该叫上马尔福，但最终决定独自前往——或者带上忠诚的朋友（如果有的话）。",
      "location": "hogwarts",
      "choices": [
        { "text": "🤝 叫上马尔福", "next": "trapdoor_duo" },
        { "text": "🕵️ 独自前往", "next": "trapdoor_slytherin_alone" }
      ]
    },

    "trapdoor": {
      "text": "⬇️ 你落在魔鬼网上，赫敏用火焰解开。\n第二个房间是飞行的钥匙，你骑扫帚抓住正确的钥匙。\n第三个房间是巨型巫师棋，罗恩牺牲自己让你赢。\n第四个房间是巨怪，已被击败。\n第五个房间是魔药谜题，赫敏破解，你喝下前进药水。",
      "location": "hogwarts",
      "actions": [
        { "type": "setVar", "name": "passed_guardians", "value": true }
      ],
      "choices": [
        { "text": "🔥 穿过火焰", "next": "final_room" }
      ]
    },

    "trapdoor_duo": {
      "text": "⬇️ 你和马尔福一起闯关，魔鬼网、飞钥匙、棋局（你们合作，马尔福为救你受了伤）。\n最终来到最后房间。",
      "location": "hogwarts",
      "actions": [
        { "type": "setVar", "name": "passed_guardians", "value": true }
      ],
      "choices": [
        { "text": "🔥 进入最终房间", "next": "final_room_duo" }
      ]
    },

    "trapdoor_slytherin_alone": {
      "text": "⬇️ 你独自跳下，魔鬼网差点将你缠死，你拼尽全力用火焰咒脱身。\n飞钥匙房间你费尽周折，手臂被划伤才抓到正确的钥匙。\n棋局中你赌上性命，侥幸获胜，但身负轻伤。\n魔药谜题你独自破解，喝下前进药水。",
      "location": "hogwarts",
      "actions": [
        { "type": "setVar", "name": "passed_guardians", "value": true }
      ],
      "choices": [
        { "text": "🔥 穿过火焰", "next": "final_room_alone" }
      ]
    },

    "final_room": {
      "text": "🔥 奇洛教授站在那里，头巾下传出伏地魔的声音。\n「波特，把魔法石交出来！」\n你触碰奇洛，他的皮肤燃烧——因为你在母亲的爱中长大，他无法触碰你。\n奇洛化为灰烬，伏地魔逃走。\n你拿到魔法石。",
      "location": "hogwarts",
      "actions": [
        { "type": "setVar", "name": "got_stone", "value": true },
        { "type": "setVar", "name": "defeated_quarrel", "value": true },
        { "type": "addVar", "name": "house_points", "value": 60 }
      ],
      "choices": [
        { "text": "🏆 结局", "next": "ending_true" }
      ]
    },

    "final_room_duo": {
      "text": "🔥 你与马尔福面对奇洛。奇洛抓住马尔福，威胁你交出石头。\n你选择——",
      "location": "hogwarts",
      "choices": [
        { "text": "💎 交出石头救马尔福", "next": "ending_dark" },
        { "text": "⚔️ 攻击奇洛，让马尔福自己逃脱", "next": "ending_hero_slytherin" }
      ]
    },

    "final_room_alone": {
      "text": "🔥 奇洛嘲笑你的孤身一人。\n你凭着母亲的爱触碰奇洛，他也燃烧。\n但伏地魔的灵魂强行附在你身上——你能否抵抗？",
      "location": "hogwarts",
      "choices": [
        { "text": "💪 抵抗到底", "next": "ending_true_alone" },
        { "text": "😈 屈服于伏地魔", "next": "ending_dark" }
      ]
    },

    "ending_true": {
      "text": "🌟🌟🌟 按原著结局：格兰芬多赢得学院杯，邓布利多表扬你。\n你打败了伏地魔，保护了魔法石。\n你和罗恩、赫敏成为最好的朋友。\n魔法世界的传奇正式开始。",
      "location": "hogwarts",
      "isEnd": true,
      "endType": "true"
    },

    "ending_hero_slytherin": {
      "text": "🌟🌟 你选择攻击奇洛，马尔福趁机逃跑。\n你击败奇洛，保护了石头。\n虽然你来自斯莱特林，但你的英勇赢得了所有人的尊重。\n邓布利多表示，重要的不是出身，而是选择。\n你证明了自己。",
      "location": "hogwarts",
      "isEnd": true,
      "endType": "victory"
    },

    "ending_true_alone": {
      "text": "🌟🌟 你靠自己战胜了黑暗，邓布利多及时赶到。\n你证明了自己是真正的格兰芬多（即使你在斯莱特林，精神上也是）。\n你赢得了全校的尊重。",
      "location": "hogwarts",
      "isEnd": true,
      "endType": "victory"
    },

    "ending_dark": {
      "text": "💀 你交出石头，伏地魔复活。\n他大笑，许诺给你权力。\n你被黑暗吞噬，成为黑魔王的仆人。\n霍格沃茨沦陷，魔法世界陷入黑暗。\n故事以悲剧告终。",
      "location": "hogwarts",
      "isEnd": true,
      "endType": "death"
    },

    "library_investigate": {
      "text": "📖 你在图书馆查资料，偶然找到尼可·勒梅的名字。\n你开始怀疑有人要偷魔法石。",
      "location": "hogwarts_library",
      "actions": [
        { "type": "setVar", "name": "knows_philosopher_stone", "value": true }
      ],
      "choices": [
        { "text": "🎃 万圣节", "next": "halloween_griffindor" }
      ]
    }
  }
}