{
  "title": "哈利·波特与密室",
  "description": "二年级的哈利重返霍格沃茨，但学校里怪事连连——学生被石化、墙上出现血字。密室被再次打开，斯莱特林的继承人就在身边。哈利必须揭开真相，阻止伏地魔的阴谋。",
  "version": "2.0",
  "variables": {
    "has_letter": false,
    "met_dobby": false,
    "dobby_warned": false,
    "dobby_freed": false,
    "friends_with_ron": true,
    "friends_with_hermione": true,
    "enemy_with_malfoy": true,
    "flying_car_crashed": false,
    "knows_about_chamber": false,
    "knows_basilisk": false,
    "knows_tom_riddle": false,
    "found_diary": false,
    "wrote_in_diary": false,
    "saw_riddle_memory": false,
    "suspects_malfoy": false,
    "took_polyjuice": false,
    "knows_hermione_petrified": false,
    "knows_ginny_taken": false,
    "went_into_chamber": false,
    "defeated_basilisk": false,
    "destroyed_diary": false,
    "house_points": 0,
    "dark_side": 0,
    "has_wand": true,
    "has_cloak": true,
    "has_hedwig": true,
    "has_diary": false,
    "has_sword": false,
    "has_fang": false,
    "chose_griffindor": true,
    "chose_slytherin": false,
    "dumbledore_returned": false,
    "lockhart_exposed": false
  },
  "features": {
    "inventory": true,
    "map": true
  },
  "items": [
    { "id": "diary", "name": "汤姆·里德尔的日记", "icon": "📓" },
    { "id": "sword", "name": "格兰芬多宝剑", "icon": "⚔️" },
    { "id": "basilisk_fang", "name": "蛇怪的毒牙", "icon": "🦷" },
    { "id": "polyjuice", "name": "复方汤剂", "icon": "🧪" },
    { "id": "phoenix_tear", "name": "凤凰的眼泪", "icon": "💧" },
    { "id": "sock", "name": "一只臭袜子", "icon": "🧦" }
  ],
  "map": {
    "startingLocation": "privet_drive",
    "locations": {
      "privet_drive": { "name": "女贞路4号", "description": "德思礼家，锁着铁栏的卧室" },
      "burrow": { "name": "陋居", "description": "韦斯莱家温暖而杂乱的房子" },
      "diagon_alley": { "name": "对角巷", "description": "丽痕书店与翻倒巷入口" },
      "kings_cross": { "name": "国王十字车站", "description": "9¾站台，这次被封锁了" },
      "hogwarts": { "name": "霍格沃茨城堡", "description": "密室的阴影笼罩着城堡" },
      "hogwarts_great_hall": { "name": "礼堂", "description": "开学宴与血字出现之地" },
      "hogwarts_quidditch_pitch": { "name": "魁地奇球场", "description": "游走球袭击与洛哈特的闹剧" },
      "hogwarts_hospital_wing": { "name": "校医院", "description": "洛哈特把骨头弄没了" },
      "hogwarts_library": { "name": "图书馆", "description": "禁书区藏着密室的历史" },
      "forbidden_forest": { "name": "禁林", "description": "阿拉戈克的领地" },
      "hagrids_hut": { "name": "海格的小屋", "description": "海格被带走的地方" },
      "chamber_of_secrets": { "name": "密室", "description": "蛇怪的巢穴，斯莱特林的遗产" }
    },
    "connections": {
      "privet_drive": ["burrow"],
      "burrow": ["diagon_alley", "kings_cross"],
      "diagon_alley": ["burrow", "kings_cross"],
      "kings_cross": ["hogwarts"],
      "hogwarts": ["hogwarts_great_hall", "hogwarts_quidditch_pitch", "hogwarts_hospital_wing", "hogwarts_library", "forbidden_forest", "hagrids_hut", "chamber_of_secrets"],
      "hogwarts_great_hall": ["hogwarts"],
      "hogwarts_quidditch_pitch": ["hogwarts"],
      "hogwarts_hospital_wing": ["hogwarts"],
      "hogwarts_library": ["hogwarts"],
      "forbidden_forest": ["hogwarts", "hagrids_hut"],
      "hagrids_hut": ["hogwarts", "forbidden_forest"],
      "chamber_of_secrets": ["hogwarts"]
    }
  },
  "start": "start",
  "nodes": {

    "start": {
      "text": "🏠 女贞路4号。\n你在德思礼家度过了整个暑假，没有收到任何朋友的信。\n罗恩和赫敏像是把你忘了一样。\n今天是你的生日——但没有人记得。",
      "location": "privet_drive",
      "choices": [
        { "text": "🎂 独自度过生日", "next": "birthday" }
      ]
    },

    "birthday": {
      "text": "🎂 你坐在房间里，盯着天花板。\n突然——\n💥 一个家养小精灵出现在你面前！\n他穿着破布，长着蝙蝠般的大耳朵，网球般的绿眼睛瞪着你。\n「哈利·波特！我叫多比。我必须警告你——你不能回霍格沃茨！」",
      "location": "privet_drive",
      "choices": [
        { "text": "🤨 问多比为什么", "next": "dobby_warning" },
        { "text": "😡 让多比离开", "next": "dobby_leave" }
      ]
    },

    "dobby_warning": {
      "text": "😰 多比颤抖着说——\n「有阴谋，哈利·波特。今年霍格沃茨会有最恐怖的事情发生！」\n他拼命打自己的头，因为说了主人的坏话。\n「我不能告诉你更多——但你必须答应我，不回去！」",
      "location": "privet_drive",
      "actions": [
        { "type": "setVar", "name": "met_dobby", "value": true },
        { "type": "setVar", "name": "dobby_warned", "value": true }
      ],
      "choices": [
        { "text": "🤝 答应多比", "next": "dobby_promise" },
        { "text": "🤥 假装答应", "next": "dobby_fake_promise" }
      ]
    },

    "dobby_promise": {
      "text": "🤝 你答应了多比。\n多比感激地消失了——\n但你真的能不去霍格沃茨吗？",
      "location": "privet_drive",
      "actions": [
        { "type": "addVar", "name": "dark_side", "value": 5 }
      ],
      "choices": [
        { "text": "🏠 留在德思礼家", "next": "staying_home" },
        { "text": "🏰 还是要去霍格沃茨", "next": "dobby_fake_promise" }
      ]
    },

    "dobby_fake_promise": {
      "text": "🤥 你敷衍了多比。\n多比似乎看穿了你的谎言——他愤怒地跳起来：\n「哈利·波特不听话！多比必须阻止你！」\n💥 他施了个魔法，让蛋糕砸在了德思礼家客人的头上！",
      "location": "privet_drive",
      "actions": [
        { "type": "setVar", "name": "met_dobby", "value": true },
        { "type": "setVar", "name": "dobby_warned", "value": true }
      ],
      "choices": [
        { "text": "😱 糟糕了！", "next": "dobby_aftermath" }
      ]
    },

    "dobby_aftermath": {
      "text": "😡 弗农姨父暴怒——你被锁在房间里，铁栏封住窗户！\n「你哪儿也别想去！」\n📬 就在这时，罗恩的猫头鹰小猪叼着一封信飞来——\n「哈利！我和哥哥们来接你了！」",
      "location": "privet_drive",
      "choices": [
        { "text": "🚗 等待罗恩", "next": "flying_car" }
      ]
    },

    "flying_car": {
      "text": "🚗 午夜，一辆蓝色的福特安格里亚飞车悬在窗外！\n罗恩和弗雷德、乔治拆掉了铁栏——\n你爬上车，飞离了女贞路！\n🌙 你们飞向陋居。",
      "location": "privet_drive",
      "actions": [
        { "type": "setVar", "name": "flying_car_crashed", "value": false }
      ],
      "choices": [
        { "text": "🏠 去陋居", "next": "the_burrow" }
      ]
    },

    "the_burrow": {
      "text": "🏠 陋居——韦斯莱家的房子，歪歪扭扭却充满温暖。\n你见到了罗恩的家人：莫丽妈妈、亚瑟爸爸、金妮、弗雷德、乔治、珀西。\n金妮看到你，脸红了。\n📅 暑假剩下的日子，你住在陋居。",
      "location": "burrow",
      "choices": [
        { "text": "🛒 去对角巷买书", "next": "diagon_alley_2" }
      ]
    },

    "diagon_alley_2": {
      "text": "🧙 你和韦斯莱一家来到对角巷。\n在丽痕书店，你遇到了吉德罗·洛哈特——\n新来的黑魔法防御术教授，他正大肆推销自己的书。\n📸 洛哈特拉着你拍照：「哈利·波特和我！」",
      "location": "diagon_alley",
      "choices": [
        { "text": "😅 尴尬地配合", "next": "diagon_malfoy" },
        { "text": "😤 挣脱洛哈特", "next": "diagon_malfoy" }
      ]
    },

    "diagon_malfoy": {
      "text": "🧝 卢修斯·马尔福出现了，德拉科跟在他身后。\n卢修斯嘲讽韦斯莱家，并把一本旧日记塞进了金妮的坩埚里——\n你没注意到这个细节。\n卢修斯冷冷地对你说：「波特，希望你能活过今年。」",
      "location": "diagon_alley",
      "choices": [
        { "text": "🚂 去国王十字车站", "next": "kings_cross_2" }
      ]
    },

    "kings_cross_2": {
      "text": "🚉 国王十字车站，9¾站台。\n你和韦斯莱一家冲向柱子——\n💥 你撞了上去！\n墙把你弹了回来！\n站台被封住了！\n🚗 罗恩喊道：「来不及了——我们开飞车去霍格沃茨！」",
      "location": "kings_cross",
      "choices": [
        { "text": "🚗 开飞车去学校", "next": "flying_car_crash" }
      ]
    },

    "flying_car_crash": {
      "text": "🚗 飞车冲向霍格沃茨——\n你们找到了城堡，但罗恩操作失误——\n💥 车撞上了一棵打人柳！\n树枝疯狂抽打，车被砸得稀巴烂！\n你跳下车，罗恩也跳了下来——\n⚠️ 魔杖断了！罗恩的魔杖折成了两截！",
      "location": "hogwarts",
      "actions": [
        { "type": "setVar", "name": "flying_car_crashed", "value": true }
      ],
      "choices": [
        { "text": "🏰 进入城堡", "next": "start_of_term" }
      ]
    },

    "start_of_term": {
      "text": "🏰 你们赶上了开学宴会。\n邓布利多宣布了新教授：吉德罗·洛哈特。\n洛哈特穿着华丽的长袍，发表了一通自恋的演讲。\n🔮 晚餐时，多比突然出现在你面前——\n「哈利·波特！你不该回来！」\n他消失了。",
      "location": "hogwarts_great_hall",
      "choices": [
        { "text": "📚 开始新学期", "next": "first_week_2" }
      ]
    },

    "first_week_2": {
      "text": "📚 第一周——\n洛哈特的课是一场灾难。他考你们关于他自己的问题，放出了康沃尔郡小精灵，结果一片混乱。\n😱 罗恩的断魔杖让一切更糟。\n你开始觉得——这个学校今年不太对劲。",
      "location": "hogwarts",
      "choices": [
        { "text": "🧹 去魁地奇训练", "next": "quidditch_2" },
        { "text": "📖 去图书馆", "next": "library_2" }
      ]
    },

    "quidditch_2": {
      "text": "🧹 魁地奇训练场上，你正飞驰——\n突然，一个游走球发了疯！\n它追着你，拼命想把你撞下扫帚！\n💥 它击中了你的胳膊——骨头碎了！\n你摔在地上。",
      "location": "hogwarts_quidditch_pitch",
      "choices": [
        { "text": "🏥 去校医院", "next": "hospital_wing" }
      ]
    },

    "hospital_wing": {
      "text": "🏥 庞弗雷夫人治好了你的胳膊——\n但洛哈特闯了进来：「让我来！」\n他念了个咒——\n💀 你的胳膊骨头消失了！\n你变成了「软骨头」！\n「别担心，会重新长出来的。」",
      "location": "hogwarts_hospital_wing",
      "choices": [
        { "text": "😰 等待骨头长回来", "next": "after_hospital" }
      ]
    },

    "after_hospital": {
      "text": "🦴 第二天，你的骨头长回来了。\n但多比又出现了——他承认是他操控了游走球！\n「多比想让你受伤回家！但多比失败了！」\n多比哭喊着，然后消失了。",
      "location": "hogwarts_hospital_wing",
      "actions": [
        { "type": "setVar", "name": "met_dobby", "value": true }
      ],
      "choices": [
        { "text": "🔍 继续调查", "next": "first_attack" }
      ]
    },

    "first_attack": {
      "text": "📜 墙上出现了血字——\n「密室已经被打开，与继承人为敌者，警惕。」\n费尔奇的猫洛丽丝夫人被石化了，挂在墙上。\n👀 所有人都看向你——因为你会说蛇佬腔。",
      "location": "hogwarts",
      "choices": [
        { "text": "🔍 调查密室", "next": "chamber_investigation" }
      ]
    },

    "chamber_investigation": {
      "text": "📖 赫敏在图书馆找到了关于「密室」的资料——\n斯莱特林在城堡里建了一间密室，里面藏着蛇怪。\n只有斯莱特林的继承人才能打开它。\n⚠️ 会蛇佬腔的人——被认为是继承人。",
      "location": "hogwarts_library",
      "actions": [
        { "type": "setVar", "name": "knows_about_chamber", "value": true }
      ],
      "choices": [
        { "text": "🔍 继续调查", "next": "deathday_party" }
      ]
    },

    "deathday_party": {
      "text": "🎃 万圣节前夕，差点没头的尼克邀请你们参加他的五百岁忌辰晚会。\n在地下室，你们遇到了——\n👻 哭泣的桃金娘！她住在女生盥洗室里。\n她提到了「那次死亡」——五十年前，她死在盥洗室里。",
      "location": "hogwarts",
      "choices": [
        { "text": "🔍 询问桃金娘", "next": "myrtle" },
        { "text": "🎃 去万圣节宴会", "next": "halloween_2" }
      ]
    },

    "myrtle": {
      "text": "👻 桃金娘哭着说——\n「我死在这里。我听到一个男孩在说话——说了蛇佬腔！然后我看到了两只黄色的大眼睛……然后我就死了。」\n你意识到——五十年前，密室也被打开过。",
      "location": "hogwarts",
      "actions": [
        { "type": "setVar", "name": "knows_basilisk", "value": true }
      ],
      "choices": [
        { "text": "📖 继续调查", "next": "halloween_2" }
      ]
    },

    "halloween_2": {
      "text": "🎃 万圣节晚宴后——\n科林·克里维被石化了！他拿着相机，想拍你。\n📸 相机里最后一卷胶卷烧焦了。\n密室真的被打开了。",
      "location": "hogwarts_great_hall",
      "choices": [
        { "text": "🔍 继续追查", "next": "dueling_club" }
      ]
    },

    "dueling_club": {
      "text": "⚔️ 洛哈特成立了决斗俱乐部。\n斯内普和他示范决斗——\n然后，洛哈特让你和马尔福对决！\n马尔福召唤出一条蛇——\n🐍 你对蛇说：「别动。」\n全场震惊——你又说了蛇佬腔！",
      "location": "hogwarts",
      "choices": [
        { "text": "😰 解释", "next": "after_dueling" }
      ]
    },

    "after_dueling": {
      "text": "😰 你成了众矢之的。\n所有人都怀疑你是斯莱特林的继承人。\n赫敏和罗恩坚定地站在你这边。\n🔍 你们决定——潜入斯莱特林公共休息室，问马尔福！",
      "location": "hogwarts",
      "choices": [
        { "text": "🧪 制作复方汤剂", "next": "polyjuice_plan" },
        { "text": "📖 继续查书", "next": "library_again" }
      ]
    },

    "polyjuice_plan": {
      "text": "🧪 赫敏想出了计划——\n制作复方汤剂，变成斯莱特林的学生，去套马尔福的话。\n🦎 材料需要——草蛉虫、蚂蟥、双角兽的角、非洲树蛇的皮……还有想变成的人身上的东西。",
      "location": "hogwarts",
      "choices": [
        { "text": "🔬 开始制作", "next": "polyjuice_brew" }
      ]
    },

    "polyjuice_brew": {
      "text": "🧪 你们偷了材料，在女生盥洗室里熬制汤剂。\n一个月后——汤剂完成了！\n你变成了高尔，罗恩变成了克拉布。\n赫敏……变成了一只猫！（她用了猫毛）",
      "location": "hogwarts",
      "actions": [
        { "type": "setVar", "name": "took_polyjuice", "value": true },
        { "type": "addItem", "itemId": "polyjuice" }
      ],
      "choices": [
        { "text": "🐍 去斯莱特林公共休息室", "next": "slytherin_common_room" }
      ]
    },

    "slytherin_common_room": {
      "text": "🐍 你冒充高尔，进入了斯莱特林公共休息室。\n马尔福得意地说——\n「我知道密室的秘密！我爸告诉我的——五十年前，是海格打开了密室！」\n「海格养了一只蜘蛛——阿拉戈克。那就是怪物！」",
      "location": "hogwarts",
      "choices": [
        { "text": "🕷️ 去找海格", "next": "hagrid_arrested" }
      ]
    },

    "hagrid_arrested": {
      "text": "🏠 你们去找海格——\n但魔法部部长康奈利·福吉来了！\n海格被带走，送往阿兹卡班。\n「不是我！是汤姆·里德尔——是里德尔干的！」\n海格被带走了。",
      "location": "hagrids_hut",
      "actions": [
        { "type": "setVar", "name": "knows_tom_riddle", "value": true }
      ],
      "choices": [
        { "text": "🕷️ 去找阿拉戈克", "next": "aragog" },
        { "text": "📓 回城堡", "next": "return_castle" }
      ]
    },

    "aragog": {
      "text": "🕷️ 你们进入禁林，找到了阿拉戈克——\n一只巨型蜘蛛！\n「海格是无辜的。五十年前，真正的怪物不是我们蜘蛛——\n是蛇怪。斯莱特林密室里的蛇怪。」\n🐍 蛇怪！",
      "location": "forbidden_forest",
      "actions": [
        { "type": "setVar", "name": "knows_basilisk", "value": true }
      ],
      "choices": [
        { "text": "🏃 快跑！", "next": "aragog_escape" }
      ]
    },

    "aragog_escape": {
      "text": "🕷️ 蜘蛛群追了上来！\n🚗 罗恩的飞车突然出现——是它！它一直在禁林里！\n你们跳上车，飞离了禁林。",
      "location": "forbidden_forest",
      "choices": [
        { "text": "🏰 回到城堡", "next": "return_castle" }
      ]
    },

    "return_castle": {
      "text": "🏰 你们回到城堡，发现——\n赫敏被石化了！她手里攥着一张纸条。\n📜 纸条上写着：「蛇怪——是蛇怪！通过管道移动——」\n赫敏发现了真相，但被石化了。",
      "location": "hogwarts",
      "actions": [
        { "type": "setVar", "name": "knows_hermione_petrified", "value": true }
      ],
      "choices": [
        { "text": "🔍 破解谜题", "next": "riddle_diary" }
      ]
    },

    "riddle_diary": {
      "text": "📓 你在桃金娘的盥洗室里发现了一本日记——\n空白的日记。\n你试着在上面写字——\n🖊️ 字迹出现了：「你好，哈利·波特。我叫汤姆·里德尔。」",
      "location": "hogwarts",
      "actions": [
        { "type": "setVar", "name": "found_diary", "value": true },
        { "type": "addItem", "itemId": "diary" },
        { "type": "setVar", "name": "knows_tom_riddle", "value": true }
      ],
      "choices": [
        { "text": "📝 和日记对话", "next": "diary_conversation" },
        { "text": "⚠️ 把日记交给教授", "next": "give_diary" }
      ]
    },

    "diary_conversation": {
      "text": "📝 你和日记对话——\n汤姆·里德尔带你看到了五十年前的记忆：\n他抓住了海格，指控他打开了密室。\n「海格养了只蜘蛛——那就是怪物。」\n但你看到了真相——里德尔才是斯莱特林的继承人！",
      "location": "hogwarts",
      "actions": [
        { "type": "setVar", "name": "wrote_in_diary", "value": true },
        { "type": "setVar", "name": "saw_riddle_memory", "value": true }
      ],
      "choices": [
        { "text": "📖 继续阅读", "next": "diary_truth" }
      ]
    },

    "diary_truth": {
      "text": "📖 日记显示——\n汤姆·里德尔就是伏地魔！\n五十年前，他打开了密室，放出了蛇怪。\n然后他嫁祸给了海格。\n现在——有人又在打开密室。",
      "location": "hogwarts",
      "actions": [
        { "type": "setVar", "name": "knows_tom_riddle", "value": true }
      ],
      "choices": [
        { "text": "🔍 找出继承人", "next": "find_inheritor" }
      ]
    },

    "give_diary": {
      "text": "⚠️ 你把日记交给了麦格教授。\n她看了看——「一本空白日记？」\n她不以为然地还给了你。\n你只好自己调查。",
      "location": "hogwarts",
      "choices": [
        { "text": "📓 继续调查", "next": "diary_conversation" }
      ]
    },

    "find_inheritor": {
      "text": "🔍 你们发现——\n金妮·韦斯莱不见了！\n墙上写着：「她的尸骨将永远留在密室。」\n金妮被带走了！\n你必须去救她。",
      "location": "hogwarts",
      "actions": [
        { "type": "setVar", "name": "knows_ginny_taken", "value": true }
      ],
      "choices": [
        { "text": "🕵️ 找到密室入口", "next": "chamber_entrance" }
      ]
    },

    "chamber_entrance": {
      "text": "🚽 桃金娘的盥洗室——\n你对着水龙头说蛇佬腔：「打开。」\n💧 水龙头打开了，露出一个黑暗的管道！\n你跳了进去——\n滑向未知的深处。",
      "location": "hogwarts",
      "actions": [
        { "type": "setVar", "name": "went_into_chamber", "value": true }
      ],
      "choices": [
        { "text": "⬇️ 滑下去", "next": "chamber_inside" }
      ]
    },

    "chamber_inside": {
      "text": "🐍 你落在密室的地面上——\n四周是巨大的蛇形石柱。\n金妮躺在远处，昏迷不醒。\n👤 汤姆·里德尔站在她身边——\n「哈利·波特，你终于来了。」",
      "location": "chamber_of_secrets",
      "choices": [
        { "text": "⚔️ 面对里德尔", "next": "riddle_confront" }
      ]
    },

    "riddle_confront": {
      "text": "👤 里德尔微笑着说——\n「我是伏地魔。这本日记保存了我的记忆。\n金妮·韦斯莱打开了密室——她写了太多，把灵魂给了我。\n现在，我越来越强大。而你——会死在这里。」",
      "location": "chamber_of_secrets",
      "choices": [
        { "text": "⚔️ 战斗", "next": "basilisk_fight" }
      ]
    },

    "basilisk_fight": {
      "text": "🐍 里德尔放出了蛇怪！\n巨大的绿色蛇怪从雕像中爬出——\n你不敢看它的眼睛——那意味着死亡！\n🦅 突然，邓布利多的凤凰福克斯飞来了！\n它啄瞎了蛇怪的眼睛！",
      "location": "chamber_of_secrets",
      "choices": [
        { "text": "⚔️ 与蛇怪战斗", "next": "sword_fight" }
      ]
    },

    "sword_fight": {
      "text": "⚔️ 福克斯扔下了分院帽——\n你从帽子里抽出了一把银色的宝剑！\n格兰芬多宝剑！\n⚡ 你冲向蛇怪——\n一剑刺穿了它的上颚！\n蛇怪倒下了。",
      "location": "chamber_of_secrets",
      "actions": [
        { "type": "addItem", "itemId": "sword" },
        { "type": "setVar", "name": "defeated_basilisk", "value": true }
      ],
      "choices": [
        { "text": "📓 摧毁日记", "next": "destroy_diary" }
      ]
    },

    "destroy_diary": {
      "text": "📓 你拔出蛇怪的毒牙——\n刺穿了日记本！\n💀 里德尔尖叫着消失了！\n金妮醒了过来。\n福克斯用眼泪治好了你的伤。",
      "location": "chamber_of_secrets",
      "actions": [
        { "type": "addItem", "itemId": "basilisk_fang" },
        { "type": "setVar", "name": "destroyed_diary", "value": true },
        { "type": "setVar", "name": "dumbledore_returned", "value": true }
      ],
      "choices": [
        { "text": "🏰 回到城堡", "next": "return_from_chamber" }
      ]
    },

    "return_from_chamber": {
      "text": "🏰 你们回到了城堡。\n邓布利多等在那里——\n「你做得很好，哈利。你又一次击败了伏地魔。」\n🏆 所有被石化的学生都醒来了。\n赫敏和科林恢复了。",
      "location": "hogwarts",
      "choices": [
        { "text": "🧦 释放多比", "next": "free_dobby" }
      ]
    },

    "free_dobby": {
      "text": "🧦 卢修斯·马尔福气冲冲地来到学校。\n你意识到——是卢修斯把日记给了金妮！\n🕵️ 你脱下袜子，递给卢修斯——\n「还给你，马尔福先生。」\n卢修斯嫌弃地扔掉了袜子——\n💥 多比接住了它！\n「主人给了我衣服！多比自由了！」",
      "location": "hogwarts",
      "actions": [
        { "type": "addItem", "itemId": "sock" },
        { "type": "setVar", "name": "dobby_freed", "value": true }
      ],
      "choices": [
        { "text": "🏆 结局", "next": "ending" }
      ]
    },

    "ending": {
      "text": "🌟🌟🌟 《哈利·波特与密室》——\n\n🏆 你再次拯救了霍格沃茨！\n🐍 你击败了蛇怪，摧毁了伏地魔的日记，释放了多比。\n🤝 罗恩和赫敏始终与你并肩作战。\n💀 你知道了——伏地魔从未真正消失。\n\n但今天，你是英雄。\n\n✨ 魔法世界的冒险，还在继续。",
      "location": "hogwarts",
      "isEnd": true,
      "endType": "true"
    },

    "staying_home": {
      "text": "🏠 你选择留在德思礼家。\n但多比说得对——灾难还是发生了。\n你不知道霍格沃茨发生了什么，但你错过了整个学年。\n结局：错失",
      "location": "privet_drive",
      "isEnd": true,
      "endType": "neutral"
    },

    "dobby_leave": {
      "text": "😡 你让多比离开。\n多比哭了——「哈利·波特会后悔的！」\n他消失了。\n暑假过去了，你去了霍格沃茨——\n但多比的警告，你从未忘记。",
      "location": "privet_drive",
      "actions": [
        { "type": "setVar", "name": "met_dobby", "value": true },
        { "type": "setVar", "name": "dobby_warned", "value": true }
      ],
      "choices": [
        { "text": "🏰 去霍格沃茨", "next": "kings_cross_2" }
      ]
    },

    "library_2": {
      "text": "📖 你在图书馆查资料，发现了密室的历史。",
      "location": "hogwarts_library",
      "actions": [
        { "type": "setVar", "name": "knows_about_chamber", "value": true }
      ],
      "choices": [
        { "text": "继续", "next": "first_attack" }
      ]
    },

    "library_again": {
      "text": "📖 你继续查书，但找不到更多线索。",
      "location": "hogwarts_library",
      "choices": [
        { "text": "🧪 还是用复方汤剂吧", "next": "polyjuice_plan" }
      ]
    },

    "chamber_entrance_slytherin": {
      "text": "🚽 作为一个斯莱特林，你更了解密室。\n你轻松找到了入口，用蛇佬腔打开了它。\n但你的动机——是拯救金妮，还是别的什么？",
      "location": "hogwarts",
      "actions": [
        { "type": "setVar", "name": "went_into_chamber", "value": true }
      ],
      "choices": [
        { "text": "⚔️ 去救金妮", "next": "chamber_inside" },
        { "text": "👿 和里德尔联手", "next": "ending_dark_2" }
      ]
    },

    "ending_dark_2": {
      "text": "💀 你和里德尔联手。\n蛇怪杀死了金妮。\n你成为了新的斯莱特林继承人。\n霍格沃茨陷入黑暗。\n伏地魔的力量在增长。\n结局：黑暗崛起",
      "location": "chamber_of_secrets",
      "isEnd": true,
      "endType": "bad"
    },

    "chamber_entrance_alone": {
      "text": "🕵️ 你独自找到密室入口，跳了进去。\n没有罗恩，没有赫敏——只有你自己。",
      "location": "hogwarts",
      "actions": [
        { "type": "setVar", "name": "went_into_chamber", "value": true }
      ],
      "choices": [
        { "text": "⚔️ 面对蛇怪", "next": "basilisk_fight_alone" }
      ]
    },

    "basilisk_fight_alone": {
      "text": "🐍 你独自面对蛇怪。\n没有福克斯的帮助，没有宝剑。\n你只能用魔杖——\n💀 但蛇怪太强大了。\n你倒下了。",
      "location": "chamber_of_secrets",
      "isEnd": true,
      "endType": "death"
    },

    "diary_truth_slytherin": {
      "text": "📖 你发现里德尔就是伏地魔。\n但你是斯莱特林——你会站在哪一边？",
      "location": "hogwarts",
      "actions": [
        { "type": "setVar", "name": "knows_tom_riddle", "value": true }
      ],
      "choices": [
        { "text": "⚔️ 对抗里德尔", "next": "chamber_entrance_slytherin" },
        { "text": "👿 加入里德尔", "next": "ending_dark_2" }
      ]
    },

    "chamber_entrance_griffindor": {
      "text": "🚽 你用蛇佬腔打开了水龙头，准备进入密室。",
      "location": "hogwarts",
      "actions": [
        { "type": "setVar", "name": "went_into_chamber", "value": true }
      ],
      "choices": [
        { "text": "⬇️ 跳下去", "next": "chamber_inside" }
      ]
    },

    "ending_lockhart_exposed": {
      "text": "🏆 你在最后揭穿了洛哈特的骗局，他试图逃跑，但被自己的遗忘咒击中。\n你证明了真正的英雄不需要吹嘘。",
      "location": "hogwarts",
      "isEnd": true,
      "endType": "victory"
    },

    "ending_no_sword": {
      "text": "💀 你没有宝剑，蛇怪将你吞噬。\n金妮也未能幸免。\n故事以悲剧告终。",
      "location": "chamber_of_secrets",
      "isEnd": true,
      "endType": "death"
    }
  }
}