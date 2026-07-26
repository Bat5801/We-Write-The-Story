{
  "title": "哈利·波特与火焰杯",
  "description": "四年级的哈利被迫参加危险的三强争霸赛，在三个项目中与龙搏斗、深入黑湖、穿越迷宫。然而这一切都是伏地魔的阴谋——他利用比赛将哈利带到墓地，用哈利的血完成了复活。黑暗时代，就此来临。",
  "version": "2.0",
  "variables": {
    "has_dream": false,
    "met_sirius_letter": false,
    "went_to_world_cup": false,
    "saw_dark_mark": false,
    "met_dobby_kitchen": false,
    "knows_about_triwizard": false,
    "chose_to_enter": false,
    "name_in_goblet": false,
    "friends_with_ron": true,
    "friends_with_hermione": true,
    "enemy_with_malfoy": true,
    "ron_angry": false,
    "ron_reconciled": false,
    "knows_about_dragons": false,
    "passed_first_task": false,
    "knows_about_second_task": false,
    "passed_second_task": false,
    "knows_about_third_task": false,
    "passed_third_task": false,
    "cedric_alive": true,
    "cedric_dies": false,
    "voldemort_returned": false,
    "harry_escaped": false,
    "barty_crouch_exposed": false,
    "house_points": 0,
    "dark_side": 0,
    "chose_griffindor": true,
    "chose_slytherin": false,
    "has_wand": true,
    "has_cloak": true,
    "has_hedwig": true,
    "has_firebolt": true,
    "has_egg": false,
    "has_gillyweed": false,
    "won_tournament": false,
    "dumbledore_army": false,
    "saw_pensieve": false,
    "knows_crouch_secret": false,
    "dobby_freed": true
  },
  "features": {
    "inventory": true,
    "map": true
  },
  "items": [
    { "id": "golden_egg", "name": "金蛋", "icon": "🥚" },
    { "id": "gillyweed", "name": "鳃囊草", "icon": "🌿" },
    { "id": "triwizard_cup", "name": "三强争霸赛奖杯", "icon": "🏆" },
    { "id": "portkey", "name": "门钥匙", "icon": "🔑" },
    { "id": "wand", "name": "冬青木凤凰羽魔杖", "icon": "🪄" },
    { "id": "cloak", "name": "隐形衣", "icon": "🧥" },
    { "id": "firebolt", "name": "火弩箭", "icon": "🧹" },
    { "id": "hedwig", "name": "海德薇", "icon": "🦉" }
  ],
  "map": {
    "startingLocation": "privet_drive",
    "locations": {
      "privet_drive": { "name": "女贞路4号", "description": "德思礼家，哈利的噩梦之地" },
      "burrow": { "name": "陋居", "description": "韦斯莱家，温暖的家" },
      "world_cup_campsite": { "name": "魁地奇世界杯营地", "description": "食死徒袭击的现场" },
      "hogwarts": { "name": "霍格沃茨城堡", "description": "三强争霸赛的主办地" },
      "hogwarts_great_hall": { "name": "礼堂", "description": "火焰杯选拔勇士之地" },
      "hogwarts_quidditch_pitch": { "name": "魁地奇球场", "description": "第一场比赛——斗龙" },
      "black_lake": { "name": "黑湖", "description": "第二场比赛——水下营救" },
      "hogwarts_maze": { "name": "迷宫", "description": "第三场比赛——穿越迷宫" },
      "little_hangleton": { "name": "小汉格顿墓地", "description": "伏地魔复活之地" },
      "hogwarts_hospital_wing": { "name": "校医院", "description": "庞弗雷夫人的病房" },
      "hogwarts_library": { "name": "图书馆", "description": "禁书区的秘密" },
      "hagrids_hut": { "name": "海格的小屋", "description": "火龙与秘密" },
      "kitchen": { "name": "霍格沃茨厨房", "description": "家养小精灵的地盘" }
    },
    "connections": {
      "privet_drive": ["burrow"],
      "burrow": ["world_cup_campsite", "hogwarts"],
      "world_cup_campsite": ["burrow", "hogwarts"],
      "hogwarts": ["hogwarts_great_hall", "hogwarts_quidditch_pitch", "black_lake", "hogwarts_maze", "hogwarts_hospital_wing", "hogwarts_library", "hagrids_hut", "kitchen"],
      "hogwarts_great_hall": ["hogwarts"],
      "hogwarts_quidditch_pitch": ["hogwarts"],
      "black_lake": ["hogwarts"],
      "hogwarts_maze": ["hogwarts", "little_hangleton"],
      "little_hangleton": ["hogwarts_maze", "hogwarts"],
      "hogwarts_hospital_wing": ["hogwarts"],
      "hogwarts_library": ["hogwarts"],
      "hagrids_hut": ["hogwarts"],
      "kitchen": ["hogwarts"]
    }
  },
  "start": "start",
  "nodes": {

    "start": {
      "text": "🌙 女贞路4号，深夜。\n你从噩梦中惊醒——伤疤像火烧一样疼。\n你梦见了一个老房子、一条大蛇、一个叫虫尾巴的男人……\n还有一个苍白、没有鼻子的身影——伏地魔。\n📬 你立刻写信给小天狼星。",
      "location": "privet_drive",
      "choices": [
        { "text": "📝 写信给小天狼星", "next": "write_sirius" },
        { "text": "😰 试图忘记这个梦", "next": "forget_dream" }
      ]
    },

    "write_sirius": {
      "text": "🦉 海德薇带着信飞走了。\n几天后，小天狼星的回信到了——\n「哈利，保持警惕。伏地魔正在暗处活动。\n韦斯莱家会来接你去看魁地奇世界杯，注意安全。」",
      "location": "privet_drive",
      "actions": [
        { "type": "setVar", "name": "has_dream", "value": true },
        { "type": "setVar", "name": "met_sirius_letter", "value": true }
      ],
      "choices": [
        { "text": "🏠 等待韦斯莱家", "next": "weasleys_arrive" }
      ]
    },

    "forget_dream": {
      "text": "😰 你试图忽略伤疤的疼痛，但噩梦挥之不去。\n几天后，韦斯莱家的飞路粉火焰出现在壁炉里。",
      "location": "privet_drive",
      "actions": [
        { "type": "setVar", "name": "has_dream", "value": true }
      ],
      "choices": [
        { "text": "🔥 迎接韦斯莱家", "next": "weasleys_arrive" }
      ]
    },

    "weasleys_arrive": {
      "text": "🔥 弗雷德和乔治从壁炉里探出头——\n「哈利！我们来接你了！」\n德思礼一家吓得目瞪口呆。\n你跳进壁炉，飞到了陋居。",
      "location": "burrow",
      "choices": [
        { "text": "🏠 在陋居度过暑假", "next": "burrow_days" }
      ]
    },

    "burrow_days": {
      "text": "🏠 你在陋居见到了韦斯莱全家——\n比尔和查理也回来了。\n珀西在魔法部工作，整天念叨着巴蒂·克劳奇。\n📅 明天，你们要去看魁地奇世界杯！",
      "location": "burrow",
      "choices": [
        { "text": "🏟️ 去魁地奇世界杯", "next": "world_cup" }
      ]
    },

    "world_cup": {
      "text": "🏟️ 你们用门钥匙来到世界杯营地——\n成千上万个帐篷，巫师们从世界各地赶来。\n⚡ 比赛：爱尔兰对保加利亚！\n克鲁姆抓住了金色飞贼，但爱尔兰赢了！",
      "location": "world_cup_campsite",
      "actions": [
        { "type": "setVar", "name": "went_to_world_cup", "value": true }
      ],
      "choices": [
        { "text": "🎉 庆祝爱尔兰的胜利", "next": "world_cup_aftermath" },
        { "text": "🤔 为克鲁姆感到惋惜", "next": "world_cup_aftermath" }
      ]
    },

    "world_cup_aftermath": {
      "text": "🌙 深夜，营地突然陷入混乱——\n💀 一群戴兜帽的身影在攻击麻瓜！\n空中出现了黑魔标记！\n伏地魔的标记！\n你昏了过去。",
      "location": "world_cup_campsite",
      "actions": [
        { "type": "setVar", "name": "saw_dark_mark", "value": true }
      ],
      "choices": [
        { "text": "😱 醒来", "next": "world_cup_return" }
      ]
    },

    "world_cup_return": {
      "text": "🏠 你们回到陋居，魔法部的人四处调查。\n没人知道谁放了黑魔标记。\n暑假结束，你坐上了霍格沃茨特快。",
      "location": "burrow",
      "choices": [
        { "text": "🚂 去霍格沃茨", "next": "hogwarts_arrival" }
      ]
    },

    "hogwarts_arrival": {
      "text": "🏰 开学宴会上，邓布利多宣布——\n「今年，霍格沃茨将主办三强争霸赛！」\n布斯巴顿和德姆斯特朗的学生会来。\n🔥 火焰杯将选出勇士。",
      "location": "hogwarts_great_hall",
      "actions": [
        { "type": "setVar", "name": "knows_about_triwizard", "value": true }
      ],
      "choices": [
        { "text": "😲 震惊", "next": "triwizard_intro" }
      ]
    },

    "triwizard_intro": {
      "text": "📜 邓布利多解释了规则——\n只有17岁以上才能报名。\n🏆 三场比赛，胜者获得一千加隆。\n🔥 火焰杯将选出三位勇士。",
      "location": "hogwarts_great_hall",
      "choices": [
        { "text": "🧙 去上穆迪的课", "next": "moody_class" },
        { "text": "📚 去图书馆查资料", "next": "library_triwizard" }
      ]
    },

    "moody_class": {
      "text": "🪄 疯眼汉穆迪的第一课——\n他教你们三大不可饶恕咒。\n💀 夺魂咒、钻心咒、阿瓦达索命咒。\n他当着你的面演示了夺魂咒——你能抵抗它。\n「波特，你比我想象的强。」",
      "location": "hogwarts",
      "choices": [
        { "text": "⚡ 继续上课", "next": "after_moody" }
      ]
    },

    "library_triwizard": {
      "text": "📖 你在图书馆查到了三强争霸赛的历史——\n死亡人数太多，曾经停办。\n这次重启，风险极高。",
      "location": "hogwarts_library",
      "choices": [
        { "text": "🧙 去上穆迪的课", "next": "moody_class" }
      ]
    },

    "after_moody": {
      "text": "📰 学校里都在讨论谁会被选为勇士。\n塞德里克·迪戈里是霍格沃茨的热门人选。\n你听到弗雷德和乔治在计划用增龄剂骗过火焰杯。",
      "location": "hogwarts",
      "choices": [
        { "text": "🔥 报名截止日", "next": "goblet_selection" }
      ]
    },

    "goblet_selection": {
      "text": "🔥 万圣节前夜，火焰杯在礼堂中央燃烧。\n邓布利多宣布了勇士——\n🏆 德姆斯特朗：维克多·克鲁姆\n🏆 布斯巴顿：芙蓉·德拉库尔\n🏆 霍格沃茨：塞德里克·迪戈里\n🔥 突然——火焰杯又喷出一张纸条！\n「哈利·波特！」",
      "location": "hogwarts_great_hall",
      "choices": [
        { "text": "😱 震惊", "next": "goblet_aftermath" }
      ]
    },

    "goblet_aftermath": {
      "text": "😱 全场哗然！\n你没有报名！\n你只有14岁！\n🔮 邓布利多严肃地问你是否投了名字——你否认了。\n但火焰杯的契约不可更改。你必须参赛。",
      "location": "hogwarts_great_hall",
      "actions": [
        { "type": "setVar", "name": "name_in_goblet", "value": true }
      ],
      "choices": [
        { "text": "😰 接受现实", "next": "ron_fight" }
      ]
    },

    "ron_fight": {
      "text": "😡 罗恩不相信你——\n「你没报名？怎么可能！」\n他以为你背着他出了风头。\n你们大吵了一架。\n罗恩转身走了。",
      "location": "hogwarts",
      "actions": [
        { "type": "setVar", "name": "ron_angry", "value": true }
      ],
      "choices": [
        { "text": "😔 独自面对", "next": "first_task_prep" },
        { "text": "🏃 追罗恩解释", "next": "chase_ron" }
      ]
    },

    "chase_ron": {
      "text": "🏃 你追上了罗恩——\n「罗恩，我真的没有报名！你相信我！」\n罗恩犹豫了一下——\n「……好吧。但你怎么解释？」\n「我不知道。但我会查清楚的。」",
      "location": "hogwarts",
      "actions": [
        { "type": "setVar", "name": "ron_reconciled", "value": true },
        { "type": "setVar", "name": "ron_angry", "value": false }
      ],
      "choices": [
        { "text": "🔍 调查真相", "next": "first_task_prep" }
      ]
    },

    "first_task_prep": {
      "text": "🐉 海格偷偷告诉你——\n第一场比赛是……火龙！\n你必须从龙那里拿到金蛋。\n⚠️ 你不能告诉任何人你知道这件事。",
      "location": "hagrids_hut",
      "actions": [
        { "type": "setVar", "name": "knows_about_dragons", "value": true }
      ],
      "choices": [
        { "text": "😰 准备迎战", "next": "first_task_choice" }
      ]
    },

    "first_task_choice": {
      "text": "🐉 第一场比赛——匈牙利树蜂！\n你必须从它身边取走金蛋。\n你会怎么做？",
      "location": "hogwarts_quidditch_pitch",
      "choices": [
        { "text": "🧹 用火弩箭飞越龙", "next": "first_task_fly" },
        { "text": "🪄 用召唤咒召唤金蛋", "next": "first_task_summon" },
        { "text": "🐉 尝试与龙周旋", "next": "first_task_fight" }
      ]
    },

    "first_task_fly": {
      "text": "🧹 你召唤了火弩箭，飞上天空！\n龙追着你喷火——但你更快！\n你俯冲下去，抓住了金蛋！\n🏆 你完成了第一场比赛！",
      "location": "hogwarts_quidditch_pitch",
      "actions": [
        { "type": "addItem", "itemId": "golden_egg" },
        { "type": "setVar", "name": "passed_first_task", "value": true },
        { "type": "addVar", "name": "house_points", "value": 40 }
      ],
      "choices": [
        { "text": "🏆 庆祝", "next": "first_task_aftermath" }
      ]
    },

    "first_task_summon": {
      "text": "🪄 你集中精神——\n「金蛋飞来！」\n金蛋从龙身下飞了出来！\n但龙愤怒地扑向你——你躲开了！\n🏆 你拿到了金蛋！",
      "location": "hogwarts_quidditch_pitch",
      "actions": [
        { "type": "addItem", "itemId": "golden_egg" },
        { "type": "setVar", "name": "passed_first_task", "value": true },
        { "type": "addVar", "name": "house_points", "value": 35 }
      ],
      "choices": [
        { "text": "🏆 庆祝", "next": "first_task_aftermath" }
      ]
    },

    "first_task_fight": {
      "text": "🐉 你试图用昏迷咒击晕龙——\n但龙的皮太厚了！\n它喷出火焰，你差点被烧到！\n你只能逃跑，狼狈地拿到了金蛋。",
      "location": "hogwarts_quidditch_pitch",
      "actions": [
        { "type": "addItem", "itemId": "golden_egg" },
        { "type": "setVar", "name": "passed_first_task", "value": true },
        { "type": "addVar", "name": "house_points", "value": 20 }
      ],
      "choices": [
        { "text": "😰 庆幸活下来", "next": "first_task_aftermath" }
      ]
    },

    "first_task_aftermath": {
      "text": "🏆 你完成了第一场比赛！\n罗恩跑过来——「哈利！太棒了！」\n你们和好了。\n🥚 金蛋在手中发出刺耳的尖叫——\n你需要破解它的秘密。",
      "location": "hogwarts_quidditch_pitch",
      "actions": [
        { "type": "setVar", "name": "ron_reconciled", "value": true },
        { "type": "setVar", "name": "ron_angry", "value": false }
      ],
      "choices": [
        { "text": "🔍 破解金蛋的秘密", "next": "golden_egg_mystery" },
        { "text": "🎄 圣诞舞会", "next": "yule_ball" }
      ]
    },

    "golden_egg_mystery": {
      "text": "🥚 金蛋发出刺耳的尖叫——\n你完全听不懂。\n🧊 塞德里克告诉你——\n「把它放在水里。」\n你照做了——金蛋在水下唱出了歌：\n「去寻找我们，在声音无法传播的地方……\n一个小时后，你所珍视的将不复存在。」",
      "location": "hogwarts",
      "actions": [
        { "type": "setVar", "name": "knows_about_second_task", "value": true }
      ],
      "choices": [
        { "text": "🎄 圣诞舞会", "next": "yule_ball" }
      ]
    },

    "yule_ball": {
      "text": "💃 圣诞舞会——\n你邀请了帕瓦蒂·佩蒂尔（或秋·张，取决于选择）。\n赫敏和克鲁姆一起出现——罗恩嫉妒得要命。\n🎵 舞会结束，你在花园里听到了斯内普和卡卡洛夫的对话——\n他们在讨论黑魔标记。",
      "location": "hogwarts",
      "choices": [
        { "text": "💃 享受舞会", "next": "second_task_prep" },
        { "text": "🔍 偷听对话", "next": "eavesdrop" }
      ]
    },

    "eavesdrop": {
      "text": "👂 你听到斯内普说——\n「黑魔标记越来越清晰了，卡卡洛夫。\n他正在变强。」\n卡卡洛夫颤抖着说——\n「我们必须……准备。」\n你意识到——伏地魔真的要回来了。",
      "location": "hogwarts",
      "actions": [
        { "type": "addVar", "name": "dark_side", "value": 5 }
      ],
      "choices": [
        { "text": "😨 继续调查", "next": "second_task_prep" }
      ]
    },

    "second_task_prep": {
      "text": "🌊 第二场比赛——在黑湖底。\n你需要在一个小时内救出「你珍视的人」。\n你知道——他们会把赫敏、罗恩或其他你爱的人绑在湖底。\n你需要鳃囊草或泡头咒。",
      "location": "black_lake",
      "actions": [
        { "type": "setVar", "name": "knows_about_second_task", "value": true }
      ],
      "choices": [
        { "text": "🌿 找多比要鳃囊草", "next": "dobby_gillyweed" },
        { "text": "🪄 自己学泡头咒", "next": "bubble_head" },
        { "text": "🤷 硬着头皮上", "next": "second_task_swim" }
      ]
    },

    "dobby_gillyweed": {
      "text": "🧦 你找到了多比——\n「多比！我需要鳃囊草！」\n多比眼睛亮了——\n「多比知道哪里能找到！哈利·波特请稍等！」\n他拿来了一把鳃囊草。\n🌿 你吃下去，长出了鳃和蹼。",
      "location": "kitchen",
      "actions": [
        { "type": "addItem", "itemId": "gillyweed" },
        { "type": "setVar", "name": "met_dobby_kitchen", "value": true }
      ],
      "choices": [
        { "text": "🌊 跳入黑湖", "next": "second_task_swim" }
      ]
    },

    "bubble_head": {
      "text": "🪄 你在图书馆找到了泡头咒的咒语——\n你练习了一整天。\n终于，你可以在水下呼吸了！",
      "location": "hogwarts_library",
      "choices": [
        { "text": "🌊 跳入黑湖", "next": "second_task_swim" }
      ]
    },

    "second_task_swim": {
      "text": "🌊 你跳入黑湖——\n水很冷，很暗。\n人鱼在四周游动。\n你发现了——赫敏、罗恩、秋·张和芙蓉的妹妹被绑在湖底！\n你救出了赫敏和罗恩（或其他人）。",
      "location": "black_lake",
      "actions": [
        { "type": "setVar", "name": "passed_second_task", "value": true },
        { "type": "addVar", "name": "house_points", "value": 35 }
      ],
      "choices": [
        { "text": "🏆 完成第二场比赛", "next": "second_task_aftermath" }
      ]
    },

    "second_task_aftermath": {
      "text": "🏆 你完成了第二场比赛！\n你排名第二（或第一）。\n🏆 克鲁姆第一，你第二，塞德里克第三。\n下一场——迷宫。",
      "location": "hogwarts",
      "actions": [
        { "type": "setVar", "name": "knows_about_third_task", "value": true }
      ],
      "choices": [
        { "text": "🔍 准备第三场比赛", "next": "third_task_prep" }
      ]
    },

    "third_task_prep": {
      "text": "🌿 第三场比赛——迷宫。\n里面充满了危险生物和魔法陷阱。\n第一个到达中央的人获胜。\n你开始训练——钻心咒、障碍咒、统统石化……",
      "location": "hogwarts",
      "choices": [
        { "text": "🪄 训练", "next": "third_task" }
      ]
    },

    "third_task": {
      "text": "🌿 你进入迷宫——\n四周是高高的树篱。\n你听到了尖叫声——是芙蓉！她失败了。\n你遇到了斯芬克斯，回答了谜语。\n你看到了塞德里克——他也快到终点了。",
      "location": "hogwarts_maze",
      "actions": [
        { "type": "setVar", "name": "passed_third_task", "value": true }
      ],
      "choices": [
        { "text": "🏃 冲向奖杯", "next": "third_task_choice" }
      ]
    },

    "third_task_choice": {
      "text": "🏆 奖杯就在前方！\n但塞德里克也到了。\n你们同时到达——",
      "location": "hogwarts_maze",
      "choices": [
        { "text": "🤝 和塞德里克一起拿奖杯", "next": "third_task_together" },
        { "text": "🏃 抢先拿到奖杯", "next": "third_task_alone" }
      ]
    },

    "third_task_together": {
      "text": "🤝 你和塞德里克说——\n「一起拿吧。我们都是霍格沃茨的。」\n塞德里克笑了——\n「好。」\n你们一起握住了奖杯。",
      "location": "hogwarts_maze",
      "actions": [
        { "type": "addItem", "itemId": "triwizard_cup" },
        { "type": "setVar", "name": "won_tournament", "value": true }
      ],
      "choices": [
        { "text": "🏆 奖杯——", "next": "portkey_to_graveyard" }
      ]
    },

    "third_task_alone": {
      "text": "🏃 你抢先一步——\n但塞德里克被树篱绊倒了。\n你拿到了奖杯——\n但你想起了塞德里克。\n你回头——「一起来吧！」",
      "location": "hogwarts_maze",
      "actions": [
        { "type": "addItem", "itemId": "triwizard_cup" },
        { "type": "setVar", "name": "won_tournament", "value": true }
      ],
      "choices": [
        { "text": "🏆 奖杯——", "next": "portkey_to_graveyard" }
      ]
    },

    "portkey_to_graveyard": {
      "text": "💫 奖杯是门钥匙！\n你被拉走了——\n塞德里克也被拉走了！\n你们落在了一个墓地。\n🏚️ 小汉格顿——里德尔家的墓地。",
      "location": "little_hangleton",
      "choices": [
        { "text": "😨 这是哪里？！", "next": "graveyard" }
      ]
    },

    "graveyard": {
      "text": "🏚️ 墓地里，一个身影出现了——\n小矮星彼得！他抱着一个丑陋的、像婴儿一样的东西。\n💀 那东西说——\n「杀了他。」\n💀 阿瓦达索命咒！\n塞德里克倒下了。",
      "location": "little_hangleton",
      "actions": [
        { "type": "setVar", "name": "cedric_dies", "value": true },
        { "type": "setVar", "name": "cedric_alive", "value": false }
      ],
      "choices": [
        { "text": "😱 不！！！", "next": "voldemort_ritual" }
      ]
    },

    "voldemort_ritual": {
      "text": "🔥 小矮星彼得把你绑在了墓碑上。\n他拿出了一把匕首——\n「父亲的骨，无意中捐出……」\n「仆人的肉，自愿献出……」\n「仇敌的血……被迫献出……」\n💀 伏地魔复活了。",
      "location": "little_hangleton",
      "actions": [
        { "type": "setVar", "name": "voldemort_returned", "value": true }
      ],
      "choices": [
        { "text": "💀 面对伏地魔", "next": "voldemort_duel" }
      ]
    },

    "voldemort_duel": {
      "text": "⚔️ 伏地魔对你举起了魔杖——\n「哈利·波特……大难不死的男孩……\n今天，你会死。」\n💀 阿瓦达索命咒！\n你同时施出了缴械咒——\n💫 闪回咒！\n你父母的灵魂出现了！",
      "location": "little_hangleton",
      "choices": [
        { "text": "💪 抵抗", "next": "voldemort_escape" }
      ]
    },

    "voldemort_escape": {
      "text": "💫 你父母的灵魂保护着你——\n「哈利，抓住门钥匙！」\n你冲向奖杯——\n抓住了它！\n💫 你被拉回了霍格沃茨。\n塞德里克的尸体在你身边。",
      "location": "little_hangleton",
      "actions": [
        { "type": "setVar", "name": "harry_escaped", "value": true }
      ],
      "choices": [
        { "text": "🏰 回到霍格沃茨", "next": "return_to_hogwarts" }
      ]
    },

    "return_to_hogwarts": {
      "text": "🏰 你回到迷宫中央——\n全场沉默了。\n你抱着塞德里克的尸体。\n😭 迪戈里先生冲了过来——\n「我的儿子！」\n邓布利多抱住了你。",
      "location": "hogwarts_maze",
      "choices": [
        { "text": "😭 说出真相", "next": "truth" }
      ]
    },

    "truth": {
      "text": "🗣️ 你告诉邓布利多——\n「伏地魔回来了。他用我的血复活了。\n塞德里克……他杀了塞德里克。」\n邓布利多的脸色变得苍白。\n「哈利……你确定吗？」\n「我确定。」",
      "location": "hogwarts_maze",
      "choices": [
        { "text": "🔍 找到真凶", "next": "expose_barty" }
      ]
    },

    "expose_barty": {
      "text": "🔍 穆迪（假的）把你带到了他的办公室——\n「干得好，波特。一切都按计划进行。」\n他举起了魔杖——\n💀 邓布利多、斯内普和麦格冲了进来！\n「穆迪」被击倒了。\n🧪 复方汤剂失效了——\n他是小巴蒂·克劳奇！",
      "location": "hogwarts",
      "actions": [
        { "type": "setVar", "name": "barty_crouch_exposed", "value": true }
      ],
      "choices": [
        { "text": "🏆 结局", "next": "ending" }
      ]
    },

    "ending": {
      "text": "🌟🌟🌟 《哈利·波特与火焰杯》——\n\n💀 伏地魔回来了。\n😭 塞德里克·迪戈里死了。\n🔮 魔法世界再也回不到从前。\n\n但你还活着。\n你带回了真相。\n\n⚡ 邓布利多成立了凤凰社。\n⚔️ 黑暗时代，开始了。\n\n✨ 但光明，永远在黑暗中闪耀。",
      "location": "hogwarts",
      "isEnd": true,
      "endType": "true"
    },

    "ending_dark": {
      "text": "💀 伏地魔的阴谋得逞了。\n你没能逃脱——\n你死在了墓地里。\n魔法世界失去了最后的希望。\n结局：黑暗降临",
      "location": "little_hangleton",
      "isEnd": true,
      "endType": "bad"
    },

    "ending_cedric_survives": {
      "text": "🌟🌟 如果塞德里克没有死——\n你们一起回到了霍格沃茨。\n伏地魔没有成功复活（或推迟了）。\n但黑暗，终究会来。\n结局：短暂的和平",
      "location": "hogwarts",
      "isEnd": true,
      "endType": "victory"
    },

    "slytherin_ending": {
      "text": "🐍 你是斯莱特林的勇士。\n你赢得了比赛——但代价是什么？\n伏地魔复活了，而你——\n选择站在哪一边？",
      "location": "hogwarts",
      "isEnd": true,
      "endType": "neutral"
    },

    "slytherin_betray": {
      "text": "💀 你选择了伏地魔。\n你成为了他的仆人。\n霍格沃茨沦陷。\n结局：堕落",
      "location": "hogwarts",
      "isEnd": true,
      "endType": "bad"
    },

    "slytherin_hero": {
      "text": "🌟🌟 虽然你是斯莱特林，但你选择了正义。\n你揭露了真相，帮助了邓布利多。\n你证明了——出身不代表一切。\n结局：斯莱特林的救赎",
      "location": "hogwarts",
      "isEnd": true,
      "endType": "victory"
    },

    "ending_fleeur_survives": {
      "text": "🌟🌟 芙蓉在迷宫中幸存，\n你们一起揭露了阴谋。\n布斯巴顿和霍格沃茨建立了友谊。\n结局：团结",
      "location": "hogwarts",
      "isEnd": true,
      "endType": "victory"
    },

    "ending_krum_survives": {
      "text": "🌟🌟 克鲁姆帮助了你——\n德姆斯特朗站在了正义一边。\n结局：联盟",
      "location": "hogwarts",
      "isEnd": true,
      "endType": "victory"
    },

    "pensieve_memory": {
      "text": "🧠 邓布利多带你进入冥想盆——\n你看到了小巴蒂·克劳奇的审判。\n他假装无辜，被判入阿兹卡班。\n但现在——他回来了。",
      "location": "hogwarts",
      "actions": [
        { "type": "setVar", "name": "saw_pensieve", "value": true },
        { "type": "setVar", "name": "knows_crouch_secret", "value": true }
      ],
      "choices": [
        { "text": "🔍 继续", "next": "expose_barty" }
      ]
    },

    "sirius_letter_warning": {
      "text": "🦉 小天狼星的信到了——\n「哈利，我听说你被选为勇士。\n小心——有人想害你。\n保持警惕。」",
      "location": "hogwarts",
      "actions": [
        { "type": "setVar", "name": "met_sirius_letter", "value": true }
      ],
      "choices": [
        { "text": "📖 继续", "next": "first_task_prep" }
      ]
    },

    "dobby_warning": {
      "text": "🧦 多比在厨房找到了你——\n「哈利·波特！多比听说——\n第一场比赛是火龙！\n你要小心！」",
      "location": "kitchen",
      "actions": [
        { "type": "setVar", "name": "met_dobby_kitchen", "value": true },
        { "type": "setVar", "name": "knows_about_dragons", "value": true }
      ],
      "choices": [
        { "text": "😊 感谢多比", "next": "first_task_choice" }
      ]
    },

    "moody_warning": {
      "text": "🪄 穆迪（假）在课后叫住了你——\n「波特，对付龙——\n用召唤咒。把你的扫帚召来。」\n你感激地点头。",
      "location": "hogwarts",
      "choices": [
        { "text": "🧹 准备", "next": "first_task_choice" }
      ]
    },

    "first_task_fail": {
      "text": "💀 你没能通过第一关。\n龙把你烧成了重伤。\n你退出了比赛。\n但伏地魔的阴谋……还在继续。",
      "location": "hogwarts_quidditch_pitch",
      "isEnd": true,
      "endType": "death"
    },

    "second_task_fail": {
      "text": "💀 你没能救出人质。\n他们死了。\n你无法原谅自己。",
      "location": "black_lake",
      "isEnd": true,
      "endType": "death"
    },

    "third_task_fail": {
      "text": "💀 你在迷宫中迷失了。\n你被树篱吞噬了。\n比赛继续——但你已经不在了。",
      "location": "hogwarts_maze",
      "isEnd": true,
      "endType": "death"
    },

    "graveyard_survive_alone": {
      "text": "💫 你独自逃脱了墓地——\n没有塞德里克。\n你一个人回到了霍格沃茨。\n你带来了真相——但代价是什么？",
      "location": "hogwarts",
      "isEnd": true,
      "endType": "victory"
    },

    "graveyard_survive_together": {
      "text": "💫 你和塞德里克一起逃脱了！\n你们同时抓住了门钥匙。\n伏地魔的复活被打断了。\n但黑暗……终将再次降临。",
      "location": "hogwarts",
      "isEnd": true,
      "endType": "victory"
    }
  }
}