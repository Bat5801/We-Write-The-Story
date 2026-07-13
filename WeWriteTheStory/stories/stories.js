window.storyFiles = [
    {
        "id": "example",
        "name": "example.story"
    },
    {
        "id": "magic_library",
        "name": "magic_library.story"
    },
    {
        "id": "dragon_quest",
        "name": "dragon_quest.story"
    },
    {
        "id": "time_loop",
        "name": "time_loop.story"
    },
    {
        "id": "horror_school_prologue",
        "name": "horror_school_prologue.story"
    },
    {
        "id": "horror_school_chapter1",
        "name": "horror_school_chapter1.story"
    },
    {
        "id": "horror_school_chapter2",
        "name": "horror_school_chapter2.story"
    },
    {
        "id": "horror_school_chapter3",
        "name": "horror_school_chapter3.story"
    },
    {
        "id": "horror_school_chapter4",
        "name": "horror_school_chapter4.story"
    },
    {
        "id": "the_stolen_coffin_part1",
        "name": "盗棺笔记（上）.story"
    },
    {
        "id": "the_stolen_coffin_part2",
        "name": "盗棺笔记（下）.story"
    },
    {
        "id": "hechuan_old_records_part1",
        "name": "盗棺笔记：河川旧录（上）.story"
    },
    {
        "id": "hechuan_old_records_part2",
        "name": "盗棺笔记：河川旧录（下）.story"
    },
    {
        "id": "the_stolen_coffin_hard",
        "name": "盗棺笔记(Hard).story"
    },
    {
        "id": "hechuan_old_records_hard",
        "name": "盗棺笔记：河川旧录(Hard).story"
    }
];

window.storyCollections = [
    {
        "id": "fantasy_collection",
        "title": "✨ 奇幻冒险系列",
        "description": "充满魔法与冒险的精彩故事",
        "stories": [
            {
                "id": "example",
                "title": "神秘森林"
            },
            {
                "id": "magic_library",
                "title": "魔法图书馆"
            },
            {
                "id": "dragon_quest",
                "title": "屠龙传说"
            },
            {
                "id": "time_loop",
                "title": "时空迷宫"
            }
        ]
    },
    {
        "id": "horror_school_collection",
        "title": "📚 校园惊魂系列",
        "description": "一个关于学校恐怖事件的系列故事",
        "stories": [
            {
                "id": "horror_school_prologue",
                "title": "序章-晚自习后"
            },
            {
                "id": "horror_school_chapter1",
                "title": "第一章-失踪的学生"
            },
            {
                "id": "horror_school_chapter2",
                "title": "第二章-午夜钟声"
            },
            {
                "id": "horror_school_chapter3",
                "title": "第三章-档案室的秘密"
            },
            {
                "id": "horror_school_chapter4",
                "title": "第四章-最终决战"
            }
        ]
    },
    {
        "id": "the_stolen_coffin_collection",
        "title": "⚰️ 盗棺笔记系列",
        "description": "爷爷死后，棺材里传来敲击声。一个披蓑衣的老人告诉我：棺里不是爷爷，沈家欠下的棺债，该轮到我来还了。",
        "stories": [
            {
                "id": "the_stolen_coffin_part1",
                "title": "盗棺笔记（上）"
            },
            {
                "id": "the_stolen_coffin_part2",
                "title": "盗棺笔记（下）"
            },
            {
                "id": "hechuan_old_records_part1",
                "title": "河川旧录（上）"
            },
            {
                "id": "hechuan_old_records_part2",
                "title": "河川旧录（下）"
            }
        ]
    },
    {
        "id": "the_stolen_coffin_hard_collection",
        "title": "⚰️ 盗棺笔记系列(Hard)",
        "description": "【9.5难度】极难模式！盗棺笔记正传与河川旧录的高难度整合版。每一步都是生死抉择，每一次QTE都是极限挑战。需要练习才能通关，但绝非不可战胜。",
        "stories": [
            {
                "id": "the_stolen_coffin_hard",
                "title": "盗棺笔记(Hard)"
            },
            {
                "id": "hechuan_old_records_hard",
                "title": "河川旧录(Hard)"
            }
        ]
    }
];

window.fallbackStories = [
    {
        "title": "神秘森林",
        "description": "一个关于勇气与选择的故事",
        "version": "1.0",
        "start": "entrance",
        "nodes": {
            "entrance": {
                "text": "你站在一片神秘森林的入口。树木高耸入云，阳光几乎无法穿透茂密的枝叶。一条小路蜿蜒向深处延伸。",
                "choices": [
                    {
                        "text": "进入森林",
                        "next": "deep_forest"
                    },
                    {
                        "text": "在入口等待",
                        "next": "wait"
                    },
                    {
                        "text": "转身离开",
                        "next": "leave"
                    }
                ]
            },
            "deep_forest": {
                "text": "你沿着小路深入森林。四周越来越安静，只有你的脚步声和偶尔传来的鸟鸣。前方出现了一个岔路口。",
                "choices": [
                    {
                        "text": "走左边的小径",
                        "next": "left_path"
                    },
                    {
                        "text": "走右边的小径",
                        "next": "right_path"
                    },
                    {
                        "text": "继续走中间的大路",
                        "next": "middle_path"
                    }
                ]
            },
            "wait": {
                "text": "你在入口等待了一会儿。一只松鼠从树上跳下，嘴里叼着一枚闪闪发光的宝石。它把宝石放在你面前，然后跑开了。",
                "choices": [
                    {
                        "text": "捡起宝石进入森林",
                        "next": "with_gem"
                    },
                    {
                        "text": "不理会宝石离开",
                        "next": "leave"
                    }
                ]
            },
            "leave": {
                "text": "你转身离开了森林。也许下次，你会有勇气踏入这片神秘之地。",
                "isEnd": true,
                "endType": "neutral"
            },
            "left_path": {
                "text": "左边的小径通向一片花海。花朵散发着迷人的香气，但你注意到有些花瓣上有奇怪的纹路。",
                "choices": [
                    {
                        "text": "仔细观察花朵",
                        "next": "flower_secret"
                    },
                    {
                        "text": "穿过花海继续前进",
                        "next": "mysterious_clearing"
                    }
                ]
            },
            "right_path": {
                "text": "右边的小径越来越窄，最终到达了一个古老的树洞。树洞里似乎有什么东西在发光，但你也感觉到了一丝危险的气息。",
                "choices": [
                    {
                        "text": "伸手进去探索",
                        "next": "treasure"
                    },
                    {
                        "text": "用树枝试探",
                        "next": "snake_attack"
                    },
                    {
                        "text": "谨慎地离开",
                        "next": "deep_forest"
                    }
                ]
            },
            "middle_path": {
                "text": "大路一直延伸，最终来到了一座古老的石碑前。石碑上刻着：'勇者无惧，智者无敌。'",
                "choices": [
                    {
                        "text": "触摸石碑",
                        "next": "trial"
                    },
                    {
                        "text": "绕过石碑",
                        "next": "mysterious_clearing"
                    }
                ]
            },
            "with_gem": {
                "text": "你握着宝石进入森林。宝石发出温暖的光芒，照亮了前方的道路。你感到一种莫名的力量。",
                "choices": [
                    {
                        "text": "跟随宝石的指引",
                        "next": "temple"
                    },
                    {
                        "text": "随意探索",
                        "next": "deep_forest"
                    }
                ]
            },
            "flower_secret": {
                "text": "你仔细观察花朵，发现纹路组成了一句话：'真爱是唯一的钥匙。' 一朵花突然绽放，露出里面的一把金色钥匙。",
                "choices": [
                    {
                        "text": "拿起钥匙",
                        "next": "with_key"
                    },
                    {
                        "text": "继续前进",
                        "next": "mysterious_clearing"
                    }
                ]
            },
            "treasure": {
                "text": "你伸手进树洞，摸到了一个盒子。打开后，里面是一本古老的书。书的封面上写着：'森林的秘密'。",
                "choices": [
                    {
                        "text": "阅读这本书",
                        "next": "read_book"
                    },
                    {
                        "text": "带走书继续探索",
                        "next": "with_book"
                    }
                ]
            },
            "trial": {
                "text": "当你触摸石碑时，一道光芒笼罩了你。你面前出现了三个幻影：代表勇气的狮子、代表智慧的猫头鹰、代表爱的鸽子。",
                "choices": [
                    {
                        "text": "选择狮子",
                        "next": "courage_path"
                    },
                    {
                        "text": "选择猫头鹰",
                        "next": "wisdom_path"
                    },
                    {
                        "text": "选择鸽子",
                        "next": "love_path"
                    }
                ]
            },
            "mysterious_clearing": {
                "text": "你来到了一片神秘的空地。空地中央有一座祭坛，祭坛上放着一个发光的水晶球。",
                "choices": [
                    {
                        "text": "触碰水晶球",
                        "next": "vision"
                    },
                    {
                        "text": "观察四周",
                        "next": "surroundings"
                    }
                ]
            },
            "temple": {
                "text": "宝石的光芒指引你来到了一座隐藏的神庙。神庙的大门上有一个宝石形状的凹槽。",
                "choices": [
                    {
                        "text": "将宝石放入凹槽",
                        "next": "victory"
                    },
                    {
                        "text": "寻找其他入口",
                        "next": "explore_temple"
                    }
                ]
            },
            "with_key": {
                "text": "你握着金色钥匙继续前进。前方出现了一扇锁住的门，钥匙正好能打开它。",
                "choices": [
                    {
                        "text": "用钥匙开门",
                        "next": "treasure_room"
                    },
                    {
                        "text": "继续寻找其他线索",
                        "next": "mysterious_clearing"
                    }
                ]
            },
            "read_book": {
                "text": "你开始阅读这本书。书中记载了森林的起源和一个隐藏的宝藏。原来，这片森林是一位古老法师创造的试炼之地。",
                "choices": [
                    {
                        "text": "按照书中的指引寻找宝藏",
                        "next": "follow_guide"
                    },
                    {
                        "text": "记住内容继续探索",
                        "next": "mysterious_clearing"
                    }
                ]
            },
            "with_book": {
                "text": "你带着书继续探索。书中的内容似乎在指引着你前进的方向。",
                "choices": [
                    {
                        "text": "跟随书中的指引",
                        "next": "follow_guide"
                    },
                    {
                        "text": "自己探索",
                        "next": "deep_forest"
                    }
                ]
            },
            "courage_path": {
                "text": "你选择了勇气。狮子发出一声怒吼，化为一道金光融入你的身体。你感到前所未有的力量。",
                "choices": [
                    {
                        "text": "充满勇气地前进",
                        "next": "brave_advance"
                    }
                ]
            },
            "wisdom_path": {
                "text": "你选择了智慧。猫头鹰眨了眨眼，化为一道蓝光融入你的身体。你的思绪变得清晰无比。",
                "choices": [
                    {
                        "text": "运用智慧解决谜题",
                        "next": "wise_solution"
                    }
                ]
            },
            "love_path": {
                "text": "你选择了爱。鸽子发出一声轻鸣，化为一道粉光融入你的身体。你的心中充满了温暖。",
                "choices": [
                    {
                        "text": "用爱感化一切",
                        "next": "love_conquer"
                    }
                ]
            },
            "vision": {
                "text": "水晶球展现出一幅景象：森林的中心有一座神庙，神庙中封印着一件神器。只有真正的勇者才能得到它。",
                "choices": [
                    {
                        "text": "前往神庙",
                        "next": "temple"
                    },
                    {
                        "text": "思考这个幻象",
                        "next": "mysterious_clearing"
                    }
                ]
            },
            "surroundings": {
                "text": "你仔细观察四周，发现地面上有一些脚印。这些脚印看起来像是人类留下的，但方向不一。",
                "choices": [
                    {
                        "text": "跟随最清晰的脚印",
                        "next": "follow_footprints"
                    },
                    {
                        "text": "继续探索",
                        "next": "deep_forest"
                    }
                ]
            },
            "explore_temple": {
                "text": "你绕到神庙后面，发现了一条秘密通道。通道虽然狭窄，但足以让你通过。",
                "choices": [
                    {
                        "text": "进入秘密通道",
                        "next": "secret_way"
                    },
                    {
                        "text": "返回尝试其他方法",
                        "next": "temple"
                    }
                ]
            },
            "treasure_room": {
                "text": "门打开了，里面是一间堆满宝藏的房间。金币、宝石、古老的艺术品应有尽有。但最引人注目的是房间中央的一把圣剑。",
                "choices": [
                    {
                        "text": "拿起圣剑",
                        "next": "victory"
                    },
                    {
                        "text": "只拿走一些金币",
                        "next": "rich_ending"
                    }
                ]
            },
            "follow_guide": {
                "text": "你按照书中的指引前进。书中的地图准确无误，你很快找到了通往神庙的捷径。",
                "choices": [
                    {
                        "text": "进入神庙",
                        "next": "temple"
                    }
                ]
            },
            "brave_advance": {
                "text": "凭借勇气，你克服了重重困难，最终来到了神庙门前。你的勇气已经证明了你是真正的勇者。",
                "choices": [
                    {
                        "text": "进入神庙",
                        "next": "temple"
                    }
                ]
            },
            "wise_solution": {
                "text": "运用智慧，你解开了森林中所有的谜题，找到了通往神庙的正确道路。智慧指引着你前进。",
                "choices": [
                    {
                        "text": "进入神庙",
                        "next": "temple"
                    }
                ]
            },
            "love_conquer": {
                "text": "你的爱感化了森林中所有的生灵，它们为你指引了通往神庙的道路。爱，是最强大的力量。",
                "choices": [
                    {
                        "text": "进入神庙",
                        "next": "temple"
                    }
                ]
            },
            "follow_footprints": {
                "text": "你跟随脚印前进，最终来到了神庙。看来有人也曾经来过这里。",
                "choices": [
                    {
                        "text": "进入神庙",
                        "next": "temple"
                    }
                ]
            },
            "secret_way": {
                "text": "秘密通道通向神庙内部。你发现自己站在一个宏伟的大厅里，大厅中央有一个发光的祭坛。祭坛后面还有一扇神秘的门。",
                "choices": [
                    {
                        "text": "走向祭坛",
                        "next": "victory"
                    },
                    {
                        "text": "探索神秘的门",
                        "next": "true_ending_path"
                    }
                ]
            },
            "snake_attack": {
                "text": "你用树枝试探树洞。突然，一条巨大的毒蛇从树洞中窜出，向你扑来！你来不及躲闪...",
                "isEnd": true,
                "endType": "death"
            },
            "true_ending_path": {
                "text": "你推开神秘的门，发现了一个隐藏的房间。房间里放着一本古老的魔法书和一面镜子。镜子中，你看到了自己成为森林守护者后的样子。",
                "choices": [
                    {
                        "text": "阅读魔法书",
                        "next": "true_ending"
                    },
                    {
                        "text": "只拿镜子离开",
                        "next": "bad_ending"
                    }
                ]
            },
            "bad_ending": {
                "text": "你拿走了镜子，却没有学习魔法书里的知识。离开森林后，镜子逐渐失去了光芒，你的冒险也随之褪色...",
                "isEnd": true,
                "endType": "bad"
            },
            "true_ending": {
                "text": "✨ 你阅读了魔法书，获得了森林的传承。镜子中，你看到了自己与森林融为一体的景象。你不仅成为了守护者，更成为了森林的一部分。这才是真正的结局！",
                "isEnd": true,
                "endType": "true"
            },
            "rich_ending": {
                "text": "你带走了一些金币，离开了森林。虽然你没有找到神器，但你也收获颇丰。",
                "isEnd": true,
                "endType": "neutral"
            },
            "victory": {
                "text": "🎉 恭喜你！你成功通过了森林的试炼，获得了传说中的神器。森林的秘密已经揭晓，而你，成为了新的守护者。",
                "isEnd": true,
                "endType": "victory"
            }
        },
        "id": "example"
    },
    {
        "id": "magic_library",
        "title": "魔法图书馆",
        "description": "在无尽的书架之间寻找失落的知识",
        "version": "1.0",
        "features": {
            "inventory": true
        },
        "items": [
            {
                "id": "ancient_key",
                "name": "古老钥匙",
                "icon": "🔑",
                "description": "一把散发着魔法光芒的古老钥匙"
            },
            {
                "id": "spell_book",
                "name": "咒语书",
                "icon": "📖",
                "description": "记载着强大咒语的魔法书"
            },
            {
                "id": "moonstone",
                "name": "月光石",
                "icon": "💎",
                "description": "蕴含月光力量的神秘宝石"
            }
        ],
        "start": "entrance",
        "nodes": {
            "entrance": {
                "text": "你站在一座宏伟的图书馆门前。门楣上刻着一行古老的符文：'知识是力量，力量是责任。' 两扇巨大的木门紧闭着，但你隐约听到里面传来翻书的声音。",
                "choices": [
                    {
                        "text": "推门而入",
                        "next": "main_hall"
                    },
                    {
                        "text": "仔细观察符文",
                        "next": "runes"
                    },
                    {
                        "text": "在门前等待",
                        "next": "wait"
                    }
                ]
            },
            "runes": {
                "text": "你认真研究门楣上的符文。突然，一道光芒闪过，符文组成了一句话：'只有真心寻求知识的人才能进入。' 与此同时，你注意到门边有一个钥匙孔。",
                "choices": [
                    {
                        "text": "寻找钥匙",
                        "next": "search_key"
                    },
                    {
                        "text": "直接推门",
                        "next": "main_hall"
                    }
                ]
            },
            "search_key": {
                "text": "你在门周围搜索，在一块松动的石头后面找到了一把古老的钥匙。钥匙上刻着精美的花纹，散发着微弱的魔法光芒。",
                "choices": [
                    {
                        "text": "用钥匙开门",
                        "next": "main_hall",
                        "actions": [
                            {
                                "type": "addItem",
                                "itemId": "ancient_key"
                            }
                        ]
                    },
                    {
                        "text": "继续观察",
                        "next": "runes"
                    }
                ]
            },
            "wait": {
                "text": "你在门前等待了片刻。一位身穿长袍的老者从阴影中走出，他的眼睛闪烁着智慧的光芒。'欢迎来到知识的殿堂，'他说，'我是这座图书馆的守护者。'",
                "choices": [
                    {
                        "text": "跟随老者进入",
                        "next": "main_hall"
                    },
                    {
                        "text": "询问图书馆的秘密",
                        "next": "secret"
                    }
                ]
            },
            "secret": {
                "text": "老者微微一笑：'这座图书馆收藏着世间所有的知识，但并非所有知识都适合所有人。有些书籍会选择读者，有些读者会被书籍选择。'他递给你一本古老的书。",
                "choices": [
                    {
                        "text": "接过书本",
                        "next": "main_hall",
                        "actions": [
                            {
                                "type": "addItem",
                                "itemId": "spell_book"
                            }
                        ]
                    },
                    {
                        "text": "婉言谢绝",
                        "next": "main_hall"
                    }
                ]
            },
            "main_hall": {
                "text": "你进入了图书馆的主厅。无数书架直插云霄，空气中弥漫着纸张和墨水的气息。一条环形走廊环绕着大厅，通向不同的区域。",
                "choices": [
                    {
                        "text": "前往魔法书籍区",
                        "next": "magic_section"
                    },
                    {
                        "text": "前往历史记载区",
                        "next": "history_section"
                    },
                    {
                        "text": "前往禁书区",
                        "next": "forbidden_section"
                    },
                    {
                        "text": "询问管理员",
                        "next": "librarian"
                    }
                ]
            },
            "magic_section": {
                "text": "魔法书籍区充满了闪烁的光芒。书籍悬浮在空中，自动翻页。你注意到一本特别古老的书，它的封面上画着一颗月亮。",
                "choices": [
                    {
                        "text": "阅读那本古老的书",
                        "next": "moon_book"
                    },
                    {
                        "text": "浏览其他书籍",
                        "next": "browse_magic"
                    },
                    {
                        "text": "返回主厅",
                        "next": "main_hall"
                    }
                ]
            },
            "moon_book": {
                "text": "你打开了那本书。书页上记载着关于月光魔法的秘密。书中提到，要掌握月光魔法，需要一颗月光石作为媒介。",
                "choices": [
                    {
                        "text": "寻找月光石",
                        "next": "search_moonstone",
                        "actions": [
                            {
                                "type": "addItem",
                                "itemId": "spell_book"
                            }
                        ]
                    },
                    {
                        "text": "继续阅读",
                        "next": "read_more"
                    }
                ]
            },
            "read_more": {
                "text": "书中还记载着一个预言：当月亮最圆的时候，图书馆的最深处会出现一条通往月光神殿的通道。但这条通道只对拥有月光石的人开放。",
                "choices": [
                    {
                        "text": "寻找月光石",
                        "next": "search_moonstone"
                    },
                    {
                        "text": "返回主厅",
                        "next": "main_hall"
                    }
                ]
            },
            "browse_magic": {
                "text": "你浏览着各种魔法书籍。突然，一本书从书架上掉下来，正好落在你面前。书名是《初学者的咒语指南》。",
                "choices": [
                    {
                        "text": "捡起书",
                        "next": "main_hall",
                        "actions": [
                            {
                                "type": "addItem",
                                "itemId": "spell_book"
                            }
                        ]
                    },
                    {
                        "text": "放回书架",
                        "next": "magic_section"
                    }
                ]
            },
            "history_section": {
                "text": "历史记载区显得格外安静。书籍按照年代排列，从最古老的卷轴到最新的编年史。你看到一本封面上写着'失落的王国'的书。",
                "choices": [
                    {
                        "text": "阅读失落王国的历史",
                        "next": "lost_kingdom"
                    },
                    {
                        "text": "继续探索",
                        "next": "explore_history"
                    },
                    {
                        "text": "返回主厅",
                        "next": "main_hall"
                    }
                ]
            },
            "lost_kingdom": {
                "text": "书中记载着一个曾经繁荣的魔法王国。这个王国拥有强大的魔法力量，但在一场灾难中消失了。有人说它沉入了海底，有人说它进入了另一个维度。",
                "choices": [
                    {
                        "text": "寻找更多线索",
                        "next": "explore_history"
                    },
                    {
                        "text": "前往禁书区寻找答案",
                        "next": "forbidden_section"
                    },
                    {
                        "text": "返回主厅",
                        "next": "main_hall"
                    }
                ]
            },
            "explore_history": {
                "text": "你在历史区继续探索，发现了一张古老的地图。地图上标记着一个位置，旁边写着'月光神殿'。",
                "choices": [
                    {
                        "text": "记住地图位置",
                        "next": "main_hall"
                    },
                    {
                        "text": "根据地图寻找",
                        "next": "search_moonstone"
                    }
                ]
            },
            "forbidden_section": {
                "text": "禁书区被一层魔法屏障保护着。屏障上闪烁着警告符文。你注意到屏障旁边有一个钥匙孔，形状和你找到的古老钥匙完全吻合。",
                "choices": [
                    {
                        "text": "用古老钥匙开门",
                        "next": "enter_forbidden",
                        "condition": {
                            "hasItem": "ancient_key"
                        }
                    },
                    {
                        "text": "尝试强行突破",
                        "next": "barrier_fail"
                    },
                    {
                        "text": "返回主厅",
                        "next": "main_hall"
                    }
                ]
            },
            "barrier_fail": {
                "text": "你尝试突破魔法屏障，但屏障的力量太过强大。一道电击将你击退，你感到一阵眩晕。",
                "choices": [
                    {
                        "text": "休息片刻",
                        "next": "main_hall"
                    },
                    {
                        "text": "继续尝试",
                        "next": "barrier_fail"
                    }
                ]
            },
            "enter_forbidden": {
                "text": "你用古老钥匙打开了禁书区的门。里面的书籍散发着危险的气息。在最深处，你看到一个发光的宝石悬浮在空中。",
                "choices": [
                    {
                        "text": "取走宝石",
                        "next": "got_moonstone",
                        "actions": [
                            {
                                "type": "addItem",
                                "itemId": "moonstone"
                            }
                        ]
                    },
                    {
                        "text": "谨慎观察",
                        "next": "observe_gem"
                    }
                ]
            },
            "observe_gem": {
                "text": "你仔细观察那个宝石。它散发着柔和的月光，似乎在等待有缘人。宝石周围的书籍突然翻开，显示出相同的文字：'选择是知识的开始。'",
                "choices": [
                    {
                        "text": "取走宝石",
                        "next": "got_moonstone",
                        "actions": [
                            {
                                "type": "addItem",
                                "itemId": "moonstone"
                            }
                        ]
                    },
                    {
                        "text": "离开禁书区",
                        "next": "main_hall"
                    }
                ]
            },
            "got_moonstone": {
                "text": "当你触碰月光石的瞬间，一道光芒笼罩了你。你感觉自己与月亮建立了某种联系，获得了强大的力量。",
                "choices": [
                    {
                        "text": "前往月光神殿",
                        "next": "moon_temple"
                    },
                    {
                        "text": "继续探索图书馆",
                        "next": "main_hall"
                    }
                ]
            },
            "search_moonstone": {
                "text": "你开始在图书馆中寻找月光石。经过一番搜索，你在一个隐蔽的角落发现了一个发光的箱子。",
                "choices": [
                    {
                        "text": "打开箱子",
                        "next": "found_moonstone",
                        "actions": [
                            {
                                "type": "addItem",
                                "itemId": "moonstone"
                            }
                        ]
                    },
                    {
                        "text": "小心检查",
                        "next": "check_box"
                    }
                ]
            },
            "check_box": {
                "text": "你仔细检查箱子，发现上面有魔法陷阱。但你手中的咒语书似乎能破解这个陷阱。",
                "choices": [
                    {
                        "text": "用咒语书破解陷阱",
                        "next": "found_moonstone",
                        "condition": {
                            "hasItem": "spell_book"
                        },
                        "actions": [
                            {
                                "type": "addItem",
                                "itemId": "moonstone"
                            }
                        ]
                    },
                    {
                        "text": "直接打开",
                        "next": "trap_trigger"
                    },
                    {
                        "text": "离开",
                        "next": "main_hall"
                    }
                ]
            },
            "trap_trigger": {
                "text": "你直接打开箱子，触发了魔法陷阱。一阵强光闪过，你发现自己回到了图书馆入口。",
                "choices": [
                    {
                        "text": "重新进入",
                        "next": "main_hall"
                    },
                    {
                        "text": "寻找其他方法",
                        "next": "librarian"
                    }
                ]
            },
            "found_moonstone": {
                "text": "你打开箱子，里面放着一颗美丽的月光石。宝石散发着柔和的光芒，让你感到平静。",
                "choices": [
                    {
                        "text": "前往月光神殿",
                        "next": "moon_temple"
                    },
                    {
                        "text": "返回主厅",
                        "next": "main_hall"
                    }
                ]
            },
            "librarian": {
                "text": "你找到了图书馆的管理员。她是一位年轻的女子，但眼中透着超越年龄的智慧。'欢迎来到知识的殿堂，'她说，'你在寻找什么？'",
                "choices": [
                    {
                        "text": "询问月光石",
                        "next": "ask_moonstone"
                    },
                    {
                        "text": "询问图书馆的秘密",
                        "next": "ask_secret"
                    },
                    {
                        "text": "询问如何离开",
                        "next": "ask_exit"
                    }
                ]
            },
            "ask_moonstone": {
                "text": "管理员微微一笑：'月光石是图书馆最珍贵的宝藏之一。它隐藏在禁书区，但只有真心寻求知识的人才能找到它。'",
                "choices": [
                    {
                        "text": "前往禁书区",
                        "next": "forbidden_section"
                    },
                    {
                        "text": "询问更多",
                        "next": "ask_more"
                    }
                ]
            },
            "ask_more": {
                "text": "管理员继续说：'月光石不仅是一块宝石，它还是通往月光神殿的钥匙。在月光神殿中，你将获得真正的智慧。'",
                "choices": [
                    {
                        "text": "前往禁书区",
                        "next": "forbidden_section"
                    },
                    {
                        "text": "返回主厅",
                        "next": "main_hall"
                    }
                ]
            },
            "ask_secret": {
                "text": "管理员神秘地笑了：'这座图书馆是活的。它会根据读者的意愿变化。有些人在这里找到了答案，有些人找到了问题。'",
                "choices": [
                    {
                        "text": "思考这句话",
                        "next": "main_hall"
                    },
                    {
                        "text": "继续探索",
                        "next": "magic_section"
                    }
                ]
            },
            "ask_exit": {
                "text": "管理员指向一扇门：'那扇门通往外面的世界。但我建议你在离开前，先找到你真正想要的东西。'",
                "choices": [
                    {
                        "text": "离开图书馆",
                        "next": "ending_leave"
                    },
                    {
                        "text": "继续探索",
                        "next": "main_hall"
                    }
                ]
            },
            "moon_temple": {
                "text": "你手中的月光石开始发光，引导你来到图书馆最深处的一面墙壁前。墙壁缓缓打开，露出一条通往月光神殿的通道。",
                "choices": [
                    {
                        "text": "进入神殿",
                        "next": "temple_entrance"
                    },
                    {
                        "text": "犹豫",
                        "next": "hesitate"
                    }
                ]
            },
            "hesitate": {
                "text": "你犹豫了一下。月光石似乎感受到了你的犹豫，发出温暖的光芒，似乎在鼓励你前进。",
                "choices": [
                    {
                        "text": "鼓起勇气进入",
                        "next": "temple_entrance"
                    },
                    {
                        "text": "返回",
                        "next": "main_hall"
                    }
                ]
            },
            "temple_entrance": {
                "text": "你进入了月光神殿。神殿内部由月光构成，墙壁上刻着古老的符文。神殿中央有一个祭坛，祭坛上放着一本发光的书。",
                "choices": [
                    {
                        "text": "阅读祭坛上的书",
                        "next": "read_divine_book"
                    },
                    {
                        "text": "观察神殿",
                        "next": "explore_temple"
                    },
                    {
                        "text": "触摸符文",
                        "next": "touch_runes"
                    }
                ]
            },
            "read_divine_book": {
                "text": "你翻开祭坛上的书。书页上的文字似乎活了过来，飞入你的脑海。你获得了关于宇宙的终极知识，感受到了前所未有的智慧。",
                "choices": [
                    {
                        "text": "接受智慧",
                        "next": "true_ending"
                    },
                    {
                        "text": "拒绝（保留自我）",
                        "next": "ending_wisdom"
                    }
                ]
            },
            "explore_temple": {
                "text": "你在神殿中探索，发现了许多记载着古老知识的壁画。这些知识涵盖了魔法、历史、哲学等各个领域。",
                "choices": [
                    {
                        "text": "继续探索",
                        "next": "read_divine_book"
                    },
                    {
                        "text": "返回图书馆",
                        "next": "main_hall"
                    }
                ]
            },
            "touch_runes": {
                "text": "你触摸墙壁上的符文。符文开始发光，你感到自己与神殿融为一体。一种超越时间和空间的感觉涌上心头。",
                "choices": [
                    {
                        "text": "沉浸其中",
                        "next": "true_ending"
                    },
                    {
                        "text": "保持清醒",
                        "next": "ending_aware"
                    }
                ]
            },
            "ending_leave": {
                "text": "你离开了图书馆。虽然你没有找到传说中的月光石，但你带走了一本珍贵的咒语书。也许有一天，你会再次回到这里。",
                "isEnd": true,
                "endType": "neutral"
            },
            "ending_wisdom": {
                "text": "你拒绝了终极智慧，选择保留自己的个性和经历。月光神殿认可了你的选择，将你送回了图书馆。你虽然没有获得全知，但获得了最重要的东西——自我。",
                "isEnd": true,
                "endType": "good"
            },
            "ending_aware": {
                "text": "你在与神殿融合的瞬间保持了清醒。这种体验让你获得了前所未有的洞察力，但你依然是你自己。你成为了一个既拥有神殿力量又保持自我的人。",
                "isEnd": true,
                "endType": "victory"
            },
            "true_ending": {
                "text": "✨ 你接受了月光神殿的智慧，与宇宙融为一体。你不再是一个个体，而是成为了知识本身的一部分。月光石成为了你永恒的光芒，照亮了所有寻求知识的人。你，成为了新的知识守护者。",
                "isEnd": true,
                "endType": "true"
            }
        }
    },
    {
        "id": "dragon_quest",
        "title": "屠龙传说",
        "description": "在巨龙的巢穴中寻找传说中的宝藏",
        "version": "1.0",
        "features": {
            "inventory": true
        },
        "items": [
            {
                "id": "dragon_slayer",
                "name": "屠龙剑",
                "icon": "⚔️",
                "description": "传说中能斩杀巨龙的神剑"
            },
            {
                "id": "fire_shield",
                "name": "烈焰护盾",
                "icon": "🛡️",
                "description": "能抵御龙焰的魔法盾牌"
            },
            {
                "id": "golden_egg",
                "name": "龙蛋",
                "icon": "🥚",
                "description": "巨龙留下的珍贵龙蛋"
            },
            {
                "id": "ancient_scroll",
                "name": "古老卷轴",
                "icon": "📜",
                "description": "记载着巨龙弱点的卷轴"
            }
        ],
        "start": "village",
        "nodes": {
            "village": {
                "text": "你站在一个宁静的村庄边缘。村民们神情紧张，窃窃私语。村口的告示牌上写着：'悬赏屠龙勇士——杀死威胁村庄的巨龙，赏金千两。'",
                "choices": [
                    {
                        "text": "接下任务",
                        "next": "accept_quest"
                    },
                    {
                        "text": "询问村民详情",
                        "next": "ask_villagers"
                    },
                    {
                        "text": "离开村庄",
                        "next": "leave_village"
                    }
                ]
            },
            "accept_quest": {
                "text": "你决定接下屠龙任务。村长走过来，递给你一把破旧的剑和一面盾牌。'这是我们最好的装备了，'他说，'巨龙住在东边的山上。'",
                "choices": [
                    {
                        "text": "前往东山",
                        "next": "mountain_path"
                    },
                    {
                        "text": "先准备装备",
                        "next": "prepare"
                    }
                ]
            },
            "ask_villagers": {
                "text": "你询问村民关于巨龙的详情。一位老妇人告诉你：'那条龙已经在这里盘踞了好几年了。它抢走了我们的财宝，还抓走了我们的孩子。有人说它的弱点在眼睛，有人说在心脏。'",
                "choices": [
                    {
                        "text": "寻找屠龙的线索",
                        "next": "search_clues"
                    },
                    {
                        "text": "接下任务",
                        "next": "accept_quest"
                    }
                ]
            },
            "leave_village": {
                "text": "你决定不卷入这场纷争，转身离开了村庄。身后传来村民们失望的叹息声。",
                "isEnd": true,
                "endType": "neutral"
            },
            "prepare": {
                "text": "你决定先准备装备。村庄里的铁匠告诉你：'我可以帮你打造更好的武器，但我需要一些特殊材料。'他列出了需要的材料：龙鳞、魔法矿石和精灵之泪。",
                "choices": [
                    {
                        "text": "寻找材料",
                        "next": "find_materials"
                    },
                    {
                        "text": "直接出发",
                        "next": "mountain_path"
                    }
                ]
            },
            "search_clues": {
                "text": "你开始寻找屠龙的线索。在村庄的图书馆里，你找到了一本古老的书，书中记载着屠龙的方法。",
                "choices": [
                    {
                        "text": "阅读书籍",
                        "next": "read_book",
                        "actions": [
                            {
                                "type": "addItem",
                                "itemId": "ancient_scroll"
                            }
                        ]
                    },
                    {
                        "text": "询问智者",
                        "next": "ask_sage"
                    }
                ]
            },
            "ask_sage": {
                "text": "你找到了村庄里的智者。他告诉你：'巨龙并非不可战胜。传说中有一把屠龙剑，藏在古老的遗迹中。但要找到它，你需要通过三个试炼。'",
                "choices": [
                    {
                        "text": "寻找屠龙剑",
                        "next": "find_sword"
                    },
                    {
                        "text": "直接挑战巨龙",
                        "next": "mountain_path"
                    }
                ]
            },
            "find_materials": {
                "text": "你开始寻找打造装备所需的材料。经过一番搜索，你在村庄附近的山洞里找到了一些魔法矿石。",
                "choices": [
                    {
                        "text": "收集矿石",
                        "next": "got_ore",
                        "actions": [
                            {
                                "type": "addItem",
                                "itemId": "fire_shield"
                            }
                        ]
                    },
                    {
                        "text": "继续寻找其他材料",
                        "next": "search_more"
                    }
                ]
            },
            "search_more": {
                "text": "你继续寻找其他材料。在森林深处，你遇到了一只受伤的精灵。她感谢你的帮助，并送给你一滴精灵之泪。",
                "choices": [
                    {
                        "text": "收下精灵之泪",
                        "next": "got_materials",
                        "actions": [
                            {
                                "type": "addItem",
                                "itemId": "dragon_slayer"
                            }
                        ]
                    },
                    {
                        "text": "婉言谢绝",
                        "next": "mountain_path"
                    }
                ]
            },
            "got_ore": {
                "text": "你带着魔法矿石回到铁匠那里。铁匠用它为你打造了一面烈焰护盾。",
                "choices": [
                    {
                        "text": "继续寻找其他材料",
                        "next": "search_more"
                    },
                    {
                        "text": "出发屠龙",
                        "next": "mountain_path"
                    }
                ]
            },
            "got_materials": {
                "text": "你收集齐了所有材料。铁匠用它们为你打造了一把锋利的屠龙剑。",
                "choices": [
                    {
                        "text": "出发屠龙",
                        "next": "mountain_path"
                    },
                    {
                        "text": "感谢铁匠",
                        "next": "mountain_path"
                    }
                ]
            },
            "read_book": {
                "text": "书中记载着巨龙的弱点：它的心脏被一层坚硬的鳞片保护着，但在它的左腋下有一处没有鳞片的地方。此外，巨龙害怕龙蛋被伤害。",
                "choices": [
                    {
                        "text": "记住弱点",
                        "next": "mountain_path"
                    },
                    {
                        "text": "寻找龙蛋",
                        "next": "find_egg"
                    }
                ]
            },
            "find_sword": {
                "text": "你来到了古老的遗迹。遗迹入口处有三个石碑，上面刻着试炼的内容：勇气、智慧和力量。",
                "choices": [
                    {
                        "text": "接受勇气试炼",
                        "next": "trial_courage"
                    },
                    {
                        "text": "接受智慧试炼",
                        "next": "trial_wisdom"
                    },
                    {
                        "text": "接受力量试炼",
                        "next": "trial_strength"
                    }
                ]
            },
            "trial_courage": {
                "text": "勇气试炼要求你面对自己最深的恐惧。你面前出现了一个幻象——你最害怕的东西。",
                "choices": [
                    {
                        "text": "勇敢面对",
                        "next": "pass_courage"
                    },
                    {
                        "text": "逃避",
                        "next": "fail_trial"
                    }
                ]
            },
            "pass_courage": {
                "text": "你勇敢地面对了自己的恐惧。幻象消失了，第一个试炼通过。",
                "choices": [
                    {
                        "text": "继续下一个试炼",
                        "next": "trial_wisdom"
                    },
                    {
                        "text": "直接寻找屠龙剑",
                        "next": "find_sword_direct"
                    }
                ]
            },
            "fail_trial": {
                "text": "你选择了逃避。试炼失败了，但你没有受伤。你可以选择重新开始或离开。",
                "choices": [
                    {
                        "text": "重新尝试",
                        "next": "trial_courage"
                    },
                    {
                        "text": "离开遗迹",
                        "next": "mountain_path"
                    }
                ]
            },
            "trial_wisdom": {
                "text": "智慧试炼要求你解开一个谜题：'什么东西你越给别人，自己反而越多？'",
                "choices": [
                    {
                        "text": "答案是知识",
                        "next": "pass_wisdom"
                    },
                    {
                        "text": "答案是金钱",
                        "next": "fail_trial"
                    },
                    {
                        "text": "答案是爱",
                        "next": "pass_wisdom"
                    }
                ]
            },
            "pass_wisdom": {
                "text": "你的答案是正确的！智慧试炼通过。",
                "choices": [
                    {
                        "text": "继续下一个试炼",
                        "next": "trial_strength"
                    },
                    {
                        "text": "直接寻找屠龙剑",
                        "next": "find_sword_direct"
                    }
                ]
            },
            "trial_strength": {
                "text": "力量试炼要求你举起一块巨大的石头。这块石头重得超乎想象，但你感到体内涌起一股力量。",
                "choices": [
                    {
                        "text": "全力举起",
                        "next": "pass_strength"
                    },
                    {
                        "text": "放弃",
                        "next": "fail_trial"
                    }
                ]
            },
            "pass_strength": {
                "text": "你成功举起了石头！力量试炼通过。",
                "choices": [
                    {
                        "text": "寻找屠龙剑",
                        "next": "find_sword_direct"
                    },
                    {
                        "text": "返回村庄",
                        "next": "village"
                    }
                ]
            },
            "find_sword_direct": {
                "text": "你来到了遗迹最深处。屠龙剑插在一个石座上，散发着耀眼的光芒。",
                "choices": [
                    {
                        "text": "拔出屠龙剑",
                        "next": "got_sword",
                        "actions": [
                            {
                                "type": "addItem",
                                "itemId": "dragon_slayer"
                            }
                        ]
                    },
                    {
                        "text": "犹豫",
                        "next": "hesitate_sword"
                    }
                ]
            },
            "hesitate_sword": {
                "text": "你犹豫了一下。屠龙剑似乎感受到了你的犹豫，光芒变得暗淡。",
                "choices": [
                    {
                        "text": "鼓起勇气拔出",
                        "next": "got_sword",
                        "actions": [
                            {
                                "type": "addItem",
                                "itemId": "dragon_slayer"
                            }
                        ]
                    },
                    {
                        "text": "离开",
                        "next": "mountain_path"
                    }
                ]
            },
            "got_sword": {
                "text": "你成功拔出了屠龙剑！剑身上刻着古老的符文，散发着强大的力量。",
                "choices": [
                    {
                        "text": "前往巨龙巢穴",
                        "next": "mountain_path"
                    },
                    {
                        "text": "返回村庄",
                        "next": "village"
                    }
                ]
            },
            "find_egg": {
                "text": "你开始寻找龙蛋。根据书籍的记载，龙蛋通常藏在巢穴的最深处。",
                "choices": [
                    {
                        "text": "前往巢穴",
                        "next": "mountain_path"
                    },
                    {
                        "text": "先准备装备",
                        "next": "prepare"
                    }
                ]
            },
            "mountain_path": {
                "text": "你踏上了通往东山的道路。山路崎岖，两旁是茂密的森林。你听到远处传来一声低沉的龙啸。",
                "choices": [
                    {
                        "text": "继续前进",
                        "next": "dragon_cave"
                    },
                    {
                        "text": "在森林中休息",
                        "next": "rest"
                    },
                    {
                        "text": "侦察前方",
                        "next": "scout"
                    }
                ]
            },
            "rest": {
                "text": "你在森林中休息了一会儿。一只小鹿走过来，似乎在给你指引方向。",
                "choices": [
                    {
                        "text": "跟随小鹿",
                        "next": "dragon_cave"
                    },
                    {
                        "text": "继续休息",
                        "next": "rest_more"
                    }
                ]
            },
            "rest_more": {
                "text": "你继续休息，恢复了体力。",
                "choices": [
                    {
                        "text": "继续前进",
                        "next": "dragon_cave"
                    },
                    {
                        "text": "返回村庄",
                        "next": "village"
                    }
                ]
            },
            "scout": {
                "text": "你小心翼翼地侦察前方。你看到巨龙正在巢穴外休息，它的体型比你想象的还要巨大。",
                "choices": [
                    {
                        "text": "等待时机",
                        "next": "wait_attack"
                    },
                    {
                        "text": "直接冲上去",
                        "next": "dragon_fight"
                    },
                    {
                        "text": "寻找潜入路线",
                        "next": "sneak_in"
                    }
                ]
            },
            "wait_attack": {
                "text": "你等待着最佳时机。巨龙打了一个哈欠，似乎要睡着了。",
                "choices": [
                    {
                        "text": "趁机攻击",
                        "next": "dragon_fight"
                    },
                    {
                        "text": "潜入巢穴",
                        "next": "sneak_in"
                    }
                ]
            },
            "sneak_in": {
                "text": "你找到了一条隐蔽的小路，可以绕过巨龙直接进入巢穴。",
                "choices": [
                    {
                        "text": "潜入巢穴",
                        "next": "nest_interior"
                    },
                    {
                        "text": "改变主意，直接战斗",
                        "next": "dragon_fight"
                    }
                ]
            },
            "dragon_cave": {
                "text": "你来到了巨龙巢穴的入口。洞穴深处传来巨龙的呼吸声，空气中弥漫着硫磺的味道。",
                "choices": [
                    {
                        "text": "进入巢穴",
                        "next": "nest_interior"
                    },
                    {
                        "text": "大声挑战",
                        "next": "dragon_fight"
                    }
                ]
            },
            "nest_interior": {
                "text": "你进入了巢穴内部。巢穴里堆满了金银财宝，在洞穴的最深处，你看到了一颗闪闪发光的龙蛋。",
                "choices": [
                    {
                        "text": "取走龙蛋",
                        "next": "got_egg",
                        "actions": [
                            {
                                "type": "addItem",
                                "itemId": "golden_egg"
                            }
                        ]
                    },
                    {
                        "text": "继续探索",
                        "next": "explore_nest"
                    },
                    {
                        "text": "悄悄离开",
                        "next": "leave_nest"
                    }
                ]
            },
            "explore_nest": {
                "text": "你在巢穴中继续探索，发现了许多珍贵的宝物。但你也听到了巨龙回来的声音。",
                "choices": [
                    {
                        "text": "躲起来",
                        "next": "hide"
                    },
                    {
                        "text": "准备战斗",
                        "next": "dragon_fight"
                    },
                    {
                        "text": "带着宝物逃跑",
                        "next": "escape_with_treasure"
                    }
                ]
            },
            "hide": {
                "text": "你躲在了一堆财宝后面。巨龙走进巢穴，似乎没有发现你。它走到龙蛋旁边，温柔地守护着它。",
                "choices": [
                    {
                        "text": "趁巨龙不注意攻击",
                        "next": "dragon_fight"
                    },
                    {
                        "text": "悄悄离开",
                        "next": "leave_nest"
                    },
                    {
                        "text": "用龙蛋威胁巨龙",
                        "next": "threaten_dragon",
                        "condition": {
                            "hasItem": "golden_egg"
                        }
                    }
                ]
            },
            "got_egg": {
                "text": "你小心翼翼地取走了龙蛋。蛋很温暖，似乎在微微跳动。",
                "choices": [
                    {
                        "text": "用龙蛋威胁巨龙",
                        "next": "threaten_dragon"
                    },
                    {
                        "text": "逃跑",
                        "next": "escape_with_egg"
                    }
                ]
            },
            "threaten_dragon": {
                "text": "你举起龙蛋，威胁巨龙：'如果你不离开这个村庄，我就毁掉你的蛋！'巨龙的眼睛里闪过一丝恐惧，但很快变成了愤怒。",
                "choices": [
                    {
                        "text": "坚持威胁",
                        "next": "dragon_negotiate"
                    },
                    {
                        "text": "放下龙蛋战斗",
                        "next": "dragon_fight"
                    },
                    {
                        "text": "放下龙蛋逃跑",
                        "next": "leave_nest",
                        "actions": [
                            {
                                "type": "removeItem",
                                "itemId": "golden_egg"
                            }
                        ]
                    }
                ]
            },
            "dragon_negotiate": {
                "text": "巨龙最终妥协了。'好吧，'它说，'我离开这里。但有一天，我会回来拿回我的蛋。'巨龙飞走了。",
                "choices": [
                    {
                        "text": "带着龙蛋返回村庄",
                        "next": "ending_negotiate"
                    },
                    {
                        "text": "放走龙蛋",
                        "next": "ending_free_egg",
                        "actions": [
                            {
                                "type": "removeItem",
                                "itemId": "golden_egg"
                            }
                        ]
                    }
                ]
            },
            "leave_nest": {
                "text": "你悄悄离开了巢穴。巨龙似乎没有发现你。",
                "choices": [
                    {
                        "text": "返回村庄",
                        "next": "village"
                    },
                    {
                        "text": "再次进入巢穴",
                        "next": "dragon_cave"
                    }
                ]
            },
            "escape_with_treasure": {
                "text": "你带着一些财宝逃跑了。虽然没有杀死巨龙，但你也收获颇丰。",
                "isEnd": true,
                "endType": "neutral"
            },
            "escape_with_egg": {
                "text": "你带着龙蛋逃跑了。巨龙发现后愤怒地追来，但你已经跑得很远了。",
                "choices": [
                    {
                        "text": "返回村庄",
                        "next": "ending_with_egg"
                    },
                    {
                        "text": "孵化龙蛋",
                        "next": "hatch_egg"
                    }
                ]
            },
            "hatch_egg": {
                "text": "你决定孵化龙蛋。经过一段时间的照顾，一只小龙破壳而出。它第一眼看到了你，把你当成了它的母亲。",
                "choices": [
                    {
                        "text": "抚养小龙",
                        "next": "ending_dragon_friend"
                    },
                    {
                        "text": "将小龙送回",
                        "next": "ending_return_dragon"
                    }
                ]
            },
            "dragon_fight": {
                "text": "巨龙发现了你，愤怒地咆哮着向你扑来！一场激烈的战斗开始了。",
                "choices": [
                    {
                        "text": "用屠龙剑攻击",
                        "next": "attack_with_sword",
                        "condition": {
                            "hasItem": "dragon_slayer"
                        }
                    },
                    {
                        "text": "用烈焰护盾防御",
                        "next": "defend_with_shield",
                        "condition": {
                            "hasItem": "fire_shield"
                        }
                    },
                    {
                        "text": "攻击弱点",
                        "next": "attack_weakness",
                        "condition": {
                            "hasItem": "ancient_scroll"
                        }
                    },
                    {
                        "text": "普通攻击",
                        "next": "normal_attack"
                    }
                ]
            },
            "attack_with_sword": {
                "text": "你举起屠龙剑，向巨龙发动致命一击！剑刃穿透了巨龙的鳞片，巨龙发出一声惨叫。",
                "choices": [
                    {
                        "text": "继续攻击",
                        "next": "dragon_defeat"
                    },
                    {
                        "text": "给巨龙最后一击",
                        "next": "final_blow"
                    }
                ]
            },
            "defend_with_shield": {
                "text": "你举起烈焰护盾，挡住了巨龙的火焰喷射。护盾吸收了火焰的力量，你趁机反击。",
                "choices": [
                    {
                        "text": "趁机攻击",
                        "next": "attack_with_sword",
                        "condition": {
                            "hasItem": "dragon_slayer"
                        }
                    },
                    {
                        "text": "继续防御",
                        "next": "defend_more"
                    }
                ]
            },
            "defend_more": {
                "text": "你继续防御，寻找反击的机会。",
                "choices": [
                    {
                        "text": "寻找弱点",
                        "next": "attack_weakness",
                        "condition": {
                            "hasItem": "ancient_scroll"
                        }
                    },
                    {
                        "text": "全力反击",
                        "next": "normal_attack"
                    }
                ]
            },
            "attack_weakness": {
                "text": "根据古老卷轴的记载，你攻击了巨龙左腋下没有鳞片的地方！巨龙痛苦地挣扎着。",
                "choices": [
                    {
                        "text": "继续攻击弱点",
                        "next": "dragon_defeat"
                    },
                    {
                        "text": "给巨龙最后一击",
                        "next": "final_blow"
                    }
                ]
            },
            "normal_attack": {
                "text": "你用普通武器攻击巨龙，但伤害微乎其微。巨龙愤怒地反击，你受了重伤。",
                "choices": [
                    {
                        "text": "坚持战斗",
                        "next": "dragon_fight"
                    },
                    {
                        "text": "逃跑",
                        "next": "escape_fail"
                    }
                ]
            },
            "escape_fail": {
                "text": "你试图逃跑，但巨龙的速度太快了。它追上了你...",
                "isEnd": true,
                "endType": "death"
            },
            "dragon_defeat": {
                "text": "巨龙终于倒下了。它的身体逐渐消散，化为一道光芒。",
                "choices": [
                    {
                        "text": "收集战利品",
                        "next": "collect_treasure"
                    },
                    {
                        "text": "返回村庄",
                        "next": "victory_return"
                    }
                ]
            },
            "final_blow": {
                "text": "你给了巨龙最后一击。巨龙发出一声哀鸣，倒在了地上。",
                "choices": [
                    {
                        "text": "收集战利品",
                        "next": "collect_treasure"
                    },
                    {
                        "text": "返回村庄",
                        "next": "victory_return"
                    }
                ]
            },
            "collect_treasure": {
                "text": "你在巨龙的巢穴中收集了大量的财宝，包括金币、宝石和珍贵的魔法物品。",
                "choices": [
                    {
                        "text": "返回村庄",
                        "next": "victory_return"
                    },
                    {
                        "text": "继续探索",
                        "next": "explore_more"
                    }
                ]
            },
            "explore_more": {
                "text": "你在巢穴中继续探索，发现了一个隐藏的房间，里面有更多的宝藏。",
                "choices": [
                    {
                        "text": "拿走所有宝藏",
                        "next": "victory_return"
                    },
                    {
                        "text": "只拿一部分",
                        "next": "victory_return"
                    }
                ]
            },
            "victory_return": {
                "text": "你带着巨龙被击败的消息回到了村庄。村民们欢呼雀跃，将你奉为英雄。村长兑现了承诺，给了你丰厚的赏金。",
                "isEnd": true,
                "endType": "victory"
            },
            "ending_negotiate": {
                "text": "你带着龙蛋回到了村庄。巨龙没有再来骚扰，村庄恢复了和平。你成为了村庄的守护者。",
                "isEnd": true,
                "endType": "good"
            },
            "ending_free_egg": {
                "text": "你放走了龙蛋。巨龙感激地看了你一眼，然后带着龙蛋飞走了。从此，巨龙再也没有出现过。",
                "isEnd": true,
                "endType": "true"
            },
            "ending_with_egg": {
                "text": "你带着龙蛋回到了村庄。村民们虽然有些害怕，但还是接受了你的决定。你成为了龙蛋的守护者。",
                "isEnd": true,
                "endType": "good"
            },
            "ending_dragon_friend": {
                "text": "🐉 你抚养了小龙。它长大后成为了你的忠实伙伴。你们一起守护着这片土地，成为了传说中的龙骑士。",
                "isEnd": true,
                "endType": "true"
            },
            "ending_return_dragon": {
                "text": "你将小龙送回了它的母亲身边。巨龙感激涕零，送给你一件珍贵的礼物作为回报。",
                "isEnd": true,
                "endType": "good"
            }
        }
    },
    {
        "id": "time_loop",
        "title": "时空迷宫",
        "description": "在无尽的时间循环中寻找逃脱的方法",
        "version": "1.0",
        "features": {
            "inventory": true
        },
        "items": [
            {
                "id": "time_crystal",
                "name": "时间水晶",
                "icon": "🔮",
                "description": "能操控时间的神秘水晶"
            },
            {
                "id": "loop_key",
                "name": "循环之钥",
                "icon": "🔑",
                "description": "打破时间循环的钥匙"
            },
            {
                "id": "memory_orb",
                "name": "记忆宝珠",
                "icon": "💫",
                "description": "保存记忆的魔法宝珠"
            },
            {
                "id": "future_scroll",
                "name": "未来卷轴",
                "icon": "📜",
                "description": "预见未来的神秘卷轴"
            }
        ],
        "start": "wake_up",
        "nodes": {
            "wake_up": {
                "text": "你醒来了。阳光透过窗户洒进来，一切看起来都很正常。但你有一种奇怪的感觉——这一天似乎已经发生过了。",
                "choices": [
                    {
                        "text": "起床探索",
                        "next": "morning"
                    },
                    {
                        "text": "继续睡觉",
                        "next": "sleep_again"
                    },
                    {
                        "text": "检查日期",
                        "next": "check_date"
                    }
                ]
            },
            "sleep_again": {
                "text": "你决定继续睡觉。但当你再次醒来时，发现还是同一天。",
                "choices": [
                    {
                        "text": "接受现实",
                        "next": "morning"
                    },
                    {
                        "text": "尝试再次入睡",
                        "next": "sleep_again"
                    }
                ]
            },
            "check_date": {
                "text": "你查看日历，日期显示的是'永恒之日'。你意识到自己陷入了一个时间循环。",
                "choices": [
                    {
                        "text": "寻找打破循环的方法",
                        "next": "search_loop"
                    },
                    {
                        "text": "接受循环",
                        "next": "accept_loop"
                    }
                ]
            },
            "morning": {
                "text": "你起床后，按照平时的习惯开始一天。但你注意到一些细节与记忆中的不同——桌子上多了一本书。",
                "choices": [
                    {
                        "text": "阅读那本书",
                        "next": "read_book"
                    },
                    {
                        "text": "忽略它",
                        "next": "normal_day"
                    },
                    {
                        "text": "检查书的来源",
                        "next": "check_book"
                    }
                ]
            },
            "read_book": {
                "text": "你翻开那本书。书名是《时间循环指南》。书中写道：'如果你正在阅读这本书，说明你已经意识到了时间循环。要打破循环，你需要找到循环之钥。'",
                "choices": [
                    {
                        "text": "寻找循环之钥",
                        "next": "search_key"
                    },
                    {
                        "text": "继续阅读",
                        "next": "read_more"
                    },
                    {
                        "text": "忽略这本书",
                        "next": "normal_day"
                    }
                ]
            },
            "read_more": {
                "text": "书中继续写道：'循环之钥藏在时空迷宫的最深处。迷宫中有三个试炼：过去、现在和未来。只有通过所有试炼，才能找到钥匙。'",
                "choices": [
                    {
                        "text": "前往时空迷宫",
                        "next": "maze_entrance"
                    },
                    {
                        "text": "先收集装备",
                        "next": "collect_items"
                    },
                    {
                        "text": "继续阅读",
                        "next": "read_secrets"
                    }
                ]
            },
            "read_secrets": {
                "text": "书中还记载着一些关于时间循环的秘密：'每次循环都会带来微小的变化。如果你能记住这些变化，就能找到规律。'",
                "choices": [
                    {
                        "text": "记住这个提示",
                        "next": "maze_entrance",
                        "actions": [
                            {
                                "type": "addItem",
                                "itemId": "memory_orb"
                            }
                        ]
                    },
                    {
                        "text": "前往迷宫",
                        "next": "maze_entrance"
                    }
                ]
            },
            "check_book": {
                "text": "你检查那本书的来源。书的最后一页写着：'这是给你的提示。去找时间水晶，它能帮助你。'",
                "choices": [
                    {
                        "text": "寻找时间水晶",
                        "next": "find_crystal"
                    },
                    {
                        "text": "前往迷宫",
                        "next": "maze_entrance"
                    }
                ]
            },
            "normal_day": {
                "text": "你决定忽略异常，按平常的方式度过一天。但到了晚上，当你入睡后，第二天醒来，发现又是同一天。",
                "choices": [
                    {
                        "text": "接受循环",
                        "next": "accept_loop"
                    },
                    {
                        "text": "寻找打破循环的方法",
                        "next": "search_loop"
                    }
                ]
            },
            "search_loop": {
                "text": "你开始寻找打破时间循环的方法。你记得书中提到过循环之钥，但你不知道它在哪里。",
                "choices": [
                    {
                        "text": "寻找那本书",
                        "next": "find_book"
                    },
                    {
                        "text": "询问他人",
                        "next": "ask_people"
                    },
                    {
                        "text": "探索周围",
                        "next": "explore_area"
                    }
                ]
            },
            "accept_loop": {
                "text": "你决定接受时间循环。既然每天都是一样的，你可以做任何想做的事情，不用担心后果。",
                "choices": [
                    {
                        "text": "尽情享受",
                        "next": "enjoy_loop"
                    },
                    {
                        "text": "学习新技能",
                        "next": "learn_skills"
                    },
                    {
                        "text": "改变主意，寻找出路",
                        "next": "search_loop"
                    }
                ]
            },
            "find_book": {
                "text": "你寻找那本书，但它已经消失了。取而代之的是一张纸条，上面写着：'去时空迷宫，那里有你想要的答案。'",
                "choices": [
                    {
                        "text": "前往时空迷宫",
                        "next": "maze_entrance"
                    },
                    {
                        "text": "寻找更多线索",
                        "next": "explore_area"
                    }
                ]
            },
            "ask_people": {
                "text": "你询问周围的人是否注意到时间循环，但他们似乎都没有察觉。只有一位神秘的老人说：'我注意到了。但要打破循环，你需要自己去寻找答案。'",
                "choices": [
                    {
                        "text": "询问老人更多",
                        "next": "ask_old_man"
                    },
                    {
                        "text": "前往迷宫",
                        "next": "maze_entrance"
                    }
                ]
            },
            "ask_old_man": {
                "text": "老人递给你一颗发光的水晶。'这是时间水晶，'他说，'它能帮助你在迷宫中找到方向。但要小心，迷宫中的时间是混乱的。'",
                "choices": [
                    {
                        "text": "收下水晶",
                        "next": "got_crystal",
                        "actions": [
                            {
                                "type": "addItem",
                                "itemId": "time_crystal"
                            }
                        ]
                    },
                    {
                        "text": "婉言谢绝",
                        "next": "maze_entrance"
                    }
                ]
            },
            "explore_area": {
                "text": "你在周围探索，发现了一个隐藏的入口。入口处刻着古老的符文，似乎通往另一个世界。",
                "choices": [
                    {
                        "text": "进入入口",
                        "next": "maze_entrance"
                    },
                    {
                        "text": "继续探索",
                        "next": "explore_more"
                    }
                ]
            },
            "explore_more": {
                "text": "你继续探索，发现了更多关于时间循环的线索。最终，你找到了时空迷宫的入口。",
                "choices": [
                    {
                        "text": "进入迷宫",
                        "next": "maze_entrance"
                    },
                    {
                        "text": "返回准备",
                        "next": "collect_items"
                    }
                ]
            },
            "enjoy_loop": {
                "text": "你尽情享受时间循环带来的自由。你尝试了各种以前不敢做的事情，度过了无数个相同但又不同的日子。",
                "choices": [
                    {
                        "text": "继续享受",
                        "next": "enjoy_loop"
                    },
                    {
                        "text": "厌倦了，寻找出路",
                        "next": "search_loop"
                    }
                ]
            },
            "learn_skills": {
                "text": "你利用时间循环学习各种技能。由于每天都可以从头开始，你掌握了许多以前想学但没有时间学的东西。",
                "choices": [
                    {
                        "text": "继续学习",
                        "next": "learn_skills"
                    },
                    {
                        "text": "用学到的技能寻找出路",
                        "next": "search_loop"
                    }
                ]
            },
            "collect_items": {
                "text": "你开始收集可能有用的物品。你找到了记忆宝珠和未来卷轴。",
                "choices": [
                    {
                        "text": "前往迷宫",
                        "next": "maze_entrance",
                        "actions": [
                            {
                                "type": "addItem",
                                "itemId": "memory_orb"
                            },
                            {
                                "type": "addItem",
                                "itemId": "future_scroll"
                            }
                        ]
                    },
                    {
                        "text": "继续收集",
                        "next": "collect_more"
                    }
                ]
            },
            "collect_more": {
                "text": "你继续收集，最终找到了时间水晶。",
                "choices": [
                    {
                        "text": "前往迷宫",
                        "next": "maze_entrance",
                        "actions": [
                            {
                                "type": "addItem",
                                "itemId": "time_crystal"
                            }
                        ]
                    },
                    {
                        "text": "检查物品",
                        "next": "check_items"
                    }
                ]
            },
            "check_items": {
                "text": "你检查收集到的物品。记忆宝珠可以保存你的记忆，时间水晶可以操控时间，未来卷轴可以预见未来。",
                "choices": [
                    {
                        "text": "前往迷宫",
                        "next": "maze_entrance"
                    },
                    {
                        "text": "研究物品",
                        "next": "study_items"
                    }
                ]
            },
            "study_items": {
                "text": "你研究这些物品的用法。时间水晶可以让你暂停时间，记忆宝珠可以让你在循环中保留记忆，未来卷轴可以让你看到不同的未来。",
                "choices": [
                    {
                        "text": "前往迷宫",
                        "next": "maze_entrance"
                    },
                    {
                        "text": "测试物品",
                        "next": "test_items"
                    }
                ]
            },
            "test_items": {
                "text": "你测试了这些物品的效果。时间水晶确实能暂停时间，记忆宝珠能保留记忆，未来卷轴能预见未来。",
                "choices": [
                    {
                        "text": "前往迷宫",
                        "next": "maze_entrance"
                    },
                    {
                        "text": "准备更充分",
                        "next": "maze_entrance"
                    }
                ]
            },
            "find_crystal": {
                "text": "你开始寻找时间水晶。经过一番搜索，你在一个古老的祭坛上找到了它。",
                "choices": [
                    {
                        "text": "拿走水晶",
                        "next": "got_crystal",
                        "actions": [
                            {
                                "type": "addItem",
                                "itemId": "time_crystal"
                            }
                        ]
                    },
                    {
                        "text": "谨慎检查",
                        "next": "check_crystal"
                    }
                ]
            },
            "check_crystal": {
                "text": "你仔细检查时间水晶。它散发着柔和的光芒，似乎在等待有缘人。",
                "choices": [
                    {
                        "text": "拿走水晶",
                        "next": "got_crystal",
                        "actions": [
                            {
                                "type": "addItem",
                                "itemId": "time_crystal"
                            }
                        ]
                    },
                    {
                        "text": "离开",
                        "next": "maze_entrance"
                    }
                ]
            },
            "got_crystal": {
                "text": "你拿到了时间水晶。水晶温暖而充满力量。",
                "choices": [
                    {
                        "text": "前往时空迷宫",
                        "next": "maze_entrance"
                    },
                    {
                        "text": "返回准备",
                        "next": "collect_items"
                    }
                ]
            },
            "search_key": {
                "text": "你开始寻找循环之钥。根据书中的指引，你来到了时空迷宫的入口。",
                "choices": [
                    {
                        "text": "进入迷宫",
                        "next": "maze_entrance"
                    },
                    {
                        "text": "准备装备",
                        "next": "collect_items"
                    }
                ]
            },
            "maze_entrance": {
                "text": "你来到了时空迷宫的入口。迷宫由无数闪烁的光线组成，看起来既美丽又危险。入口处有三个拱门，分别通往过去、现在和未来。",
                "choices": [
                    {
                        "text": "进入过去之门",
                        "next": "past_trial"
                    },
                    {
                        "text": "进入现在之门",
                        "next": "present_trial"
                    },
                    {
                        "text": "进入未来之门",
                        "next": "future_trial"
                    },
                    {
                        "text": "使用时间水晶",
                        "next": "use_crystal",
                        "condition": {
                            "hasItem": "time_crystal"
                        }
                    }
                ]
            },
            "use_crystal": {
                "text": "你使用时间水晶，看到了迷宫的全貌。你发现三个试炼可以按任意顺序完成，但每个试炼都有不同的挑战。",
                "choices": [
                    {
                        "text": "先去过去",
                        "next": "past_trial"
                    },
                    {
                        "text": "先去现在",
                        "next": "present_trial"
                    },
                    {
                        "text": "先去未来",
                        "next": "future_trial"
                    }
                ]
            },
            "past_trial": {
                "text": "你进入了过去之门。眼前的景象变成了你的童年。你看到了小时候的自己，正在做一个重要的决定。",
                "choices": [
                    {
                        "text": "改变过去",
                        "next": "change_past"
                    },
                    {
                        "text": "观察而不干预",
                        "next": "observe_past"
                    },
                    {
                        "text": "返回",
                        "next": "maze_entrance"
                    }
                ]
            },
            "change_past": {
                "text": "你试图改变过去。但当你做出改变时，你感到一阵眩晕，发现自己回到了迷宫入口。时间水晶发出警告：'改变过去可能会导致时间线崩溃。'",
                "choices": [
                    {
                        "text": "重新尝试",
                        "next": "past_trial"
                    },
                    {
                        "text": "观察而不干预",
                        "next": "observe_past"
                    },
                    {
                        "text": "前往其他试炼",
                        "next": "present_trial"
                    }
                ]
            },
            "observe_past": {
                "text": "你选择观察而不干预。你看到了过去的自己做出的决定，理解了当时的心情和动机。这个试炼教会了你接纳过去。",
                "choices": [
                    {
                        "text": "完成试炼",
                        "next": "past_completed"
                    },
                    {
                        "text": "继续观察",
                        "next": "observe_more"
                    }
                ]
            },
            "observe_more": {
                "text": "你继续观察过去的记忆，逐渐理解了自己的成长历程。",
                "choices": [
                    {
                        "text": "完成试炼",
                        "next": "past_completed"
                    },
                    {
                        "text": "返回",
                        "next": "maze_entrance"
                    }
                ]
            },
            "past_completed": {
                "text": "过去试炼完成！你获得了一颗记忆宝珠作为奖励。",
                "choices": [
                    {
                        "text": "前往现在试炼",
                        "next": "present_trial",
                        "actions": [
                            {
                                "type": "addItem",
                                "itemId": "memory_orb"
                            }
                        ]
                    },
                    {
                        "text": "前往未来试炼",
                        "next": "future_trial",
                        "actions": [
                            {
                                "type": "addItem",
                                "itemId": "memory_orb"
                            }
                        ]
                    },
                    {
                        "text": "返回入口",
                        "next": "maze_entrance",
                        "actions": [
                            {
                                "type": "addItem",
                                "itemId": "memory_orb"
                            }
                        ]
                    }
                ]
            },
            "present_trial": {
                "text": "你进入了现在之门。眼前是一面巨大的镜子，镜子中映照出的是现在的你。镜子旁边有一个问题：'你是谁？'",
                "choices": [
                    {
                        "text": "回答真实的自己",
                        "next": "answer_true"
                    },
                    {
                        "text": "回答理想的自己",
                        "next": "answer_ideal"
                    },
                    {
                        "text": "回答别人眼中的自己",
                        "next": "answer_others"
                    },
                    {
                        "text": "使用记忆宝珠",
                        "next": "use_orb",
                        "condition": {
                            "hasItem": "memory_orb"
                        }
                    }
                ]
            },
            "answer_true": {
                "text": "你诚实地回答了关于自己的问题。镜子中的你微笑着点头，一道光芒融入你的身体。这个试炼教会了你接纳现在的自己。",
                "choices": [
                    {
                        "text": "完成试炼",
                        "next": "present_completed"
                    },
                    {
                        "text": "继续思考",
                        "next": "think_more"
                    }
                ]
            },
            "answer_ideal": {
                "text": "你描述了理想中的自己。镜子中的你摇了摇头：'那不是真正的你。'",
                "choices": [
                    {
                        "text": "重新回答",
                        "next": "present_trial"
                    },
                    {
                        "text": "回答真实的自己",
                        "next": "answer_true"
                    }
                ]
            },
            "answer_others": {
                "text": "你描述了别人眼中的自己。镜子中的你皱了皱眉：'那是别人的看法，不是你的真实。'",
                "choices": [
                    {
                        "text": "重新回答",
                        "next": "present_trial"
                    },
                    {
                        "text": "回答真实的自己",
                        "next": "answer_true"
                    }
                ]
            },
            "use_orb": {
                "text": "你使用记忆宝珠，回顾了自己的一生。你明白了自己是谁，以及想要成为什么样的人。",
                "choices": [
                    {
                        "text": "回答真实的自己",
                        "next": "answer_true"
                    },
                    {
                        "text": "完成试炼",
                        "next": "present_completed"
                    }
                ]
            },
            "think_more": {
                "text": "你继续思考关于自己的问题，逐渐找到了答案。",
                "choices": [
                    {
                        "text": "完成试炼",
                        "next": "present_completed"
                    },
                    {
                        "text": "返回",
                        "next": "maze_entrance"
                    }
                ]
            },
            "present_completed": {
                "text": "现在试炼完成！你获得了时间水晶作为奖励。",
                "choices": [
                    {
                        "text": "前往过去试炼",
                        "next": "past_trial",
                        "actions": [
                            {
                                "type": "addItem",
                                "itemId": "time_crystal"
                            }
                        ]
                    },
                    {
                        "text": "前往未来试炼",
                        "next": "future_trial",
                        "actions": [
                            {
                                "type": "addItem",
                                "itemId": "time_crystal"
                            }
                        ]
                    },
                    {
                        "text": "返回入口",
                        "next": "maze_entrance",
                        "actions": [
                            {
                                "type": "addItem",
                                "itemId": "time_crystal"
                            }
                        ]
                    }
                ]
            },
            "future_trial": {
                "text": "你进入了未来之门。眼前出现了三条不同的道路，分别通向不同的未来。",
                "choices": [
                    {
                        "text": "选择第一条路",
                        "next": "future_path1"
                    },
                    {
                        "text": "选择第二条路",
                        "next": "future_path2"
                    },
                    {
                        "text": "选择第三条路",
                        "next": "future_path3"
                    },
                    {
                        "text": "使用未来卷轴",
                        "next": "use_scroll",
                        "condition": {
                            "hasItem": "future_scroll"
                        }
                    }
                ]
            },
            "use_scroll": {
                "text": "你使用未来卷轴，看到了三条道路的结果。第一条路通向成功但孤独的未来，第二条路通向平凡但幸福的未来，第三条路通向冒险但危险的未来。",
                "choices": [
                    {
                        "text": "选择第一条路",
                        "next": "future_path1"
                    },
                    {
                        "text": "选择第二条路",
                        "next": "future_path2"
                    },
                    {
                        "text": "选择第三条路",
                        "next": "future_path3"
                    }
                ]
            },
            "future_path1": {
                "text": "你选择了第一条路。你看到了一个成功但孤独的未来——你拥有了一切，却失去了最重要的东西。",
                "choices": [
                    {
                        "text": "接受这个未来",
                        "next": "future_accept1"
                    },
                    {
                        "text": "尝试改变",
                        "next": "future_change"
                    },
                    {
                        "text": "返回选择其他道路",
                        "next": "future_trial"
                    }
                ]
            },
            "future_accept1": {
                "text": "你接受了这个未来。试炼教会了你成功并不等于幸福。",
                "choices": [
                    {
                        "text": "完成试炼",
                        "next": "future_completed"
                    }
                ]
            },
            "future_path2": {
                "text": "你选择了第二条路。你看到了一个平凡但幸福的未来——你没有大富大贵，但拥有温暖的家庭和真挚的友谊。",
                "choices": [
                    {
                        "text": "接受这个未来",
                        "next": "future_accept2"
                    },
                    {
                        "text": "尝试改变",
                        "next": "future_change"
                    },
                    {
                        "text": "返回选择其他道路",
                        "next": "future_trial"
                    }
                ]
            },
            "future_accept2": {
                "text": "你接受了这个未来。试炼教会了你幸福比成功更重要。",
                "choices": [
                    {
                        "text": "完成试炼",
                        "next": "future_completed"
                    }
                ]
            },
            "future_path3": {
                "text": "你选择了第三条路。你看到了一个充满冒险但危险的未来——你经历了无数挑战，虽然险象环生，但也收获了成长和智慧。",
                "choices": [
                    {
                        "text": "接受这个未来",
                        "next": "future_accept3"
                    },
                    {
                        "text": "尝试改变",
                        "next": "future_change"
                    },
                    {
                        "text": "返回选择其他道路",
                        "next": "future_trial"
                    }
                ]
            },
            "future_accept3": {
                "text": "你接受了这个未来。试炼教会了你成长需要勇气和冒险。",
                "choices": [
                    {
                        "text": "完成试炼",
                        "next": "future_completed"
                    }
                ]
            },
            "future_change": {
                "text": "你试图改变未来，但未来是不确定的。你意识到，真正的未来是由现在的选择决定的。",
                "choices": [
                    {
                        "text": "完成试炼",
                        "next": "future_completed"
                    },
                    {
                        "text": "返回选择",
                        "next": "future_trial"
                    }
                ]
            },
            "future_completed": {
                "text": "未来试炼完成！你获得了循环之钥作为奖励。",
                "choices": [
                    {
                        "text": "前往迷宫深处",
                        "next": "maze_core",
                        "actions": [
                            {
                                "type": "addItem",
                                "itemId": "loop_key"
                            }
                        ]
                    },
                    {
                        "text": "返回入口",
                        "next": "maze_entrance",
                        "actions": [
                            {
                                "type": "addItem",
                                "itemId": "loop_key"
                            }
                        ]
                    }
                ]
            },
            "maze_core": {
                "text": "你来到了迷宫的最深处。这里有一个巨大的装置，上面有三个插槽，分别对应过去、现在和未来。装置旁边放着循环之钥。",
                "choices": [
                    {
                        "text": "插入循环之钥",
                        "next": "insert_key",
                        "condition": {
                            "hasItem": "loop_key"
                        }
                    },
                    {
                        "text": "检查装置",
                        "next": "check_device"
                    },
                    {
                        "text": "使用时间水晶",
                        "next": "use_crystal_final",
                        "condition": {
                            "hasItem": "time_crystal"
                        }
                    }
                ]
            },
            "check_device": {
                "text": "你仔细检查装置。它似乎是一个时间控制器，需要循环之钥才能激活。",
                "choices": [
                    {
                        "text": "寻找循环之钥",
                        "next": "maze_entrance"
                    },
                    {
                        "text": "尝试其他方法",
                        "next": "try_other"
                    }
                ]
            },
            "use_crystal_final": {
                "text": "你使用时间水晶，看到了时间循环的真相。这个循环是由一个强大的魔法创造的，目的是让被困的人学会接纳自己。",
                "choices": [
                    {
                        "text": "插入循环之钥",
                        "next": "insert_key",
                        "condition": {
                            "hasItem": "loop_key"
                        }
                    },
                    {
                        "text": "理解真相",
                        "next": "understand_truth"
                    }
                ]
            },
            "try_other": {
                "text": "你尝试用其他物品激活装置，但都没有效果。",
                "choices": [
                    {
                        "text": "寻找循环之钥",
                        "next": "maze_entrance"
                    },
                    {
                        "text": "返回",
                        "next": "maze_entrance"
                    }
                ]
            },
            "understand_truth": {
                "text": "你理解了时间循环的真相。这个循环不是惩罚，而是一个学习和成长的机会。",
                "choices": [
                    {
                        "text": "插入循环之钥",
                        "next": "insert_key",
                        "condition": {
                            "hasItem": "loop_key"
                        }
                    },
                    {
                        "text": "感谢循环",
                        "next": "thank_loop"
                    }
                ]
            },
            "thank_loop": {
                "text": "你感谢时间循环给了你成长的机会。你的真诚感动了时间本身，循环之钥自动出现在你面前。",
                "choices": [
                    {
                        "text": "插入循环之钥",
                        "next": "insert_key",
                        "actions": [
                            {
                                "type": "addItem",
                                "itemId": "loop_key"
                            }
                        ]
                    }
                ]
            },
            "insert_key": {
                "text": "你插入了循环之钥。装置开始运转，时间的束缚逐渐消散。你感到一阵轻松，终于摆脱了时间循环。",
                "choices": [
                    {
                        "text": "迎接新的一天",
                        "next": "true_ending"
                    },
                    {
                        "text": "回顾经历",
                        "next": "ending_reflect"
                    }
                ]
            },
            "ending_reflect": {
                "text": "你回顾了在时间循环中的经历。虽然每一天都是重复的，但你学到了很多东西——接纳过去、活在当下、拥抱未来。",
                "choices": [
                    {
                        "text": "迎接新的一天",
                        "next": "true_ending"
                    }
                ]
            },
            "true_ending": {
                "text": "⏳ 你终于打破了时间循环！当你再次醒来时，日期终于改变了。窗外是全新的一天，阳光明媚，充满希望。你不再是被困在循环中的人，而是一个真正自由的人。从今天开始，每一天都是新的开始。",
                "isEnd": true,
                "endType": "true"
            }
        }
    },
    {
        "title": "校园惊魂·序章",
        "subtitle": "晚自习后",
        "description": "夜幕降临，学校里只剩下你一个人...",
        "author": "Radiation Studio",
        "version": "1.0",
        "features": {
            "inventory": true,
            "map": true
        },
        "items": [
            {
                "id": "phone",
                "name": "手机",
                "icon": "📱",
                "description": "你的智能手机"
            }
        ],
        "map": {
            "title": "教学楼",
            "locations": [
                {
                    "id": "classroom",
                    "name": "高三(2)班教室",
                    "description": "你刚才还在自习的地方"
                },
                {
                    "id": "hallway",
                    "name": "走廊",
                    "description": "昏暗的走廊，墙上的灯忽明忽暗"
                },
                {
                    "id": "staircase",
                    "name": "楼梯间",
                    "description": "通往楼下的楼梯"
                },
                {
                    "id": "restroom",
                    "name": "卫生间",
                    "description": "走廊尽头的卫生间"
                },
                {
                    "id": "entrance",
                    "name": "教学楼入口",
                    "description": "通往校门的出口"
                }
            ],
            "startingLocation": "classroom"
        },
        "nodes": {
            "start": {
                "id": "start",
                "location": "classroom",
                "text": "晚自习结束的铃声已经响过半小时了。\n\n教室里只剩下你一个人，窗外漆黑一片，只有走廊里的应急灯发出微弱的绿色光芒。\n\n你收拾好书包，准备离开。",
                "choices": [
                    {
                        "text": "直接离开教室",
                        "next": "hallway_enter"
                    },
                    {
                        "text": "检查一下书包",
                        "next": "check_bag"
                    },
                    {
                        "text": "先去趟卫生间",
                        "next": "to_restroom"
                    }
                ]
            },
            "check_bag": {
                "id": "check_bag",
                "location": "classroom",
                "text": "你检查了一下书包，确认课本和作业都已经收好。\n\n突然，你摸到一个不属于自己的东西——一张旧照片。\n\n照片上是一个穿着校服的女孩，背景似乎是这栋教学楼。照片背面写着一行字：\"帮帮我\"",
                "choices": [
                    {
                        "text": "把照片塞进书包，赶紧离开",
                        "next": "hallway_enter",
                        "actions": [
                            {
                                "type": "addItem",
                                "itemId": "photo"
                            }
                        ]
                    },
                    {
                        "text": "把照片扔掉",
                        "next": "hallway_enter"
                    }
                ]
            },
            "to_restroom": {
                "id": "to_restroom",
                "location": "restroom",
                "text": "你走进卫生间，里面弥漫着一股淡淡的消毒水味。\n\n隔间的门都开着，只有最里面那间是关着的。\n\n你听见里面传来隐约的滴水声...还有一个女孩的啜泣声。",
                "choices": [
                    {
                        "text": "敲门问问里面是谁",
                        "next": "restroom_knock"
                    },
                    {
                        "text": "不管了，上完厕所赶紧走",
                        "next": "hallway_enter"
                    },
                    {
                        "text": "转身离开卫生间",
                        "next": "hallway_enter"
                    }
                ]
            },
            "restroom_knock": {
                "id": "restroom_knock",
                "location": "restroom",
                "text": "你敲了敲门。\n\n\"谁...\"里面传来一个虚弱的声音。\n\n\"我是学生，你还好吗？\"你问道。\n\n沉默了几秒，然后门\"咔哒\"一声开了...\n\n里面空无一人。",
                "choices": [
                    {
                        "text": "走进隔间查看",
                        "next": "restroom_check"
                    },
                    {
                        "text": "立即离开卫生间",
                        "next": "hallway_enter"
                    }
                ]
            },
            "restroom_check": {
                "id": "restroom_check",
                "location": "restroom",
                "text": "你走进隔间，看到墙上用红色的颜料写满了字：\n\n\"她来了\"\n\"别让她找到你\"\n\"快逃...\"\n\n你感到一阵寒意，转身想走，却发现卫生间的门已经关上了。",
                "choices": [
                    {
                        "text": "用力撞门",
                        "next": "restroom_escape"
                    },
                    {
                        "text": "大喊求救",
                        "next": "restroom_scream"
                    }
                ]
            },
            "restroom_escape": {
                "id": "restroom_escape",
                "location": "restroom",
                "text": "你用力撞门，门纹丝不动。\n\n身后传来一阵冰冷的气息，你慢慢转过头...\n\n一张苍白的脸正贴着你的脸。\n\n\"你看到了不该看的东西...\"",
                "isEnd": true,
                "endType": "death",
                "endMessage": "好奇心害死猫...",
                "choices": []
            },
            "restroom_scream": {
                "id": "restroom_scream",
                "location": "restroom",
                "text": "你大喊着用力撞门，门终于被撞开了。\n\n你头也不回地冲出卫生间，跑到了走廊上。\n\n身后的啜泣声消失了。",
                "choices": [
                    {
                        "text": "继续向前走",
                        "next": "hallway_enter"
                    }
                ]
            },
            "hallway_enter": {
                "id": "hallway_enter",
                "location": "hallway",
                "text": "走廊里一片寂静，应急灯的绿光让人感到不安。\n\n你注意到地上有一串湿漉漉的脚印，从卫生间方向一直延伸到楼梯口。\n\n楼梯间传来一阵沉重的脚步声，正在往上走...",
                "choices": [
                    {
                        "text": "往楼梯间方向走",
                        "next": "staircase_go"
                    },
                    {
                        "text": "往教学楼入口方向走",
                        "next": "entrance_go"
                    },
                    {
                        "text": "躲进旁边的教室",
                        "next": "hide_classroom"
                    }
                ]
            },
            "hide_classroom": {
                "id": "hide_classroom",
                "location": "classroom",
                "text": "你躲进一间空教室，屏住呼吸。\n\n脚步声从走廊经过，越来越近...\n\n突然，教室的门被推开了。\n\n你躲在讲台后面，不敢出声。\n\n一个穿着校服的女孩走了进来，她背对着你，似乎在寻找什么。\n\n你认出了她——正是照片上的那个女孩！",
                "choices": [
                    {
                        "text": "出声叫她",
                        "next": "girl_talk"
                    },
                    {
                        "text": "趁她不注意偷偷溜走",
                        "next": "sneak_away",
                        "condition": {
                            "hasItem": "photo"
                        }
                    },
                    {
                        "text": "继续躲着",
                        "next": "hide_wait"
                    }
                ]
            },
            "girl_talk": {
                "id": "girl_talk",
                "location": "classroom",
                "text": "\"等等！\"你喊道。\n\n女孩转过身来，你看到了她的脸——苍白、空洞的眼睛，嘴角带着诡异的微笑。\n\n\"你能看到我？\"她问道。\n\n还没等你回答，她突然消失了，只留下一阵阴冷的笑声。",
                "choices": [
                    {
                        "text": "赶紧离开教室",
                        "next": "hallway_enter"
                    }
                ]
            },
            "sneak_away": {
                "id": "sneak_away",
                "location": "hallway",
                "text": "你趁她不注意，悄悄溜出教室，来到走廊上。\n\n手里的照片突然变得冰冷，你看了一眼——照片上的女孩正在对你微笑。\n\n\"谢谢你...\"一个声音在你耳边响起。\n\n你感到一阵温暖，恐惧感消退了一些。",
                "actions": [
                    {
                        "type": "removeItem",
                        "itemId": "photo"
                    },
                    {
                        "type": "addItem",
                        "itemId": "photo_blessing"
                    }
                ],
                "choices": [
                    {
                        "text": "继续往出口走",
                        "next": "entrance_go"
                    }
                ]
            },
            "hide_wait": {
                "id": "hide_wait",
                "location": "classroom",
                "text": "你一直躲着，直到脚步声消失。\n\n过了很久，你才敢出来。\n\n走廊里空无一人，只有那些湿漉漉的脚印还在。",
                "choices": [
                    {
                        "text": "继续往出口走",
                        "next": "entrance_go"
                    }
                ]
            },
            "staircase_go": {
                "id": "staircase_go",
                "location": "staircase",
                "text": "你来到楼梯间，脚步声已经停了。\n\n楼梯下方一片漆黑，你看不清下面有什么。\n\n突然，你的手机响了——是一条短信，来自一个陌生号码：\n\n\"别下去，她在等你...\"",
                "choices": [
                    {
                        "text": "回复短信问问是谁",
                        "next": "reply_sms"
                    },
                    {
                        "text": "不管短信，继续下楼",
                        "next": "go_downstairs"
                    },
                    {
                        "text": "回到走廊",
                        "next": "hallway_enter"
                    }
                ]
            },
            "reply_sms": {
                "id": "reply_sms",
                "location": "staircase",
                "text": "你回复：\"你是谁？\"\n\n几秒钟后，对方回复：\n\n\"我是三年前在这里死去的学生。她还在这里，别让她抓到你...\"\n\n你感到一阵寒意，但回复让你有了更多信息。",
                "choices": [
                    {
                        "text": "回到走廊，找另一条路",
                        "next": "hallway_enter"
                    },
                    {
                        "text": "鼓起勇气下楼",
                        "next": "go_downstairs"
                    }
                ]
            },
            "go_downstairs": {
                "id": "go_downstairs",
                "location": "staircase",
                "text": "你深吸一口气，开始下楼。\n\n每一步都发出刺耳的回响，在空旷的楼梯间里回荡。\n\n突然，你踩到了什么东西——一个湿漉漉的、软软的东西。\n\n你低头一看，是一撮黑色的长发...\n\n然后，一只冰冷的手抓住了你的脚踝。",
                "isEnd": true,
                "endType": "death",
                "endMessage": "你没能逃脱她的魔爪...",
                "choices": []
            },
            "entrance_go": {
                "id": "entrance_go",
                "location": "entrance",
                "text": "你来到教学楼入口，大门已经锁上了。\n\n旁边的保安室里亮着灯，你走过去敲门。\n\n没有人回应，但你透过窗户看到里面有人影在晃动。\n\n你试着推了推门，门开了一条缝。",
                "choices": [
                    {
                        "text": "推门进去看看",
                        "next": "security_room"
                    },
                    {
                        "text": "用力摇晃大门",
                        "next": "shake_door"
                    },
                    {
                        "text": "回到走廊找其他出口",
                        "next": "hallway_enter"
                    }
                ]
            },
            "security_room": {
                "id": "security_room",
                "location": "entrance",
                "text": "你推门走进保安室，里面一片凌乱。\n\n桌子上的茶杯倒在地上，椅子翻倒着，墙上的日历停留在三年前的日期。\n\n角落里，一个保安蜷缩在地上，浑身发抖。\n\n\"她...她又来了...\"他喃喃道。",
                "choices": [
                    {
                        "text": "安抚保安，询问情况",
                        "next": "ask_security"
                    },
                    {
                        "text": "寻找大门钥匙",
                        "next": "find_key"
                    },
                    {
                        "text": "赶紧离开这里",
                        "next": "shake_door"
                    }
                ]
            },
            "ask_security": {
                "id": "ask_security",
                "location": "entrance",
                "text": "\"发生了什么？\"你问道。\n\n保安抬起头，眼神惊恐：\"三年前，一个女学生在这栋楼里自杀了。从那以后，每到这个时候，她就会出现...\"\n\n\"大门钥匙在哪里？\"你问。\n\n\"在抽屉里...但你要小心，她就在附近...\"",
                "choices": [
                    {
                        "text": "打开抽屉拿钥匙",
                        "next": "get_key"
                    }
                ]
            },
            "find_key": {
                "id": "find_key",
                "location": "entrance",
                "text": "你在抽屉里翻找，找到了一串钥匙。\n\n突然，保安室的灯灭了。\n\n黑暗中，你感到一只手从背后伸了过来...",
                "choices": [
                    {
                        "text": "转过身去",
                        "next": "face_ghost"
                    },
                    {
                        "text": "拿着钥匙冲出保安室",
                        "next": "rush_out"
                    }
                ]
            },
            "get_key": {
                "id": "get_key",
                "location": "entrance",
                "text": "你打开抽屉，找到了大门钥匙。\n\n就在这时，保安室的门\"砰\"地一声关上了。\n\n你握紧钥匙，冲向大门。",
                "actions": [
                    {
                        "type": "addItem",
                        "itemId": "door_key"
                    }
                ],
                "choices": [
                    {
                        "text": "用钥匙打开大门",
                        "next": "open_door"
                    }
                ]
            },
            "face_ghost": {
                "id": "face_ghost",
                "location": "entrance",
                "text": "你转过身，看到那个女孩站在你面前。\n\n她的眼睛里流出黑色的液体，嘴角裂开一个诡异的笑容。\n\n\"你想逃？\"她问道，声音冰冷刺骨。\n\n你吓得动弹不得...",
                "isEnd": true,
                "endType": "death",
                "endMessage": "你被恐惧冻结了...",
                "choices": []
            },
            "rush_out": {
                "id": "rush_out",
                "location": "entrance",
                "text": "你拿着钥匙冲出保安室，冲向大门。\n\n身后传来女孩的尖叫声，但你没有回头。\n\n你用钥匙打开大门，冲了出去。\n\n外面的月光洒在你身上，你终于松了一口气。",
                "actions": [
                    {
                        "type": "addItem",
                        "itemId": "door_key"
                    }
                ],
                "choices": [
                    {
                        "text": "逃离学校",
                        "next": "escape_school"
                    }
                ]
            },
            "shake_door": {
                "id": "shake_door",
                "location": "entrance",
                "text": "你用力摇晃大门，但纹丝不动。\n\n身后传来脚步声，越来越近。\n\n你转过身，看到那个女孩正从走廊尽头走来。\n\n她的眼神空洞，嘴角带着诡异的微笑。",
                "choices": [
                    {
                        "text": "冲向保安室",
                        "next": "security_room"
                    },
                    {
                        "text": "尝试爬窗户",
                        "next": "climb_window"
                    },
                    {
                        "text": "面对她",
                        "next": "face_final"
                    }
                ]
            },
            "climb_window": {
                "id": "climb_window",
                "location": "entrance",
                "text": "你跑到窗边，试图爬出去。\n\n但窗户太高了，你爬不上去。\n\n身后的脚步声越来越近...",
                "isEnd": true,
                "endType": "death",
                "endMessage": "你无处可逃...",
                "choices": []
            },
            "face_final": {
                "id": "face_final",
                "location": "entrance",
                "text": "你转过身，面对那个女孩。\n\n\"你到底想干什么？\"你鼓起勇气问道。\n\n女孩停下脚步，空洞的眼睛盯着你。\n\n\"我只想...有人能记住我...\"她的声音变得悲伤。\n\n然后，她慢慢消失了，留下一滴透明的泪水。",
                "choices": [
                    {
                        "text": "离开学校",
                        "next": "escape_school"
                    }
                ]
            },
            "open_door": {
                "id": "open_door",
                "location": "entrance",
                "text": "你用钥匙打开大门，外面的月光洒了进来。\n\n你回头看了一眼教学楼，那个女孩的身影已经消失了。\n\n你深吸一口气，走了出去。",
                "choices": [
                    {
                        "text": "逃离学校",
                        "next": "escape_school"
                    }
                ]
            },
            "escape_school": {
                "id": "escape_school",
                "location": "entrance",
                "text": "你终于逃离了那栋恐怖的教学楼。\n\n回望学校，教学楼在月光下显得格外阴森。\n\n你拿出手机，发现有一条未读消息：\n\n\"谢谢你...终于有人愿意听我说了...\"\n\n你不知道这是谁发的，但你知道，这一切还没有结束。\n\n校园惊魂系列序章完。",
                "isEnd": true,
                "endType": "victory",
                "endMessage": "你成功逃离了教学楼，但故事才刚刚开始...",
                "choices": []
            }
        },
        "id": "horror_school_prologue"
    },
    {
        "title": "校园惊魂·第一章",
        "subtitle": "失踪的学生",
        "description": "第二天，学校里发生了一件怪事——一个学生失踪了...",
        "author": "Radiation Studio",
        "version": "1.0",
        "features": {
            "inventory": true,
            "map": true
        },
        "items": [],
        "map": {
            "title": "学校全景",
            "locations": [
                {
                    "id": "classroom",
                    "name": "高三(2)班教室",
                    "description": "你所在的班级"
                },
                {
                    "id": "teacher_office",
                    "name": "教师办公室",
                    "description": "班主任的办公室"
                },
                {
                    "id": "library",
                    "name": "图书馆",
                    "description": "学校的图书馆"
                },
                {
                    "id": "gym",
                    "name": "体育馆",
                    "description": "学校的体育馆"
                },
                {
                    "id": "basement",
                    "name": "地下室",
                    "description": "废弃的地下室，很少有人去"
                }
            ],
            "startingLocation": "classroom"
        },
        "nodes": {
            "start": {
                "id": "start",
                "location": "classroom",
                "text": "第二天早上，你来到学校，发现气氛有些不对劲。\n\n同学们都在议论纷纷，你听到\"失踪\"、\"昨晚\"、\"教学楼\"这些词。\n\n你的同桌告诉你，隔壁班的一个女生昨晚晚自习后就失踪了，至今没有消息。",
                "choices": [
                    {
                        "text": "询问更多细节",
                        "next": "ask_details"
                    },
                    {
                        "text": "去找班主任",
                        "next": "find_teacher"
                    },
                    {
                        "text": "去图书馆看看",
                        "next": "go_library"
                    }
                ]
            },
            "ask_details": {
                "id": "ask_details",
                "location": "classroom",
                "text": "\"到底发生了什么？\"你问道。\n\n同桌压低声音：\"听说那个女生昨晚留在学校自习，后来就没人见过她。她的手机留在教室里，但人不见了。\"\n\n\"更奇怪的是，\"同桌继续说，\"有人说昨晚在走廊里看到了一个穿校服的女生，但是...那个女生三年前就已经...\"\n\n同桌没有说完，但你已经明白了。",
                "choices": [
                    {
                        "text": "去找班主任了解情况",
                        "next": "find_teacher"
                    },
                    {
                        "text": "去那个女生的教室看看",
                        "next": "go_missing_classroom"
                    }
                ]
            },
            "find_teacher": {
                "id": "find_teacher",
                "location": "teacher_office",
                "text": "你来到教师办公室，班主任正在打电话，神情凝重。\n\n\"...是的，她昨晚确实留在学校自习...我们已经报警了...\"\n\n挂了电话，班主任看到了你。\n\n\"你来干什么？现在不是讨论这个的时候，回去上课。\"",
                "choices": [
                    {
                        "text": "离开办公室",
                        "next": "classroom_back"
                    },
                    {
                        "text": "追问关于失踪学生的事情",
                        "next": "press_teacher"
                    }
                ]
            },
            "press_teacher": {
                "id": "press_teacher",
                "location": "teacher_office",
                "text": "\"老师，我知道一些事情，也许能帮助找到她。\"你说道。\n\n班主任看了你一眼，犹豫了一下：\"好吧，跟我来。\"\n\n她带你来到一个角落，低声说：\"那个失踪的学生叫林晓月，是个品学兼优的好学生。昨晚她留下来整理班级资料，之后就不见了。\"\n\n\"还有一件事，\"她的声音更低了，\"三年前，也有一个学生在这里失踪，至今没有找到...\"\n\n她递给你一张照片：\"这是林晓月留下的，我们在她桌子上发现的。\"",
                "actions": [
                    {
                        "type": "addItem",
                        "itemId": "photo_moon"
                    }
                ],
                "choices": [
                    {
                        "text": "查看照片",
                        "next": "check_photo"
                    }
                ]
            },
            "check_photo": {
                "id": "check_photo",
                "location": "teacher_office",
                "text": "照片上是一个废弃的地下室入口，旁边写着\"真相就在这里\"。\n\n你认出这个地方——是学校后面那个废弃的地下室，据说已经封闭多年了。",
                "choices": [
                    {
                        "text": "去地下室看看",
                        "next": "go_basement"
                    },
                    {
                        "text": "先去图书馆查资料",
                        "next": "go_library"
                    }
                ]
            },
            "go_missing_classroom": {
                "id": "go_missing_classroom",
                "location": "classroom",
                "text": "你来到林晓月的教室，她的座位已经被警戒线围起来了。\n\n透过警戒线，你看到她的桌子上放着一本打开的笔记本，上面写着：\n\n\"我看到了...她还在这里...三年前的事情...真相...\"\n\n字迹越来越潦草，最后几行已经模糊不清了。",
                "choices": [
                    {
                        "text": "尝试翻找更多线索",
                        "next": "search_desk"
                    },
                    {
                        "text": "离开这里",
                        "next": "classroom_back"
                    }
                ]
            },
            "search_desk": {
                "id": "search_desk",
                "location": "classroom",
                "text": "你趁没人注意，拉开了她的抽屉。\n\n里面有一张旧报纸剪报，标题是：\"三年前女学生失踪案仍未破获\"。\n\n旁边还有一张纸条，上面画着一个简易的地图，指向学校后面的地下室。",
                "actions": [
                    {
                        "type": "addItem",
                        "itemId": "news_clipping"
                    },
                    {
                        "type": "addItem",
                        "itemId": "basement_map"
                    }
                ],
                "choices": [
                    {
                        "text": "去地下室",
                        "next": "go_basement"
                    },
                    {
                        "text": "去图书馆查更多资料",
                        "next": "go_library"
                    }
                ]
            },
            "classroom_back": {
                "id": "classroom_back",
                "location": "classroom",
                "text": "你回到自己的教室，同学们还在议论纷纷。\n\n你感到事情越来越不对劲，必须尽快找到真相。",
                "choices": [
                    {
                        "text": "去图书馆",
                        "next": "go_library"
                    },
                    {
                        "text": "去地下室",
                        "next": "go_basement"
                    },
                    {
                        "text": "去体育馆",
                        "next": "go_gym"
                    }
                ]
            },
            "go_library": {
                "id": "go_library",
                "location": "library",
                "text": "你来到图书馆，里面很安静。\n\n你在旧报纸区翻找，找到了三年前关于那个失踪学生的报道：\n\n\"17岁女生张雪在晚自习后失踪，警方调查数月无果。有目击者称看到一个穿白衣服的女孩在走廊游荡...\"\n\n报道还提到，张雪失踪前正在调查学校的一些\"异常事件\"。",
                "choices": [
                    {
                        "text": "继续查找更多资料",
                        "next": "search_more"
                    },
                    {
                        "text": "去地下室",
                        "next": "go_basement"
                    }
                ]
            },
            "search_more": {
                "id": "search_more",
                "location": "library",
                "text": "你继续翻找，发现了一本学校的旧日志，里面记录着：\n\n\"1998年，学校扩建时发现了一个地下空间，里面有一些奇怪的符号和祭品。校方决定将其封闭...\"\n\n\"2005年，有学生报告在地下室附近听到奇怪的声音...\"\n\n\"2021年，张雪失踪前曾多次前往地下室...\"\n\n看来，这个地下室是一切的关键。",
                "actions": [
                    {
                        "type": "addItem",
                        "itemId": "school_log"
                    }
                ],
                "choices": [
                    {
                        "text": "去地下室",
                        "next": "go_basement"
                    }
                ]
            },
            "go_gym": {
                "id": "go_gym",
                "location": "gym",
                "text": "你来到体育馆，里面空无一人。\n\n篮球架下有一个书包，看起来像是有人落下的。\n\n你走过去查看，发现书包上写着\"林晓月\"。",
                "choices": [
                    {
                        "text": "翻看书包",
                        "next": "check_bag"
                    },
                    {
                        "text": "把书包交给老师",
                        "next": "give_bag"
                    }
                ]
            },
            "check_bag": {
                "id": "check_bag",
                "location": "gym",
                "text": "你打开书包，里面有一本日记和一部手机。\n\n日记里写着：\n\"今天我看到了那个女孩...她穿着白色的校服...她在地下室门口...\"\n\"我要去看看，也许能找到三年前的真相...\"\n\"如果我出事了，告诉大家真相...\"\n\n手机上有一条未发送的短信：\"地下室里有...\"\n\n短信没有写完。",
                "actions": [
                    {
                        "type": "addItem",
                        "itemId": "diary"
                    },
                    {
                        "type": "addItem",
                        "itemId": "phone_moon"
                    }
                ],
                "choices": [
                    {
                        "text": "去地下室",
                        "next": "go_basement"
                    }
                ]
            },
            "give_bag": {
                "id": "give_bag",
                "location": "teacher_office",
                "text": "你把书包交给班主任，她的脸色变得更加凝重。\n\n\"这是晓月的书包...看来她确实来过体育馆。\"\n\n她叹了口气：\"也许你是对的，我们需要找到那个地下室。\"\n\n她给了你一把钥匙：\"这是地下室的备用钥匙，希望能找到她。\"",
                "actions": [
                    {
                        "type": "addItem",
                        "itemId": "basement_key"
                    }
                ],
                "choices": [
                    {
                        "text": "去地下室",
                        "next": "go_basement"
                    }
                ]
            },
            "go_basement": {
                "id": "go_basement",
                "location": "basement",
                "text": "你来到学校后面，找到了那个废弃的地下室入口。\n\n铁门已经生锈，但没有上锁（或者你用钥匙打开了它）。\n\n里面一片漆黑，只有从门缝透进来的微弱光线。\n\n你深吸一口气，走了进去。",
                "choices": [
                    {
                        "text": "打开手机手电筒",
                        "next": "light_on"
                    },
                    {
                        "text": "摸黑前进",
                        "next": "dark_walk"
                    }
                ]
            },
            "light_on": {
                "id": "light_on",
                "location": "basement",
                "text": "你打开手机手电筒，照亮了前方的路。\n\n地下室比你想象的要大，通道两旁是一些房间，门上的牌子已经模糊不清。\n\n空气中弥漫着霉味和一股淡淡的血腥味。\n\n你注意到墙上有一些奇怪的符号，像是某种仪式留下的痕迹。",
                "choices": [
                    {
                        "text": "查看墙上的符号",
                        "next": "check_symbols"
                    },
                    {
                        "text": "继续深入",
                        "next": "go_deeper"
                    },
                    {
                        "text": "走进旁边的房间",
                        "next": "enter_room"
                    }
                ]
            },
            "dark_walk": {
                "id": "dark_walk",
                "location": "basement",
                "text": "你摸黑前进，脚下的地面越来越潮湿。\n\n突然，你踩到了什么东西，脚下一滑。\n\n你摔倒在地，手机从手中滑落，屏幕摔碎了。\n\n黑暗中，你听到一阵低沉的声音...",
                "choices": [
                    {
                        "text": "摸索着寻找手机",
                        "next": "find_phone"
                    },
                    {
                        "text": "大声呼救",
                        "next": "call_for_help"
                    },
                    {
                        "text": "继续往前走",
                        "next": "blind_walk"
                    }
                ]
            },
            "find_phone": {
                "id": "find_phone",
                "location": "basement",
                "text": "你摸索着找到了手机，但屏幕已经完全碎了，无法使用。\n\n你只能依靠微弱的光线继续前进。\n\n前面似乎有一丝光亮，你朝着光亮走去。",
                "choices": [
                    {
                        "text": "朝着光亮走去",
                        "next": "towards_light"
                    }
                ]
            },
            "call_for_help": {
                "id": "call_for_help",
                "location": "basement",
                "text": "你大声呼救，但只有自己的回声在空旷的地下室里回荡。\n\n突然，你听到一个声音回应了你——不是人声，而是一种低沉的、像是从喉咙深处发出的声音。\n\n那个声音越来越近...",
                "isEnd": true,
                "endType": "death",
                "endMessage": "你的呼救引来了不该来的东西...",
                "choices": []
            },
            "blind_walk": {
                "id": "blind_walk",
                "location": "basement",
                "text": "你凭着感觉继续往前走，不知道走了多久。\n\n突然，你撞到了什么东西——一个冰冷的、坚硬的东西。\n\n你伸手摸了摸，感觉像是一扇门。\n\n门上有一个把手，你试着转动它...",
                "choices": [
                    {
                        "text": "打开门",
                        "next": "open_secret_door"
                    },
                    {
                        "text": "继续往前走",
                        "next": "go_deeper"
                    }
                ]
            },
            "check_symbols": {
                "id": "check_symbols",
                "location": "basement",
                "text": "你仔细查看墙上的符号，发现它们像是某种古老的祭祀仪式。\n\n符号的中心是一个圆圈，里面画着一个女孩的轮廓，周围环绕着一些奇怪的文字。\n\n你认出其中一些文字——\"献祭\"、\"重生\"、\"永恒\"...\n\n这似乎是一个关于复活的仪式。",
                "choices": [
                    {
                        "text": "继续深入调查",
                        "next": "go_deeper"
                    },
                    {
                        "text": "离开这里，报警",
                        "next": "leave_basement"
                    }
                ]
            },
            "enter_room": {
                "id": "enter_room",
                "location": "basement",
                "text": "你推开一扇门，里面是一个房间，看起来像是某种实验室。\n\n桌子上放着一些玻璃瓶，里面装着奇怪的液体。墙上挂着一些照片，都是失踪的学生。\n\n角落里有一个祭坛，上面放着一个女孩的照片——张雪！",
                "choices": [
                    {
                        "text": "查看祭坛",
                        "next": "check_altar"
                    },
                    {
                        "text": "查看桌子上的文件",
                        "next": "check_files"
                    },
                    {
                        "text": "离开房间",
                        "next": "go_deeper"
                    }
                ]
            },
            "check_altar": {
                "id": "check_altar",
                "location": "basement",
                "text": "你走近祭坛，发现上面除了张雪的照片，还有一些奇怪的物品：\n\n一缕黑色的长发、一件白色的校服、一个旧的音乐盒...\n\n音乐盒突然自己打开了，发出一阵诡异的旋律。\n\n你感到一阵眩晕，周围的一切开始变得模糊...",
                "choices": [
                    {
                        "text": "逃离这个房间",
                        "next": "escape_room"
                    },
                    {
                        "text": "继续查看",
                        "next": "vision"
                    }
                ]
            },
            "check_files": {
                "id": "check_files",
                "location": "basement",
                "text": "你翻看桌子上的文件，发现这是一份实验记录：\n\n\"实验对象：张雪，17岁\"\n\"实验目的：通过古老仪式将灵魂封印在肉体中，实现永生\"\n\"实验结果：失败。灵魂被困在学校中，无法安息...\"\n\n\"新实验对象：林晓月，17岁\"\n\"实验目的：用新的祭品安抚张雪的灵魂\"\n\n原来，这一切都是一个疯狂的实验！",
                "actions": [
                    {
                        "type": "addItem",
                        "itemId": "experiment_log"
                    }
                ],
                "choices": [
                    {
                        "text": "继续深入寻找林晓月",
                        "next": "go_deeper"
                    },
                    {
                        "text": "带着证据离开",
                        "next": "leave_basement"
                    }
                ]
            },
            "escape_room": {
                "id": "escape_room",
                "location": "basement",
                "text": "你逃出房间，回到走廊上。\n\n音乐盒的声音消失了，但你感到背后一阵阴冷。\n\n你不敢回头，继续往前走。",
                "choices": [
                    {
                        "text": "继续深入",
                        "next": "go_deeper"
                    }
                ]
            },
            "vision": {
                "id": "vision",
                "location": "basement",
                "text": "你眼前出现了一个幻象——三年前的场景。\n\n张雪被一群人带到了这个地下室，他们强迫她进行某种仪式。\n\n仪式失败了，张雪的灵魂被困在了这里，成为了一个怨灵。\n\n幻象消失了，你发现自己躺在地上，浑身冷汗。",
                "choices": [
                    {
                        "text": "继续寻找林晓月",
                        "next": "go_deeper"
                    },
                    {
                        "text": "离开这里",
                        "next": "leave_basement"
                    }
                ]
            },
            "go_deeper": {
                "id": "go_deeper",
                "location": "basement",
                "text": "你继续深入地下室，通道越来越窄，空气越来越稀薄。\n\n前方有一扇门，门缝里透出微弱的光芒。\n\n你走近那扇门，听到里面传来一阵低语声。",
                "choices": [
                    {
                        "text": "打开门",
                        "next": "open_final_door"
                    },
                    {
                        "text": "在门外偷听",
                        "next": "listen_outside"
                    }
                ]
            },
            "towards_light": {
                "id": "towards_light",
                "location": "basement",
                "text": "你朝着光亮走去，发现前面有一扇门，门缝里透出微弱的光芒。\n\n你走近那扇门，听到里面传来一阵低语声。",
                "choices": [
                    {
                        "text": "打开门",
                        "next": "open_final_door"
                    },
                    {
                        "text": "在门外偷听",
                        "next": "listen_outside"
                    }
                ]
            },
            "open_secret_door": {
                "id": "open_secret_door",
                "location": "basement",
                "text": "门开了，里面是一个更大的房间，中央有一个祭坛。\n\n祭坛上绑着一个女孩——是林晓月！\n\n她昏迷不醒，旁边站着一个穿白大褂的人，正在念着什么咒语。",
                "choices": [
                    {
                        "text": "冲进去救她",
                        "next": "rescue_moon"
                    },
                    {
                        "text": "悄悄观察",
                        "next": "observe"
                    }
                ]
            },
            "open_final_door": {
                "id": "open_final_door",
                "location": "basement",
                "text": "你推开那扇门，里面是一个巨大的房间。\n\n房间中央有一个祭坛，林晓月被绑在上面，昏迷不醒。\n\n一个穿着白大褂的老人站在祭坛旁边，正在进行某种仪式。\n\n\"终于...要完成了...\"他喃喃道。",
                "choices": [
                    {
                        "text": "冲进去打断仪式",
                        "next": "interrupt_ritual"
                    },
                    {
                        "text": "寻找机会救人",
                        "next": "find_chance"
                    }
                ]
            },
            "listen_outside": {
                "id": "listen_outside",
                "location": "basement",
                "text": "你在门外偷听，听到一个男人的声音：\n\n\"...张雪的灵魂太强大了，我们需要一个新的祭品来安抚她...\"\n\"...林晓月是完美的选择...\"\n\"...仪式完成后，张雪就能安息，而我们也能获得永生...\"\n\n你明白了，这是一个邪教组织！",
                "choices": [
                    {
                        "text": "冲进去救人",
                        "next": "interrupt_ritual"
                    },
                    {
                        "text": "离开这里报警",
                        "next": "leave_basement_call"
                    }
                ]
            },
            "rescue_moon": {
                "id": "rescue_moon",
                "location": "basement",
                "text": "你冲进去，试图解开绑在林晓月身上的绳子。\n\n那个穿白大褂的人转过身来，看到了你。\n\n\"你不该来这里...\"他说着，朝你走来。\n\n你感到一阵寒意，双腿不听使唤地发抖。",
                "isEnd": true,
                "endType": "death",
                "endMessage": "你太冲动了...",
                "choices": []
            },
            "observe": {
                "id": "observe",
                "location": "basement",
                "text": "你躲在暗处观察，看到那个穿白大褂的人拿出一把匕首，准备刺向林晓月。\n\n就在这时，一阵冷风吹过，蜡烛熄灭了。\n\n黑暗中，你听到那个男人发出一声惨叫。\n\n当蜡烛重新亮起时，那个男人已经不见了，只剩下林晓月一个人躺在祭坛上。",
                "choices": [
                    {
                        "text": "上去救林晓月",
                        "next": "save_moon"
                    }
                ]
            },
            "interrupt_ritual": {
                "id": "interrupt_ritual",
                "location": "basement",
                "text": "你冲进去大喊：\"住手！\"\n\n那个老人转过身来，看到了你。\n\n\"又是一个...那就一起献祭吧！\"\n\n他举起匕首，朝你冲过来。\n\n你转身就跑，但身后传来一阵阴风...\n\n张雪的鬼魂出现了，挡在你面前。\n\n\"谢谢你...\"她说道，然后转身朝那个老人飞去。\n\n老人发出一声惨叫，消失在了黑暗中。",
                "choices": [
                    {
                        "text": "救林晓月",
                        "next": "save_moon"
                    }
                ]
            },
            "find_chance": {
                "id": "find_chance",
                "location": "basement",
                "text": "你躲在暗处，寻找机会救人。\n\n仪式进行到关键时刻，那个老人闭上眼睛，开始念诵咒语。\n\n这是你唯一的机会！\n\n你冲过去，推倒了祭坛上的蜡烛。\n\n蜡烛熄灭了，仪式被打断。\n\n黑暗中，你听到那个老人的惨叫和张雪的低语声。",
                "choices": [
                    {
                        "text": "趁机救走林晓月",
                        "next": "save_moon"
                    }
                ]
            },
            "save_moon": {
                "id": "save_moon",
                "location": "basement",
                "text": "你解开绑在林晓月身上的绳子，她慢慢醒了过来。\n\n\"...你是谁...\"\n\n\"我是来救你的，快跟我走！\"\n\n你扶着她，慢慢走出地下室。\n\n身后传来张雪的声音：\"谢谢你...我终于可以安息了...\"\n\n月光洒在你们身上，你感到一阵温暖。",
                "choices": [
                    {
                        "text": "离开地下室",
                        "next": "escape_basement"
                    }
                ]
            },
            "leave_basement": {
                "id": "leave_basement",
                "location": "basement",
                "text": "你转身离开地下室，决定先报警。\n\n但当你走到门口时，门已经关上了。\n\n身后传来一阵阴风，你慢慢转过身...\n\n张雪的鬼魂站在你面前，眼神空洞。\n\n\"你知道了太多...\"\n\n你感到一阵寒意，然后失去了意识...",
                "isEnd": true,
                "endType": "death",
                "endMessage": "你无法逃离真相...",
                "choices": []
            },
            "leave_basement_call": {
                "id": "leave_basement_call",
                "location": "basement",
                "text": "你转身离开地下室，拿出手机准备报警。\n\n但手机没有信号，这里太深了。\n\n你只能先离开这里，到地面上去。\n\n当你走到门口时，门突然关上了。\n\n身后传来一阵阴冷的笑声...",
                "isEnd": true,
                "endType": "death",
                "endMessage": "你逃不掉的...",
                "choices": []
            },
            "escape_basement": {
                "id": "escape_basement",
                "location": "basement",
                "text": "你和林晓月终于逃出了地下室，回到了地面上。\n\n警察已经赶到了，他们封锁了地下室入口。\n\n林晓月被送往医院，而你作为目击者接受了调查。\n\n几天后，你从新闻上看到，那个邪教组织被一网打尽，张雪的遗体也被找到了。\n\n但你知道，这一切还没有结束...\n\n校园惊魂系列第一章完。",
                "isEnd": true,
                "endType": "victory",
                "endMessage": "你成功救出了林晓月，但黑暗中似乎还有更多秘密等待揭开...",
                "choices": []
            }
        },
        "id": "horror_school_chapter1"
    },
    {
        "title": "校园惊魂·第二章",
        "subtitle": "午夜钟声",
        "description": "学校的钟楼上，午夜的钟声响起，唤醒了沉睡的秘密...",
        "author": "Radiation Studio",
        "version": "1.0",
        "features": {
            "inventory": true,
            "map": true
        },
        "items": [],
        "map": {
            "title": "钟楼与周边",
            "locations": [
                {
                    "id": "bell_tower",
                    "name": "钟楼",
                    "description": "学校最高的建筑，据说闹鬼"
                },
                {
                    "id": "clock_room",
                    "name": "钟室",
                    "description": "钟楼顶部，放置大钟的房间"
                },
                {
                    "id": "tower_stairs",
                    "name": "钟楼楼梯",
                    "description": "通往钟室的螺旋楼梯"
                },
                {
                    "id": "old_room",
                    "name": "钟楼密室",
                    "description": "隐藏在钟楼深处的秘密房间"
                },
                {
                    "id": "courtyard",
                    "name": "学校广场",
                    "description": "钟楼下方的广场"
                }
            ],
            "startingLocation": "courtyard"
        },
        "nodes": {
            "start": {
                "id": "start",
                "location": "courtyard",
                "text": "一周后，学校恢复了平静。\n\n但你知道，事情并没有真正结束。\n\n那天晚上，你收到了一封匿名邮件：\n\n\"午夜时分，钟楼会响起。真相就在钟声中...\"\n\n你犹豫了很久，最终还是决定前往学校。\n\n午夜十二点，你站在学校广场上，抬头望着那座古老的钟楼。",
                "choices": [
                    {
                        "text": "进入钟楼",
                        "next": "enter_tower"
                    },
                    {
                        "text": "在广场等待",
                        "next": "wait_plaza"
                    },
                    {
                        "text": "离开学校",
                        "next": "leave_school"
                    }
                ]
            },
            "enter_tower": {
                "id": "enter_tower",
                "location": "bell_tower",
                "text": "你走进钟楼，里面一片漆黑。\n\n楼梯口传来一阵阴冷的风，吹灭了你手中的蜡烛。\n\n你只能借着手机的微光，慢慢爬上楼梯。\n\n每一步都发出刺耳的回响，在空旷的钟楼里回荡。",
                "choices": [
                    {
                        "text": "继续上楼",
                        "next": "climb_stairs"
                    },
                    {
                        "text": "回头离开",
                        "next": "leave_tower"
                    }
                ]
            },
            "wait_plaza": {
                "id": "wait_plaza",
                "location": "courtyard",
                "text": "你在广场上等待，午夜的钟声终于响起。\n\n\"咚...咚...咚...\"\n\n钟声回荡在整个校园，震耳欲聋。\n\n突然，你看到钟楼的窗户亮起了一盏灯。\n\n有人在上面！",
                "choices": [
                    {
                        "text": "冲进钟楼",
                        "next": "enter_tower"
                    },
                    {
                        "text": "大声呼喊",
                        "next": "shout_up"
                    }
                ]
            },
            "leave_school": {
                "id": "leave_school",
                "location": "courtyard",
                "text": "你转身准备离开，但校门已经关上了。\n\n身后传来钟声，\"咚...咚...咚...\"\n\n你感到一阵寒意，不由自主地回头望去。\n\n钟楼的影子在月光下显得格外诡异，仿佛一只巨大的手伸向天空。",
                "choices": [
                    {
                        "text": "走进钟楼",
                        "next": "enter_tower"
                    }
                ]
            },
            "shout_up": {
                "id": "shout_up",
                "location": "courtyard",
                "text": "\"上面是谁？！\"你大喊道。\n\n没有人回应。\n\n钟声继续响起，\"咚...咚...咚...\"\n\n突然，一个身影从钟楼顶部坠落。\n\n你吓得后退了几步，定睛一看——那是一个穿着校服的女孩！\n\n但当她落地时，却消失了。",
                "choices": [
                    {
                        "text": "跑进钟楼",
                        "next": "enter_tower"
                    },
                    {
                        "text": "转身逃跑",
                        "next": "run_away"
                    }
                ]
            },
            "run_away": {
                "id": "run_away",
                "location": "courtyard",
                "text": "你转身就跑，但身后传来一阵阴冷的笑声。\n\n\"你以为你能逃掉吗？\"\n\n你感到一只手抓住了你的肩膀，回头一看...\n\n一片漆黑。\n\n然后，你失去了意识。",
                "isEnd": true,
                "endType": "death",
                "endMessage": "你无法逃离命运...",
                "choices": []
            },
            "climb_stairs": {
                "id": "climb_stairs",
                "location": "tower_stairs",
                "text": "你继续上楼，楼梯越来越窄，越来越陡。\n\n墙上的壁灯忽明忽暗，映出你扭曲的影子。\n\n突然，你听到楼上传来一阵脚步声，正在往下走。\n\n你停下脚步，屏住呼吸。\n\n脚步声越来越近...",
                "choices": [
                    {
                        "text": "躲在楼梯拐角",
                        "next": "hide_corner"
                    },
                    {
                        "text": "继续往上走",
                        "next": "go_up"
                    },
                    {
                        "text": "转身往下跑",
                        "next": "run_down"
                    }
                ]
            },
            "leave_tower": {
                "id": "leave_tower",
                "location": "bell_tower",
                "text": "你转身准备离开，但楼梯已经消失了。\n\n身后传来一阵阴冷的笑声：\n\n\"既然来了，就不要走了...\"\n\n你感到一阵寒意，转身看去...\n\n一个穿着白色校服的女孩站在你面前，长发遮住了她的脸。",
                "choices": [
                    {
                        "text": "问她是谁",
                        "next": "ask_who"
                    },
                    {
                        "text": "冲向她",
                        "next": "charge"
                    }
                ]
            },
            "hide_corner": {
                "id": "hide_corner",
                "location": "tower_stairs",
                "text": "你躲在楼梯拐角，屏住呼吸。\n\n脚步声从你身边经过，越来越远。\n\n你探头看去，看到一个穿着黑色衣服的人影慢慢走下楼梯。\n\n那个人影消失后，你继续往上走。",
                "choices": [
                    {
                        "text": "继续上楼",
                        "next": "go_up"
                    }
                ]
            },
            "go_up": {
                "id": "go_up",
                "location": "tower_stairs",
                "text": "你继续往上走，终于来到了钟楼顶部。\n\n钟室里一片漆黑，只有月光从窗户照进来。\n\n巨大的钟悬挂在中央，旁边有一个人影。\n\n那个人影转过身来，你看到了一张熟悉的脸——是三年前失踪的张雪！",
                "choices": [
                    {
                        "text": "和她对话",
                        "next": "talk_snow"
                    },
                    {
                        "text": "逃跑",
                        "next": "escape_clock"
                    },
                    {
                        "text": "质问她",
                        "next": "confront_snow"
                    }
                ]
            },
            "run_down": {
                "id": "run_down",
                "location": "tower_stairs",
                "text": "你转身往下跑，但脚下一滑，摔倒了。\n\n你顺着楼梯滚了下去，撞在墙上。\n\n意识渐渐模糊，你最后看到的是一个穿着白色校服的女孩站在你面前...",
                "isEnd": true,
                "endType": "death",
                "endMessage": "你摔得太重了...",
                "choices": []
            },
            "ask_who": {
                "id": "ask_who",
                "location": "bell_tower",
                "text": "\"你是谁？\"你问道。\n\n女孩慢慢抬起头，露出一张苍白的脸。\n\n\"我是张雪...\"\n\n她的声音冰冷刺骨：\"三年前，他们把我带到这里，进行了一场仪式。仪式失败了，我的灵魂被困在了这座钟楼里...\"\n\n\"每到午夜，钟声就会响起，提醒我那些痛苦的回忆...\"",
                "choices": [
                    {
                        "text": "询问真相",
                        "next": "ask_truth"
                    },
                    {
                        "text": "尝试帮助她",
                        "next": "help_snow"
                    }
                ]
            },
            "charge": {
                "id": "charge",
                "location": "bell_tower",
                "text": "你冲向那个女孩，但你的手穿过了她的身体。\n\n她只是一个幽灵！\n\n\"为什么要伤害我...\"她的声音充满悲伤。\n\n你感到一阵愧疚，但已经来不及了。\n\n她伸出手，触碰了你的额头。\n\n你感到一阵剧痛，然后失去了意识...",
                "isEnd": true,
                "endType": "death",
                "endMessage": "你伤害了不该伤害的人...",
                "choices": []
            },
            "talk_snow": {
                "id": "talk_snow",
                "location": "clock_room",
                "text": "\"张雪？\"你轻声问道。\n\n她转过头来，空洞的眼睛看着你。\n\n\"你能看到我...\"\n\n\"是的，我能看到你。\"你说，\"告诉我发生了什么。\"\n\n她开始讲述三年前的故事：\n\n\"那天晚上，他们把我带到这里，说要进行一场仪式，让我获得永生。但那是谎言...他们只是想利用我的灵魂来完成他们的邪恶计划...\"\n\n\"仪式失败了，我的灵魂被困在了这里，无法安息...\"",
                "choices": [
                    {
                        "text": "问她如何才能安息",
                        "next": "ask_rest"
                    },
                    {
                        "text": "问她关于匿名邮件的事",
                        "next": "ask_email"
                    }
                ]
            },
            "escape_clock": {
                "id": "escape_clock",
                "location": "clock_room",
                "text": "你转身想跑，但门已经关上了。\n\n\"你逃不掉的...\"张雪的声音在你身后响起。\n\n你转过身，她已经站在你面前。\n\n\"不要害怕，我不会伤害你的...\"\n\n她的声音变得温和：\"我只是想有人能听我说...\"",
                "choices": [
                    {
                        "text": "听她讲述",
                        "next": "talk_snow"
                    }
                ]
            },
            "confront_snow": {
                "id": "confront_snow",
                "location": "clock_room",
                "text": "\"是你杀了林晓月吗？！\"你质问道。\n\n张雪摇了摇头：\"不是我...是他们...那些邪教徒...\"\n\n\"他们想用林晓月来完成仪式，但被你阻止了...\"\n\n\"现在，他们又有了新的计划...\"\n\n她指向钟室的一角：\"那里有一个密室，里面有他们的秘密...\"",
                "choices": [
                    {
                        "text": "查看密室",
                        "next": "check_secret_room"
                    }
                ]
            },
            "ask_truth": {
                "id": "ask_truth",
                "location": "bell_tower",
                "text": "\"告诉我真相，三年前到底发生了什么？\"你问道。\n\n张雪开始讲述：\n\n\"三年前，我发现了学校的一个秘密——一个邪教组织在学校里进行邪恶仪式。他们想通过献祭来获得永生...\"\n\n\"我试图揭露他们，但被他们抓住了。他们把我带到钟楼，进行了一场仪式...\"\n\n\"仪式失败了，我的灵魂被困在了这里...但我看到了一切...\"\n\n她指向楼梯上方：\"钟室里有一个密室，里面有他们的所有秘密...\"",
                "choices": [
                    {
                        "text": "去钟室查看",
                        "next": "go_up"
                    }
                ]
            },
            "help_snow": {
                "id": "help_snow",
                "location": "bell_tower",
                "text": "\"我能帮你吗？\"你问道。\n\n张雪的眼中闪过一丝希望：\"如果你能找到他们的秘密，揭露他们的罪行，我的灵魂就能安息...\"\n\n\"钟室里有一个密室，里面有他们的所有证据...\"\n\n她递给你一把钥匙：\"这是密室的钥匙...\"\n\n\"但你要小心，他们就在附近...\"",
                "actions": [
                    {
                        "type": "addItem",
                        "itemId": "secret_key"
                    }
                ],
                "choices": [
                    {
                        "text": "去钟室",
                        "next": "go_up"
                    }
                ]
            },
            "ask_rest": {
                "id": "ask_rest",
                "location": "clock_room",
                "text": "\"怎样才能让你安息？\"你问道。\n\n张雪叹了口气：\"我需要找到我的遗体...他们把我埋在了地下室，但我不知道具体在哪里...\"\n\n\"还有，我需要揭露他们的罪行...让所有人都知道真相...\"\n\n她指向钟室的一角：\"那里有一个密室，里面有他们的所有秘密...\"\n\n\"如果你能找到那些证据，我的灵魂就能安息...\"",
                "choices": [
                    {
                        "text": "查看密室",
                        "next": "check_secret_room"
                    }
                ]
            },
            "ask_email": {
                "id": "ask_email",
                "location": "clock_room",
                "text": "\"是你给我发的邮件吗？\"你问道。\n\n张雪摇了摇头：\"不是我...但我知道是谁...\"\n\n\"是那个邪教组织的头目...他想引诱你来到这里，成为下一个祭品...\"\n\n\"但他没想到你能看到我...这是你的机会...\"\n\n她指向钟室的一角：\"那里有一个密室，里面有他们的所有秘密...\"\n\n\"去看看吧...\"",
                "choices": [
                    {
                        "text": "查看密室",
                        "next": "check_secret_room"
                    }
                ]
            },
            "check_secret_room": {
                "id": "check_secret_room",
                "location": "old_room",
                "text": "你按照张雪的指示，找到了钟室一角的密室。\n\n门上有一个锁，你用张雪给你的钥匙打开了它（或者你找到了钥匙）。\n\n密室里堆满了文件和物品，都是邪教组织的证据。\n\n你翻找着，发现了一本日记：",
                "choices": [
                    {
                        "text": "查看日记",
                        "next": "read_diary"
                    },
                    {
                        "text": "查看其他文件",
                        "next": "check_other_files"
                    }
                ]
            },
            "read_diary": {
                "id": "read_diary",
                "location": "old_room",
                "text": "日记是邪教组织头目的，上面写着：\n\n\"1998年，我们发现了那个古老的仪式...\"\n\"2005年，第一次实验失败了...\"\n\"2021年，张雪成为了祭品，但仪式失败了...她的灵魂太强大了...\"\n\"2024年，我们找到了新的方法...用钟楼的钟声来增强仪式的力量...\"\n\"午夜十二点，钟声响起时，仪式的力量最强...\"\n\"我们需要一个新的祭品，就在今晚...\"\n\n原来，他们计划在今晚进行仪式！",
                "actions": [
                    {
                        "type": "addItem",
                        "itemId": "cult_diary"
                    }
                ],
                "choices": [
                    {
                        "text": "继续查看",
                        "next": "check_other_files"
                    },
                    {
                        "text": "离开密室，阻止仪式",
                        "next": "stop_ritual"
                    }
                ]
            },
            "check_other_files": {
                "id": "check_other_files",
                "location": "old_room",
                "text": "你继续查看其他文件，发现了一份仪式计划：\n\n\"仪式时间：午夜十二点\"\n\"仪式地点：钟楼\"\n\"祭品：新来的学生\"\n\"仪式目的：用钟声的力量封印张雪的灵魂，同时获得永生\"\n\n还有一张地图，标记着张雪遗体的位置——在地下室的最深处。",
                "actions": [
                    {
                        "type": "addItem",
                        "itemId": "ritual_plan"
                    },
                    {
                        "type": "addItem",
                        "itemId": "body_map"
                    }
                ],
                "choices": [
                    {
                        "text": "去地下室找张雪的遗体",
                        "next": "go_basement_body"
                    },
                    {
                        "text": "阻止仪式",
                        "next": "stop_ritual"
                    }
                ]
            },
            "stop_ritual": {
                "id": "stop_ritual",
                "location": "clock_room",
                "text": "你冲出密室，回到钟室。\n\n钟声还在响着，\"咚...咚...咚...\"\n\n邪教组织的头目站在钟旁边，正在念诵咒语。\n\n你冲过去，试图阻止他。",
                "choices": [
                    {
                        "text": "推倒他",
                        "next": "push_him"
                    },
                    {
                        "text": "破坏大钟",
                        "next": "destroy_bell"
                    },
                    {
                        "text": "大声呼喊",
                        "next": "shout_stop"
                    }
                ]
            },
            "go_basement_body": {
                "id": "go_basement_body",
                "location": "bell_tower",
                "text": "你拿着地图，离开了钟楼，前往地下室。\n\n地下室里一片漆黑，你只能借着手机的微光前行。\n\n根据地图的指示，你找到了地下室的最深处。\n\n那里有一个祭坛，上面放着一具骸骨——是张雪的遗体！",
                "choices": [
                    {
                        "text": "为她祈祷",
                        "next": "pray_for_snow"
                    },
                    {
                        "text": "带走她的遗体",
                        "next": "take_body"
                    }
                ]
            },
            "push_him": {
                "id": "push_him",
                "location": "clock_room",
                "text": "你冲过去，试图推倒那个头目。\n\n但他转过身来，眼中闪烁着邪恶的光芒。\n\n\"你来得正好...\"他说道，\"我正需要一个祭品...\"\n\n他抓住你，把你拖向大钟。\n\n钟声继续响起，\"咚...咚...咚...\"\n\n你感到一阵眩晕...",
                "isEnd": true,
                "endType": "death",
                "endMessage": "你成为了祭品...",
                "choices": []
            },
            "destroy_bell": {
                "id": "destroy_bell",
                "location": "clock_room",
                "text": "你拿起旁边的锤子，用力砸向大钟。\n\n\"砰！\"\n\n大钟发出一声巨响，然后裂开了一道缝。\n\n仪式被打断了！\n\n那个头目发出一声惨叫，倒在地上。\n\n张雪的灵魂从钟里飞了出来，发出一阵耀眼的光芒。",
                "choices": [
                    {
                        "text": "看着张雪",
                        "next": "snow_free"
                    }
                ]
            },
            "shout_stop": {
                "id": "shout_stop",
                "location": "clock_room",
                "text": "\"住手！\"你大喊道。\n\n那个头目转过身来，看到了你。\n\n\"你？！\"\n\n就在这时，张雪的灵魂出现了，挡在你面前。\n\n\"够了...\"她说道，声音冰冷。\n\n她伸出手，那个头目发出一声惨叫，消失在了黑暗中。",
                "choices": [
                    {
                        "text": "看着张雪",
                        "next": "snow_free"
                    }
                ]
            },
            "pray_for_snow": {
                "id": "pray_for_snow",
                "location": "old_room",
                "text": "你跪在祭坛前，为张雪祈祷。\n\n\"安息吧...\"\n\n突然，一道光芒从骸骨中升起，张雪的灵魂出现了。\n\n\"谢谢你...\"\n\n她的声音变得温暖：\"你找到了我的遗体，我的灵魂终于可以安息了...\"\n\n\"但邪教组织还没有被消灭...他们还会回来的...\"\n\n她递给你一枚护身符：\"拿着这个，它会保护你...\"\n\n然后，她慢慢消失了。",
                "actions": [
                    {
                        "type": "addItem",
                        "itemId": "amulet"
                    }
                ],
                "choices": [
                    {
                        "text": "离开地下室",
                        "next": "leave_basement_final"
                    }
                ]
            },
            "take_body": {
                "id": "take_body",
                "location": "old_room",
                "text": "你试图带走张雪的遗体，但祭坛突然发出一阵光芒。\n\n张雪的灵魂出现了：\"不要动...\"\n\n\"我的遗体需要留在这里...但你已经找到了真相...\"\n\n\"邪教组织的头目就在钟楼...快去阻止他...\"\n\n她推了你一把：\"快去！\"\n\n你感到一阵力量涌入体内，转身冲向钟楼。",
                "choices": [
                    {
                        "text": "冲向钟楼",
                        "next": "stop_ritual"
                    }
                ]
            },
            "snow_free": {
                "id": "snow_free",
                "location": "clock_room",
                "text": "张雪的灵魂发出耀眼的光芒，然后慢慢消散。\n\n\"谢谢你...\"\n\n她的声音在空中回荡：\"我的灵魂终于可以安息了...\"\n\n\"但这还不是结束...邪教组织还有其他人...\"\n\n\"小心...\"\n\n然后，一切归于平静。",
                "choices": [
                    {
                        "text": "离开钟楼",
                        "next": "leave_basement_final"
                    }
                ]
            },
            "leave_basement_final": {
                "id": "leave_basement_final",
                "location": "courtyard",
                "text": "你走出地下室，回到了学校广场。\n\n天已经亮了，第一缕阳光洒在你身上。\n\n你回头看了一眼钟楼，它在阳光下显得格外宁静。\n\n张雪的灵魂终于安息了，但你知道，邪教组织还没有被完全消灭。\n\n他们还会回来的...\n\n校园惊魂系列第二章完。",
                "isEnd": true,
                "endType": "victory",
                "endMessage": "张雪的灵魂终于安息了，但黑暗还未完全消散...",
                "choices": []
            }
        },
        "id": "horror_school_chapter2"
    },
    {
        "title": "校园惊魂·第三章",
        "subtitle": "档案室的秘密",
        "description": "学校的档案室里，隐藏着一个关于学校历史的恐怖秘密...",
        "author": "Radiation Studio",
        "version": "1.0",
        "features": {
            "inventory": true,
            "map": true
        },
        "items": [],
        "map": {
            "title": "行政楼",
            "locations": [
                {
                    "id": "archive_room",
                    "name": "档案室",
                    "description": "存放学校历史档案的房间"
                },
                {
                    "id": "principal_office",
                    "name": "校长办公室",
                    "description": "校长的办公室"
                },
                {
                    "id": "meeting_room",
                    "name": "会议室",
                    "description": "学校的会议室"
                },
                {
                    "id": "secret_room",
                    "name": "密室",
                    "description": "隐藏在档案室后面的秘密房间"
                },
                {
                    "id": "hallway_admin",
                    "name": "行政楼走廊",
                    "description": "行政楼的走廊"
                }
            ],
            "startingLocation": "hallway_admin"
        },
        "nodes": {
            "start": {
                "id": "start",
                "location": "hallway_admin",
                "text": "几天后，你收到了林晓月的短信：\n\n\"我发现了一些东西...学校的档案室里有关于那个邪教组织的记录...\"\n\n\"今晚九点，档案室见...\"\n\n你来到学校行政楼，走廊里一片寂静。\n\n档案室的门虚掩着，里面透出微弱的灯光。",
                "choices": [
                    {
                        "text": "推门进去",
                        "next": "enter_archive"
                    },
                    {
                        "text": "在门外等待林晓月",
                        "next": "wait_moon"
                    },
                    {
                        "text": "先查看周围",
                        "next": "check_area"
                    }
                ]
            },
            "enter_archive": {
                "id": "enter_archive",
                "location": "archive_room",
                "text": "你推门走进档案室，里面堆满了档案柜。\n\n空气中弥漫着纸张和灰尘的味道。\n\n林晓月不在里面，但桌子上放着一本打开的档案，上面写着：\n\n\"1950年，学校建校时发现了一个地下墓穴...\"\n\n\"墓穴里有一具女性骸骨，旁边有一些奇怪的符号...\"\n\n\"校方决定将墓穴封闭，并对外保密...\"",
                "choices": [
                    {
                        "text": "继续查看档案",
                        "next": "read_archive"
                    },
                    {
                        "text": "寻找林晓月",
                        "next": "find_moon"
                    },
                    {
                        "text": "离开档案室",
                        "next": "leave_archive"
                    }
                ]
            },
            "wait_moon": {
                "id": "wait_moon",
                "location": "hallway_admin",
                "text": "你在门外等待林晓月，但等了很久她都没有出现。\n\n走廊里的灯突然灭了，只有应急灯发出微弱的绿光。\n\n你感到一阵阴冷，转过身去...\n\n一个穿着黑色衣服的人影站在走廊尽头。",
                "choices": [
                    {
                        "text": "走向那个人影",
                        "next": "approach_figure"
                    },
                    {
                        "text": "跑进档案室",
                        "next": "enter_archive"
                    },
                    {
                        "text": "转身逃跑",
                        "next": "run_away"
                    }
                ]
            },
            "check_area": {
                "id": "check_area",
                "location": "hallway_admin",
                "text": "你先查看了一下周围，发现校长办公室的门开着。\n\n你走过去，听到里面传来一阵低语声。\n\n\"...档案室...档案...不能让他们发现...\"\n\n你躲在门外，继续听着。",
                "choices": [
                    {
                        "text": "偷听",
                        "next": "eavesdrop"
                    },
                    {
                        "text": "推门进去",
                        "next": "enter_principal"
                    },
                    {
                        "text": "去档案室",
                        "next": "enter_archive"
                    }
                ]
            },
            "read_archive": {
                "id": "read_archive",
                "location": "archive_room",
                "text": "你继续查看档案，发现了更多关于那个地下墓穴的信息：\n\n\"1965年，有学生报告在地下室听到奇怪的声音...\"\n\n\"1978年，一名教师在地下室失踪...\"\n\n\"1990年，学校扩建时，工人发现了墓穴的入口...但被校方封锁了...\"\n\n\"2005年，邪教组织开始在学校活动...\"\n\n\"2021年，张雪失踪...\"\n\n原来，这一切都和那个地下墓穴有关！",
                "actions": [
                    {
                        "type": "addItem",
                        "itemId": "archive_file"
                    }
                ],
                "choices": [
                    {
                        "text": "继续查找",
                        "next": "search_more"
                    },
                    {
                        "text": "寻找墓穴入口",
                        "next": "find_tomb"
                    }
                ]
            },
            "find_moon": {
                "id": "find_moon",
                "location": "archive_room",
                "text": "你在档案室里寻找林晓月，但她不在这里。\n\n你注意到一个档案柜后面有一扇门，门是开着的。\n\n你走过去，看到里面是一个楼梯，通往地下。\n\n楼梯下面传来一阵微弱的声音...像是有人在呼救。",
                "choices": [
                    {
                        "text": "走下楼梯",
                        "next": "go_down_stairs"
                    },
                    {
                        "text": "大声呼喊",
                        "next": "call_moon"
                    }
                ]
            },
            "leave_archive": {
                "id": "leave_archive",
                "location": "hallway_admin",
                "text": "你离开档案室，回到走廊。\n\n走廊里一片寂静，应急灯的绿光让人感到不安。\n\n你听到档案室里传来一阵声音，像是有人在翻东西。\n\n你慢慢靠近门口，透过门缝看去...",
                "choices": [
                    {
                        "text": "偷看",
                        "next": "peek_in"
                    },
                    {
                        "text": "推门进去",
                        "next": "enter_archive"
                    }
                ]
            },
            "approach_figure": {
                "id": "approach_figure",
                "location": "hallway_admin",
                "text": "你走向那个人影，越来越近。\n\n那个人影转过身来，你看到了一张熟悉的脸——是校长！\n\n他的眼中闪烁着邪恶的光芒，手里拿着一把刀。\n\n\"你不该来这里...\"",
                "choices": [
                    {
                        "text": "质问他",
                        "next": "confront_principal"
                    },
                    {
                        "text": "逃跑",
                        "next": "run_away"
                    }
                ]
            },
            "run_away": {
                "id": "run_away",
                "location": "hallway_admin",
                "text": "你转身就跑，但身后传来一阵阴冷的笑声。\n\n\"你跑不掉的...\"\n\n你感到一只手抓住了你的肩膀，回头一看...\n\n是校长，他的脸已经变得扭曲。\n\n\"加入我们吧...\"\n\n你感到一阵眩晕，然后失去了意识...",
                "isEnd": true,
                "endType": "death",
                "endMessage": "你被黑暗吞噬了...",
                "choices": []
            },
            "eavesdrop": {
                "id": "eavesdrop",
                "location": "hallway_admin",
                "text": "你躲在门外偷听：\n\n\"...那些档案不能让任何人看到...\"\n\"...那个墓穴的秘密...\"\n\"...仪式...今晚...\"\n\"...祭品...\"\n\n然后，你听到脚步声向门口走来。",
                "choices": [
                    {
                        "text": "躲起来",
                        "next": "hide_principal"
                    },
                    {
                        "text": "推门进去",
                        "next": "enter_principal"
                    }
                ]
            },
            "enter_principal": {
                "id": "enter_principal",
                "location": "principal_office",
                "text": "你推门进去，校长坐在办公桌后面，看到了你。\n\n\"你来干什么？\"他的声音冷冰冰的。\n\n\"我...我来找林晓月...\"\n\n校长看了你一眼：\"她不在这里。\"\n\n你注意到他的桌子上放着一张照片——是那个邪教组织的标志！",
                "choices": [
                    {
                        "text": "质问他关于邪教的事",
                        "next": "ask_cult"
                    },
                    {
                        "text": "假装离开",
                        "next": "fake_leave"
                    }
                ]
            },
            "search_more": {
                "id": "search_more",
                "location": "archive_room",
                "text": "你继续查找，发现了一份更详细的记录：\n\n\"地下墓穴的位置：行政楼地下室，档案室后面\"\n\n\"墓穴里有一个祭坛，上面刻着古老的符文\"\n\n\"符文的含义：召唤远古的恶魔，获得永生\"\n\n\"1950年，校方发现墓穴后，试图摧毁它，但失败了\"\n\n\"他们只能将其封印，并安排人看守...\"\n\n\"看守者：历任校长...\"\n\n原来，校长也是邪教组织的一员！",
                "actions": [
                    {
                        "type": "addItem",
                        "itemId": "tomb_record"
                    }
                ],
                "choices": [
                    {
                        "text": "去找林晓月",
                        "next": "find_moon"
                    },
                    {
                        "text": "去地下室",
                        "next": "go_down_stairs"
                    }
                ]
            },
            "find_tomb": {
                "id": "find_tomb",
                "location": "archive_room",
                "text": "你根据档案的指示，在档案室里寻找墓穴的入口。\n\n你注意到一个档案柜后面有一个奇怪的标记——和档案里描述的符文一样！\n\n你推开档案柜，发现了一扇门。\n\n门后面是一个楼梯，通往地下。",
                "choices": [
                    {
                        "text": "走下楼梯",
                        "next": "go_down_stairs"
                    }
                ]
            },
            "go_down_stairs": {
                "id": "go_down_stairs",
                "location": "secret_room",
                "text": "你走下楼梯，来到了一个地下室。\n\n地下室比你想象的要大，中央有一个巨大的祭坛，上面刻着奇怪的符文。\n\n林晓月被绑在祭坛上，旁边站着校长和几个穿着黑袍的人。\n\n\"仪式开始...\"校长说道。",
                "choices": [
                    {
                        "text": "冲进去救人",
                        "next": "rescue_moon"
                    },
                    {
                        "text": "寻找机会",
                        "next": "find_chance"
                    },
                    {
                        "text": "离开去报警",
                        "next": "leave_call"
                    }
                ]
            },
            "call_moon": {
                "id": "call_moon",
                "location": "archive_room",
                "text": "\"林晓月！\"你大喊道。\n\n楼梯下面传来一阵声音：\"...救我...\"\n\n是林晓月！\n\n你毫不犹豫地走下楼梯。",
                "choices": [
                    {
                        "text": "走下楼梯",
                        "next": "go_down_stairs"
                    }
                ]
            },
            "peek_in": {
                "id": "peek_in",
                "location": "archive_room",
                "text": "你透过门缝看去，看到校长正在翻找档案。\n\n他拿出一份档案，看了看，然后放进了口袋。\n\n\"不能让任何人看到这些...\"\n\n他转身离开，你赶紧躲起来。",
                "choices": [
                    {
                        "text": "等他离开后进去",
                        "next": "enter_archive"
                    },
                    {
                        "text": "跟踪他",
                        "next": "follow_principal"
                    }
                ]
            },
            "confront_principal": {
                "id": "confront_principal",
                "location": "hallway_admin",
                "text": "\"校长，你是邪教组织的人！\"你质问道。\n\n校长笑了：\"你知道得太多了...\"\n\n他举起刀，朝你冲过来。\n\n你转身就跑，冲进了档案室。",
                "choices": [
                    {
                        "text": "躲在档案柜后面",
                        "next": "hide_cabinet"
                    },
                    {
                        "text": "跑向地下室",
                        "next": "go_down_stairs"
                    }
                ]
            },
            "hide_principal": {
                "id": "hide_principal",
                "location": "hallway_admin",
                "text": "你躲在走廊的拐角，校长走了出来。\n\n他看了看走廊，然后走向档案室。\n\n你等他进去后，悄悄跟了上去。",
                "choices": [
                    {
                        "text": "跟着他",
                        "next": "follow_principal"
                    }
                ]
            },
            "ask_cult": {
                "id": "ask_cult",
                "location": "principal_office",
                "text": "\"校长，你是邪教组织的人！\"你质问道。\n\n校长的脸色变了：\"你在说什么？\"\n\n\"我看到了那张照片！还有那些档案！\"\n\n校长站起来，眼中闪烁着邪恶的光芒：\"既然你知道了，那就留下来吧...\"\n\n他朝你走来...",
                "choices": [
                    {
                        "text": "逃跑",
                        "next": "run_from_principal"
                    },
                    {
                        "text": "和他搏斗",
                        "next": "fight_principal"
                    }
                ]
            },
            "fake_leave": {
                "id": "fake_leave",
                "location": "principal_office",
                "text": "\"对不起，打扰了。\"你说完，转身离开。\n\n但当你走到门口时，门已经关上了。\n\n\"既然来了，就不要走了...\"校长的声音在你身后响起。\n\n你转过身，看到校长正拿着一把刀朝你走来。",
                "choices": [
                    {
                        "text": "逃跑",
                        "next": "run_from_principal"
                    },
                    {
                        "text": "寻找武器",
                        "next": "find_weapon"
                    }
                ]
            },
            "rescue_moon": {
                "id": "rescue_moon",
                "location": "secret_room",
                "text": "你冲进去，试图解开绑在林晓月身上的绳子。\n\n但校长转过身来，看到了你。\n\n\"又是你...\"\n\n他举起刀，朝你冲过来。\n\n你感到一阵寒意，动弹不得...",
                "isEnd": true,
                "endType": "death",
                "endMessage": "你太冲动了...",
                "choices": []
            },
            "find_chance": {
                "id": "find_chance",
                "location": "secret_room",
                "text": "你躲在暗处，寻找机会。\n\n仪式开始了，校长和那些黑袍人开始念诵咒语。\n\n祭坛上的符文开始发光，林晓月发出一声惨叫。\n\n你注意到祭坛旁边有一个火把，也许可以用它来打断仪式。",
                "choices": [
                    {
                        "text": "拿起火把扔向祭坛",
                        "next": "throw_torch"
                    },
                    {
                        "text": "找到机关",
                        "next": "find_switch"
                    }
                ]
            },
            "leave_call": {
                "id": "leave_call",
                "location": "secret_room",
                "text": "你转身离开，准备去报警。\n\n但当你走到楼梯口时，门已经关上了。\n\n身后传来一阵阴冷的笑声：\n\n\"你以为你能逃掉吗？\"\n\n你感到一只手抓住了你的肩膀...",
                "isEnd": true,
                "endType": "death",
                "endMessage": "你无处可逃...",
                "choices": []
            },
            "follow_principal": {
                "id": "follow_principal",
                "location": "archive_room",
                "text": "你跟着校长走进档案室，看到他推开一个档案柜，露出了一扇门。\n\n他走了进去，你悄悄跟在后面。\n\n门后面是一个楼梯，通往地下。\n\n你跟着他走下楼梯，来到了一个巨大的地下室。",
                "choices": [
                    {
                        "text": "继续跟踪",
                        "next": "go_down_stairs"
                    }
                ]
            },
            "hide_cabinet": {
                "id": "hide_cabinet",
                "location": "archive_room",
                "text": "你躲在档案柜后面，校长冲了进来。\n\n他在档案室里搜索，但没有找到你。\n\n\"出来吧...我知道你在这里...\"\n\n他的声音越来越近...\n\n突然，你听到他的脚步声停了下来。\n\n然后，他离开了。",
                "choices": [
                    {
                        "text": "出来查看",
                        "next": "check_room"
                    }
                ]
            },
            "run_from_principal": {
                "id": "run_from_principal",
                "location": "principal_office",
                "text": "你转身就跑，冲出了校长办公室。\n\n身后传来校长的声音：\"抓住他！\"\n\n你跑到走廊上，看到几个穿着黑袍的人朝你走来。\n\n你转身跑进了档案室，关上了门。",
                "choices": [
                    {
                        "text": "躲在档案柜后面",
                        "next": "hide_cabinet"
                    },
                    {
                        "text": "跑向地下室",
                        "next": "go_down_stairs"
                    }
                ]
            },
            "fight_principal": {
                "id": "fight_principal",
                "location": "principal_office",
                "text": "你冲向校长，试图夺下他手中的刀。\n\n但他比你想象的要强壮，他一脚踢开你，举起刀朝你刺来。\n\n你侧身躲开，撞到了办公桌。\n\n办公桌上的文件散落一地，你趁机拿起一个文件夹朝他扔去。\n\n他被文件夹击中，后退了几步。\n\n你趁机跑出了办公室。",
                "choices": [
                    {
                        "text": "跑进档案室",
                        "next": "enter_archive"
                    }
                ]
            },
            "find_weapon": {
                "id": "find_weapon",
                "location": "principal_office",
                "text": "你在办公室里寻找武器，看到桌子上有一个镇纸。\n\n你拿起镇纸，朝校长扔去。\n\n镇纸击中了他的头部，他倒在地上。\n\n你趁机跑出了办公室。",
                "choices": [
                    {
                        "text": "跑进档案室",
                        "next": "enter_archive"
                    }
                ]
            },
            "throw_torch": {
                "id": "throw_torch",
                "location": "secret_room",
                "text": "你拿起火把，朝祭坛扔去。\n\n火把落在祭坛上，点燃了上面的符文。\n\n\"不！\"校长大喊道。\n\n仪式被打断了，那些黑袍人发出一阵惨叫。\n\n林晓月身上的绳子松开了，她倒在地上。\n\n你冲过去，扶着她逃离了地下室。",
                "choices": [
                    {
                        "text": "逃离地下室",
                        "next": "escape_basement"
                    }
                ]
            },
            "find_switch": {
                "id": "find_switch",
                "location": "secret_room",
                "text": "你在暗处寻找机关，发现墙上有一个奇怪的按钮。\n\n你按下按钮，祭坛突然裂开了一道缝。\n\n\"怎么回事？！\"校长大喊道。\n\n裂缝中涌出一阵光芒，照亮了整个地下室。\n\n那些黑袍人开始消失，化为灰烬。\n\n校长发出一声惨叫，也消失了。",
                "choices": [
                    {
                        "text": "救林晓月",
                        "next": "save_moon"
                    }
                ]
            },
            "check_room": {
                "id": "check_room",
                "location": "archive_room",
                "text": "你出来查看，档案室里空无一人。\n\n你注意到那个档案柜后面的门是开着的。\n\n你走过去，看到楼梯下面传来微弱的光芒。\n\n你深吸一口气，走下楼梯。",
                "choices": [
                    {
                        "text": "走下楼梯",
                        "next": "go_down_stairs"
                    }
                ]
            },
            "escape_basement": {
                "id": "escape_basement",
                "location": "secret_room",
                "text": "你扶着林晓月，慢慢走出地下室。\n\n身后传来一阵爆炸声，地下室崩塌了。\n\n你和林晓月逃到了地面上，安全了。\n\n但你知道，这一切还没有结束...\n\n邪教组织还有其他成员，他们还会回来的...",
                "choices": [
                    {
                        "text": "离开学校",
                        "next": "leave_final"
                    }
                ]
            },
            "save_moon": {
                "id": "save_moon",
                "location": "secret_room",
                "text": "你跑到林晓月身边，解开她身上的绳子。\n\n\"...你来了...\"\n\n\"快跟我走！\"\n\n你扶着她，慢慢走出地下室。\n\n身后的光芒越来越亮，然后一切归于平静。\n\n你知道，那个地下墓穴的秘密终于被揭开了...",
                "choices": [
                    {
                        "text": "离开学校",
                        "next": "leave_final"
                    }
                ]
            },
            "leave_final": {
                "id": "leave_final",
                "location": "hallway_admin",
                "text": "你和林晓月离开了学校，报了警。\n\n警方封锁了学校，展开了调查。\n\n几天后，你从新闻上看到，那个邪教组织被一网打尽，校长和其他成员都被逮捕了。\n\n但你知道，这一切还没有真正结束...\n\n地下墓穴里的东西，也许还没有完全消失...\n\n校园惊魂系列第三章完。",
                "isEnd": true,
                "endType": "victory",
                "endMessage": "邪教组织被摧毁了，但地下墓穴的秘密还未完全揭开...",
                "choices": []
            }
        },
        "id": "horror_school_chapter3"
    },
    {
        "title": "校园惊魂·第四章",
        "subtitle": "最终决战",
        "description": "一切的真相即将揭开，最后的决战即将开始...",
        "author": "Radiation Studio",
        "version": "1.0",
        "features": {
            "inventory": true,
            "map": true
        },
        "items": [],
        "map": {
            "title": "地下墓穴",
            "locations": [
                {
                    "id": "tomb_entrance",
                    "name": "墓穴入口",
                    "description": "通往地下墓穴的入口"
                },
                {
                    "id": "tomb_hall",
                    "name": "墓穴大厅",
                    "description": "墓穴的主大厅"
                },
                {
                    "id": "sacrifice_chamber",
                    "name": "献祭室",
                    "description": "进行献祭仪式的房间"
                },
                {
                    "id": "demon_room",
                    "name": "恶魔之室",
                    "description": "封印恶魔的房间"
                },
                {
                    "id": "exit",
                    "name": "出口",
                    "description": "逃离墓穴的出口"
                }
            ],
            "startingLocation": "tomb_entrance"
        },
        "nodes": {
            "start": {
                "id": "start",
                "location": "tomb_entrance",
                "text": "一个月后，学校重新开学了。\n\n但你知道，事情还没有真正结束。\n\n那天晚上，你做了一个梦——张雪出现在你的梦中，她说：\n\n\"地下墓穴里还有一个东西...一个古老的恶魔...\"\n\n\"它即将苏醒...只有你能阻止它...\"\n\n第二天，你收到了一封邮件，附件是一张地图，标记着地下墓穴的位置。\n\n你决定前往地下墓穴，结束这一切。",
                "choices": [
                    {
                        "text": "进入墓穴",
                        "next": "enter_tomb"
                    },
                    {
                        "text": "叫上林晓月一起",
                        "next": "call_moon"
                    },
                    {
                        "text": "报警",
                        "next": "call_police"
                    }
                ]
            },
            "enter_tomb": {
                "id": "enter_tomb",
                "location": "tomb_entrance",
                "text": "你走进地下墓穴，里面一片漆黑。\n\n空气中弥漫着一股腐臭的味道，墙壁上的火把忽明忽暗。\n\n通道两旁是一些小房间，里面放着棺材。\n\n你听到一阵低沉的声音，像是从墓穴深处传来的。",
                "choices": [
                    {
                        "text": "继续深入",
                        "next": "go_deeper"
                    },
                    {
                        "text": "查看旁边的房间",
                        "next": "check_rooms"
                    },
                    {
                        "text": "回头离开",
                        "next": "leave_tomb"
                    }
                ]
            },
            "call_moon": {
                "id": "call_moon",
                "location": "tomb_entrance",
                "text": "你给林晓月打了电话，告诉她你的计划。\n\n\"你疯了吗？！\"她说道，\"太危险了！\"\n\n\"但如果我们不阻止它，会有更多人受害...\"\n\n沉默了一会儿，她说：\"好吧，我和你一起去。\"\n\n几分钟后，林晓月来到了墓穴入口，手里拿着一把手电筒。\n\n\"走吧...\"",
                "choices": [
                    {
                        "text": "进入墓穴",
                        "next": "enter_tomb"
                    }
                ]
            },
            "call_police": {
                "id": "call_police",
                "location": "tomb_entrance",
                "text": "你拨打了报警电话，但电话没有信号。\n\n墓穴太深了，信号无法到达这里。\n\n你只能依靠自己了。\n\n你深吸一口气，走进了墓穴。",
                "choices": [
                    {
                        "text": "进入墓穴",
                        "next": "enter_tomb"
                    }
                ]
            },
            "go_deeper": {
                "id": "go_deeper",
                "location": "tomb_hall",
                "text": "你继续深入，来到了一个巨大的大厅。\n\n大厅中央有一个祭坛，上面刻着奇怪的符文。\n\n祭坛周围站着几个穿着黑袍的人，他们正在进行某种仪式。\n\n祭坛上绑着一个女孩——是一个新来的学生！",
                "choices": [
                    {
                        "text": "冲进去救人",
                        "next": "rescue_girl"
                    },
                    {
                        "text": "躲在暗处观察",
                        "next": "observe_ritual"
                    },
                    {
                        "text": "寻找机会打断仪式",
                        "next": "find_opportunity"
                    }
                ]
            },
            "check_rooms": {
                "id": "check_rooms",
                "location": "tomb_hall",
                "text": "你查看了旁边的房间，发现里面都是棺材。\n\n其中一个棺材是开着的，里面躺着一具骸骨，旁边放着一把剑。\n\n剑身上刻着一些符文，看起来像是用来对付恶魔的武器。\n\n你拿起剑，感觉一阵力量涌入体内。",
                "actions": [
                    {
                        "type": "addItem",
                        "itemId": "holy_sword"
                    }
                ],
                "choices": [
                    {
                        "text": "继续深入",
                        "next": "go_deeper"
                    }
                ]
            },
            "leave_tomb": {
                "id": "leave_tomb",
                "location": "tomb_entrance",
                "text": "你转身准备离开，但墓穴的入口已经消失了。\n\n身后传来一阵低沉的声音：\n\n\"既然来了，就不要走了...\"\n\n你感到一阵寒意，转身看去...\n\n一个巨大的阴影笼罩着你...",
                "isEnd": true,
                "endType": "death",
                "endMessage": "你无法逃离命运...",
                "choices": []
            },
            "rescue_girl": {
                "id": "rescue_girl",
                "location": "tomb_hall",
                "text": "你冲进去，试图解开绑在女孩身上的绳子。\n\n但那些黑袍人转过身来，看到了你。\n\n\"又是你...\"\n\n他们朝你冲过来，你拔出剑（如果你有的话），和他们搏斗。",
                "choices": [
                    {
                        "text": "战斗",
                        "next": "fight_cult",
                        "condition": {
                            "hasItem": "holy_sword"
                        }
                    },
                    {
                        "text": "逃跑",
                        "next": "run_away",
                        "condition": {
                            "notHasItem": "holy_sword"
                        }
                    }
                ]
            },
            "observe_ritual": {
                "id": "observe_ritual",
                "text": "你躲在暗处观察，看到那些黑袍人正在念诵咒语。\n\n祭坛上的符文开始发光，女孩发出一声惨叫。\n\n突然，祭坛裂开了一道缝，一股黑色的烟雾从裂缝中涌出。\n\n烟雾中，一个巨大的身影慢慢浮现...",
                "location": "tomb_hall",
                "choices": [
                    {
                        "text": "冲进去打断仪式",
                        "next": "interrupt_ritual"
                    },
                    {
                        "text": "继续观察",
                        "next": "watch_demon"
                    }
                ]
            },
            "find_opportunity": {
                "id": "find_opportunity",
                "location": "tomb_hall",
                "text": "你躲在暗处，寻找机会。\n\n仪式进行到关键时刻，那些黑袍人闭上眼睛，开始念诵咒语。\n\n你注意到祭坛旁边有一个石柱，上面刻着一些符文。\n\n如果你能破坏那个石柱，也许就能打断仪式。",
                "choices": [
                    {
                        "text": "破坏石柱",
                        "next": "break_pillar"
                    },
                    {
                        "text": "寻找其他方法",
                        "next": "find_other_way"
                    }
                ]
            },
            "fight_cult": {
                "id": "fight_cult",
                "location": "tomb_hall",
                "text": "你拔出剑，和那些黑袍人搏斗。\n\n剑身上的符文发出光芒，那些黑袍人碰到剑就会化为灰烬。\n\n你很快就解决了他们，冲到祭坛旁边，解开了女孩身上的绳子。\n\n\"快跟我走！\"\n\n你扶着她，准备逃离。",
                "choices": [
                    {
                        "text": "逃离",
                        "next": "escape_with_girl"
                    }
                ]
            },
            "run_away": {
                "id": "run_away",
                "location": "tomb_hall",
                "text": "你转身就跑，但那些黑袍人追了上来。\n\n你跑到一个死胡同，无处可逃。\n\n他们包围了你，慢慢靠近...\n\n你感到一阵绝望...",
                "isEnd": true,
                "endType": "death",
                "endMessage": "你被包围了...",
                "choices": []
            },
            "interrupt_ritual": {
                "id": "interrupt_ritual",
                "location": "tomb_hall",
                "text": "你冲进去，大喊：\"住手！\"\n\n那些黑袍人转过身来，看到了你。\n\n\"你？！\"\n\n就在这时，祭坛裂开了，那个巨大的身影完全浮现出来。\n\n是一个恶魔！\n\n它发出一声咆哮，震耳欲聋。",
                "choices": [
                    {
                        "text": "战斗",
                        "next": "fight_demon",
                        "condition": {
                            "hasItem": "holy_sword"
                        }
                    },
                    {
                        "text": "逃跑",
                        "next": "run_from_demon",
                        "condition": {
                            "notHasItem": "holy_sword"
                        }
                    }
                ]
            },
            "watch_demon": {
                "id": "watch_demon",
                "location": "tomb_hall",
                "text": "你继续观察，那个巨大的身影完全浮现出来。\n\n是一个恶魔，长着巨大的翅膀和锋利的爪子。\n\n它发出一声咆哮，那些黑袍人纷纷跪下：\n\n\"伟大的主人...\"\n\n恶魔看了他们一眼，然后伸出手，将他们一个个捏碎。\n\n它的目光转向了你...",
                "choices": [
                    {
                        "text": "战斗",
                        "next": "fight_demon",
                        "condition": {
                            "hasItem": "holy_sword"
                        }
                    },
                    {
                        "text": "逃跑",
                        "next": "run_from_demon",
                        "condition": {
                            "notHasItem": "holy_sword"
                        }
                    }
                ]
            },
            "break_pillar": {
                "id": "break_pillar",
                "location": "tomb_hall",
                "text": "你冲过去，用剑（或者用石头）砸向石柱。\n\n\"砰！\"\n\n石柱裂开了，仪式被打断了。\n\n那些黑袍人发出一阵惨叫，化为灰烬。\n\n祭坛上的女孩晕倒了，但绳子已经松开了。\n\n你扶着她，准备逃离。\n\n但就在这时，祭坛裂开了...",
                "choices": [
                    {
                        "text": "继续逃离",
                        "next": "escape_with_girl"
                    },
                    {
                        "text": "面对恶魔",
                        "next": "fight_demon",
                        "condition": {
                            "hasItem": "holy_sword"
                        }
                    }
                ]
            },
            "find_other_way": {
                "id": "find_other_way",
                "location": "tomb_hall",
                "text": "你在大厅里寻找其他方法，发现墙上有一些符文。\n\n你仔细查看，发现这些符文是用来封印恶魔的。\n\n如果你能按照正确的顺序触碰这些符文，也许就能重新封印恶魔。",
                "choices": [
                    {
                        "text": "触碰符文",
                        "next": "touch_runes"
                    },
                    {
                        "text": "寻找武器",
                        "next": "check_rooms"
                    }
                ]
            },
            "escape_with_girl": {
                "id": "escape_with_girl",
                "location": "tomb_hall",
                "text": "你扶着女孩，朝出口跑去。\n\n但出口已经被恶魔堵住了。\n\n它站在出口前，看着你。\n\n\"你以为你能逃掉吗？\"\n\n它伸出手，一道黑色的能量朝你袭来。",
                "choices": [
                    {
                        "text": "用剑抵挡",
                        "next": "block_attack",
                        "condition": {
                            "hasItem": "holy_sword"
                        }
                    },
                    {
                        "text": "闪避",
                        "next": "dodge_attack",
                        "condition": {
                            "notHasItem": "holy_sword"
                        }
                    }
                ]
            },
            "fight_demon": {
                "id": "fight_demon",
                "location": "tomb_hall",
                "text": "你拔出剑，朝恶魔冲过去。\n\n剑身上的符文发出耀眼的光芒，照亮了整个大厅。\n\n恶魔发出一声咆哮，朝你扑来。\n\n你侧身躲开，然后一剑刺向它的胸口。\n\n\"啊！\"\n\n恶魔发出一声惨叫，但没有倒下。\n\n它伸出爪子，朝你抓来。",
                "choices": [
                    {
                        "text": "继续战斗",
                        "next": "continue_fight"
                    },
                    {
                        "text": "寻找弱点",
                        "next": "find_weakness"
                    }
                ]
            },
            "run_from_demon": {
                "id": "run_from_demon",
                "location": "tomb_hall",
                "text": "你转身就跑，但恶魔的速度太快了。\n\n它伸出手，抓住了你的肩膀。\n\n你感到一阵剧痛，然后被扔到了墙上。\n\n你摔倒在地，动弹不得。\n\n恶魔慢慢靠近...",
                "isEnd": true,
                "endType": "death",
                "endMessage": "你太弱小了...",
                "choices": []
            },
            "touch_runes": {
                "id": "touch_runes",
                "location": "tomb_hall",
                "text": "你按照正确的顺序触碰墙上的符文。\n\n符文开始发光，形成一道封印。\n\n恶魔发出一声咆哮，试图挣脱封印。\n\n但封印越来越紧，恶魔的身体开始消散。\n\n\"不...这不可能...\"\n\n它发出最后一声惨叫，然后消失了。",
                "choices": [
                    {
                        "text": "查看女孩",
                        "next": "check_girl"
                    }
                ]
            },
            "block_attack": {
                "id": "block_attack",
                "location": "tomb_hall",
                "text": "你举起剑，抵挡恶魔的攻击。\n\n剑身上的符文发出光芒，黑色的能量被弹开了。\n\n\"什么？！\"\n\n恶魔露出惊讶的表情。\n\n你趁机冲过去，一剑刺向它的胸口。",
                "choices": [
                    {
                        "text": "继续战斗",
                        "next": "continue_fight"
                    }
                ]
            },
            "dodge_attack": {
                "id": "dodge_attack",
                "location": "tomb_hall",
                "text": "你侧身躲开，黑色的能量击中了墙壁，炸开了一个大洞。\n\n你趁机冲进那个洞里，发现里面是一条通道。\n\n你扶着女孩，沿着通道跑了出去。\n\n身后传来恶魔的咆哮声，但你们已经安全了。",
                "choices": [
                    {
                        "text": "逃离墓穴",
                        "next": "escape_tomb"
                    }
                ]
            },
            "continue_fight": {
                "id": "continue_fight",
                "location": "tomb_hall",
                "text": "你继续和恶魔战斗，剑身上的符文越来越亮。\n\n你一剑一剑地刺向恶魔，它的身体开始变得透明。\n\n\"我不会消失的...\"\n\n它发出最后一声咆哮，然后化为灰烬。\n\n大厅里一片寂静，只有火把燃烧的声音。",
                "choices": [
                    {
                        "text": "查看女孩",
                        "next": "check_girl"
                    }
                ]
            },
            "find_weakness": {
                "id": "find_weakness",
                "location": "tomb_hall",
                "text": "你一边躲避恶魔的攻击，一边观察它。\n\n你发现它的胸口有一个发光的点，那是它的弱点！\n\n你抓住机会，一剑刺向那个发光点。\n\n\"啊！\"\n\n恶魔发出一声惨叫，身体开始消散。\n\n它伸出手，试图抓住你，但最终还是消失了。",
                "choices": [
                    {
                        "text": "查看女孩",
                        "next": "check_girl"
                    }
                ]
            },
            "check_girl": {
                "id": "check_girl",
                "location": "tomb_hall",
                "text": "你跑到女孩身边，她已经醒了过来。\n\n\"...谢谢你...\"\n\n\"快跟我走！\"\n\n你扶着她，朝出口走去。\n\n墓穴开始崩塌，你们必须尽快离开。",
                "choices": [
                    {
                        "text": "逃离墓穴",
                        "next": "escape_tomb"
                    }
                ]
            },
            "escape_tomb": {
                "id": "escape_tomb",
                "location": "exit",
                "text": "你和女孩终于逃出了墓穴，回到了地面上。\n\n墓穴在你们身后崩塌，化为一片废墟。\n\n阳光洒在你们身上，你感到一阵温暖。\n\n女孩看着你，眼中充满感激：\n\n\"谢谢你救了我...\"\n\n你笑了笑：\"不客气...\"\n\n你知道，这一切终于结束了...",
                "choices": [
                    {
                        "text": "离开",
                        "next": "ending"
                    }
                ]
            },
            "ending": {
                "id": "ending",
                "location": "exit",
                "text": "几天后，学校恢复了平静。\n\n那个邪教组织被彻底摧毁，恶魔也被封印了。\n\n张雪的灵魂终于可以安息了，她出现在你的梦中，微笑着说：\n\n\"谢谢你...一切都结束了...\"\n\n你从梦中醒来，阳光透过窗户照进来。\n\n你走到窗边，看着学校的钟楼。\n\n一切都结束了，但那些记忆永远不会消失...\n\n校园惊魂系列终章完。",
                "isEnd": true,
                "endType": "victory",
                "endMessage": "一切都结束了，校园终于恢复了平静。但那些恐怖的记忆，将永远留在你的心中...",
                "choices": []
            }
        },
        "id": "horror_school_chapter4"
    },
    {
        "title": "盗棺笔记-上",
        "subtitle": "南岭棺道",
        "description": "爷爷死后，棺材里传来敲击声。一个披蓑衣的老人告诉我：棺里不是爷爷，沈家欠下的棺债，该轮到我来还了。",
        "author": "Radiation Studio",
        "version": "1.0",
        "features": {
            "inventory": true,
            "map": true
        },
        "items": [
            {
                "id": "black_jade_ring",
                "name": "黑玉戒",
                "icon": "💍",
                "description": "爷爷生前从不离身的戒指。黑玉不亮，像一滴凝固的墨，靠近火光时会泛出一线暗红。爷爷说它不是饰物，是锁。"
            },
            {
                "id": "copper_coin",
                "name": "染血铜钱",
                "icon": "💰",
                "description": "蓑衣老人留下的铜钱，中间穿着红绳，边缘磨得发亮。抹上血后会微微发黑。"
            },
            {
                "id": "half_nail",
                "name": "半截棺钉",
                "icon": "📌",
                "description": "沈家神龛木匣里发现的半截棺钉，发黑发锈，像从棺材里硬拔出来的。"
            },
            {
                "id": "yellow_paper",
                "name": "三角黄纸",
                "icon": "📜",
                "description": "木匣里折成三角形的黄纸，一露面棺材里的东西就醒了。被陆沉夺走塞进怀里。"
            },
            {
                "id": "red_pouch",
                "name": "红布包·鸡血",
                "icon": "🔴",
                "description": "厨房梁上挂着的红布袋，里面是一只小瓷瓶，瓶口用蜡封着，装着暗红色的液体。"
            },
            {
                "id": "zhen_guang_ling",
                "name": "镇棺铃",
                "icon": "🔔",
                "description": "爷爷留给孙子的铜铃。铜铃已经旧得发黑，铃口裂了一道缝。爷爷说“有时候能救命，有时候会要命”。"
            },
            {
                "id": "notebook_fragment",
                "name": "残笔记",
                "icon": "📓",
                "description": "爷爷烧剩下的残页，焦黑卷边。写着：“南岭三十六坳，坳坳通阴。黑棺不可落地。见灯勿近，闻铃勿回。入棺道口。”"
            },
            {
                "id": "rong_amulet",
                "name": "红绳护身",
                "icon": "🧵",
                "description": "陆沉用指尖血抹过的红绳，缠在左腕上，能暂时压住棺名。"
            }
        ],
        "map": {
            "title": "南岭棺道",
            "locations": [
                {
                    "id": "shen_home",
                    "name": "沈家堂屋",
                    "description": "爷爷的棺材停在这里。棺盖压着铜钱和半截棺钉。"
                },
                {
                    "id": "tea_hill",
                    "name": "废弃茶山",
                    "description": "村后荒废多年的茶山。旧年间叫抬棺路，死人从这条路抬进山里。"
                },
                {
                    "id": "tomb_road",
                    "name": "棺道口",
                    "description": "老林入口，歪斜石碑上刻着“棺道”二字，像用指甲抠出来的。"
                },
                {
                    "id": "old_huai_tree",
                    "name": "老槐树空地",
                    "description": "棺道入口前的空地。老槐树下摆着一口黑棺，棺前跪着一个和爷爷一模一样的“棺影”。"
                },
                {
                    "id": "outer_road",
                    "name": "棺道外道",
                    "description": "山壁裂缝后的青砖甬道。两侧石壁上嵌满巴掌大的小棺材，每一口下面都刻着一个死人名字。"
                },
                {
                    "id": "three_forks",
                    "name": "三岔路口",
                    "description": "三条路：生路、死路、棺路。石碑下各有小字——入者不生、入者不死、入者无名。"
                },
                {
                    "id": "dead_road",
                    "name": "死路",
                    "description": "两侧墙壁缓缓合拢，头顶垂下白布条，写满人的生辰八字。尽头是七口悬棺。"
                },
                {
                    "id": "deng_temple",
                    "name": "阴灯前",
                    "description": "青铜古灯燃着幽蓝火焰。灯前站着沈江——失踪二十年的沈家长子。"
                },
                {
                    "id": "wu_zhu_jia",
                    "name": "无主家",
                    "description": "棺道尽头，阴灯后的石门。石门上刻着倒悬棺材。无主家开门，便是棺主的巢穴。"
                }
            ],
            "startingLocation": "shen_home"
        },
        "start": "start",
        "nodes": {
            "start": {
                "id": "start",
                "location": "shen_home",
                "text": "南岭连下了七天雨。\n\n爷爷死在第七天傍晚。他躺在堂屋正中的棺木里，身上盖着发黄的寿被，脸色青白，嘴角却像挂着一丝笑。\n\n村里老礼生摸了他的脉，又拿铜镜探鼻息，最后摇头说：“没气了，准备后事吧。”\n\n下葬前一夜，雨更大了。堂屋里的白蜡烛忽明忽暗，纸钱灰在地上打旋。\n\n我跪得膝盖发麻，正要起身添灯油，忽然听见棺材里传来一声轻响——\n\n“咚。”",
                "choices": [
                    {
                        "text": "靠近棺材细听",
                        "next": "listen_coffin"
                    },
                    {
                        "text": "叫醒母亲和二叔",
                        "next": "wake_family"
                    },
                    {
                        "text": "假装没听见",
                        "next": "ignore_sound"
                    }
                ]
            },
            "ignore_sound": {
                "id": "ignore_sound",
                "location": "shen_home",
                "text": "我告诉自己一定是听错了。雨声太大，竹叶噼啪作响，棺材里怎么可能有声音？\n\n可第二声紧跟着来了。\n\n“咚。”\n\n比第一声更重，更实。像有人在棺材内壁用指节敲门。\n\n我母亲手里的纸钱散了一地。二叔猛地站了起来。",
                "choices": [
                    {
                        "text": "看向棺材",
                        "next": "listen_coffin"
                    }
                ]
            },
            "wake_family": {
                "id": "wake_family",
                "location": "shen_home",
                "text": "我叫醒了母亲和二叔。母亲睡眼惺忪，二叔却像早就在等这一刻——他猛地睁开眼睛，死死盯向棺材。\n\n然后，棺材里又响了。\n\n“咚。咚。咚。”\n\n不急不慢，三声。像有人在里面用指节敲门。\n\n母亲跪在地上哭，说爷爷一辈子老实，从没害过人，求祖宗保佑。二叔却像疯了一样，抓起墙角的柴刀，狠狠劈向棺钉。",
                "choices": [
                    {
                        "text": "拦住二叔",
                        "next": "stop_uncle"
                    },
                    {
                        "text": "帮他撬棺",
                        "next": "help_open"
                    }
                ]
            },
            "stop_uncle": {
                "id": "stop_uncle",
                "location": "shen_home",
                "text": "我冲过去抱住二叔的腰：“不能开！人已入殓，半夜开棺是犯忌！”\n\n二叔甩开我，喉咙里发出急促的“啊啊”声，脸涨得通红，拼命想说什么。\n\n可就在这时，棺材里的声音停了。\n\n门口传来了一个苍老的声音。\n\n“不能开。”\n\n那声音不大，却像贴着耳朵说的。",
                "choices": [
                    {
                        "text": "回头看向门口",
                        "next": "old_man_arrives"
                    }
                ]
            },
            "help_open": {
                "id": "help_open",
                "location": "shen_home",
                "text": "我帮二叔按住棺盖。柴刀落下，木屑飞溅，棺钉松了。\n\n二叔正要劈第三刀，屋外忽然传来一声冷喝——\n\n“不能开！”\n\n那声音像一把冰锥，扎进堂屋里每个人的耳朵。\n\n二叔的手僵在半空，柴刀“当啷”一声掉在地上。",
                "choices": [
                    {
                        "text": "回头看向门口",
                        "next": "old_man_arrives"
                    }
                ]
            },
            "listen_coffin": {
                "id": "listen_coffin",
                "location": "shen_home",
                "text": "我屏住呼吸，耳朵贴近棺材。\n\n里面没有声音。\n\n可我刚要后退，棺材里突然传来一阵刺耳的抓挠声——\n\n不是敲。\n\n是抓。\n\n像有什么东西用指甲在棺材内壁拼命刮动。\n\n母亲尖叫一声，二叔抄起柴刀就冲了过来。\n\n就在这时，门口传来一个声音：“不能开。”",
                "choices": [
                    {
                        "text": "回头看向门口",
                        "next": "old_man_arrives"
                    }
                ]
            },
            "old_man_arrives": {
                "id": "old_man_arrives",
                "location": "shen_home",
                "text": "门口不知何时站着一个披蓑衣的老人。\n\n他身材干瘦，斗笠遮住大半张脸，只露出一截灰白胡子。雨水顺着蓑衣往下淌，滴在门槛上，却没有一点脚步声。\n\n他慢慢走进堂屋，身上带着一股潮湿的土腥味。从怀里摸出一枚铜钱，红绳穿着，边缘磨得发亮。\n\n二叔看见那枚铜钱，脸色大变，往后连退两步。\n\n老人看着他，叹了口气：“二十年了，你还是怕。”",
                "choices": [
                    {
                        "text": "问他是谁",
                        "next": "ask_who"
                    },
                    {
                        "text": "问他棺材里是什么",
                        "next": "ask_coffin"
                    }
                ]
            },
            "ask_who": {
                "id": "ask_who",
                "location": "shen_home",
                "text": "“你是谁？”我问。\n\n老人没有回答。他转头看向我，一只眼睛浑浊，一只眼睛清亮。清亮的那只盯着我时，我觉得自己像被什么东西从头到脚看穿了。\n\n“你就是沈老鬼的孙子？”\n\n我点了点头。\n\n他沉默片刻，低声道：“棺里不是你爹。”",
                "choices": [
                    {
                        "text": "“那里面是什么？”",
                        "next": "ask_coffin"
                    }
                ]
            },
            "ask_coffin": {
                "id": "ask_coffin",
                "location": "shen_home",
                "text": "“那里面是什么？”我听见自己的声音在发抖。\n\n老人把铜钱按在棺盖上。棺材里的抓挠声立刻停了。\n\n堂屋安静得只剩雨声。\n\n过了很久，他才说：“是一笔旧账。”\n\n话音刚落，棺盖猛地一震。四角白蜡烛同时熄灭。\n\n黑暗中，老人一把抓住我的手腕，力气大得像铁钳。他的声音贴在我耳边，低得几乎听不清。\n\n“孩子，记住。今晚你看到的，不许告诉任何人。”\n\n“为什么？”\n\n他停了一下。\n\n“因为从今晚开始，沈家欠下的棺债，要轮到你来还了。”\n\n话音未落，堂屋深处传来“咔嘣”一声。\n\n棺材开了一条缝。\n\n一只青黑色的手，从缝里慢慢伸了出来。那只手的无名指上，戴着一枚黑玉戒指——\n\n那是爷爷生前从不离身的戒指。",
                "choices": [
                    {
                        "text": "盯着那只手",
                        "next": "black_hand"
                    },
                    {
                        "text": "后退",
                        "next": "step_back"
                    }
                ]
            },
            "step_back": {
                "id": "step_back",
                "location": "shen_home",
                "text": "我往后猛退一步，后背撞上供桌。碗盏叮当乱响，香灰洒了一地。\n\n可那只手没有追来。它只是搭在棺沿上，五指僵硬弯曲，指甲乌紫，像在地底泡了许多年。\n\n真正让我心口发冷的，是那枚黑玉戒——\n\n它和爷爷手上那枚，一模一样。",
                "choices": [
                    {
                        "text": "盯着那只手",
                        "next": "black_hand"
                    }
                ]
            },
            "black_hand": {
                "id": "black_hand",
                "location": "shen_home",
                "text": "那只手伸出来的时候，我没有叫。\n\n不是不怕，是怕到了极点，喉咙像被一团湿泥堵住，半点声音都挤不出来。\n\n堂屋里漆黑一片，只有闪电掠过时才能照见那口棺材。\n\n棺盖开了一条窄缝，那只青黑色的手就搭在棺沿上。\n\n戒指戴在无名指上。黑玉不亮，像一滴凝固的墨。可我知道，靠近火光时，它里面会泛出一线暗红。\n\n我小时候偷摘过那枚戒指，爷爷第一次对我动了怒。\n\n他说：“这东西不是饰物，是锁。”\n\n如今，那枚锁，戴在棺材里伸出来的手上。\n\n蓑衣老人说棺里不是我爷爷——那这只手是谁的？",
                "choices": [
                    {
                        "text": "问老人这只手是谁的",
                        "next": "ask_hand"
                    },
                    {
                        "text": "看向二叔",
                        "next": "look_uncle"
                    }
                ]
            },
            "ask_hand": {
                "id": "ask_hand",
                "location": "shen_home",
                "text": "“这只手是谁的？”我声音发哑。\n\n老人没有回答。他盯着那只手，脸色前所未有的凝重。\n\n“它醒了。”他低声说。\n\n然后他转头冲我喊：“把鸡血拿来！厨房梁上挂着的红布袋！”\n\n我愣着没动。\n\n“快！”\n\n我这才反应过来，跌跌撞撞往厨房跑。",
                "choices": [
                    {
                        "text": "跑去厨房",
                        "next": "get_blood"
                    }
                ]
            },
            "look_uncle": {
                "id": "look_uncle",
                "location": "shen_home",
                "text": "我看向二叔。他死死盯着那只手，嘴唇抖得厉害，喉咙里发出像破风箱一样的声音。\n\n老人忽然低喝一声：“二哑，别看了！”\n\n二叔猛地回过神，一张脸已经惨白如纸。\n\n老人转头对我道：“去厨房，把梁上那只红布袋拿来——快！”",
                "choices": [
                    {
                        "text": "跑去厨房",
                        "next": "get_blood"
                    }
                ]
            },
            "get_blood": {
                "id": "get_blood",
                "location": "shen_home",
                "text": "我冲进厨房。\n\n厨房里冷得不像话。明明是夏初，灶台边却像进了腊月。\n\n梁上确实挂着一只红布袋。我踮脚取下来，里面是一只小瓷瓶，瓶口用蜡封着。\n\n我刚把瓷瓶握在手里，身后忽然响起一道声音——\n\n“阿舟。”\n\n那声音很轻，很哑。\n\n却是爷爷的声音。\n\n我整个人僵住了。",
                "choices": [
                    {
                        "text": "回头",
                        "next": "grandpa_voice"
                    },
                    {
                        "text": "不回头，冲出厨房",
                        "next": "dont_look_back"
                    }
                ]
            },
            "dont_look_back": {
                "id": "dont_look_back",
                "location": "shen_home",
                "text": "我没有回头。\n\n爷爷生前说过：夜里听见死人叫名，第一声不能应，第二声不能回头，第三声若还听见，就要咬破舌尖往前跑。\n\n“阿舟。”\n\n第二声响起时，我攥紧瓷瓶，咬紧牙关。\n\n“阿舟。”\n\n第三声。\n\n我牙关一紧，狠狠咬破舌尖。疼得眼前一黑，血腥味在嘴里散开的瞬间，身后的声音戛然而止。\n\n我不敢停，抓着瓷瓶冲回堂屋。",
                "choices": [
                    {
                        "text": "冲回堂屋",
                        "next": "back_to_hall"
                    }
                ]
            },
            "grandpa_voice": {
                "id": "grandpa_voice",
                "location": "shen_home",
                "text": "我转过身。\n\n厨房门外没有人。可雨声里，那个声音又响了一次——\n\n“阿舟，别信他。”\n\n这一次，我听得更清楚了。那声音从雨缝里钻进来，贴着我的后颈说话。\n\n村里老人说，夜里听见死人叫名，第一声不能应，第二声不能回头，第三声若还听见，就要咬破舌尖往前跑。\n\n“阿舟。”\n\n第三声来了。\n\n我咬破舌尖，疼得眼前发黑，转身冲回堂屋。",
                "choices": [
                    {
                        "text": "冲回堂屋",
                        "next": "back_to_hall"
                    }
                ]
            },
            "back_to_hall": {
                "id": "back_to_hall",
                "location": "shen_home",
                "text": "我冲回堂屋时，那只青黑色的手已经缩回了棺材。\n\n老人接过瓷瓶，咬开蜡封，把暗红色的液体泼在棺盖上。\n\n鸡血落到棺木表面，竟发出“滋滋”的轻响，像泼在烧红的铁上。\n\n棺材里随即传来一声闷吼——不像人，更像野兽被压在泥底，喉咙里挤出来的一口怨气。\n\n老人趁机用短刀挑起那半截棺钉，对准棺盖缝隙狠狠钉了下去。\n\n“砰！”第一下，棺材震动。\n\n“砰！”第二下，梁上灰尘落下。\n\n“砰！”第三下落下时，棺材终于安静了。\n\n屋外的雨也像突然小了。\n\n我扶着门框大口喘气，后背已经湿透。",
                "choices": [
                    {
                        "text": "问老人里面到底是什么",
                        "next": "ask_truth"
                    }
                ]
            },
            "ask_truth": {
                "id": "ask_truth",
                "location": "shen_home",
                "text": "“里面到底是什么？”我问。\n\n老人看了我一眼，没有立刻回答。他走到堂屋门口，摘下斗笠。\n\n我这才看清他的脸——左脸有一道很长的疤，从眉骨一直拖到下巴，像被什么尖锐的东西硬生生划开过。右耳后面有一块黑色刺青，是一个棺材形状，中间竖着三道细线。\n\n我在爷爷的旧笔记里见过这个图案。那本笔记封皮上写着四个字：南岭棺录。\n\n“我姓陆，叫陆沉。”他说，“你爷爷年轻时，和我一起走过棺道。”\n\n“棺道？”\n\n“活人走山路，死人走阴路。棺道，就是夹在两者中间的路。”",
                "choices": [
                    {
                        "text": "“爷爷还活着吗？”",
                        "next": "is_grandpa_alive"
                    },
                    {
                        "text": "“棺道在哪里？”",
                        "next": "where_road"
                    }
                ]
            },
            "is_grandpa_alive": {
                "id": "is_grandpa_alive",
                "location": "shen_home",
                "text": "“我爷爷……还活着吗？”\n\n陆沉沉默了很久。\n\n然后他说：“你爷爷没死。”\n\n我脑子里轰的一声。\n\n“那这口棺材里是谁？”\n\n“是替身。你爷爷真正的身子，被带回南岭了。”\n\n“谁带走的？”\n\n陆沉缓缓吐出两个字：\n\n“棺主。”\n\n这两个字像一块冷铁，压得人喘不过气。",
                "choices": [
                    {
                        "text": "“我怎么才能找到他？”",
                        "next": "find_grandpa"
                    }
                ]
            },
            "find_grandpa": {
                "id": "find_grandpa",
                "location": "shen_home",
                "text": "“我怎么才能找到他？”\n\n陆沉看向屋外的雨。天边已经泛起一点灰白。\n\n“村后老林，有一条路叫棺道。你爷爷就在那里。”\n\n“棺道是什么？”\n\n“活人走山路，死人走阴路。棺道，就是夹在两者中间的路。”\n\n他话音刚落，棺材里忽然传来一个声音——\n\n“阿舟。”\n\n苍老、沙哑，却是爷爷的声音。\n\n这一次，声音不是从门外传来的。\n\n是从棺材里面。",
                "choices": [
                    {
                        "text": "“爷爷？”",
                        "next": "grandpa_in_coffin"
                    },
                    {
                        "text": "问陆沉怎么办",
                        "next": "ask_road"
                    }
                ]
            },
            "where_road": {
                "id": "where_road",
                "location": "shen_home",
                "text": "“棺道在哪里？”\n\n陆沉看向屋外的雨。天边已经泛起一点灰白。\n\n“村后老林。天亮前，我带你走一趟。”\n\n“这么急？”\n\n“因为天亮后，这口棺材就压不住了。”\n\n他话音刚落，棺材里忽然传来一个声音——\n\n“阿舟。”\n\n苍老、沙哑，却是爷爷的声音。\n\n这一次，声音不是从门外传来的。\n\n是从棺材里面。",
                "choices": [
                    {
                        "text": "“爷爷？”",
                        "next": "grandpa_in_coffin"
                    },
                    {
                        "text": "问陆沉怎么办",
                        "next": "ask_road"
                    }
                ]
            },
            "grandpa_in_coffin": {
                "id": "grandpa_in_coffin",
                "location": "shen_home",
                "text": "“爷爷？”我冲到棺材前。\n\n陆沉一把拉住我：“别应！”\n\n可那声音又响了一次——\n\n“阿舟……开棺……”\n\n这一次，声音里多了几分急切，还带着爷爷平日训我时那种熟悉的沙哑。\n\n“阿舟，爷爷冷。”\n\n我母亲听到这句话，哭得几乎站不稳。\n\n二叔在地上划字：不要开。\n\n陆沉从怀里摸出那张三角黄纸，贴在棺盖上，低声念了几句。黄纸一贴上去，棺材里立刻传来一阵尖细的笑声——许多人挤在一张喉咙里，同时笑出声。\n\n“不能拖了。”陆沉说，“天亮前，必须把这口棺送到村东老槐树下。”\n\n他看向我：“要走，现在就走。”",
                "choices": [
                    {
                        "text": "跟陆沉走",
                        "next": "leave_home"
                    },
                    {
                        "text": "留下来守棺",
                        "next": "stay_home"
                    }
                ]
            },
            "stay_home": {
                "id": "stay_home",
                "location": "shen_home",
                "text": "我选择留下来。\n\n可那一夜，棺材里的声音再也没有停过。母亲疯了，二叔的舌头彻底黑了。\n\n天亮后，陆沉一个人走了。临走前他说：“沈家人可以怕死，但不能欠死人债。”\n\n我攥紧拳头，追了出去。",
                "choices": [
                    {
                        "text": "追出去",
                        "next": "leave_home"
                    }
                ]
            },
            "ask_road": {
                "id": "ask_road",
                "location": "shen_home",
                "text": "“怎么办？”我问陆沉。\n\n“带上你爷爷留给你的东西，跟我走。”\n\n我回头看了一眼堂屋。母亲坐在地上，抱着昏迷的二叔，眼神已经哭空了。那口棺材静静摆在堂屋中央，棺盖上压着铜钱和半截棺钉。\n\n可我知道，里面的东西还醒着。\n\n我找出爷爷留下那本烧过一半的残笔记，塞进怀里。又解下腰间那枚铜铃——那是母亲刚才塞给我的，说是爷爷以前挂在身上的。\n\n陆沉看见铜铃，眼神微变：“镇棺铃。你爷爷留给你的？”\n\n“嗯。”\n\n“有时候能救命，有时候会要命。”\n\n我把铜铃系在腰间，它没有响。\n\n像死了一样。",
                "choices": [
                    {
                        "text": "跟着陆沉离开",
                        "next": "leave_home"
                    }
                ]
            },
            "leave_home": {
                "id": "leave_home",
                "location": "tea_hill",
                "text": "我们从后门离开沈家，沿着村后的泥路往山里走。雨水打在竹叶上，噼里啪啦像无数细小的脚步声。\n\n天边已有微光，可山里仍旧黑沉沉的，像一张张开的嘴。\n\n陆沉走在前面。他脚下极稳，泥路上几乎不留脚印。\n\n走了不到半个时辰，我鞋底全是泥，腿也开始发酸。\n\n“陆叔，”我喘着气问，“棺道到底是什么地方？”\n\n“不是地方，是路。”\n\n“路不就是地方？”\n\n“普通路给活人走，黄泉路给死人走。棺道，是给不该死的人和不该活的东西走的。”",
                "choices": [
                    {
                        "text": "继续走",
                        "next": "tea_hill_deep"
                    }
                ]
            },
            "tea_hill_deep": {
                "id": "tea_hill_deep",
                "location": "tea_hill",
                "text": "山路越走越窄。村后的竹林尽头，是一片荒废多年的茶山。茶树早没人打理，枝叶疯长，路被野草掩得只剩一条若有若无的黑线。\n\n陆沉说，这条路以前叫抬棺路。旧年间，南岭各村有人横死、客死、淹死，不能入祖坟，就从这条路抬进山里。\n\n“后来呢？”\n\n“后来村里怪事太多，路就废了。”\n\n“什么怪事？”\n\n“有人夜里听见山上传来唢呐声。还有人看见纸人抬着空棺下山。”\n\n我听得心里发毛，忍不住看向脚下。泥水里混着落叶，偶尔能看见几块发白的碎石，像埋在土里的骨头。\n\n走到茶山尽头时，天终于亮了。\n\n可山里没有鸟叫。雨也停了。\n\n四周静得不正常。",
                "choices": [
                    {
                        "text": "看向前方",
                        "next": "tomb_road_enter"
                    }
                ]
            },
            "tomb_road_enter": {
                "id": "tomb_road_enter",
                "location": "tomb_road",
                "text": "前方是一片老林。树木高大，枝叶交错，黑压压遮住天光。\n\n林子入口处立着一块歪斜的石碑，碑面长满青苔，只隐约能看见两个字——\n\n棺道。\n\n那两个字不是刻上去的，更像被人用指甲一笔一笔抠出来的。\n\n我刚想走近看清，腰间的铜铃忽然轻轻响了一声。\n\n叮。\n\n声音很轻，却在死寂的山林里传得很远。\n\n陆沉脸色骤变。\n\n下一刻，老林深处传来一阵回应——\n\n叮。叮。叮。\n\n一声接一声。像有很多铃铛藏在林子里，同时醒了过来。\n\n陆沉反手抽出短刀：“从现在起，不管听见什么，都不要回头。”\n\n“为什么？”\n\n“因为棺道上最喜欢叫人的，不是死人——是棺材。”",
                "choices": [
                    {
                        "text": "踏入棺道",
                        "next": "enter_road"
                    },
                    {
                        "text": "犹豫",
                        "next": "hesitate_road"
                    }
                ]
            },
            "hesitate_road": {
                "id": "hesitate_road",
                "location": "tomb_road",
                "text": "我站在石碑前，双腿像灌了铅。\n\n身后是沈家，身前是棺道。\n\n陆沉没有催我。他只是站在老林入口，等着我自己做决定。\n\n我想起爷爷的话：沈家人可以怕死，但不能欠死人债。\n\n我深吸一口气，踏了进去。",
                "choices": [
                    {
                        "text": "踏入棺道",
                        "next": "enter_road"
                    }
                ]
            },
            "enter_road": {
                "id": "enter_road",
                "location": "tomb_road",
                "text": "踏进老林的那一刻，天光彻底暗了下来。\n\n明明外面是清晨，林子里却像还在半夜。树干上缠满藤蔓，藤蔓之间挂着褪色的红布条。有些布条上写着字，有些只剩暗红色的污迹。\n\n走了没多久，我就发现不对劲——\n\n身后的脚步声变多了。\n\n一开始，只有我和陆沉两个人的脚步。\n\n后来变成了三个。\n\n再后来，像有一整队人跟在我们后面，脚步整齐、沉重，踩得泥水啪嗒作响。\n\n除了脚步声，还有木头摩擦的声音。\n\n吱呀。吱呀。\n\n像有人抬着一口沉重的棺材，正在我们身后慢慢走。\n\n腰间的铜铃又响了。\n\n叮。\n\n这一次，铃声响起后，身后的队伍也停了。\n\n然后，一个熟悉的声音从我背后传来——\n\n“阿舟，扶爷爷一把。”",
                "choices": [
                    {
                        "text": "不回头，继续走",
                        "next": "dont_look_road"
                    },
                    {
                        "text": "回头",
                        "next": "look_back_road"
                    }
                ]
            },
            "look_back_road": {
                "id": "look_back_road",
                "location": "tomb_road",
                "text": "我忍不住回了头。\n\n身后什么都没有。没有队伍，没有抬棺人，只有一条被浓雾吞没的路。\n\n可就在我转回头的一瞬间，陆沉脸色变了——\n\n“你脸上有东西。”\n\n我抬手一摸，指尖触到一片冰凉。那是一张黄纸，上面写着三个字：\n\n沈长河。\n\n我的名字。",
                "choices": [
                    {
                        "text": "撕掉黄纸",
                        "next": "tear_paper"
                    },
                    {
                        "text": "问陆沉这是什么",
                        "next": "ask_paper"
                    }
                ]
            },
            "tear_paper": {
                "id": "tear_paper",
                "location": "tomb_road",
                "text": "我猛地撕掉黄纸。纸片落地，却像活物一样扭动了一下，然后化作黑烟渗进泥里。\n\n陆沉脸色难看：“它知道你名字了。”",
                "choices": [
                    {
                        "text": "继续走",
                        "next": "dont_look_road"
                    }
                ]
            },
            "ask_paper": {
                "id": "ask_paper",
                "location": "tomb_road",
                "text": "“这是什么？”\n\n陆沉看了一眼：“阴名贴。贴在你身上，你就算被棺道记了名。”\n\n“会怎样？”\n\n“棺道记了名，棺材就会来找你。”\n\n他话音刚落，前方林子里传来一声闷响。\n\n咚。\n\n像棺材落地。",
                "choices": [
                    {
                        "text": "继续走",
                        "next": "dont_look_road"
                    }
                ]
            },
            "dont_look_road": {
                "id": "dont_look_road",
                "location": "old_huai_tree",
                "text": "我咬牙不回头，跟着陆沉一直走到林子深处。\n\n前方忽然出现一片空地。空地中央有一棵巨大的老槐树，树干粗得三个人都抱不过来。\n\n槐树下面，摆着一口棺材。通体漆黑，没有棺架，就这么直接压在泥地上。\n\n棺材前跪着一个人。\n\n那人穿灰色寿衣，背对着我们，头低垂着，像在给棺材磕头。\n\n我正想问那是谁，陆沉猛地捂住我的嘴。\n\n“别出声。”\n\n我顺着他的目光看过去——\n\n跪着的那个人，右手无名指上戴着一枚黑玉戒。\n\n和爷爷那枚一模一样。\n\n这时，他慢慢抬起头。\n\n脖子发出“咔、咔”的响声，一点一点转了过来。\n\n那张脸，和爷爷一模一样。\n\n只是眼睛全是黑的。没有眼白，没有瞳仁，像两口小小的棺材。",
                "choices": [
                    {
                        "text": "盯着他",
                        "next": "shadow_grandpa"
                    },
                    {
                        "text": "后退",
                        "next": "step_back_tree"
                    }
                ]
            },
            "step_back_tree": {
                "id": "step_back_tree",
                "location": "old_huai_tree",
                "text": "我往后退了一步，踩到一根枯枝。\n\n“啪。”\n\n那个和爷爷长得一模一样的东西，耳朵微微动了一下。\n\n然后他站了起来。动作很慢，膝盖和腰背都不太会弯，骨头发出细密的脆响。\n\n他朝我们走来。\n\n“阿舟，别听他的。爷爷没死，爷爷只是被他们困住了。”\n\n他说话的语气、停顿、习惯，都和爷爷一模一样。甚至那一声拖音的“阿舟”，都分毫不差。\n\n“你七岁掉进水沟，是我背你回家的。”\n\n我眼眶发热。\n\n陆沉将一枚铜钱塞进我手里——冰冷刺骨。\n\n“有些棺材，吃过人的记忆。它知道的，不一定是你爷爷告诉它的。”",
                "choices": [
                    {
                        "text": "接过铜钱",
                        "next": "shadow_grandpa"
                    }
                ]
            },
            "shadow_grandpa": {
                "id": "shadow_grandpa",
                "location": "old_huai_tree",
                "text": "那个“爷爷”已经走到老槐树边，离我们只剩十来步。\n\n陆沉抬手将三枚铜钱甩了出去。\n\n铜钱打在他胸口，猛地冒起三道黑烟。\n\n那张爷爷的脸像水面倒影一样晃动起来——有那么一刹那，我看见那张脸下面藏着另一张脸。\n\n没有五官。\n\n只有一层湿漉漉的黑皮。\n\n“走！”陆沉拽着我绕过老槐树，冲向后面的山壁。\n\n山壁上有一道裂缝，被藤蔓挡住。裂缝前的泥地上压着几块青石，每块都刻着古怪符号——和爷爷残笔记里的图案很像。\n\n可我们还没跑到，那口黑棺突然横着滑了过来。\n\n棺身贴着泥地，发出令人牙酸的摩擦声，硬生生挡住了裂缝。\n\n棺盖上渗出一层黑水，落到地上，泥土立刻冒起白烟。\n\n身后，“爷爷”又站了起来。他胸口的黑洞正在愈合，五官重新稳定，眼神阴冷得不像活物。\n\n“沈舟，你敢进棺道，我就让你娘陪葬。”\n\n我脚步一顿。\n\n陆沉低喝：“它在拖你！”",
                "choices": [
                    {
                        "text": "摇镇棺铃",
                        "next": "ring_bell"
                    },
                    {
                        "text": "冲过去推开黑棺",
                        "next": "push_coffin"
                    }
                ]
            },
            "push_coffin": {
                "id": "push_coffin",
                "location": "old_huai_tree",
                "text": "我冲向黑棺，双手抵住棺身。\n\n棺木冰冷刺骨，像一块千年寒铁。但我必须推开它！裂缝就在后面，不推开黑棺我们就死定了！\n\n身后传来那个“爷爷”的笑声。\n\n“阿舟，你推不动的。那是你爷爷背了二十年的债。”\n\n我咬紧牙关，用尽全身力气往前推——！",
                "qte": {
                    "type": "click",
                    "title": "推开黑棺",
                    "description": "棺木重逾千斤！必须快速用力才能推开它！",
                    "buttonText": "用力推开",
                    "requiredClicks": 20,
                    "timeLimit": 5000,
                    "success": "push_success",
                    "fail": "push_fail"
                }
            },
            "push_success": {
                "id": "push_success",
                "location": "old_huai_tree",
                "text": "我咬紧牙关，一次又一次地猛推——！\n\n黑棺终于动了！它缓缓向旁边挪开，山壁上的裂缝露了出来！\n\n“进去！”陆沉抓住我冲进裂缝。\n\n身后传来那个“爷爷”愤怒的嘶吼——但我们已经冲了进去。",
                "choices": [
                    {
                        "text": "冲进裂缝深处",
                        "next": "outer_road"
                    }
                ]
            },
            "push_fail": {
                "id": "push_fail",
                "location": "old_huai_tree",
                "text": "我用尽了力气，黑棺却纹丝不动！\n\n身后那个“爷爷”已经走到了我面前，他那双全黑的眼睛死死盯着我。\n\n“阿舟，放弃吧……”\n\n就在这时，陆沉从腰间抽出短刀，对准棺缝狠狠刺了进去——\n\n黑棺发出一声刺耳的摩擦声，终于挪开了一寸。\n\n“快走！”",
                "choices": [
                    {
                        "text": "趁机冲进裂缝",
                        "next": "outer_road"
                    }
                ]
            },
            "ring_bell": {
                "id": "ring_bell",
                "location": "old_huai_tree",
                "text": "我伸手解下腰间的镇棺铃。\n\n铜铃握在掌心，裂口冰凉，却沉得像一块铁。\n\n陆沉说：“对着棺头摇三下。只能三下。快！”\n\n身后那个“爷爷”已经逼近了——我必须按顺序摇响铃铛！",
                "qte": {
                    "type": "sequence",
                    "title": "摇响镇棺铃",
                    "description": "按顺序摇响铃铛！被干扰时千万不要乱了节奏！",
                    "keys": [
                        "Z",
                        "X",
                        "Z"
                    ],
                    "timeLimit": 4000,
                    "success": "ring_success",
                    "fail": "ring_fail"
                }
            },
            "ring_success": {
                "id": "ring_success",
                "location": "old_huai_tree",
                "text": "叮——！\n\n第一声响起时，林子里的风停了。黑棺微微一震。\n\n叮——！\n\n第二声响起时，老槐树上的红布条全部竖了起来，像一条条被吊死的舌头。黑棺往后退了半尺。\n\n身后传来母亲的哭喊声：“阿舟，救我！”\n\n我咬紧牙关，继续摇铃——\n\n叮——！\n\n铜铃裂口处渗出一丝血。不是我的血，是铃里流出来的血。\n\n黑棺剧烈震动，棺身底下传来一阵沉闷的喘息声。\n\n然后它缓缓往旁边挪开。\n\n山壁上的裂缝露了出来。\n\n裂缝里吹出一股冷风——带着腐土、香灰和陈年尸骨的味道。只吹了一下，我半边身子都麻了。\n\n陆沉抓住我：“进去！”\n\n我们冲进裂缝。\n\n进去之前，我回头看了一眼——\n\n空地中央，那个“爷爷”站在老槐树下，死死盯着我。\n\n而他身后的黑棺，棺盖已经打开了一半。\n\n棺材里没有尸体。\n\n只有一条向下的石阶。\n\n石阶两边站满了纸人，红红绿绿，脸上画着僵硬的笑。它们原本都低着头——\n\n可就在我看过去的一瞬间，所有纸人同时抬起了脸。\n\n齐刷刷地朝我笑了一下。",
                "choices": [
                    {
                        "text": "冲进裂缝深处",
                        "next": "outer_road"
                    }
                ]
            },
            "ring_fail": {
                "id": "ring_fail",
                "location": "old_huai_tree",
                "text": "我慌乱中摇错了顺序——铜铃发出刺耳的颤音！\n\n黑棺不仅没有后退，反而猛地向前滑了一步！\n\n身后那个“爷爷”发出一阵诡异的笑声：“阿舟，你的心乱了……”\n\n陆沉一把夺过铜铃，对着棺头快速摇了三下——\n\n叮！叮！叮！\n\n黑棺终于退开了。\n\n“下次别乱了节奏。”陆沉把铜铃塞回我手里。",
                "choices": [
                    {
                        "text": "冲进裂缝深处",
                        "next": "outer_road"
                    }
                ]
            },
            "outer_road": {
                "id": "outer_road",
                "location": "outer_road",
                "text": "我们在狭窄的山缝里穿行。身后的笑声被石壁一点一点隔开，却没有消失——反而像顺着岩石缝钻进耳朵里，细细密密，听得人心里发慌。\n\n山缝极窄，最窄处只能侧身过去。两边石壁潮湿冰冷，摸上去有一层滑腻的东西，像苔藓，又像某种动物的皮。\n\n走了约莫一盏茶时间，前面终于宽敞了一些。\n\n陆沉点燃一根火折子。\n\n微弱的火光亮起，我才看清我们所在的地方——\n\n这里不是天然山洞。\n\n脚下铺着青砖，两侧石壁上雕着一排排小棺材。每一口只有巴掌大，密密麻麻嵌在墙里，像无数闭着的眼睛。\n\n“这就是棺道？”\n\n陆沉点头：“只是外道。”\n\n“真正的棺道在下面。”\n\n前方十几步外，地面断开了。有一个向下的洞口，洞口四周刻满符文，摆着四盏青铜灯。灯里没有油，却燃着幽蓝色的火。\n\n洞口旁立着一块石牌，刻着一行字——\n\n“生人止步，死人抬棺。”\n\n我还没来得及细想，洞口下面忽然传来一阵整齐的号子声——\n\n“起——棺——”\n\n低沉、悠长，像很多男人同时从地底喊出来。\n\n青砖地面微微震动。\n\n洞口深处，一口黑色大棺被八只苍白的手慢慢托了上来。\n\n那八只手没有身体。只有手。\n\n它们从黑暗中伸出，稳稳托着棺底，一寸一寸往上抬。",
                "choices": [
                    {
                        "text": "低头躲避",
                        "next": "look_coffin_names"
                    },
                    {
                        "text": "盯着棺材",
                        "next": "look_coffin_names"
                    }
                ]
            },
            "look_coffin_names": {
                "id": "look_coffin_names",
                "location": "outer_road",
                "text": "黑棺从洞口升出来后，并没有停下。它被那八只苍白的手托着，从我们面前缓缓经过。\n\n棺身上刻着密密麻麻的名字。\n\n我本不该看。\n\n可火光一晃，我看见了三个字——\n\n沈长河。\n\n爷爷的名字。刻在棺身最末端。\n\n而在沈长河下面，还有一个刚刚刻上去的新名字——\n\n沈舟。\n\n我全身血液都冷了。这口棺材还没打开，却已经写上了我的名字。",
                "choices": [
                    {
                        "text": "问陆沉怎么办",
                        "next": "name_on_coffin"
                    }
                ]
            },
            "name_on_coffin": {
                "id": "name_on_coffin",
                "location": "outer_road",
                "text": "“我名字在上面。”我听见自己的声音在发抖。\n\n陆沉脸色难看：“棺道认名。活人看见自己的名字上棺，等棺落地，就算被点了阴册。”\n\n“怎么救？”\n\n“替名。”他咬破指尖，在红绳上抹了一道血，绕住我的左腕。\n\n黑棺上的“沈舟”两个字微微晃了一下。\n\n可下一秒，棺材里传来一声轻笑——\n\n“陆沉，二十年了，你还只会这点把戏。”\n\n那声音很低，很冷，带着一种久居地底的潮湿。\n\n陆沉整个人僵住了。\n\n“棺主。”",
                "choices": [
                    {
                        "text": "问棺主是谁",
                        "next": "ask_owner"
                    },
                    {
                        "text": "看铜铃上的字",
                        "next": "look_bell_writing"
                    }
                ]
            },
            "ask_owner": {
                "id": "ask_owner",
                "location": "outer_road",
                "text": "“棺主是什么？”\n\n陆沉没有回答。可棺材里的声音替他说了——\n\n“沈舟，你不是想找你爷爷吗？他就在下面。只要你替这口棺走完一程，我就让你见他。”\n\n我肩膀猛地一沉。\n\n不是错觉。\n\n真有什么东西压在我肩上——起初像一块湿布，可很快越来越沉，沉得我膝盖发软。\n\n“那是棺气。”陆沉低声道，“它在试你的身。”\n\n“试什么？”\n\n“试你够不够格抬棺。”",
                "choices": [
                    {
                        "text": "看铜铃上的字",
                        "next": "look_bell_writing"
                    },
                    {
                        "text": "咬牙硬撑",
                        "next": "bear_weight"
                    }
                ]
            },
            "bear_weight": {
                "id": "bear_weight",
                "location": "outer_road",
                "text": "我咬紧牙关硬撑。那股重量压在骨头上、魂魄上、名字上——\n\n我耳边甚至听见了木头摩擦肩骨的声音。\n\n吱呀。吱呀。\n\n像真有一根无形的棺杠压在我身上。\n\n陆沉把红绳缠到棺身上用力一拉，棺身上的“沈舟”两个字又晃了一下——可只晃了一下，便重新稳住。\n\n“刻得太深了。”陆沉脸色铁青。",
                "choices": [
                    {
                        "text": "看铜铃上的字",
                        "next": "look_bell_writing"
                    }
                ]
            },
            "look_bell_writing": {
                "id": "look_bell_writing",
                "location": "outer_road",
                "text": "腰间镇棺铃忽然动了一下。没有响，只是微微发热。\n\n我低头看去，铜铃裂口处原本渗出的血已经凝住，凝成一道细小的红线，顺着铃身慢慢浮现出一行极小的字。\n\n陆沉一眼扫过，脸色微变：“这是沈长河留下的铃文。”\n\n“写的什么？”\n\n“活人不上棺，死人不留名。”\n\n我忽然明白了。\n\n我的名字刻在棺上，是要把我当死人收进阴册。既然“死人不留名”，那我的名字就不能留在棺上。\n\n我问：“能不能刮掉？”\n\n“刮不掉。棺名不是刻在木头上，是刻在命上。”\n\n“那如果有死人替我留名呢？”\n\n陆沉猛地看向我：“你想干什么？”\n\n我没有回答。我看向两侧石壁上那些巴掌大的小棺材——每一口下面都刻着一个名字。\n\n横死。欠棺一程。\n\n我举起短刀，对准其中一口小棺材上的名字，狠狠划了下去——\n\n周满仓。\n\n刀尖落下的一瞬间，墙里的小棺材猛地震动起来，里面传来指甲抓木的声音。\n\n我咬紧牙，一刀划到底。\n\n小棺材“啪”的一声裂开。一股阴冷的白气扑出来，里面隐约有一张男人的脸——没有眼睛，嘴巴咧得很大，像在笑，又像在哭。\n\n“谁替我还棺？”\n\n我指向黑棺：“他。”\n\n那张脸慢慢转向黑棺。\n\n黑棺一震。棺身上“沈舟”两个字开始变淡——而下面，另一个名字逐渐浮现出来：\n\n周满仓。\n\n肩上的重量骤然减轻。\n\n可下一秒，墙上那些小棺材忽然一口接一口震动起来——咚、咚、咚，像无数死人同时醒来。\n\n那些名字开始渗血。李三娘、陈狗子、赵老七、何半瞎……一缕缕白气从墙缝里钻出，裹着一颗颗模糊的人头。\n\n“还棺……替我还棺……活人，留下名字……”\n\n陆沉拽住我：“快跑！”",
                "choices": [
                    {
                        "text": "跟着陆沉跑",
                        "next": "run_to_forks"
                    }
                ]
            },
            "run_to_forks": {
                "id": "run_to_forks",
                "location": "three_forks",
                "text": "我们在狭窄的棺道里狂奔。身后白气贴地滑行，速度极快，像无数死人从墙壁里爬出来追我们。\n\n跑出十几丈后，前方忽然出现三条岔路。\n\n每条岔路口都立着一块石碑——\n\n左边：生路。入者不生。\n\n中间：死路。入者不死。\n\n右边：棺路。入者无名。\n\n我喘得胸口发疼：“走哪条？”\n\n陆沉没有立刻回答。他盯着三块石牌，脸色阴沉得像要滴出水。\n\n“你怕死吗？”\n\n我一愣：“现在问这个？”\n\n“回答。”\n\n“怕。”\n\n“怕死就对了。”\n\n说完，他一把拽住我，冲进了中间那条写着“死路”的岔道。",
                "choices": [
                    {
                        "text": "冲进死路",
                        "next": "dead_road"
                    }
                ]
            },
            "dead_road": {
                "id": "dead_road",
                "location": "dead_road",
                "text": "我们刚冲进去，身后的白气便猛地停在路口——那些模糊的人脸在岔道外徘徊，却不敢进来。\n\n可还没等我松口气，我忽然发现前面的路在变窄。\n\n不是普通的窄。\n\n两侧墙壁正在缓缓向中间合拢。\n\n青砖摩擦声沉闷刺耳，像一座墓正在闭合。\n\n“跑！”\n\n我们在不断合拢的死路里拼命往前冲。头顶垂下许多白布条，上面写满黑字——全是人的生辰八字。\n\n有些已经发黑，有些还带着血。\n\n我脚下突然踩空，整个人往前扑倒。\n\n手掌按到一块松动的青砖——\n\n“咔。”\n\n机关声响起。\n\n两侧墙壁停住了。\n\n可前方传来一阵锁链拖动的声音。黑暗里，有什么东西被慢慢放了下来。\n\n陆沉举起火折子。\n\n火光照亮前方时，我看见一排棺材从头顶垂下——\n\n一共七口。\n\n每一口棺材下面都吊着一根铁链。铁链末端，拴着一具尸体。\n\n最中间那具尸体，背对着我们。右手无名指上，戴着一枚黑玉戒。\n\n“那是我爷爷？”我颤声问。\n\n陆沉没有回答。\n\n而就在这时，最中间那具尸体缓缓抬起了头——他没有转身，只是用背对着我们的姿势，发出了一道极轻的叹息——\n\n“阿舟。”\n\n这一次，我听得清清楚楚。\n\n不是棺影。\n\n不是棺主。\n\n是爷爷。\n\n真正的爷爷。",
                "choices": [
                    {
                        "text": "“爷爷！”",
                        "next": "grandpa_hanging"
                    }
                ]
            },
            "grandpa_hanging": {
                "id": "grandpa_hanging",
                "location": "dead_road",
                "text": "“爷爷！”我冲过去。\n\n陆沉死死拉住我：“别过去！”\n\n“那是我爷爷！”\n\n“我知道。可他现在的状态，不一定是活人。”\n\n我愣在原地。\n\n爷爷没有回头。他只是低低叹了一声。\n\n“阿舟，你不该来。”\n\n陆沉握紧短刀：“沈长河，你早知道我会带他进来？”\n\n“不是我知道——是棺道知道。”\n\n头顶七口棺材同时轻轻一晃。铁链摩擦声在死路里回荡，像有人在黑暗里磨牙。\n\n“家里那口棺里的东西是什么？”我问。\n\n“那是替身。”爷爷的声音很轻，“二十年前，我把棺债封进了替身里。”\n\n陆沉脸色变了：“你果然把棺债封进了替身。”\n\n“否则沈家早在二十年前就绝了。”\n\n“什么是替身？”我问。\n\n“抬阴棺的人，遇到还不完的棺债，会做一具替身尸。用衣冠、血发、指甲和生辰八字压在棺中，让它替活人受债。”\n\n我头皮发麻。家里那口棺材里躺着的，从来就不是爷爷——而是一具骗棺债的替身。\n\n“那原棺在哪里？”陆沉突然问。\n\n爷爷沉默了。\n\n“沈长河，当年我们十二个人进南岭，出来的只有三个。一个疯了，一个哑了，一个变成我这副鬼样子——你欠我们的，也该说清楚了。”\n\n过了许久，爷爷才开口：\n\n“当年我们抬出来的，不是原棺。”\n\n“是空棺。”",
                "choices": [
                    {
                        "text": "“空棺？”",
                        "next": "empty_coffin"
                    },
                    {
                        "text": "“那原棺呢？”",
                        "next": "where_original"
                    }
                ]
            },
            "empty_coffin": {
                "id": "empty_coffin",
                "location": "dead_road",
                "text": "“空棺？”陆沉的声音冷得像冰。\n\n“空棺。”爷爷一字一句道，“没有尸，没有骨，没有陪葬。可有名字——我的名字。”\n\n“你们十二个人进南岭，是被一封信引去的。那封信没有署名，只写着一句话——南岭原棺现，沈家债可平。”\n\n“你们找到了那口棺？”\n\n“找到了。一口倒悬黑棺，吊在墓室最高处，棺口朝下。那一晚，棺里有人喊我的名字——一声接一声。”\n\n“你应了？”\n\n“应了。”\n\n陆沉猛地攥紧短刀。\n\n“我那时太年轻，以为应一声，就能把沈家的债接到自己身上。”\n\n“可那口倒悬黑棺不是原棺——只是守门棺。真正的原棺，在更下面，在内道尽头的无主家里。”\n\n“你们回来时，棺道开始收债。十二个人，一个接一个出事。”\n\n陆沉的声音发哑：“那你大伯呢？”\n\n爷爷沉默了很久。\n\n“你大伯没死。”\n\n“他在哪？”\n\n“他在替沈家抬棺——二十年了，他一直在内道。”\n\n“一个人怎么可能在里面待二十年？”\n\n“因为棺道里的人，不按活人的时间活。”",
                "choices": [
                    {
                        "text": "“怎么救你和大伯？”",
                        "next": "how_to_save"
                    }
                ]
            },
            "where_original": {
                "id": "where_original",
                "location": "dead_road",
                "text": "“原棺在哪里？”\n\n“在内道尽头的无主家里。要找原棺，必须过三道关——死路七棺、阴灯照名、无主家开门。”\n\n我死死记住。\n\n“你怎么办？”我问爷爷。\n\n他看着我，露出一点很浅的笑——那笑终于像回了从前。\n\n“爷爷老了，走不动了。”\n\n“我带你走！”\n\n“七棺吊尸，不是吊住我，是吊住我的名。我的名若离开这里，你的名就会补上来。”\n\n我鼻子一酸。\n\n这些年，爷爷不是躲着棺债——他一直在替我挡。\n\n最左边那口棺材忽然裂开。一具干瘦的尸体从棺里掉下来，铁链还拴着它的脖子，脑袋慢慢转向我们。\n\n第二口、第三口、第四口……一口接一口醒了。\n\n陆沉拉住我：“走！”\n\n爷爷厉声道：“走！沈舟，你记住——沈家人可以怕死，但不能让死人白替你挡债！”\n\n他说完，右手猛地一握。黑玉戒上泛起一线暗红。\n\n身后铁链猛地绷紧，七口吊棺同时停住。\n\n他在用自己压住这些棺材。\n\n“陆沉，带他去找沈江。”\n\n陆沉看着他：“你撑不住。”\n\n爷爷笑了笑：“本来也没打算撑太久。”\n\n我眼泪终于掉了下来。\n\n“爷爷！”\n\n他没有再看我。只背对着我，像小时候每一次送我出门那样，摆了摆手。\n\n“别回头。”\n\n陆沉一把拽住我，拖着往死路深处跑。\n\n身后传来铁链崩紧的巨响、棺材撞击石壁的轰鸣、爷爷压抑的闷哼声——\n\n我不敢回头。\n\n因为爷爷说过，别回头。\n\n冲过死路尽头时，身后传来爷爷最后一句话——\n\n“阿舟，找到棺账，烧了你的名字。”\n\n话音落下，死路深处爆出一声巨响。像七口棺材同时落地。",
                "choices": [
                    {
                        "text": "继续跑",
                        "next": "deng_temple"
                    }
                ]
            },
            "how_to_save": {
                "id": "how_to_save",
                "location": "dead_road",
                "text": "“怎么救你和大伯？”\n\n爷爷没有回答。他只说：“要找原棺，必须过三道关。死路七棺、阴灯照名、无主家开门——记住，见灯勿近，闻铃勿回，棺落不可扶。”\n\n“阿舟，爷爷老了，走不动了。”\n\n“七棺吊尸，不是吊住我，是吊住我的名。我的名若离开这里，你的名就会补上来。”\n\n最左边那口棺材裂开了。\n\n陆沉猛地拉住我：“走！”\n\n爷爷厉声道：“走！”\n\n我最后看见的，是他背对着我，像小时候每一次送我出门那样，摆了摆手。\n\n“别回头。”\n\n我被陆沉拽进更深的黑暗。身后传来棺材落地的巨响——七口棺材，同时落地。\n\n爷爷的声音从远处飘来：\n\n“阿舟，找到棺账，烧了你的名字。”",
                "choices": [
                    {
                        "text": "继续跑",
                        "next": "deng_temple"
                    }
                ]
            },
            "deng_temple": {
                "id": "deng_temple",
                "location": "deng_temple",
                "text": "我们冲过死路尽头，被陆沉拽进了一条更深的石阶。\n\n石阶尽头亮着一点幽蓝的火——像一只睁开的眼睛。\n\n陆沉停下脚步。\n\n我顺着他目光看去——石阶下方，有一盏青铜古灯。\n\n灯前站着一个人。\n\n身形高瘦，肩上扛着一根黑色棺杠，背对着我们。\n\n他听见脚步声，慢慢转过头来。\n\n那张脸和父亲有七分相似，却更冷，也更瘦。\n\n他看着我，眼神像从二十年前照过来的寒光。\n\n“你就是沈舟？”\n\n陆沉低声道：“他是你大伯，沈江。”",
                "choices": [
                    {
                        "text": "“大伯？”",
                        "next": "meet_jiang"
                    }
                ]
            },
            "meet_jiang": {
                "id": "meet_jiang",
                "location": "deng_temple",
                "text": "沈江看着我，肩上的棺杠渗出血来。\n\n“你爹当年求我留下。”他的声音很淡，“他说沈家总得有人回去传香火。我是长子，所以我留下了。”\n\n“二十年来，我一直在替沈家抬棺。”\n\n我喉咙发紧：“我……能做什么？”\n\n“你已经在做了。”他看向身后的黑暗，“你过了死路，到了阴灯前。无主家就在灯后面——但你得过第三关。”\n\n“阴灯照名。”\n\n“活人照灯，灯灭人亡。所以不能让它照出活人名——得照棺名。”\n\n“怎么做？”\n\n“抬棺过灯。九步，不能停，不能喘，不能回头。”\n\n他看向我：“你背了周满仓的棺债——那就替他把这一程抬完。”\n\n黑暗深处，传来一阵沉重的脚步声。\n\n像一支看不见的抬棺队，正朝我们走来。",
                "choices": [
                    {
                        "text": "补位抬棺",
                        "next": "lift_coffin"
                    },
                    {
                        "text": "问沈江原棺在哪",
                        "next": "ask_original_jiang"
                    }
                ]
            },
            "ask_original_jiang": {
                "id": "ask_original_jiang",
                "location": "deng_temple",
                "text": "“原棺到底在哪？”\n\n沈江没有回答。他抬起眼，看向青铜灯后的石门。\n\n那扇门上刻着一口倒悬的棺材。\n\n“无主家开门时，你自然会看见。”\n\n黑暗中，脚步声更近了。\n\n八双苍白的手从深处托出一口看不见的棺材——我看不见棺身，却能感受到它的重量。\n\n沈江示意我站到队伍最前面。\n\n“补位。”",
                "choices": [
                    {
                        "text": "补位抬棺",
                        "next": "lift_coffin"
                    }
                ]
            },
            "lift_coffin": {
                "id": "lift_coffin",
                "location": "deng_temple",
                "text": "我站到空出来的位置，伸手握住那根黑色棺杠。\n\n刚碰到棺杠，掌心就像被冰锥刺了一下。\n\n一股无法形容的重量压上肩头——不是木头的重，不是尸体的重——\n\n是名字的重。\n\n沈江站在青铜灯旁，声音低沉：\n\n“起。九步过灯，不能停，不能回头。”\n\n八个抬棺人同时动了。\n\n我必须紧紧握住棺杠，坚持走完这九步！松手就会失败！",
                "qte": {
                    "type": "hold",
                    "title": "抬棺过灯",
                    "description": "九步过灯！必须紧紧握住棺杠保持平衡！松手会导致失败！",
                    "buttonText": "紧紧握住",
                    "holdDuration": 6000,
                    "timeLimit": 8000,
                    "success": "lift_success",
                    "fail": "lift_fail"
                }
            },
            "lift_success": {
                "id": "lift_success",
                "location": "deng_temple",
                "text": "我咬紧牙关，紧紧握住棺杠——！\n\n第一步——脚下忽然传来水声。我死死盯着前方，没有看。\n\n第二步——耳边响起母亲的声音：“阿舟，娘疼。”\n\n我牙关一紧。\n\n第三步——我觉得队伍里人数变多了……不能数。\n\n第四步——肩上的棺猛地一沉。\n\n第五步——青铜灯火暴涨，我看见爷爷站在灯后，浑身是血，朝我伸手：“阿舟，停下。”\n\n第六步——胸口像被一只手攥住，我喘不上气。\n\n第七步——我眼前出现父亲的脸……\n\n第八步——青铜灯照在我身上。一个苍老的声音问：“来者何名？”\n\n我咬破嘴唇——沈舟！沈家的沈！舟船的舟！\n\n第九步——放棺！\n\n我和那八个抬棺人同时弯肩。\n\n棺稳稳落地——\n\n青铜灯火缩回灯芯大小。\n\n八个抬棺人低下头，一步一步退入黑暗。\n\n沈江看着我：“你做到了。”",
                "choices": [
                    {
                        "text": "继续前进",
                        "next": "wu_zhu_jia"
                    }
                ]
            },
            "lift_fail": {
                "id": "lift_fail",
                "location": "deng_temple",
                "text": "我坚持不住了——手一松，棺杠失衡！\n\n“沈舟，你放下的不是棺，是你爷爷的命。”\n\n我下意识伸手去扶——\n\n可陆沉和沈江同时喊：“别扶棺！”\n\n太迟了。\n\n我的指尖碰到棺杠一侧——\n\n阴灯火光暴涨，我终于看见了那口棺材。\n\n棺盖上刻满名字，正中央用血写着三个字：沈长河。\n\n棺盖里伸出一只手，死死抓住了我的手腕。\n\n“阿舟，放手。”\n\n那是爷爷的声音。\n\n陆沉短刀斩落——那只手像一截枯木，被齐腕斩断。\n\n我被拽得往后一摔，重重撞在石壁上。\n\n沈江怒吼一声，将整口棺材压落在地——\n\n轰。\n\n青铜灯火缩回灯芯大小。",
                "choices": [
                    {
                        "text": "继续前进",
                        "next": "wu_zhu_jia"
                    }
                ]
            },
            "touch_coffin": {
                "id": "touch_coffin",
                "location": "deng_temple",
                "text": "我的指尖碰到棺杠一侧。\n\n阴灯火光暴涨——我终于看见了那口棺材。\n\n它一直在我们肩上，只是之前看不见。通体漆黑，棺盖上刻满名字。\n\n正中央，用血写着三个字：\n\n沈长河。\n\n我心脏像被狠狠撞了一下。\n\n这口棺压着爷爷的命。\n\n棺盖里伸出一只手——干枯、苍白，死死抓住了我的手腕。\n\n棺材里传来爷爷的声音，很轻，很急：\n\n“阿舟，放手。”\n\n紧接着，另一个声音从棺内传出——低沉、冰冷，带着笑。\n\n“抓住他。”\n\n那是棺主。\n\n八只苍白的手同时收紧，八张没有五官的脸转向我。\n\n我被一点一点拖向棺材。\n\n沈江猛地冲过来，用肩膀顶住棺材：“陆沉，砍手！”\n\n陆沉短刀斩落——那只手像一截枯木，被齐腕斩断。\n\n我被陆沉拽得往后一摔，重重撞在石壁上。\n\n沈江怒吼一声，将整口看不见的棺材压落在地——\n\n轰。\n\n棺落。\n\n青铜灯火缩回灯芯大小。\n\n八个抬棺人低下头，一步一步退入黑暗。最后一个退走前，抬起没有五官的脸，对我缓缓张开了嘴。\n\n嘴里没有舌头，只有一枚黑玉戒。\n\n沈江半跪在地，肩上的血已经浸透衣服。\n\n“你没事吧？”\n\n他摆了摆手：“死不了。”\n\n他盯着青铜灯后的石门——那口倒悬棺材的图案正在裂开。\n\n幽冷的风从门缝里吹出来。\n\n“无主家开门了。”\n\n我捂住被抓伤的手腕，发现伤口周围浮现出一道黑色印记——像一只小小的棺材。\n\n陆沉脸色一沉：“扶棺印。”\n\n“会怎么样？”\n\n沈江看向我：“从现在开始，棺主能听见你心里的话。”\n\n青铜灯轻轻一晃。\n\n门后的黑暗里，传来棺主低低的笑声：\n\n“沈舟。欢迎进家。”",
                "choices": [
                    {
                        "text": "走进无主家",
                        "next": "wu_zhu_jia"
                    }
                ]
            },
            "wu_zhu_jia": {
                "id": "wu_zhu_jia",
                "location": "wu_zhu_jia",
                "text": "石门缓缓敞开。\n\n门后的世界不是洞穴——而是一座巨大的地底殿堂。穹顶高不见顶，四周墙壁上嵌满棺木，像蜂巢一样密密麻麻。\n\n殿堂中央，放着一口棺材。\n\n它比所有棺材都大，通体由整块黑石凿成，没有棺盖——\n\n因为它的盖，就是这座殿堂的天花板。\n\n“这就是原棺。”沈江的声音从身后传来。\n\n我走近它。\n\n棺身上没有名字。\n\n棺底有一本册子——封皮上写着两个字：棺账。\n\n我翻开棺账。第一页写着沈家的名字。第二页写着那十二个人的名字。第三页是空白——\n\n可当我拿起棺账时，第三页上慢慢浮现出了一个名字：\n\n沈舟。\n\n而在那个名字下面，还有一行更小的字——\n\n“欠棺者，三代偿命。”\n\n黑暗深处，棺主的声音再次响起：\n\n“沈舟，你看到了。”\n\n“现在，还债吧。”",
                "choices": [
                    {
                        "text": "烧掉棺账上的名字",
                        "next": "burn_account"
                    },
                    {
                        "text": "合上棺账离开",
                        "next": "close_account"
                    },
                    {
                        "text": "质问棺主",
                        "next": "confront_owner"
                    }
                ]
            },
            "burn_account": {
                "id": "burn_account",
                "location": "wu_zhu_jia",
                "text": "我掏出火折子，点燃了棺账。\n\n火舌舔上纸页，那些名字在火中扭曲、焦黑、碎裂。\n\n沈长河。周满仓。李三娘。所有名字——包括我自己的。\n\n火焰升腾的那一刻，整座殿堂都在震动。\n\n头顶的棺木一片接一片裂开，无数白气从裂缝中涌出，裹着那些被欠了太久的人名，升向穹顶。\n\n棺主的声音第一次变了——不再是笑，不再是冷，而是一声从地底深处挤压出来的怒吼。\n\n“沈舟——！”\n\n然后，黑暗消散了。\n\n天光从殿堂顶端漏下来。\n\n我低头看去，掌心的黑印正在慢慢褪去。\n\n身后传来脚步声——我转过身。\n\n陆沉站在石阶上，脸上的疤在光里浅了一些。沈江靠在他旁边，肩上的棺杠已经放下。\n\n而在他们身后，站着一个穿着旧寿衣的老人。\n\n他背着手，像从前在堂屋门口抽旱烟那样，慢吞吞地朝我走来。\n\n“阿舟。”\n\n我眼眶一热。\n\n“回家吧。”爷爷说。",
                "isEnd": true,
                "endType": "true",
                "endMessage": "你烧掉了棺账上的名字。沈家的债，终于还清了。"
            },
            "close_account": {
                "id": "close_account",
                "location": "wu_zhu_jia",
                "text": "我合上棺账，将它放回原处。\n\n我不能烧掉它——因为烧掉名字，也会烧掉那些人的记忆。\n\n我选择记住。\n\n离开无主家时，殿堂里的棺木已经不再震动。棺主的声音消失了——也许它终于明白，有些债是还不完的，只能一代一代，传下去。\n\n但至少到我这里，我可以选择记住，而不是欠下新的债。",
                "isEnd": true,
                "endType": "good",
                "endMessage": "你没有烧掉棺账。你选择记住——然后继续走下去。"
            },
            "confront_owner": {
                "id": "confront_owner",
                "location": "wu_zhu_jia",
                "text": "“你到底是谁？”我对着黑暗喊道。\n\n沉默了很久。\n\n然后，一个声音从原棺里缓缓升起——\n\n“我是第一口棺材。”\n\n“我装过第一个死人，也装过第一个活人的恐惧。”\n\n“你们欠我的，不是名字，是遗忘。”\n\n我愣住了。\n\n我原以为棺主是什么恶鬼、什么邪祟。\n\n可它只是一口棺材——\n\n一口被遗忘得太久的棺材。\n\n我把棺账放回原处，然后朝着黑暗鞠了一躬。\n\n“对不起。”\n\n风从殿堂深处吹来，吹灭了一盏青铜灯。\n\n然后，天亮了。",
                "isEnd": true,
                "endType": "true",
                "endMessage": "你向棺主道了歉。遗忘，有时才是最重的债。"
            }
        },
        "id": "the_stolen_coffin_part1"
    },
    {
        "title": "盗棺笔记（下）",
        "subtitle": "无主家·补名之人·原棺开眼·棺账终焚",
        "description": "石门之后，是无主家。镜中之人，是上一任补名者。原棺睁开眼时，我终于明白——我不是来找爷爷的，我是来补自己的名。而最终，有一笔账，必须亲手烧掉。",
        "author": "Radiation Studio",
        "version": "1.0",
        "features": {
            "inventory": true,
            "map": true
        },
        "items": [
            {
                "id": "black_jade_ring",
                "name": "黑玉戒",
                "icon": "💍",
                "description": "爷爷的戒指。黑玉不亮，像一滴凝固的墨。它是锁，也是引。"
            },
            {
                "id": "fu_guan_yin",
                "name": "扶棺印",
                "icon": "🖤",
                "description": "手腕上的黑纹，像一口小棺材。补名者的标记，也是棺主的通道。"
            },
            {
                "id": "white_coffin_mirror",
                "name": "白棺镜",
                "icon": "🔮",
                "description": "无主家门口的白棺，棺底嵌着一面黑镜。镜中映出另一个自己。"
            },
            {
                "id": "guan_zhang",
                "name": "棺账",
                "icon": "📜",
                "description": "比山还大的账册，记录着所有欠棺之名。第九代补名者的名字即将写满。"
            },
            {
                "id": "name_thread",
                "name": "名字线",
                "icon": "🧵",
                "description": "连接补名者与棺账的命线。沈舟曾用力扯过它，硬生生拽偏了自己的名字。"
            },
            {
                "id": "zhen_guang_ling",
                "name": "镇棺铃",
                "icon": "🔔",
                "description": "爷爷留下的铜铃，铃口裂了一道缝。陆沉用它点燃了烧账的蓝火。"
            },
            {
                "id": "copper_coin",
                "name": "染血铜钱",
                "icon": "💰",
                "description": "陆沉从二十年前带到现在的铜钱，裂开后渗出了幽蓝色的火。"
            }
        ],
        "map": {
            "title": "无主家",
            "locations": [
                {
                    "id": "stone_door",
                    "name": "石门之外",
                    "description": "无主家的入口。青铜灯已灭，门缝中渗出腐风与香灰味。"
                },
                {
                    "id": "white_coffin_room",
                    "name": "白棺室",
                    "description": "无主家入口处。一口白棺立于石阶尽头，棺底嵌着黑镜。镜中影子会说话。"
                },
                {
                    "id": "mirror_inside",
                    "name": "镜中石道",
                    "description": "穿过黑镜后的世界。脚下是账纸，两侧是无尽黑雾，雾中漂浮着被烧毁的族谱残页。"
                },
                {
                    "id": "guan_zhang_hall",
                    "name": "账册大殿",
                    "description": "黑雾尽头，一本比山还高的账册矗立。每一页翻动都会震动整条石道。"
                },
                {
                    "id": "original_coffin",
                    "name": "原棺之眼",
                    "description": "无主家最深处。原棺没有形状，像一道从死亡里照出的竖眼。名字在其中流动。"
                }
            ],
            "startingLocation": "stone_door"
        },
        "start": "start",
        "nodes": {
            "start": {
                "id": "start",
                "location": "stone_door",
                "text": "石门裂开的那一瞬间，我听见的不是风声。\n\n是“呼吸”。\n\n像一座埋在山体深处的巨大活物，在沉睡多年后，缓缓睁开了口。\n\n青铜灯在门前晃了一下，火焰突然缩成豆点。所有脚步声、呼吸声、衣料摩擦声，全都被压进石壁深处。\n\n只剩下门后那片黑暗在动。\n\n沈江站在我左侧，肩上的棺杠已经重新扣紧。他的脸比刚才更白，像失血过多，但眼神仍然稳。\n\n陆沉在右侧，短刀没有收回。\n\n我站在中间。\n\n手腕上的扶棺印隐隐发热，像一口小棺材贴在皮肤下方，轻轻跳动。\n\n陆沉低声说：“从现在开始，别在心里想任何名字。”\n\n“为什么？”\n\n“因为它听得见。”",
                "choices": [
                    {
                        "text": "踏入门缝",
                        "next": "enter_door"
                    },
                    {
                        "text": "问沈江无主家是什么",
                        "next": "ask_wuzhu"
                    },
                    {
                        "text": "压下恐惧，不让自己想名字",
                        "next": "suppress_thoughts"
                    }
                ]
            },
            "ask_wuzhu": {
                "id": "ask_wuzhu",
                "location": "stone_door",
                "text": "“无主家到底是什么？”我问沈江。\n\n他没有回头，声音很沉：“是棺道的心脏。所有欠棺的名字，最终都会流到这里。”\n\n“原棺在这里？”\n\n“原棺就是无主家。”他停了一下，“它没有固定的形状——它可以是山，是殿，是一口棺材。但它始终只有一个功能。”\n\n“什么功能？”\n\n“写名。”\n\n我心头一紧。\n\n门内的黑暗像是回应这句话，微微波动了一下。\n\n下一秒，一个声音从里面传出来——很轻，像贴着骨头说的：\n\n“沈舟，你在想爷爷。”\n\n我后背瞬间发凉。",
                "choices": [
                    {
                        "text": "踏入门缝",
                        "next": "enter_door"
                    }
                ]
            },
            "suppress_thoughts": {
                "id": "suppress_thoughts",
                "location": "stone_door",
                "text": "我强迫自己什么都不想。可越是压制，脑子里越是混乱——爷爷的脸、黑棺上的名字、七口吊棺、那只抓住我的枯手……\n\n一幕幕往外涌。\n\n门后再次传来笑声。\n\n“你越不想，我越听得清。”\n\n声音带着一点愉悦，像猎物终于开始挣扎。\n\n沈江忽然抬手，掌心按在石门中央：“别被它带节奏。”\n\n他用力一推。\n\n石门“咔”的一声，裂开一道仅容一人通过的缝隙。\n\n腐风从里面涌出来——带着潮湿泥土、陈年骨灰、以及某种极其古老的香灰味。",
                "choices": [
                    {
                        "text": "踏入门缝",
                        "next": "enter_door"
                    }
                ]
            },
            "enter_door": {
                "id": "enter_door",
                "location": "white_coffin_room",
                "text": "我们踏进门缝。\n\n脚落地的一瞬间，我感觉整个人像踩进了一口沉睡的深井。\n\n声音消失。光也消失。\n\n青铜灯的火被隔绝在外，连最后一点幽蓝都被黑暗吞掉。\n\n然后，我听见了第二个声音——不是棺主。\n\n是很多人。低声交谈。\n\n像在很远的地方开会，又像在我耳朵里。\n\n“来了一个新的名字。”\n“沈家的。”\n“可以补位。”\n\n我全身发冷。\n\n沈江在前方低声说：“别听。听不见的才是真的。”\n\n我闭上眼。\n\n但闭眼之后，那些声音反而更清晰——它们不是从耳朵进来的，是从扶棺印进来的。\n\n棺主在用我身体听。\n\n黑暗中，忽然亮起一点光。\n\n不是火。是一盏灯。青铜制，挂在半空，没有支架，没有点燃，却自己亮着。\n\n灯下是一条往下延伸的石阶。\n\n石阶尽头，立着一口棺。\n\n不是黑棺，也不是吊棺。\n\n是一口白棺。\n\n棺身干净得异常，没有一丝纹路，像刚从石头里长出来的。\n\n陆沉声音压低：“这就是无主家入口。”",
                "choices": [
                    {
                        "text": "走近白棺",
                        "next": "white_coffin_mirror"
                    },
                    {
                        "text": "观察白棺上的痕迹",
                        "next": "observe_coffin"
                    }
                ]
            },
            "observe_coffin": {
                "id": "observe_coffin",
                "location": "white_coffin_room",
                "text": "我仔细看那口白棺。\n\n棺身上没有刻字，没有花纹，连一条划痕都没有。可它的表面泛着一层极淡的油光——像被无数双手摸过。\n\n或者说，被无数双“不是人的手”摸过。\n\n沈江说：“每一代补名者，都会摸过这口棺。”\n\n“然后呢？”\n\n“然后他们就不想摸第二次了。”\n\n我还没来得及问为什么，棺盖忽然“咔”的一声——自己滑开了一道缝。",
                "choices": [
                    {
                        "text": "看向棺内",
                        "next": "white_coffin_mirror"
                    }
                ]
            },
            "white_coffin_mirror": {
                "id": "white_coffin_mirror",
                "location": "white_coffin_room",
                "text": "棺盖滑开的那一刻，我看见里面什么都没有。\n\n只有一面镜子。\n\n一面竖在棺底的黑镜。\n\n镜面映出我们三个人的影子。\n\n可其中一个影子，没有动。\n\n沈江皱眉：“不对。”\n\n陆沉已经举刀：“退！”\n\n可已经晚了。\n\n镜子里的“我”，慢慢抬起头。它看着我，嘴角一点点裂开。\n\n然后，它替我说了一句话——\n\n“我知道你在找什么。”\n\n现实中的我，喉咙突然一紧。我没有开口，可那句话却从我嘴里自己说了出来：\n\n“你在找爷爷。”\n\n陆沉脸色骤变：“闭嘴！”\n\n但我的嘴没有停——像被另一个意识接管。\n\n“你在找原棺。”\n“你在找棺账。”\n“你在找……你自己。”\n\n最后一句落下时，我脑子里“轰”的一声。\n\n镜子里的影子，和我完全同步。它慢慢伸出手，贴在镜面上，轻声说——\n\n“你不是来找答案的。”\n“你是来补名的。”",
                "choices": [
                    {
                        "text": "问镜中影子是谁",
                        "next": "who_are_you"
                    },
                    {
                        "text": "后退",
                        "next": "step_back_mirror"
                    },
                    {
                        "text": "伸手触碰镜面",
                        "next": "touch_mirror"
                    }
                ]
            },
            "who_are_you": {
                "id": "who_are_you",
                "location": "white_coffin_room",
                "text": "“你到底是谁？”我对着镜子问。\n\n镜中的“我”笑了一下。\n\n“我已经回答你了。”\n\n“我是上一任补名者。”\n\n“你未来的某一种结局。”\n\n我脑子一片混乱。\n\n沈江忽然一步踏前，棺杠横在镜前：“别让它说完。”\n\n陆沉低吼：“它已经开始写你了！”\n\n我低头看向扶棺印——那圈黑色小棺纹路，正在一点点变深，像墨水渗进皮肤。\n\n镜中的棺主笑了。这一次，它没有再隐藏声音，直接从镜子里说话——\n\n“沈舟，你的名字不是用来找爷爷的。”\n“是用来进棺的。”",
                "choices": [
                    {
                        "text": "触碰镜面",
                        "next": "touch_mirror"
                    }
                ]
            },
            "step_back_mirror": {
                "id": "step_back_mirror",
                "location": "white_coffin_room",
                "text": "我往后退了一步。\n\n可那面镜子像认定了我——镜面忽然裂开一条细缝，一只手从里面伸了出来。\n\n干净、苍白，指节修长。\n\n无名指上戴着一枚黑玉戒。\n\n和爷爷的一模一样。\n\n陆沉瞬间愣住：“这不可能……”\n\n沈江的声音第一次出现裂痕：“那是……原棺的手。”\n\n那只手抓住了我的影子，用力一拽——我整个人猛地向前一沉，像被什么东西从身体里抽走了一半。\n\n棺主的声音在我脑中轻轻响起：\n\n“进来吧。补你的名。”",
                "choices": [
                    {
                        "text": "被拖进镜中",
                        "next": "mirror_inside"
                    }
                ]
            },
            "touch_mirror": {
                "id": "touch_mirror",
                "location": "white_coffin_room",
                "text": "我伸出手，指尖触到镜面。\n\n镜面像水面一样泛起波纹。那一瞬间，镜中的“我”贴近了，隔着玻璃与我对视。\n\n“你终于来了。”它说。\n\n“我已经等了你二十年。”\n\n它抬手，轻轻敲了一下镜子。\n\n整面黑镜瞬间碎裂——但没有碎片飞溅，所有碎块都向内聚拢，形成一条通往深处的路。\n\n那条路的尽头，隐约坐着一个人影。\n\n背对着我。穿着寿衣。像爷爷——又不像爷爷。\n\n陆沉冲过来想拉住我，却被沈江一把拦住。\n\n“别碰他。”沈江声音很低，“他已经被选中了。”\n\n我脚下一空。\n\n整个人被镜面拖了进去。\n\n最后一刻，我听见陆沉喊了一声：\n\n“沈舟——别看他背影！”\n\n可我已经看见了。\n\n那个人影缓缓转过头。\n\n我看见的不是爷爷。\n\n是我自己。\n\n只不过那张脸，比我老了二十年。\n\n他看着我，轻轻笑了一下。\n\n“终于轮到你了。”\n\n黑暗吞没了一切。",
                "choices": [
                    {
                        "text": "看向前方的路",
                        "next": "mirror_inside"
                    }
                ]
            },
            "mirror_inside": {
                "id": "mirror_inside",
                "location": "mirror_inside",
                "text": "我不是被拖进去的。\n\n更准确地说，是“被替换进去的”。\n\n当那只黑玉戒的手抓住我的影子时，我感觉身体像被从中间轻轻撕开——一半留在现实，一半跌进镜面。\n\n没有疼。只有一种“缺失感”，像名字被擦掉了一笔。\n\n再睁眼时，我站在一条石道上。\n\n石道两侧没有墙，只有无尽的黑雾。雾里漂浮着无数半透明的字，像纸灰，又像被烧毁的族谱残页。\n\n每一个字都在动，在呼吸。\n\n我低头。\n\n脚下不是路——是一页巨大的“账纸”。\n\n上面密密麻麻写着名字。\n\n沈长河。陆沉。沈江。周满仓。李三娘。陈狗子……\n\n所有名字都不是刻上去的，是“长”出来的，像寄生在纸上的菌。\n\n我甚至在最下方，看见了一个正在缓慢成形的空位——在等我。\n\n远处传来一个声音。不是棺主，是“记录者”——冷静、无情、不带情绪：\n\n“第九代补名者，确认进入。”\n“姓名：沈舟。”\n“状态：半活。”",
                "choices": [
                    {
                        "text": "往前走",
                        "next": "walk_forward"
                    },
                    {
                        "text": "查看脚下账纸上的名字",
                        "next": "read_account"
                    }
                ]
            },
            "read_account": {
                "id": "read_account",
                "location": "mirror_inside",
                "text": "我蹲下，仔细看脚下那些名字。\n\n它们像活物一样微微起伏。有的名字已经发黑，有的还在泛红，像刚写上去不久。\n\n我看到了周满仓——他已经被划掉了。\n\n看到李三娘——她的名字旁边有一行小字：“欠棺半程，已偿。”\n\n可还有更多名字没有标记。它们静静躺在账纸上，像在等待什么。\n\n而在最下方那片空白区域，我的名字正在缓慢成形。\n\n“沈。”\n\n“舟。”\n\n一笔一划，像有人在用我的命当墨。",
                "choices": [
                    {
                        "text": "往前走",
                        "next": "walk_forward"
                    }
                ]
            },
            "walk_forward": {
                "id": "walk_forward",
                "location": "guan_zhang_hall",
                "text": "我沿着石道往前走。\n\n走了不知道多久——在这里，时间像被压扁了。\n\n黑雾中，缓缓浮现出一张巨大的纸影。\n\n那不是纸。\n\n是一本账册。\n\n一本比山还高的账册。\n\n每一页都写满名字，每一页都在翻动时震动整条石道。\n\n而在账册的最中心，有一根黑色的“钉”——钉住了所有名字。\n\n我还没来得及反应，身后传来脚步声。\n\n很慢，很稳。\n\n我回头。\n\n看见了“我自己”。\n\n他比我高半个头，穿着和我一模一样的衣服，只是衣角全是灰黑色的墨迹。\n\n他看着我，像在看一个迟到的人。\n\n“你终于来了。”",
                "choices": [
                    {
                        "text": "“你是谁？”",
                        "next": "past_self_talk"
                    },
                    {
                        "text": "“你想让我做什么？”",
                        "next": "past_self_talk"
                    }
                ]
            },
            "past_self_talk": {
                "id": "past_self_talk",
                "location": "guan_zhang_hall",
                "text": "“你是谁？”我后退一步。\n\n他笑了。\n\n“你已经叫过我了。”\n\n我一愣。\n\n他抬手，指了指我的喉咙：“刚才在棺外，你替我说了三句话。”\n\n我瞬间想起在白棺镜中失控开口的那一刻。\n\n“你以为那是棺主在用你？错了。是你在替我说话。”\n\n“你到底是什么东西？”\n\n他没有回答。只是伸手，轻轻按在我的胸口。\n\n那一瞬间，我看见一条线——从我身体里延伸出去，连接到那本巨大的账册上。\n\n“你是补名者。我是被补掉的上一代。”\n\n他低声道：“每一代沈家人，都有人被写进账里，也有人被抹掉。被抹掉的人不会死——他们会变成‘名外人’，替下一代走路。”\n\n“那你是……”\n\n“你未来的某一种结局。”",
                "choices": [
                    {
                        "text": "“我怎么才能不变成你？”",
                        "next": "how_to_avoid"
                    },
                    {
                        "text": "看向账册",
                        "next": "look_account"
                    }
                ]
            },
            "how_to_avoid": {
                "id": "how_to_avoid",
                "location": "guan_zhang_hall",
                "text": "“我怎么才能不变成你？”\n\n他看着我，眼神里有一种说不清的东西。\n\n“补名有两种方式。”\n“第一种——你走完棺道，成为新账主。”\n“第二种——”\n\n他停顿了一下。\n\n“你被写完。名字写满，就不是人了——会变成棺。”\n\n我心头一沉。\n\n远处账册翻动得越来越快，名字一个接一个亮起，像在催我。\n\n就在这时，远处传来陆沉的声音——很模糊，像从很远很远的地方传来：\n\n“沈舟——别信账册！！”\n\n我猛地回头。\n\n黑雾之中，隐约出现一条裂缝。裂缝外是现实的光——陆沉、沈江、那盏青铜灯，都在外面。\n\n但他们像隔着一层厚厚的水。\n\n沈江在用棺杠顶住什么，陆沉在试图撕开那面镜子。\n\n而我，正在往账册里沉。",
                "choices": [
                    {
                        "text": "冲向裂缝",
                        "next": "run_to_crack"
                    },
                    {
                        "text": "看向账册",
                        "next": "look_account"
                    }
                ]
            },
            "run_to_crack": {
                "id": "run_to_crack",
                "location": "guan_zhang_hall",
                "text": "我冲向那条裂缝。\n\n可跑出三步，脚下账纸忽然收紧——像一只巨大的手掌攥住了我的脚踝。\n\n“别急着走。”身后那个“我”轻轻说，“你还没看完。”\n\n他指向账册。\n\n我顺着方向看去——\n\n我的名字，已经快写完了。\n\n“沈舟”两个字，只剩最后一笔。\n\n那一笔，正在缓缓落下。",
                "choices": [
                    {
                        "text": "抓住那根写字的线",
                        "next": "grab_thread"
                    },
                    {
                        "text": "用力挣脱",
                        "next": "break_free"
                    }
                ]
            },
            "break_free": {
                "id": "break_free",
                "location": "guan_zhang_hall",
                "text": "我用尽全力挣脱脚下的束缚。\n\n可越挣扎，账纸缠得越紧。那些名字像活过来一样，顺着我的脚踝往上爬——沈长河、陆沉、周满仓……\n\n每一个名字都在发力，像在把我往账册深处拖。\n\n“别挣扎了。”那个“我”轻轻说，“你越动，被写进去得越快。”\n\n我低头——我的名字只剩最后一笔了。",
                "choices": [
                    {
                        "text": "抓住那根写字的线",
                        "next": "grab_thread"
                    }
                ]
            },
            "look_account": {
                "id": "look_account",
                "location": "guan_zhang_hall",
                "text": "我抬头看向那本比山还高的账册。\n\n它在翻动。每一页都写满名字，每一页都在呼吸。\n\n而在最中央那一页，我的名字正在成形。\n\n沈。\n\n舟。\n\n两笔已完，最后一笔正在落下。\n\n我忽然明白了一件事——\n\n从进入棺道开始，我就一直在替别人补名。\n\n周满仓。棺影。七棺。阴灯。每一步都在“替别人活”。\n\n而现在——轮到我自己了。",
                "choices": [
                    {
                        "text": "抓住那根写字的线",
                        "next": "grab_thread"
                    }
                ]
            },
            "grab_thread": {
                "id": "grab_thread",
                "location": "guan_zhang_hall",
                "text": "我看见了那根线。\n\n连接着我胸口和账册的那条“名字线”。它很细，像一根浸了墨的丝线。\n\n但我能感觉到它——它在跳动。\n\n像一根血管。\n\n最后一笔即将落下。\n\n我必须抓住这根线，用力拽断它！这是我唯一的机会！",
                "qte": {
                    "type": "click",
                    "title": "抓住名字线",
                    "description": "抓住那根名字线，用力拽断它！这是你唯一的机会！",
                    "buttonText": "用力拽断",
                    "requiredClicks": 25,
                    "timeLimit": 5000,
                    "success": "grab_success",
                    "fail": "grab_fail"
                }
            },
            "grab_success": {
                "id": "grab_success",
                "location": "guan_zhang_hall",
                "text": "我抓住了那根线！\n\n它不是线。是命。\n\n我用力一扯——！\n\n整条账册，第一次停住。\n\n黑雾剧烈震动。那个“另一个我”脸色微变：“你做什么？”\n\n我看着他，第一次清楚地说出一句话：\n\n“既然是补名——那我也可以改名。”\n\n我猛地一拉——！\n\n整条名字线，被我硬生生拽偏了一寸。\n\n“沈舟”两个字，发生了第一次错位。\n\n账册发出刺耳的崩裂声。\n\n黑雾瞬间炸开。\n\n现实世界的裂缝被猛地撕大。\n\n陆沉的声音终于完整传来：\n\n“现在！！出来！！”\n\n我一步踏向裂缝。\n\n身后传来那个“我”的声音，第一次带上怒意：\n\n“你改不了账！”\n\n我回头看他。黑雾中，他的脸正在模糊。但最后一刻，他说了一句让我全身发冷的话：\n\n“你不是在改名。”\n“你是在——”\n“拆掉自己的上一世。”\n\n下一秒，我被拽出账册。\n\n轰！！\n\n白棺碎裂。镜面崩塌。\n\n我重重摔回石阶。\n\n陆沉一把扶住我，脸色极白。\n\n沈江站在青铜灯下，棺杠已经断了一截。\n\n他看着我，低声说：“你刚才……动了账册。”\n\n我还没缓过来。\n\n胸口忽然一阵灼痛。\n\n低头。\n\n扶棺印变了。\n\n原本的小棺纹路里，多了一道新的线——像有人在里面又写了一笔。\n\n但这一次，不是沈舟。\n\n而是空白。\n\n棺主的声音从石门深处缓缓响起，第一次带着明显的兴趣：\n\n“很好。开始像个账主了。”\n\n石门缓缓打开。\n\n真正的无主家，终于露出第一道缝隙。",
                "choices": [
                    {
                        "text": "踏入真正的无主家",
                        "next": "original_coffin_eye"
                    }
                ]
            },
            "grab_fail": {
                "id": "grab_fail",
                "location": "guan_zhang_hall",
                "text": "我没能抓住那根线！\n\n它从指尖滑走——最后一笔落下。\n\n“沈舟”两个字，完整写在了账册上。\n\n黑雾瞬间收紧，我感觉自己正在被写进账册里——\n\n“别放弃！”陆沉的声音从裂缝外传来。\n\n那个“另一个我”看着我，嘴角带着一丝怜悯：“你终究还是被写了。”\n\n可就在这时，我的扶棺印突然发烫——\n\n一道红光从印记里射出，击中了账册上的名字！\n\n“沈舟”两个字开始扭曲、错位——\n\n是爷爷留下的力量！",
                "choices": [
                    {
                        "text": "趁机会冲出去",
                        "next": "grab_success"
                    }
                ]
            },
            "original_coffin_eye": {
                "id": "original_coffin_eye",
                "location": "original_coffin",
                "text": "石门彻底裂开。\n\n我看见了“看见”的声音——不是听觉，是意识被强行翻开。\n\n无主家露出了真正的样子。\n\n没有山。没有墓。没有路。\n\n只有一片巨大的“空”。\n\n空到黑暗都不完整。\n\n脚下是灰白色的石质地面，像骨灰压实后形成的陆地。远处漂浮着无数断裂的棺木——有的倒悬，有的半埋，有的像被某种力量撕开。\n\n而最中央，是一口棺。\n\n一口“没有形状”的棺。\n\n它像是被世界遗忘后自己长出来的阴影。\n\n陆沉站在我右侧，声音第一次变得极低：“这就是……原棺外围。”\n\n沈江没有说话。他肩上的棺杠断了一截，血顺着木纹一滴一滴往下落。\n\n我低头看向扶棺印——那道原本空白的名字位，正在缓慢变化。不是写字，是“生长”。\n\n像有人在我体内，用我的命当纸。\n\n陆沉忽然按住我的肩：“别看中间那口棺。”\n\n我下意识抬头。\n\n已经晚了。\n\n我看见了。\n\n那口“原棺”，正在睁开。\n\n棺盖没有动。动的是“概念”——它的轮廓开始模糊，然后像一只缓缓睁开的眼睛，从黑暗中裂出一道细长的缝。\n\n缝隙里没有尸体。\n\n只有光。\n\n一种逆向的光。像从死亡里照出来的光。\n\n棺主的声音第一次不再通过空间传播，而是直接从我的脑子里响起：\n\n“你终于走到这里了。”\n\n我全身一紧。\n\n沈江低声道：“它出来了。”\n\n陆沉脸色极沉：“不是出来，是醒。”\n\n那一刻，原棺的“眼缝”又扩大了一点。\n\n我看见里面有东西在动。\n\n不是人。不是尸。\n\n是名字。\n\n无数名字。\n\n像被压缩成液体，在棺内缓慢流动。它们彼此纠缠、覆盖、吞噬。\n\n沈长河。陆沉。沈江。周满仓。还有更多我从未见过的名字。\n\n甚至……有一个位置是空的。\n\n空得像专门为我留的。\n\n棺主的声音再次响起。这一次，它笑了：\n\n“你知道棺是什么吗？”\n\n我没有回答。\n\n它替我说：\n\n“棺不是装尸体的——是装名字的。”\n\n我脑子一震。\n\n陆沉猛地看向我：“别听！”\n\n但已经晚了。\n\n那些“名字流体”开始从原棺缝隙溢出，像水一样往外爬。\n\n地面开始出现字——不是刻，是“长”。\n\n石骨般的地面上，缓缓浮现出三个字：\n\n沈舟。\n\n我后退一步。\n\n名字在地上跟着动了一寸。我停，它也停。\n\n像在“跟踪我的存在”。\n\n沈江忽然开口：“原棺在映名。”\n\n陆沉低声：“它在试图把他彻底写进系统。”\n\n我咬牙：“写进去会怎样？”\n\n沈江看着原棺，声音第一次变得极冷：“就再也出不去了。”\n\n棺主轻笑：“别紧张。我只是想确认一件事——你是不是还能‘被写’的人。”\n\n我一愣：“什么意思？”\n\n原棺的光微微一缩。下一秒，我看见了一段画面——不是幻觉，是被强行塞进来的“记忆”。\n\n我看见了爷爷。\n\n沈长河。年轻的他，站在一口棺前，手里握着黑玉戒。身后站着十二个人——陆沉也在，沈江也在。\n\n可他们的脸都很模糊，像被擦掉了一半。\n\n爷爷抬头，看着那口棺，说了一句话：\n\n“如果有人能活着把名字带出去——那个人，不是我们。”\n\n画面崩塌。\n\n我猛地回到现实。\n\n胸口剧痛。\n\n扶棺印彻底发烫。\n\n陆沉脸色骤变：“它在读你的根记忆！别看棺！”\n\n但原棺已经彻底睁开。\n\n那道“缝”，变成了一条完整的竖眼。眼中没有光，只有无数旋转的名字。\n\n棺主的声音变得低沉而真实：\n\n“沈舟。”\n“你不是第一次来这里。”\n\n我脑子一炸：“你在说什么？”\n\n棺主轻声说：“你只是第一次‘醒着’来。你曾经已经来过一次——只是那一次，你被写完了。”\n\n我整个人僵住。\n\n沈江猛地回头看我。陆沉也愣了一瞬：“你别信它！”\n\n但棺主没有停。\n\n原棺开始震动。整个无主家像被唤醒。地面上的名字开始倒流——所有字开始反写，像时间逆转。\n\n棺主的声音压下来：“你想找爷爷。但你有没有想过——他为什么要一定要你来？”\n\n我呼吸一滞。\n\n原棺的眼，彻底睁开。\n\n那一瞬间，我看见棺内最深处——\n\n站着一个人。\n\n背对着我。穿着寿衣。右手无名指上戴着黑玉戒。\n\n他缓缓转身。\n\n这一次，我终于看清了他的脸。\n\n不是爷爷。\n\n也不是我。\n\n而是一个“还没长成我”的我。\n\n他看着我，轻轻开口：\n\n“你终于走到我死的那一步了。”\n\n我脑子彻底空白。\n\n陆沉怒吼：“沈舟！退后！！”\n\n但已经来不及。\n\n原棺的眼，完全锁定了我。\n\n棺主的声音在整个无主家回荡：\n\n“欢迎回来。”\n“上一任——”\n“补名者。”\n\n轰！！！\n\n整个空间开始塌陷。\n\n名字开始重写。\n\n我胸口的扶棺印，第一次主动发光——它不再是印记，它像一行正在完成的判词。\n\n沈舟，已入册。",
                "choices": [
                    {
                        "text": "接受身份，成为新账主",
                        "next": "ending_account_master"
                    },
                    {
                        "text": "拒绝补名，强行撕裂账册",
                        "next": "ending_tear"
                    },
                    {
                        "text": "问那个“未长成的我”为什么在这里",
                        "next": "ending_ask_past"
                    },
                    {
                        "text": "烧掉棺账，终结一切",
                        "next": "burn_account_final"
                    }
                ]
            },
            "burn_account_final": {
                "id": "burn_account_final",
                "location": "original_coffin",
                "text": "“我不接。”\n\n我抬头看向原棺竖眼。\n\n“入册可以烧，合名可以断。”\n\n“你养了我的名字二十年，不是为了让我做棺主——是为了等我亲手烧了你。”\n\n原棺中，那个命影第一次真正笑了。不是诡异，不是冰冷，而像一个终于等到天亮的人。\n\n他抬手指向原棺最深处：“棺账在那里。烧账，要先拔账芯。”\n\n我顺着他所指的方向看去——黑色账册悬浮在棺眼深处，最中央钉着一枚黑钉，穿过所有名字。\n\n棺主厉声道：“住口！”\n\n无数苍白的手从原棺里伸出，抓向那个命影。他却没有躲。那些手穿过他的身体，把他撕成一缕缕黑雾。\n\n但他仍看着我：“沈舟。拔钉。烧账。”\n\n说完，他化成一道影子，猛地撞进我胸口的扶棺印。\n\n那一瞬间，我感觉自己完整了——不是变强，是终于只剩一个沈舟。\n\n扶棺印裂开一道缝，里面浮出一行血字：\n\n“棺账不烧，债永不平。”\n\n我知道，那是爷爷留给我的最后一句话。",
                "choices": [
                    {
                        "text": "拔钉烧账",
                        "next": "burn_lu_chen"
                    }
                ]
            },
            "burn_lu_chen": {
                "id": "burn_lu_chen",
                "location": "original_coffin",
                "text": "陆沉忽然笑了一声，那笑声很轻，却带着一种说不出的疲惫。\n\n他从怀里掏出那枚染血铜钱——铜钱已经裂开，红绳只剩半截。\n\n“沈舟，记住。人这一辈子，总要有一笔账，是自己亲手结的。”\n\n他将铜钱按进自己眉心那道旧疤。\n\n他脸上的疤一点一点裂开，裂缝里没有血，只有幽蓝色的火。\n\n沈江脸色骤变：“陆沉！”\n\n陆沉没有回头。\n\n“二十年前，我从棺道里活着出去，却把半张脸、半条命，还有一群兄弟留在这里。这笔账，我也该还了。”\n\n他猛地冲向原棺。\n\n无数苍白的手抓住他的肩、背、腿，撕开他的衣服，也撕开他的皮肉。可陆沉没有停——他像一个早就知道自己归处的人，一步一步走向那只棺眼。\n\n“沈舟！铃给我！”\n\n我一把解下镇棺铃，掷了过去。\n\n陆沉接住铜铃，掌心蓝火暴涨。镇棺铃在火中剧烈震动，裂口彻底张开，里面传出无数细小的声音——有哭，有笑，有叹息——像所有欠棺的人，在这一刻同时醒来。\n\n他把铜铃狠狠按进原棺竖眼。\n\n“烧账！”\n\n轰——\n\n蓝火瞬间灌入原棺。",
                "choices": [
                    {
                        "text": "冲进棺眼拔钉",
                        "next": "burn_pull_nail"
                    }
                ]
            },
            "burn_pull_nail": {
                "id": "burn_pull_nail",
                "location": "original_coffin",
                "text": "无数名字开始燃烧。不是纸燃的声音——是命被解开的声音。\n\n周满仓。李三娘。陈狗子。赵老七。何半瞎。那些曾经在棺道里索债的死人，此刻不再伸手。他们只是站在火光里，看着我们，然后一个个低头离去。\n\n棺主第一次发出痛苦的嘶吼：“陆沉！你敢毁账！”\n\n沈江咬牙冲上去，用断棺杠顶住原棺边缘：“沈舟，进去拿账芯！”\n\n我冲进棺眼。蓝火烧在身侧，像无数亡魂伸出来的手，推着我往前。\n\n黑色账册就在原棺最深处。我必须抓住账芯黑钉，用力拔出来！松手就会失败！",
                "qte": {
                    "type": "hold",
                    "title": "拔出账芯黑钉",
                    "description": "抓住账芯黑钉，用力拔出来！无数名字会顺着伤口钻进你的身体，松手就会失败！",
                    "buttonText": "用力拔出",
                    "holdDuration": 5000,
                    "timeLimit": 7000,
                    "success": "pull_nail_success",
                    "fail": "pull_nail_fail"
                }
            },
            "pull_nail_success": {
                "id": "pull_nail_success",
                "location": "original_coffin",
                "text": "我伸手抓住账芯黑钉——！\n\n黑钉猛地刺入掌心，疼得我几乎跪下。无数名字顺着伤口钻进我身体里，哭喊、怨恨、求救、诅咒，像潮水一样冲进脑子。\n\n棺主的声音在我耳边低吼：“你敢烧账，沈长河也会散！”\n\n我咬紧牙关，没有松手——！\n\n黑钉终于被我拔了出来！\n\n整本棺账瞬间翻开。最后一页上，“沈舟”两个字燃起蓝火。\n\n黑河尽头，爷爷出现了。\n\n他站在那里，身上仍穿着寿衣，脸色苍白，却笑得很安稳。\n\n“阿舟。”\n\n这一次，我知道是真的。",
                "choices": [
                    {
                        "text": "听爷爷说完",
                        "next": "burn_grandpa_farewell"
                    }
                ]
            },
            "pull_nail_fail": {
                "id": "pull_nail_fail",
                "location": "original_coffin",
                "text": "我抓不住了——手一松，黑钉重新钉回账册！\n\n无数名字瞬间反噬，我被一股力量弹开，重重撞在棺壁上！\n\n“沈舟！”陆沉怒吼一声，他的身体已经被蓝火吞没大半，却仍拼尽全力将镇棺铃推向我！\n\n铜铃在火光中剧烈震动，裂口彻底张开——\n\n“再试一次！”\n\n我咬牙站起来，再次冲向账册。",
                "choices": [
                    {
                        "text": "再次尝试拔钉",
                        "next": "burn_pull_nail"
                    }
                ]
            },
            "burn_grandpa_farewell": {
                "id": "burn_grandpa_farewell",
                "location": "original_coffin",
                "text": "“爷爷，我带你走。”\n\n爷爷摇头：“爷爷走不了了。”\n\n我攥紧拳头：“那我烧了它。”\n\n爷爷点头：“烧了它。沈家人不欠棺材。”\n\n我看着他——他还是那个站在堂屋门口抽旱烟的老人，脾气硬，话不多，却总是在风雨来之前，把门闩插好。\n\n“爷爷……”\n\n他抬手，像小时候那样摸了摸我的头。可他的手穿过了我。\n\n“回家。”\n\n我咬紧牙，猛地拔出账芯黑钉。\n\n整本棺账瞬间翻开。最后一页上，“沈舟”两个字燃起蓝火。\n\n我听见那个命影最后一次在我心里说话：\n\n“回去吧。替我也活一次。”\n\n我没有再犹豫，将棺账按进蓝火。\n\n轰——\n\n火焰吞上来的瞬间，棺主发出一声撕裂般的怒吼。整个无主家开始崩塌。原棺竖眼闭合又睁开，像一只濒死的怪物。\n\n所有名字都在火中飞散，化作漫天黑灰。\n\n我看见沈长河的名字燃起。沈江的名字燃起。陆沉的名字燃起。最后，是沈舟。\n\n我的名字也烧了起来。\n\n那一刻，我以为自己会死。可没有。\n\n名字烧尽后，我胸口忽然一轻。扶棺印裂开，化作一道黑烟，从皮肤下散了出去。\n\n我第一次感觉，肩上没有了重量。\n\n不是棺轻了——是债没了。",
                "choices": [
                    {
                        "text": "被沈江拖出棺眼",
                        "next": "burn_fire_ends"
                    }
                ]
            },
            "burn_fire_ends": {
                "id": "burn_fire_ends",
                "location": "original_coffin",
                "text": "一只手抓住了我的衣领。是沈江——他满身是血，几乎站不稳，却硬生生把我从棺眼里拖了出去。\n\n陆沉已经看不见了。只剩那只镇棺铃，悬在蓝火中央，铃身裂成两半。\n\n铃声最后响了一次。\n\n叮。\n\n这一声后，整条棺道安静了。\n\n所有抬棺声、敲棺声、哭声、笑声，全都消失。\n\n沈江背起我，朝来路狂奔。\n\n无主家在身后塌陷，原棺沉入黑暗。最后一刻，我回头看见爷爷站在火光里，朝我摆了摆手。\n\n他还是说：“别回头。”\n\n于是我没有再看。\n\n再醒来时，我已经躺在村东老槐树下。\n\n天亮了。雨停了。\n\n母亲守在我身边，眼睛红肿，手里紧紧攥着那半截红布。二叔坐在一旁，脸色苍白，却张了张嘴，发出了二十年来第一声沙哑的人声。\n\n“回……来了。”\n\n母亲当场哭了出来。\n\n我坐起身，看见村口站着一个中年男人——背着旧行李包，满脸风尘。\n\n是父亲。",
                "choices": [
                    {
                        "text": "回家",
                        "next": "ending_return_home"
                    }
                ]
            },
            "ending_return_home": {
                "id": "ending_return_home",
                "location": "shen_home",
                "text": "三天后，我们把堂屋里的那口棺材抬到山脚下烧了。\n\n棺材烧到一半，里面没有尸体，也没有替身——只有一枚裂开的黑玉戒。\n\n戒指在火里碎成两半。\n\n二叔说，那天夜里，他梦见爷爷、大伯，还有一个脸上带疤的男人，三个人抬着一口空棺往山外走。走到天亮时，棺材散了，人也散了。\n\n从那以后，沈家再也没有听见过棺声。\n\n南岭的雨季还是很长。竹林还是会在夜里呜呜作响。村里人仍旧绕开那条废弃的抬棺路，老人们仍旧会吓唬小孩，说山里有纸人，有黑棺，有会叫名字的东西。\n\n只有我知道——棺道已经没了。\n\n至少，沈家的那条棺道没了。\n\n后来我整理爷爷留下的旧物，在床底找到一页没有烧尽的残纸，纸上只有一行字：\n\n“活人走活路，死人归死人。”\n\n我把那页纸烧在了爷爷坟前。火很干净，没有黑烟。\n\n那天傍晚，我下山时，忽然听见身后传来一声很轻的铃响。\n\n叮。\n\n我停了一下。\n\n没有回头。\n\n风从山里吹出来，带着泥土和竹叶的味道。像有人在远处笑了一声，又像什么都没有发生。\n\n我继续往前走。\n\n山路尽头，天光正亮。\n\n而这一次，我知道——前面没有棺材在等我。\n\n只有回家的路。",
                "isEnd": true,
                "endType": "true",
                "endMessage": "棺账终焚，沈家债清。陆沉散于火光，爷爷归于山野。而你，终于可以回家了。"
            },
            "ending_account_master": {
                "id": "ending_account_master",
                "location": "original_coffin",
                "text": "我站在原棺前，看着那个“未长成的我”。\n\n他没有催我。只是等着。\n\n我伸手，握住了原棺边缘。\n\n那一瞬间，所有名字都安静了。\n\n我听见自己的声音说：“我接。”\n\n原棺的眼缓缓闭合。地面的名字停止倒流，开始重新排列——以我为中心。\n\n我成为了新账主。\n\n不是爷爷的延续，不是沈家的债。\n\n是我自己的选择。\n\n从今以后，棺道里的名字，由我来写。",
                "isEnd": true,
                "endType": "true",
                "endMessage": "你接过了棺账，成为了新的账主。沈家的债，在你这里结束。"
            },
            "ending_tear": {
                "id": "ending_tear",
                "location": "original_coffin",
                "text": "我没有接受。\n\n我伸手，抓住了那条名字线——那条连接着我的命、连接着沈家所有名字的线。\n\n我用力一扯。\n\n整本棺账被我从中间撕裂。\n\n名字如灰烬般飞散，原棺发出刺耳的崩裂声。\n\n那个“未长成的我”在消散前说了一句话：\n\n“你拆掉了自己的根。”\n\n我回他：“那我重新长。”\n\n无主家崩塌。我被陆沉和沈江拖出石门。\n\n外面是南岭的清晨，鸟叫了。\n\n我低头——扶棺印已经消失。\n\n我不再是补名者。\n\n我是我自己。",
                "isEnd": true,
                "endType": "victory",
                "endMessage": "你撕碎了棺账，也撕碎了沈家三代人的债。你自由了。"
            },
            "ending_ask_past": {
                "id": "ending_ask_past",
                "location": "original_coffin",
                "text": "我看着那个“未长成的我”，问：“你在这里多久了？”\n\n他沉默了一会儿。\n\n“比你想象的要久。”\n\n“你后悔吗？”\n\n他笑了。“我后悔的不是进来——而是没有问过自己，值不值得。”\n\n我看着他，忽然明白了。\n\n他不是我的未来。\n\n他是我的一个选择。\n\n我伸出手，他没有握。\n\n“走吧。”他说，“你还有机会。”\n\n我转身，走向裂缝。\n\n身后传来他的声音，轻得像风：\n\n“替我活完整。”\n\n我踏出石门。\n\n南岭的天亮了。",
                "isEnd": true,
                "endType": "good",
                "endMessage": "你选择了活完整。那个未长成的你，在账册里替你记住了所有路。"
            }
        },
        "id": "the_stolen_coffin_part2"
    },
    {
        "title": "盗棺笔记：河川旧录（上）",
        "subtitle": "替棺归途",
        "description": "沈河川年轻时发现沈家的棺债即将落在儿子沈舟身上。他离开家乡，寻找替棺，试图为儿子挡下命运。七块棺板，七年归途，替棺认路，阴债渐醒。你的每个选择都会改变沈河川的命运。",
        "author": "Radiation Studio",
        "version": "2.0",
        "variables": {
            "trust_father": 50,
            "fear_level": 30,
            "knowledge_about_guandao": 0,
            "copper_piece_active": false,
            "has_told_mother": false,
            "has_confronted_father": false,
            "has_visited_yizhuang": false,
            "has_taken_coffin": false,
            "board_count_sent": 0,
            "sent_boards_fast": false,
            "has_warned_gu_old": false,
            "gu_old_survived": false,
            "discovered_plot": false,
            "ending_reached": false
        },
        "features": {
            "inventory": true,
            "map": true
        },
        "items": [
            {
                "id": "black_copper_piece",
                "name": "黑色铜片",
                "icon": "🔲",
                "description": "后山发现的铜片，握着能听见死人的声音。表面有暗红纹路。"
            },
            {
                "id": "guan_zhang_fragment",
                "name": "棺账残页",
                "icon": "📜",
                "description": "沈长河藏了多年的棺账，最后一页出现了沈舟的名字。"
            },
            {
                "id": "black_jade_ring",
                "name": "黑玉戒",
                "icon": "💍",
                "description": "沈长河无名指上的黑玉戒，靠近火光会泛暗红。是锁，不是饰物。"
            },
            {
                "id": "old_knife",
                "name": "旧刀",
                "icon": "🔪",
                "description": "沈河川离家时带的刀，刀身布满锈迹，但刀刃依然锋利。"
            },
            {
                "id": "coffin_board_1",
                "name": "第一块棺板",
                "icon": "🪵",
                "description": "替棺的第一块板，背面刻着一只闭着的眼睛。"
            },
            {
                "id": "coffin_board_2",
                "name": "第二块棺板",
                "icon": "🪵",
                "description": "替棺的第二块板，背面刻着闭着的眼睛。"
            },
            {
                "id": "red_blood_pouch",
                "name": "红布包·鸡血",
                "icon": "🔴",
                "description": "厨房梁上挂着的红布袋，里面是封着蜡的瓷瓶，装着暗红色的鸡血。"
            },
            {
                "id": "old_coin",
                "name": "旧铜钱",
                "icon": "💰",
                "description": "沈长河给的铜钱，边缘磨得发亮，据说能压一时的棺声。"
            },
            {
                "id": "zhen_guang_ling",
                "name": "镇棺铃",
                "icon": "🔔",
                "description": "沈家祖传的铜铃，铃口裂了一道缝。能压三次棺声。"
            },
            {
                "id": "gu_old_letter",
                "name": "顾老的信",
                "icon": "✉️",
                "description": "顾老在义庄被烧前留下的信，写着替棺认路后就会认人的警告。"
            }
        ],
        "map": {
            "title": "南岭棺道·前传",
            "locations": [
                {
                    "id": "shen_home",
                    "name": "沈家堂屋",
                    "description": "沈家老宅的堂屋，棺账和黑玉戒都藏在这里。沈长河每晚都要检查一遍。"
                },
                {
                    "id": "back_hill",
                    "name": "沈家后山",
                    "description": "一片荒芜的丘陵地，野草比人高。沈河川在这里发现了那枚黑色铜片。"
                },
                {
                    "id": "outside_village",
                    "name": "山外旅馆",
                    "description": "沈河川离开沈家后住的第一间旅馆。窗外下着雨，棺账自己翻开了。"
                },
                {
                    "id": "old_workshop",
                    "name": "秦老的木坊",
                    "description": "北方一座老木坊，秦老一辈子只给活人做棺材。他告诉沈河川：名字是被认上去的，不是写上去的。"
                },
                {
                    "id": "abandoned_yizhuang",
                    "name": "废弃义庄",
                    "description": "一口无名的棺材停在这里二十七年。顾老带沈河川找到了它——第一块替棺。"
                },
                {
                    "id": "old_temple",
                    "name": "旧庙",
                    "description": "庙里供奉的不是神，是一口没有名字的棺。沈河川在这里听见了沈舟的声音。"
                },
                {
                    "id": "south_village",
                    "name": "南方旧村",
                    "description": "沈河川查到线索的地方，其他家族也受棺债所困。有人试图替下一代挡灾，结果只是延期。"
                },
                {
                    "id": "shen_home_later",
                    "name": "沈家（多年后）",
                    "description": "七块棺板一块接一块送进沈家。村口的狗不再叫了，夜里的竹林安静得不像话。"
                },
                {
                    "id": "old_forest",
                    "name": "旧林深处",
                    "description": "曾祖父地图上标注的旧林，据说穿过这片林子能找到另一块棺板的线索。"
                }
            ],
            "startingLocation": "shen_home"
        },
        "start": "start",
        "nodes": {
            "start": {
                "id": "start",
                "location": "shen_home",
                "text": "二十年前，沈河川还年轻。\n\n那时候的沈家，并不像后来一样安静。沈长河还在。沈江还在。陆沉也还没有变成那个满脸伤疤的人。\n\n他们四个人经常坐在院子里讨论一件事——南岭。那个所有沈家人都不愿意提起的地方。\n\n沈河川一直不理解，为什么父亲和大哥宁愿守着那些死人留下的东西，也不愿意过普通人的生活。\n\n他问过沈长河：\"爸，我们沈家到底欠了谁？\"",
                "choices": [
                    {
                        "text": "等待沈长河回答",
                        "next": "debt_answer"
                    },
                    {
                        "text": "打断父亲，说自己有事要出去",
                        "next": "leave_debt"
                    },
                    {
                        "text": "转身去厨房找母亲",
                        "next": "talk_to_mother"
                    }
                ]
            },
            "leave_debt": {
                "id": "leave_debt",
                "location": "shen_home",
                "text": "沈河川没有等父亲回答。他总觉得那些话太沉重，听了心里堵得慌。\n\n他借口有事，走出堂屋。\n\n风穿过院子，老槐树的叶子哗哗作响。他站在树下，听见树后传来一声很轻的叹息——\n\n不是风声。\n\n他转过头，什么都没看见。\n\n但那声叹息，像一个人蹲在树根下面，对着泥土说话。",
                "choices": [
                    {
                        "text": "去后山看看",
                        "next": "back_hill_discovery"
                    },
                    {
                        "text": "回屋睡觉",
                        "next": "sleep_early"
                    }
                ]
            },
            "sleep_early": {
                "id": "sleep_early",
                "location": "shen_home",
                "text": "沈河川回屋躺下，却一直睡不着。\n\n半夜，他听见堂屋传来很轻的说话声——像是父亲在跟谁说话。\n\n他起身靠近门缝，看见沈长河一个人坐在棺材账前，低声念着什么。\n\n桌上的油灯跳了一下，火光里，沈长河的脸上有一道很长的暗影，像另一张脸叠在他脸上。\n\n沈河川退了回去，一夜没合眼。",
                "choices": [
                    {
                        "text": "第二天一早去后山",
                        "next": "back_hill_discovery"
                    },
                    {
                        "text": "直接问父亲昨晚在跟谁说话",
                        "next": "confront_father_night"
                    }
                ]
            },
            "confront_father_night": {
                "id": "confront_father_night",
                "location": "shen_home",
                "text": "第二天清晨，沈河川直接在早饭时问：\"爸，昨晚你在跟谁说话？\"\n\n沈长河的筷子顿了一下。\"没有谁。\"\n\n\"我听见了。\"\n\n沈长河放下碗，看着沈河川，目光很深。\"有些话，不能说第二遍。你听见了，就忘掉。\"\n\n沈河川还想追问，但沈长河已经起身走了。\n\n母亲在旁边低声说：\"别问了，你爸有他的道理。\"\n\n沈河川沉默地吃完饭，决定自己去后山看看。",
                "actions": [
                    {
                        "type": "setVar",
                        "name": "has_confronted_father",
                        "value": true
                    },
                    {
                        "type": "addVar",
                        "name": "fear_level",
                        "value": 10
                    }
                ],
                "choices": [
                    {
                        "text": "去后山",
                        "next": "back_hill_discovery"
                    }
                ]
            },
            "talk_to_mother": {
                "id": "talk_to_mother",
                "location": "shen_home",
                "text": "沈河川走进厨房。母亲正在择菜。\n\n\"妈，沈家以前是不是有什么事？\"\n\n母亲的手停了一下。\"你爸没告诉你？\"\n\n\"他只说欠了一口棺。\"\n\n母亲沉默了很久，然后低声说：\"你爸年轻的时候，跟你大伯进过南岭。回来以后，大伯就失踪了，你爸也变了一个人。\"\n\n\"大伯……沈江？\"\n\n\"嗯。他在南岭留下了一样东西。你爸说，那东西会找上沈家的人。\"\n\n\"什么东西？\"\n\n\"一口棺材。一口还没人躺过的棺材。\"\n\n沈河川心里一沉。",
                "actions": [
                    {
                        "type": "setVar",
                        "name": "has_told_mother",
                        "value": true
                    },
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 20
                    }
                ],
                "choices": [
                    {
                        "text": "继续问母亲",
                        "next": "ask_mother_more"
                    },
                    {
                        "text": "决定自己去查",
                        "next": "back_hill_discovery"
                    }
                ]
            },
            "ask_mother_more": {
                "id": "ask_mother_more",
                "location": "shen_home",
                "text": "\"那口棺材现在在哪里？\"\n\n母亲摇头。\"没人知道。你爸说它在等一个名字。\"\n\n\"等谁的名字？\"\n\n母亲看了他很久，然后说：\"你爸说，可能是沈家最后一个人的名字。\"\n\n沈河川愣住了。\"最后一个人？\"\n\n母亲没有回答，只是低头继续择菜。\n\n但沈河川注意到，母亲的手指在微微发抖。",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 30
                    },
                    {
                        "type": "addVar",
                        "name": "fear_level",
                        "value": 10
                    }
                ],
                "choices": [
                    {
                        "text": "去后山散心",
                        "next": "back_hill_discovery"
                    },
                    {
                        "text": "直接去找父亲对质",
                        "next": "confront_father_direct"
                    }
                ]
            },
            "confront_father_direct": {
                "id": "confront_father_direct",
                "location": "shen_home",
                "text": "沈河川走到堂屋，沈长河正在把棺账锁进木匣。\n\n\"爸，最后一个人的名字是谁？\"\n\n沈长河的手停住了。他没有转身。\"你妈告诉你了？\"\n\n\"告诉我一部分。剩下的，我想听你说。\"\n\n沈长河把木匣放回柜里，慢慢转过身。他脸上没有愤怒，只有一种很深的疲惫。\n\n\"河川，有些事知道得越早，越害怕。\"\n\n\"我不怕。\"\n\n沈长河看着他，目光像在看一个还没长大的孩子。\"你当然不怕。因为你还没看到那东西。\"\n\n\"什么东西？\"\n\n沈长河没有回答。他只是说：\"等你有了孩子，你就会明白什么叫真正的怕。\"",
                "actions": [
                    {
                        "type": "setVar",
                        "name": "has_confronted_father",
                        "value": true
                    },
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 20
                    }
                ],
                "choices": [
                    {
                        "text": "不再追问，去后山",
                        "next": "back_hill_discovery"
                    },
                    {
                        "text": "继续追问，直到父亲开口",
                        "next": "press_father"
                    }
                ]
            },
            "press_father": {
                "id": "press_father",
                "location": "shen_home",
                "text": "\"爸，如果你不告诉我，我会自己去找答案。到时候，可能比你现在告诉我更危险。\"\n\n沈长河看了他很久。最后，他叹了口气。\n\n\"南岭里有一口倒悬的黑棺。那口棺不是装死人的，是装活人的名字。当年我和你大伯进去，是想把那口棺的债断掉。\"\n\n\"断掉了吗？\"\n\n\"没有。我们只带出了一样东西——你大伯的名。\"\n\n\"大伯的名？\"\n\n\"他把自己的名字刻进了棺里，替沈家挡了二十年。如今，他的名字快写满了。\"\n\n沈河川遍体生寒。\"写满了会怎样？\"\n\n\"就需要下一个名字。\"\n\n沈河川想起了沈舟。\n\n他握紧了拳头。",
                "actions": [
                    {
                        "type": "setVar",
                        "name": "has_confronted_father",
                        "value": true
                    },
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 40
                    }
                ],
                "choices": [
                    {
                        "text": "去后山冷静一下",
                        "next": "back_hill_discovery"
                    }
                ]
            },
            "debt_answer": {
                "id": "debt_answer",
                "location": "shen_home",
                "text": "沈长河沉默了很久。\n\n\"不是欠谁。是欠一口棺。\"\n\n沈河川觉得荒唐。\"棺材还能找人要债？\"\n\n沈长河看着他，眼神很复杂。\"河川，你记住。这世上最可怕的不是死人，是死人留下的规矩。\"\n\n沈河川还想再问，但沈长河已经转身去摆弄那本旧账了。\n\n那天夜里，沈河川第一次听见堂屋地底传来三声敲击。\n\n咚。咚。咚。\n\n他没有睡。",
                "choices": [
                    {
                        "text": "第二天去后山",
                        "next": "back_hill_discovery"
                    },
                    {
                        "text": "叫醒父亲问那声音",
                        "next": "ask_sound_night"
                    }
                ]
            },
            "ask_sound_night": {
                "id": "ask_sound_night",
                "location": "shen_home",
                "text": "沈河川披衣起身，走到堂屋。沈长河已经坐在那里了，手里握着那本棺账。\n\n\"爸，那是什么声音？\"\n\n\"底下有东西。\"\n\n\"什么东西？\"\n\n\"一口等着进门的东西。\"\n\n沈河川脊背发凉。\"它什么时候会进来？\"\n\n沈长河抬头看他。\"等你有了孩子。\"\n\n沈河川愣住。\"为什么是我的孩子？\"\n\n\"因为沈家欠的是名字。新生的名字最干净，也最容易写进去。\"\n\n沈河川攥紧拳头。\"那如果我没有孩子呢？\"\n\n沈长河笑了一下，那笑容很苦。\"你会有的。沈家的人，逃不过。\"",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 30
                    },
                    {
                        "type": "addVar",
                        "name": "fear_level",
                        "value": 20
                    }
                ],
                "choices": [
                    {
                        "text": "回房，但决定天亮去后山",
                        "next": "back_hill_discovery"
                    },
                    {
                        "text": "问父亲那口棺在哪里",
                        "next": "where_is_coffin"
                    }
                ]
            },
            "where_is_coffin": {
                "id": "where_is_coffin",
                "location": "shen_home",
                "text": "\"那口棺在哪里？\"\n\n沈长河沉默了很久。\"在南岭深处。但你不能去。\"\n\n\"为什么？\"\n\n\"因为去了的人，都没有回来过。\"\n\n\"大伯不是回来了吗？\"\n\n\"他回来的只是身体。他的名字还留在那里。\"\n\n沈河川第一次觉得，父亲不是在吓唬他。",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 40
                    }
                ],
                "choices": [
                    {
                        "text": "天亮后去后山",
                        "next": "back_hill_discovery"
                    },
                    {
                        "text": "偷偷翻找棺账",
                        "next": "steal_ledger"
                    }
                ]
            },
            "steal_ledger": {
                "id": "steal_ledger",
                "location": "shen_home",
                "text": "等沈长河回房后，沈河川悄悄打开木匣，翻出棺账。\n\n他看到了那些名字——沈家祖上的，还有一些陌生的。每个名字后面都有一个日期，有的被划掉了，有的还在。\n\n最后一页是空白的。\n\n但纸面上有一道极浅的压痕，像被笔尖用力划过，又没写下字。\n\n他用手电筒侧着照了一下——\n\n看见两个字：\n\n沈舟。\n\n他猛地合上棺账。",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 50
                    },
                    {
                        "type": "addVar",
                        "name": "fear_level",
                        "value": 30
                    }
                ],
                "choices": [
                    {
                        "text": "把棺账放回原处，天亮后去后山",
                        "next": "back_hill_discovery"
                    },
                    {
                        "text": "带着棺账离开沈家",
                        "next": "leave_with_ledger"
                    }
                ]
            },
            "leave_with_ledger": {
                "id": "leave_with_ledger",
                "location": "outside_village",
                "text": "沈河川把棺账塞进怀里，连夜离开了沈家。\n\n他没有告诉任何人。\n\n他以为带着棺账就能找到答案——\n\n但他走到山脚时，棺账忽然变得很烫。\n\n他低头翻开，看见最后一页的\"沈舟\"两个字正在渗血。\n\n那血不是他的。\n\n是纸自己流出来的。\n\n他犹豫了一下，还是继续往前走了。\n\n他不知道，这个决定会让事情变得完全不同。",
                "actions": [
                    {
                        "type": "setVar",
                        "name": "has_confronted_father",
                        "value": true
                    },
                    {
                        "type": "addVar",
                        "name": "fear_level",
                        "value": 40
                    }
                ],
                "choices": [
                    {
                        "text": "继续往北走",
                        "next": "north_road"
                    },
                    {
                        "text": "停下，把棺账埋掉",
                        "next": "bury_ledger"
                    }
                ]
            },
            "bury_ledger": {
                "id": "bury_ledger",
                "location": "outside_village",
                "text": "沈河川停下脚步，在路边挖了一个坑，把棺账埋了进去。\n\n他告诉自己，这样就能断了沈家的债。\n\n可埋下去的瞬间，他听见泥土下面传来一声咳嗽。\n\n不是他的。\n\n那声音苍老，沙哑——是沈长河。\n\n\"你埋不掉的，河川。\"\n\n沈河川猛地用土填实。声音消失了。\n\n但他知道，那东西没有走。",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "fear_level",
                        "value": 50
                    }
                ],
                "choices": [
                    {
                        "text": "继续往北走",
                        "next": "north_road"
                    }
                ]
            },
            "back_hill_discovery": {
                "id": "back_hill_discovery",
                "location": "back_hill",
                "text": "后山是沈家屋后一片荒芜的丘陵地。野草比人高，路早就被灌木封死。\n\n沈河川沿着一条几乎看不见的小路往上走。脚下泥土潮湿，带着一股说不清的旧味。\n\n走了不到一炷香时间，他踢到了一件硬物。\n\n弯腰扒开杂草，看见一块黑色的铜片被半埋在土里。半个手掌大小，没有纹路，没有字，边角圆钝得不像自然磨损。\n\n他伸手去挖——泥土坚硬如铁，铜片像是钉在地里一样。",
                "qte": {
                    "type": "click",
                    "title": "挖掘铜片",
                    "description": "铜片嵌在坚硬的泥土中，你必须快速挖开泥土才能取出它！",
                    "buttonText": "用力挖掘",
                    "requiredClicks": 12,
                    "timeLimit": 5000,
                    "success": "copper_found",
                    "fail": "copper_fail"
                }
            },
            "copper_found": {
                "id": "copper_found",
                "location": "back_hill",
                "text": "沈河川终于把铜片挖了出来。\n\n他把它捡起来，翻过来看背面——还是什么都没有。\n\n就在握紧铜片的一瞬间，他听见了一个声音。\n\n一个死了二十年的声音。\n\n\"河川。\"",
                "choices": [
                    {
                        "text": "仔细辨认那个声音",
                        "next": "recognize_voice"
                    },
                    {
                        "text": "把铜片扔掉",
                        "next": "drop_copper"
                    },
                    {
                        "text": "攥紧铜片，带回家",
                        "next": "keep_copper"
                    },
                    {
                        "text": "在周围继续搜寻",
                        "next": "find_more"
                    }
                ]
            },
            "copper_fail": {
                "id": "copper_fail",
                "location": "back_hill",
                "text": "泥土太硬了。沈河川的手指被石头划破，鲜血滴在铜片上——\n\n铜片忽然发出一阵微光，然后沉入了泥土深处。\n\n他愣在原地，看着那个洞慢慢合拢。\n\n身后传来一声叹息。\n\n他没有回头，只是握紧了满是血的手，转身下山。\n\n他知道，有些东西，不是现在能拿的。",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "fear_level",
                        "value": 20
                    },
                    {
                        "type": "setVar",
                        "name": "copper_piece_active",
                        "value": false
                    }
                ],
                "choices": [
                    {
                        "text": "回家",
                        "next": "return_home_copper"
                    }
                ]
            },
            "drop_copper": {
                "id": "drop_copper",
                "location": "back_hill",
                "text": "沈河川手一抖，铜片掉在地上。\n\n那声音立刻消失了。\n\n他站在原地，后背全是冷汗。\n\n他认得那个声音——是沈长河。\n\n可父亲明明坐在堂屋里。\n\n他犹豫了一下，还是弯腰把铜片捡了起来，塞进口袋。\n\n铜片表面冰凉，像一块从地下挖出的寒铁。",
                "actions": [
                    {
                        "type": "setVar",
                        "name": "copper_piece_active",
                        "value": true
                    },
                    {
                        "type": "addVar",
                        "name": "fear_level",
                        "value": 10
                    }
                ],
                "choices": [
                    {
                        "text": "下山回家",
                        "next": "return_home_copper"
                    },
                    {
                        "text": "继续往后山深处走",
                        "next": "deeper_hill"
                    }
                ]
            },
            "keep_copper": {
                "id": "keep_copper",
                "location": "back_hill",
                "text": "沈河川攥紧铜片，那声音没有消失，反而更清晰了。\n\n\"河川，听我说。\"\n\n他强迫自己冷静下来。\"你是谁？\"\n\n那声音沉默了片刻。\"我是你父亲。\"\n\n\"你不是。我爸在家。\"\n\n\"我在家的日子，已经不多了。\"\n\n沈河川心头一紧。\"什么意思？\"\n\n\"你找到的这块铜片，是当年从南岭带出来的。它记住了我说过的话——在我说出那些话之前，就已经记住了。\"\n\n沈河川低头看着铜片。表面浮出一道极淡的暗红纹路，像血，又像锈。\n\n\"那口棺……它要的是谁的名字？\"\n\n铜片没有回答。但沈河川感觉到口袋里一阵轻微的震动——像有什么东西正在铜片内部醒来。",
                "actions": [
                    {
                        "type": "setVar",
                        "name": "copper_piece_active",
                        "value": true
                    },
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 30
                    }
                ],
                "choices": [
                    {
                        "text": "带着铜片回家",
                        "next": "return_home_copper"
                    },
                    {
                        "text": "追问铜片更多问题",
                        "next": "copper_questions"
                    }
                ]
            },
            "copper_questions": {
                "id": "copper_questions",
                "location": "back_hill",
                "text": "\"你刚才说'我在家的日子不多了'——为什么？\"\n\n铜片沉默了更久。然后那声音再次响起——\n\n\"因为棺账上已经有了我的名字。沈长河，已入棺。\"\n\n沈河川手心出汗。\"什么时候的事？\"\n\n\"你儿子出生那天。\"\n\n沈河川猛地想起，沈舟出生那天，南岭方向下了一场很大的雨——回山雨。\n\n\"那你现在……\"\n\n\"我还在撑。但撑不了太久。你找到替棺，越快越好。\"\n\n声音消失了。铜片上的暗红纹路也慢慢淡去，像沉入铜里。",
                "actions": [
                    {
                        "type": "setVar",
                        "name": "copper_piece_active",
                        "value": true
                    },
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 40
                    },
                    {
                        "type": "addVar",
                        "name": "fear_level",
                        "value": 20
                    }
                ],
                "choices": [
                    {
                        "text": "下山回家",
                        "next": "return_home_copper"
                    },
                    {
                        "text": "继续往后山深处走",
                        "next": "deeper_hill"
                    }
                ]
            },
            "recognize_voice": {
                "id": "recognize_voice",
                "location": "back_hill",
                "text": "沈河川僵在原地。\n\n那是沈长河的声音。可二十年前，沈长河曾经失踪过一段时间——村里人都说他去了南岭，回来后什么也不说。\n\n这个声音，\"河川\"——是他父亲私底下才会叫他的方式。\n\n\"爸？你在哪里？\"\n\n那声音没有回答。\n\n但铜片表面的暗红纹路，像树根一样缓缓扩展，像是声音正在从铜片深处爬出来。\n\n沈河川知道，这东西不能带回家了。可他忍不住想——如果真有办法，用这东西找到真相呢？",
                "actions": [
                    {
                        "type": "setVar",
                        "name": "copper_piece_active",
                        "value": true
                    },
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 20
                    }
                ],
                "choices": [
                    {
                        "text": "把铜片装进口袋带回家",
                        "next": "return_home_copper"
                    },
                    {
                        "text": "把铜片埋回原处",
                        "next": "bury_copper"
                    },
                    {
                        "text": "继续搜寻周围",
                        "next": "find_more"
                    }
                ]
            },
            "bury_copper": {
                "id": "bury_copper",
                "location": "back_hill",
                "text": "沈河川蹲下来，把铜片放回它被发现的位置，用泥土盖住。\n\n\"抱歉，我不能带你走。\"\n\n铜片安静地躺在土里，没有发出任何声音。\n\n但沈河川起身时，忽然听见身后传来一声极轻的叹息——\n\n像是有人从很远的地方，终于放弃了什么。\n\n他站了片刻，还是转身下山了。\n\n他不知道，这个放弃意味着什么。",
                "actions": [
                    {
                        "type": "setVar",
                        "name": "copper_piece_active",
                        "value": false
                    },
                    {
                        "type": "addVar",
                        "name": "fear_level",
                        "value": 5
                    }
                ],
                "choices": [
                    {
                        "text": "下山回家",
                        "next": "return_home_copper"
                    }
                ]
            },
            "find_more": {
                "id": "find_more",
                "location": "back_hill",
                "text": "沈河川在周围又找了一圈。草丛里还有几片类似的铜片，但都已经锈穿，拿起来就碎成粉末。\n\n只有第一片完好。\n\n他把铜片装进口袋，又在附近翻了翻，想找找有没有文字或记号。\n\n在一丛枯草下，他找到了一块断掉的小石碑，上面刻着一行字——\n\n\"入南岭者，不返。\"\n\n下面是三个人的名字，其中两个已经模糊，第三个还能辨认：\n\n沈江。\n\n沈河川盯着那个名字，久久没有动。",
                "actions": [
                    {
                        "type": "setVar",
                        "name": "copper_piece_active",
                        "value": true
                    },
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 25
                    }
                ],
                "choices": [
                    {
                        "text": "把石碑翻过来看背面",
                        "next": "turn_stone"
                    },
                    {
                        "text": "带着铜片下山",
                        "next": "return_home_copper"
                    }
                ]
            },
            "turn_stone": {
                "id": "turn_stone",
                "location": "back_hill",
                "text": "沈河川费力地把石碑翻过来。\n\n背面有一行刻得很浅的字，像是有人在很急的情况下用手指划出来的——\n\n\"沈长河留：若见此碑，莫入南岭。\"\n\n是父亲的笔迹。\n\n可这石碑看起来已经在这里很多年了。父亲当年写这行字时，是什么心情？\n\n沈河川看着那行字，想起父亲每天坐在堂屋里的背影。\n\n他第一次觉得，父亲这些年，可能一直在等这行字被人看见。\n\n也可能——他等的人，就是自己。",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 35
                    },
                    {
                        "type": "addVar",
                        "name": "trust_father",
                        "value": 10
                    }
                ],
                "choices": [
                    {
                        "text": "带着铜片下山",
                        "next": "return_home_copper"
                    }
                ]
            },
            "deeper_hill": {
                "id": "deeper_hill",
                "location": "back_hill",
                "text": "沈河川没有下山，反而继续往后山深处走。\n\n灌木越来越密，脚下的路越来越软，像踩在厚厚的腐叶上。\n\n走了大约二十分钟，他看见前方有一片塌陷的地面——像是一座被填平的墓穴。\n\n塌陷处露出半截棺材角，已经腐烂得不成形。\n\n沈河川走近，发现棺材旁边散落着几块铜片碎片，和他口袋里的那块材质一样。\n\n而在棺材正下方的泥土里，埋着一只锈迹斑斑的铁盒。\n\n他弯腰去捡——",
                "choices": [
                    {
                        "text": "打开铁盒",
                        "next": "open_box"
                    },
                    {
                        "text": "把铁盒整个带走",
                        "next": "take_box"
                    },
                    {
                        "text": "先检查棺材里的东西",
                        "next": "check_coffin_deep"
                    }
                ]
            },
            "open_box": {
                "id": "open_box",
                "location": "back_hill",
                "text": "沈河川撬开铁盒。\n\n里面是一叠发黄的纸，纸角已经脆裂。最上面一张画着一张简陋的地图，标注着一条路线——从沈家后山开始，穿过一片标记为\"旧林\"的地方，一直延伸到一座用圈圈出的位置。\n\n圈旁写着两个字：\n\n南岭。\n\n地图背面，是一行字：\n\n\"此路入，未必出。但若沈家子孙有问，可试。\"\n\n落款是：沈林——沈河川的曾祖父。\n\n沈河川握着地图，手在微微颤抖。",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 50
                    },
                    {
                        "type": "addVar",
                        "name": "fear_level",
                        "value": 30
                    }
                ],
                "choices": [
                    {
                        "text": "把地图和铜片一起带回家",
                        "next": "return_home_copper"
                    },
                    {
                        "text": "立刻按地图路线走",
                        "next": "enter_old_forest"
                    }
                ]
            },
            "enter_old_forest": {
                "id": "enter_old_forest",
                "location": "old_forest",
                "text": "沈河川没有犹豫，按照地图上的路线走向那片\"旧林\"。\n\n林子比他想象的更深。树木高大得遮天蔽日，脚下腐叶堆积了不知多少年，踩上去软得像踏在尸体上。\n\n走了约莫一个时辰，他看见一棵老树上刻着一个标记——和地图上一模一样。\n\n标记下方，树根处埋着半截露出地面的铁环。\n\n他弯腰拉动铁环，地面掀开一道暗门。\n\n暗门下方是一间极小的石室，里面放着一口腐朽的小棺材。棺材里没有尸骨，只有一卷用油布包裹的纸。\n\n沈河川打开油布，里面是一张泛黄的纸条——\n\n\"替棺第三块板，藏于北边老木坊地窖。取板者需自备三寸长钉。\"\n\n他记住了这句话，把油布重新包好，放回原处。\n\n走出旧林时，天色已经暗了。他决定先回家准备长钉，再出发去北边。",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 55
                    },
                    {
                        "type": "addVar",
                        "name": "board_count_sent",
                        "value": 0
                    }
                ],
                "choices": [
                    {
                        "text": "回家准备长钉",
                        "next": "return_home_copper"
                    },
                    {
                        "text": "继续在旧林搜寻",
                        "next": "search_old_forest_more"
                    }
                ]
            },
            "search_old_forest_more": {
                "id": "search_old_forest_more",
                "location": "old_forest",
                "text": "沈河川没有急着离开，而是继续在旧林深处搜索。\n\n他走了不到半里，发现了一座被藤蔓完全覆盖的旧坟。坟前没有碑，但坟头压着一块青石板，石板下面压着三枚旧铜钱。\n\n他拿起铜钱，发现其中一枚背面刻着一个字——\"替\"。\n\n他收好铜钱，记下位置，这才离开旧林。\n\n他隐约觉得，旧林里的线索不止这一处。但他已经在这里待了太久，天快黑了。",
                "actions": [
                    {
                        "type": "addItem",
                        "itemId": "old_coin"
                    },
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 60
                    }
                ],
                "choices": [
                    {
                        "text": "下山回家",
                        "next": "return_home_copper"
                    }
                ]
            },
            "check_coffin_deep": {
                "id": "check_coffin_deep",
                "location": "back_hill",
                "text": "沈河川先检查了那口半露的棺材。\n\n棺材已经腐烂得差不多了，里面的东西早已化尽，只剩下几根发黑的骨头和一块铜片碎片。\n\n他拿起碎片，和口袋里的那块对比——材质完全一致。\n\n他这才去拿铁盒。打开后，里面是一张旧地图和一枚断成两半的黑玉戒。\n\n他收起所有东西，决定下山。",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 45
                    }
                ],
                "choices": [
                    {
                        "text": "下山回家",
                        "next": "return_home_copper"
                    }
                ]
            },
            "take_box": {
                "id": "take_box",
                "location": "back_hill",
                "text": "沈河川把铁盒整个拎起来，沉甸甸的。他不敢在山上打开，怕一打开就放出了什么东西。\n\n他抱着盒子快步下山。\n\n回到家后，他才打开盒子——里面是一张旧地图、几块铜片碎片、还有一枚断成两半的黑玉戒。\n\n那枚戒指，和父亲手上戴的一模一样。\n\n他愣在原地。\n\n这意味着——父亲已经有过一枚？还是说，这枚才是真的？",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 45
                    }
                ],
                "choices": [
                    {
                        "text": "拿着戒指去问父亲",
                        "next": "confront_ring"
                    },
                    {
                        "text": "把铁盒藏起来，暂时不说",
                        "next": "hide_box"
                    }
                ]
            },
            "confront_ring": {
                "id": "confront_ring",
                "location": "shen_home",
                "text": "沈河川拿着断成两半的黑玉戒走到堂屋，放在父亲面前。\n\n\"这是什么？\"\n\n沈长河看到那两半戒指，脸色骤变。\"你在哪里找到的？\"\n\n\"后山深处。一个铁盒里。\"\n\n沈长河沉默了很久。然后他说：\"那是你曾祖父的东西。\"\n\n\"曾祖父也进过南岭？\"\n\n\"进过。他没能回来。但他托人把这枚戒指带了出来——说如果沈家后代有人想进去，这枚戒指能挡一次。\"\n\n\"挡一次什么？\"\n\n\"挡一次'点名'。\"\n\n沈河川低头看着那两半戒指。\"那你这枚呢？\"\n\n\"我这枚是假的。\"沈长河低声道，\"真的已经断了。\"\n\n沈河川觉得喉咙发紧。\"那你这些年戴着的——是假的？\"\n\n\"假的也能撑一阵子。\"\n\n沈河川第一次觉得，父亲身上背负的东西，比他想象的还要重。",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "trust_father",
                        "value": 20
                    },
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 50
                    }
                ],
                "choices": [
                    {
                        "text": "\"那曾祖父说的'点名'是什么？\"",
                        "next": "what_is_naming"
                    },
                    {
                        "text": "\"你还能撑多久？\"",
                        "next": "how_long_can_you"
                    }
                ]
            },
            "what_is_naming": {
                "id": "what_is_naming",
                "location": "shen_home",
                "text": "\"点名就是——那口棺把你的名字从活人账上划掉，写到它的账上。一旦写上去，你就是它的。\"\n\n沈河川咬牙。\"那怎么才能不被点名？\"\n\n\"找替身。让另一个名字替你上账。\"\n\n\"替身去哪里找？\"\n\n沈长河看着他，目光里有犹豫，也有决绝。\"南方，废弃义庄，有一口无名棺。你若能用它做成替身，就能拖一次。\"\n\n\"一次？\"\n\n\"一次已经很难了。\"",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 60
                    }
                ],
                "choices": [
                    {
                        "text": "\"我去找那口棺。\"",
                        "next": "find_yizhuang"
                    },
                    {
                        "text": "\"我们一起去。\"",
                        "next": "go_together"
                    }
                ]
            },
            "go_together": {
                "id": "go_together",
                "location": "shen_home",
                "text": "\"我跟你一起去。\"\n\n沈长河摇头。\"你不能跟我一起去。我若离开，堂屋底下的东西会醒得更快。\"\n\n\"那你一个人去？\"\n\n\"我一个人去。你留下，看着沈舟。\"\n\n沈河川想反驳，但看到父亲的眼神，他沉默了。\n\n那一夜，沈长河独自离开了沈家。\n\n沈河川站在门口，看着父亲的背影消失在夜色里。\n\n他不知道，这是不是最后一次看见父亲走路的样子。",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "trust_father",
                        "value": 30
                    }
                ],
                "choices": [
                    {
                        "text": "遵守约定，留在家中",
                        "next": "stay_home"
                    },
                    {
                        "text": "等父亲走后，偷偷跟上去",
                        "next": "follow_father"
                    }
                ]
            },
            "stay_home": {
                "id": "stay_home",
                "location": "shen_home",
                "text": "沈河川留在了沈家。\n\n他每天照顾沈舟，看着孩子一天天长大。但每到夜里，他都会听见堂屋地底传来的声音——\n\n不是敲击，是呼吸。\n\n像有什么东西正在慢慢苏醒。\n\n三个月后，父亲回来了。他带回来一块木板——背面刻着一只闭着的眼睛。\n\n\"第一块。还有六块。\"\n\n沈河川看着那块木板，终于明白——\n\n这条路，不是一次能走完的。\n\n它需要时间。需要耐心。\n\n也需要有人每一夜都替沈家守门。",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "board_count_sent",
                        "value": 1
                    }
                ],
                "choices": [
                    {
                        "text": "开始等待后续木板",
                        "next": "waiting_for_boards"
                    }
                ]
            },
            "follow_father": {
                "id": "follow_father",
                "location": "outside_village",
                "text": "沈河川等父亲走远后，悄悄跟了上去。\n\n他本以为会看到父亲走向南方义庄——\n\n可父亲走的方向，是后山。\n\n沈河川跟着父亲走进那片荒草丛，看见他在那块石碑前停下，从怀里掏出那枚断成两半的黑玉戒，放进碑底的裂缝里。\n\n然后他低声说了一句什么——像是对石碑说的，又像是对地下说的。\n\n沈河川听不清。\n\n但他看见石碑表面浮出一道淡淡的血痕。\n\n父亲起身离开时，沈河川藏在灌木丛里，没有现身。\n\n他忽然觉得，自己可能还不够了解父亲。",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "trust_father",
                        "value": -10
                    },
                    {
                        "type": "addVar",
                        "name": "fear_level",
                        "value": 20
                    }
                ],
                "choices": [
                    {
                        "text": "回家，假装没跟踪",
                        "next": "pretend_not_follow"
                    },
                    {
                        "text": "上前去问父亲",
                        "next": "confront_follow"
                    }
                ]
            },
            "pretend_not_follow": {
                "id": "pretend_not_follow",
                "location": "shen_home",
                "text": "沈河川回了家，父亲晚一步回来。\n\n两人谁都没提那晚的事。\n\n但沈河川注意到，父亲的黑玉戒换了一枚——不再是那枚裂的，而是一枚新的，却更旧。\n\n沈河川把这个问题咽了下去。\n\n他开始明白，有些事，父亲不说，是因为说了也没用。",
                "choices": [
                    {
                        "text": "继续生活",
                        "next": "waiting_for_boards"
                    }
                ]
            },
            "confront_follow": {
                "id": "confront_follow",
                "location": "back_hill",
                "text": "沈河川从灌木丛里走出来。\n\n\"爸。\"\n\n沈长河转身，看见他，沉默了一瞬。\"你跟着我。\"\n\n\"我想知道你在做什么。\"\n\n沈长河没有生气。他只是叹了口气。\"你看到了多少？\"\n\n\"看到你把戒指放进石碑裂缝里。\"\n\n\"那不是普通石碑。那是沈家的'债碑'。每一代人，都要把一样东西放进去。\"\n\n\"放什么？\"\n\n\"放一样能替代名字的东西。但我已经没什么可放了。所以我放了那枚断戒。\"\n\n\"那能撑多久？\"\n\n\"不知道。\"\n\n沈河川看着父亲，第一次主动说：\"下次，我陪你一起去。\"\n\n沈长河没有回答。但也没有拒绝。",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "trust_father",
                        "value": 20
                    },
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 30
                    }
                ],
                "choices": [
                    {
                        "text": "回家",
                        "next": "waiting_for_boards"
                    }
                ]
            },
            "hide_box": {
                "id": "hide_box",
                "location": "shen_home",
                "text": "沈河川把铁盒藏在自己的床底。\n\n他没有告诉任何人。\n\n但每天晚上，他都能听见铁盒里传来细微的声响——像是什么东西在盒子里翻动纸页。\n\n他不敢打开。\n\n直到一个月后，他终于忍不住，在半夜打开盒子——\n\n里面的地图多了一条路线。\n\n那条路线原本是空白的，现在却画上了一道新的红线，从沈家后山延伸出去，一直画到一座标注为\"旧庙\"的地方。\n\n而旧庙旁边，用极细的笔迹写着四个字：\n\n替棺在此。",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 50
                    }
                ],
                "choices": [
                    {
                        "text": "去旧庙",
                        "next": "old_temple_journey"
                    },
                    {
                        "text": "把地图给父亲看",
                        "next": "show_map_to_father"
                    }
                ]
            },
            "show_map_to_father": {
                "id": "show_map_to_father",
                "location": "shen_home",
                "text": "沈河川把地图拿给沈长河看。\n\n沈长河看完，脸色微变。\"这地图……是你曾祖父画的。\"\n\n\"上面说旧庙里有替棺。\"\n\n沈长河沉默了很久。\"旧庙确实有一口无名棺。但那是很久以前的事了。我不知道它还在不在。\"\n\n\"我去看看。\"\n\n沈长河看着他，终于点了点头。\"去吧。但记住——如果那口棺里有名字，不要碰。\"\n\n\"为什么？\"\n\n\"因为那说明已经有人替它填过名了。你碰了，就会接上。\"\n\n沈河川记住了这句话，出发前往旧庙。",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 55
                    }
                ],
                "choices": [
                    {
                        "text": "去旧庙",
                        "next": "old_temple_journey"
                    }
                ]
            },
            "old_temple_journey": {
                "id": "old_temple_journey",
                "location": "old_temple",
                "text": "沈河川走了三天，找到了那座旧庙。\n\n庙门半塌，屋顶长满荒草。里面没有神像，只有一口棺材。\n\n一口没有漆的棺材，放在正中央。\n\n他走近，发现棺盖上积了厚厚的灰。但灰面上有几个手指印——不是他的。\n\n有人来过。\n\n他迟疑了一下，伸手擦去灰尘。\n\n棺盖上刻着一行字：\"若有人替，则可开。\"\n\n沈河川心跳加速。\n\n他正准备开棺——庙门外传来一个声音：\n\n\"别开。\"\n\n他猛地回头。\n\n门口站着一个穿灰衣的老人，左脸上有一道疤，右耳后面有一块黑色刺青——是一个棺材形状。\n\n\"你是谁？\"\n\n\"我姓顾。你可以叫我顾老。\"",
                "choices": [
                    {
                        "text": "问顾老这口棺的来历",
                        "next": "gu_old_explain"
                    },
                    {
                        "text": "不顾警告，打开棺材",
                        "next": "open_temple_coffin"
                    },
                    {
                        "text": "后退，警惕地看着顾老",
                        "next": "gu_old_hostile"
                    }
                ]
            },
            "gu_old_explain": {
                "id": "gu_old_explain",
                "location": "old_temple",
                "text": "\"这口棺是替棺的坯。你曾祖父当年从南岭带出来的。\"\n\n\"他曾祖父？\"\n\n\"对。但他没能完成它。所以他把它留在了这里。\"\n\n\"完成它是什么意思？\"\n\n\"替棺要七块板。只有一块板，只能是坯。你必须找到另外六块，才能合成一口完整的替棺。\"\n\n沈河川心头一沉。\"另外六块在哪里？\"\n\n顾老没有回答。他只是说：\"你曾祖父在南方义庄藏了一块。剩下的五块，散布在沈家历代走过的地方。\"\n\n\"你是怎么知道的？\"\n\n\"因为我跟你曾祖父一起走过。\"\n\n沈河川愣住了。",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 60
                    }
                ],
                "choices": [
                    {
                        "text": "\"带我去找那六块板。\"",
                        "next": "gu_old_help"
                    },
                    {
                        "text": "\"我该怎么信你？\"",
                        "next": "gu_old_trust"
                    }
                ]
            },
            "gu_old_help": {
                "id": "gu_old_help",
                "location": "old_temple",
                "text": "\"我可以告诉你它们的大致位置，但你必须自己去拿。替棺只认取它的人。\"\n\n\"为什么？\"\n\n\"因为它要学你的气息。如果是由别人代劳，它学了另一个人，最后替的就不是你想替的人了。\"\n\n沈河川明白了。\"好。你告诉我。\"\n\n顾老点头，在地上画了一张简图——南方义庄、北边老木坊、西边旧墓群、东边古井，最后一块在沈家后山深处。\n\n\"你每找到一块，必须隔一年才能送下一块。否则它会提前认路。\"\n\n沈河川记下所有位置，向顾老道谢。\n\n他出发时，顾老在后面说了一句：\n\n\"记住——替棺只能拖，不能断。你想断，就得找更深的路。\"",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 70
                    },
                    {
                        "type": "setVar",
                        "name": "has_visited_yizhuang",
                        "value": false
                    }
                ],
                "choices": [
                    {
                        "text": "去南方义庄",
                        "next": "go_yizhuang"
                    },
                    {
                        "text": "先回沈家跟父亲说一声",
                        "next": "return_home_boards"
                    }
                ]
            },
            "gu_old_trust": {
                "id": "gu_old_trust",
                "location": "old_temple",
                "text": "\"我凭什么信你？\"\n\n顾老沉默片刻，从怀里掏出一枚旧玉片——上面刻着一个沈字。\n\n\"这是你曾祖父给我的信物。他说，如果有一天沈家后人找来，把这玉片给他看。\"\n\n沈河川接过玉片，翻过来——背面刻着一行小字：\n\n\"替棺之事，可问此人。\"\n\n是曾祖父的笔迹。\n\n他终于放下了戒心。",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "trust_father",
                        "value": 20
                    },
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 65
                    }
                ],
                "choices": [
                    {
                        "text": "\"请告诉我替棺的事。\"",
                        "next": "gu_old_explain"
                    }
                ]
            },
            "gu_old_hostile": {
                "id": "gu_old_hostile",
                "location": "old_temple",
                "text": "沈河川后退一步，手按上旧刀。\"你到底是谁？\"\n\n顾老没有动。\"我只是一个替人守了三十年东西的人。\"\n\n\"守什么？\"\n\n\"守这口棺。等你来。\"\n\n沈河川盯着他看了很久，最终松开了刀。\"你知道我会来？\"\n\n\"你曾祖父说的。他说沈家会有一个人在某个时候找过来。\"\n\n\"他什么时候说的？\"\n\n\"他进南岭之前。\"\n\n沈河川沉默了很久。\"他出来了吗？\"\n\n顾老摇头。\"没有。但他留下了这口棺，说如果有人能用上，就替他完成。\"\n\n沈河川深吸一口气。\"带我看吧。\"",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 50
                    },
                    {
                        "type": "setVar",
                        "name": "has_visited_yizhuang",
                        "value": false
                    }
                ],
                "choices": [
                    {
                        "text": "听顾老讲述替棺的来历",
                        "next": "gu_old_explain"
                    }
                ]
            },
            "open_temple_coffin": {
                "id": "open_temple_coffin",
                "location": "old_temple",
                "text": "沈河川不顾顾老的警告，用力推开了棺盖。\n\n棺材里空空如也——没有尸体，没有陪葬。\n\n只有一块木板，背面刻着一只闭着的眼睛。\n\n他伸手去拿木板的一瞬间，棺材底部忽然渗出一层黑水，迅速漫过木板边缘。\n\n沈河川的手缩得慢了一瞬——指尖沾到了那层黑水。\n\n冰凉的触感顺着指尖蔓延到手腕。他低头看，手指没有变色，但那种凉意像钉进了骨头里。\n\n他拿起木板，退后几步。\n\n顾老站在门口，脸色很不好。\"你拿了不该拿的东西。\"\n\n\"什么？\"\n\n\"那黑水是它的标记。它记住你了。\"",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "fear_level",
                        "value": 40
                    },
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 50
                    },
                    {
                        "type": "setVar",
                        "name": "has_taken_coffin",
                        "value": true
                    }
                ],
                "choices": [
                    {
                        "text": "问顾老怎么清除标记",
                        "next": "clean_mark"
                    },
                    {
                        "text": "带着木板离开",
                        "next": "leave_with_board"
                    }
                ]
            },
            "clean_mark": {
                "id": "clean_mark",
                "location": "old_temple",
                "text": "\"怎么清除标记？\"\n\n\"用鸡血抹在手指上，连抹三天。但记住——这只是清掉表面的，它已经记住了你的气息。\"\n\n\"那怎么办？\"\n\n\"所以你一定要尽快完成替棺。让另一个名字替代你。\"\n\n沈河川记下了。他带着木板离开了旧庙。",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 55
                    }
                ],
                "choices": [
                    {
                        "text": "去南方义庄",
                        "next": "go_yizhuang"
                    },
                    {
                        "text": "先回沈家",
                        "next": "return_home_boards"
                    }
                ]
            },
            "leave_with_board": {
                "id": "leave_with_board",
                "location": "old_temple",
                "text": "沈河川把木板包好，快步离开了旧庙。\n\n他没有回头看顾老。但他能感觉到，顾老一直站在门口，看着他消失在路尽头。\n\n走了很远后，他停下来检查木板——背面那只闭着的眼睛，似乎比刚才睁开了一丝缝隙。\n\n缝隙里，有一道极细的红线。\n\n像血。\n\n又像还没干透的漆。",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "fear_level",
                        "value": 35
                    },
                    {
                        "type": "setVar",
                        "name": "has_taken_coffin",
                        "value": true
                    }
                ],
                "choices": [
                    {
                        "text": "去南方义庄",
                        "next": "go_yizhuang"
                    },
                    {
                        "text": "先回沈家",
                        "next": "return_home_boards"
                    }
                ]
            },
            "go_yizhuang": {
                "id": "go_yizhuang",
                "location": "abandoned_yizhuang",
                "text": "沈河川按照顾老的指引，找到了南方那座废弃义庄。\n\n义庄破败不堪，屋顶漏了好几处。里面停着七口棺材——六口有主，一口无名。\n\n那口无名棺放在墙角，蒙了厚厚的灰。\n\n他走近时，棺材里忽然传出一声轻响——咚。\n\n他握紧旧刀，但那声音没有再响。\n\n他伸手去推棺盖——棺盖像是被什么东西压住，纹丝不动。",
                "qte": {
                    "type": "hold",
                    "title": "推开棺盖",
                    "description": "棺盖沉重如铁，你必须用力按住才能推开！松手会导致棺盖重新合上！",
                    "buttonText": "用力推开",
                    "holdDuration": 3000,
                    "timeLimit": 5000,
                    "success": "yizhuang_open_success",
                    "fail": "yizhuang_open_fail"
                }
            },
            "yizhuang_open_success": {
                "id": "yizhuang_open_success",
                "location": "abandoned_yizhuang",
                "text": "沈河川拼尽全力，终于推开了棺盖——\n\n里面是空的。\n\n但棺底嵌着一块木板，和旧庙那块一模一样，背面刻着闭着的眼睛。\n\n他取出了第二块板。\n\n至此，他已经有了两块。还差五块。",
                "actions": [
                    {
                        "type": "setVar",
                        "name": "has_visited_yizhuang",
                        "value": true
                    },
                    {
                        "type": "addVar",
                        "name": "board_count_sent",
                        "value": 1
                    },
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 60
                    }
                ],
                "choices": [
                    {
                        "text": "继续去寻找其他棺板",
                        "next": "collect_boards"
                    },
                    {
                        "text": "先把这两块送回沈家",
                        "next": "return_home_boards"
                    }
                ]
            },
            "yizhuang_open_fail": {
                "id": "yizhuang_open_fail",
                "location": "abandoned_yizhuang",
                "text": "棺盖太重了。沈河川松手的瞬间，棺盖猛地合上，发出一声震耳欲聋的巨响——\n\n吱呀——\n\n整座义庄开始摇晃。墙角的灰簌簌落下。\n\n他听见身后传来脚步声——不是他的。\n\n他转身，看见那六口有主的棺材正在微微震动。\n\n他不敢再停留，抓起第一块板就往外跑。\n\n跑出义庄时，身后传来一声低沉的嗡鸣，像是整座建筑都在叹息。",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "fear_level",
                        "value": 30
                    }
                ],
                "choices": [
                    {
                        "text": "先回沈家",
                        "next": "return_home_boards"
                    }
                ]
            },
            "collect_boards": {
                "id": "collect_boards",
                "location": "old_workshop",
                "text": "沈河川决定趁热打铁，继续收集剩余的棺板。\n\n他先后去了北边老木坊、西边旧墓群、东边古井，以及沈家后山深处。每一处都找到了一块刻着闭眼图案的木板。\n\n去老木坊时，秦老看了他一眼，什么也没问，只是指了指地窖的方向。那块板放在地窖最深处的角落，上面压着一口旧缸。\n\n去旧墓群时，他在一座无主坟前挖了半夜，才从棺材底下抽出那块板。坟头上不知何时落了一只乌鸦，一直盯着他看。\n\n去东边古井时，他把绳子系在腰上，下到井底，在淤泥中摸出了第五块板。井水冰冷刺骨，像一只手攥住了他的脚踝。\n\n最后一块在沈家后山深处——他沿着旧路走到极深处，在一棵被雷劈过的老树下找到了第六块。\n\n至此，六块板全部到手。加上旧庙第一块，总共七块。\n\n他把所有板包好，准备送回沈家。",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "board_count_sent",
                        "value": 6
                    },
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 75
                    }
                ],
                "choices": [
                    {
                        "text": "将七块板全部送回沈家",
                        "next": "return_home_boards"
                    }
                ]
            },
            "return_home_copper": {
                "id": "return_home_copper",
                "location": "shen_home",
                "text": "沈河川回到沈家。\n\n院子里，沈长河正坐在门槛上削竹片。他看见沈河川回来，没有多问，只是微微点了一下头。\n\n沈河川把铜片和地图放在桌上，又把铁盒里的东西一一摆出来。\n\n沈长河看完后，沉默了很久。\n\n\"你找到的东西，比我当年找到的还多。\"\n\n\"那说明什么？\"\n\n\"说明你离真相越来越近。\"沈长河看着他，\"也越来越危险。\"",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "trust_father",
                        "value": 5
                    }
                ],
                "choices": [
                    {
                        "text": "\"那我要继续找下去。\"",
                        "next": "what_is_naming"
                    },
                    {
                        "text": "\"我该从哪里开始？\"",
                        "next": "find_yizhuang"
                    }
                ]
            },
            "return_home_boards": {
                "id": "return_home_boards",
                "location": "shen_home_later",
                "text": "沈河川回到沈家，把棺板藏在粮仓地底。\n\n沈长河看了它们一眼，没有多问，只说了一句：\n\n\"一年一块。别贪快。\"\n\n沈河川点头。\n\n但他心里想的是——如果一年一块，要七年才能集齐。沈舟还等得起吗？",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "board_count_sent",
                        "value": 2
                    }
                ],
                "choices": [
                    {
                        "text": "遵守规矩，一年送一块",
                        "next": "send_slowly"
                    },
                    {
                        "text": "加快速度，尽快集齐七块",
                        "next": "send_fast"
                    }
                ]
            },
            "send_slowly": {
                "id": "send_slowly",
                "location": "shen_home_later",
                "text": "沈河川选择了耐心。\n\n一年一块，他走遍了顾老说的每一个地方——北边老木坊、西边旧墓群、东边古井、沈家后山深处。\n\n每找到一块，他就带回沈家，藏起来，等第二年再送下一块。\n\n沈舟一天天长大。\n\n到第六块板送进沈家时，沈舟已经十二岁了。\n\n沈河川在一次回村的路上，听见村里人议论——\n\n\"沈家最近半夜总有动静。\"\n\"像是有人在搬木头。\"\n\"可沈长河说那是修老屋。\"\n\n沈河川没有解释。\n\n但他知道，时间不多了。",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "board_count_sent",
                        "value": 6
                    },
                    {
                        "type": "setVar",
                        "name": "sent_boards_fast",
                        "value": false
                    }
                ],
                "choices": [
                    {
                        "text": "去找顾老",
                        "next": "find_gu_again"
                    },
                    {
                        "text": "等待第七块板",
                        "next": "wait_seventh"
                    }
                ]
            },
            "send_fast": {
                "id": "send_fast",
                "location": "shen_home_later",
                "text": "沈河川没有耐心等七年。\n\n他用了三年时间，找齐了所有七块板，一次性全部送回了沈家。\n\n沈长河看到七块板同时出现时，脸色铁青。\"你疯了。\"\n\n\"我不想等。\"\n\n\"它还没认路，你一次性送齐，它会直接记住沈家的门！\"\n\n但已经晚了。\n\n七块板在堂屋地上摆开的那个夜晚，村里的狗全部停止了吠叫。\n\n风穿过竹林时，带着一种木头摩擦的声音——像有人正在把一块块板拼合起来。",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "board_count_sent",
                        "value": 7
                    },
                    {
                        "type": "setVar",
                        "name": "sent_boards_fast",
                        "value": true
                    },
                    {
                        "type": "addVar",
                        "name": "fear_level",
                        "value": 40
                    }
                ],
                "choices": [
                    {
                        "text": "等待替棺合拢",
                        "next": "coffin_assembles"
                    },
                    {
                        "text": "试图把板分开",
                        "next": "separate_boards"
                    }
                ]
            },
            "coffin_assembles": {
                "id": "coffin_assembles",
                "location": "shen_home_later",
                "text": "那夜，七块板在堂屋自行拼合。\n\n每一块扣上时都发出一声沉闷的撞击——咔、咔、咔。\n\n最后一块落下时，一口完整的黑棺出现在沈家堂屋中央。\n\n沈长河站在棺前，手里的镇棺铃在发抖。\n\n棺材里传来一个声音——\n\n\"沈长河。\"\n\n那是它学的第一句话。\n\n沈长河闭上眼。\"它醒了。\"",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "fear_level",
                        "value": 60
                    }
                ],
                "choices": [
                    {
                        "text": "摇镇棺铃压它",
                        "next": "ring_ling"
                    },
                    {
                        "text": "打开棺盖看里面",
                        "next": "open_assembled_coffin"
                    }
                ]
            },
            "ring_ling": {
                "id": "ring_ling",
                "location": "shen_home_later",
                "text": "沈长河摇响了镇棺铃——\n\n叮。\n\n棺材震动了一下，里面传出一声闷哼。\n\n但它很快又开始躁动。棺材盖开始微微隆起，像是有什么东西正在里面翻滚。\n\n\"压不住了！\"沈长河喊道，\"快帮我摇铃！要按顺序摇——左、右、中！\"\n\n沈河川冲过去，接过镇棺铃。",
                "qte": {
                    "type": "sequence",
                    "title": "摇镇棺铃",
                    "description": "按顺序按下按键摇铃压制棺中邪祟！",
                    "sequence": [
                        "A",
                        "S",
                        "D"
                    ],
                    "timeLimit": 4000,
                    "success": "ring_success",
                    "fail": "ring_fail"
                }
            },
            "ring_success": {
                "id": "ring_success",
                "location": "shen_home_later",
                "text": "叮——叮——叮——\n\n三声铃响依次响起，棺材里的动静渐渐平息。\n\n\"压不了太久。\"沈长河低声道。\"你尽快找到真正的破解方法。\"\n\n沈河川咬牙，\"我去找顾老。\"\n\n他连夜离开沈家。\n\n他不知道的是，这次离开，让他错过了最后一次见到父亲站着的画面。",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "fear_level",
                        "value": 50
                    }
                ],
                "choices": [
                    {
                        "text": "去找顾老",
                        "next": "find_gu_again"
                    }
                ]
            },
            "ring_fail": {
                "id": "ring_fail",
                "location": "shen_home_later",
                "text": "铃响乱了节奏——\n\n棺材猛地震动，棺盖被一股无形的力量顶开了一条缝。\n\n沈河川看见里面伸出一只苍白的手——\n\n那只手戴着一枚黑玉戒。\n\n和沈长河手上的一模一样。\n\n\"快关上！\"沈长河冲过来，和沈河川一起用力把棺盖压了回去。\n\n他们用身体顶住棺盖，直到里面的动静渐渐平息。\n\n\"你快去。\"沈长河喘着气说，\"我撑不了多久。\"\n\n沈河川点头，转身冲出沈家。",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "fear_level",
                        "value": 70
                    }
                ],
                "choices": [
                    {
                        "text": "去找顾老",
                        "next": "find_gu_again"
                    }
                ]
            },
            "open_assembled_coffin": {
                "id": "open_assembled_coffin",
                "location": "shen_home_later",
                "text": "沈河川伸手去推棺盖——\n\n沈长河猛地抓住他的手腕。\"别开！\"\n\n\"为什么？\"\n\n\"它还没学全。你一开，它就记住了你才是真正要替的人。\"\n\n沈河川收回手，后背发凉。\n\n那晚之后，沈长河开始每晚坐在棺材前，低声说话——像在教一个人认字。\n\n沈河川知道，他在教替棺学他。\n\n用自己的声音、习惯、咳嗽的节奏……\n\n用自己的命。",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "fear_level",
                        "value": 60
                    }
                ],
                "choices": [
                    {
                        "text": "去找顾老",
                        "next": "find_gu_again"
                    }
                ]
            },
            "separate_boards": {
                "id": "separate_boards",
                "location": "shen_home_later",
                "text": "沈河川试图把七块板分开，但它们像被吸住一样，纹丝不动。\n\n每一块木板的背面，那只闭着的眼睛都睁开了——只是睁开，没有瞳孔，像在看着沈家。\n\n他知道，已经晚了。\n\n替棺已经开始认门。",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "fear_level",
                        "value": 60
                    }
                ],
                "choices": [
                    {
                        "text": "等待替棺合拢",
                        "next": "coffin_assembles"
                    }
                ]
            },
            "wait_seventh": {
                "id": "wait_seventh",
                "location": "shen_home_later",
                "text": "沈河川等了一年又一年。\n\n第六块板送进沈家后，第七块始终没有消息。\n\n他去找顾老，但顾老消失了。\n\n他去义庄，义庄烧了。\n\n第七块板像是被什么东西截住了。\n\n直到有一天，沈河川收到了父亲的信——\n\n\"第七块板已经到了。别回来。\"\n\n沈河川看着那四个字，知道父亲已经决定独自面对。\n\n他仍然踏上了归途。",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "board_count_sent",
                        "value": 7
                    }
                ],
                "choices": [
                    {
                        "text": "赶回沈家",
                        "next": "final_journey"
                    }
                ]
            },
            "find_gu_again": {
                "id": "find_gu_again",
                "location": "outside_village",
                "text": "沈河川多方打探，终于找到了顾老的住处。\n\n可等他赶到时，顾老已经浑身是伤，倒在他住处门外。\n\n他扶起顾老。\"发生了什么事？\"\n\n\"有人……不想让你找到第七块板。\"\n\n\"谁？\"\n\n\"送棺的人。\"\n\n顾老用最后一点力气说：\"替棺不是用来救人的——是用来开门的。七块板合起来，会打开一道通向棺道的门。\"\n\n\"那不是替棺？\"\n\n\"它是——但不只是。它是钥匙。\"\n\n说完，顾老的手垂了下去。",
                "actions": [
                    {
                        "type": "setVar",
                        "name": "has_warned_gu_old",
                        "value": true
                    },
                    {
                        "type": "setVar",
                        "name": "gu_old_survived",
                        "value": false
                    },
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 80
                    },
                    {
                        "type": "addVar",
                        "name": "fear_level",
                        "value": 50
                    }
                ],
                "choices": [
                    {
                        "text": "赶回沈家",
                        "next": "final_journey"
                    },
                    {
                        "text": "先查送棺人是谁",
                        "next": "investigate_sender"
                    }
                ]
            },
            "investigate_sender": {
                "id": "investigate_sender",
                "location": "outside_village",
                "text": "沈河川留在原地，翻查顾老的遗物。\n\n他在顾老的旧衣口袋里找到一封没有署名的信——\n\n\"送棺人不是一个人。是一脉传承的匠人。他们替棺道做工，不替活人。第七块板一旦进村，棺道就会认出沈家的门。\"\n\n沈河川终于明白了——\n\n从一开始，替棺就不是为了救沈舟。\n\n它是为了引棺道进沈家。\n\n他必须阻止第七块板进村。",
                "actions": [
                    {
                        "type": "setVar",
                        "name": "discovered_plot",
                        "value": true
                    },
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 90
                    },
                    {
                        "type": "addVar",
                        "name": "fear_level",
                        "value": 60
                    }
                ],
                "choices": [
                    {
                        "text": "赶回沈家，截住第七块板",
                        "next": "intercept_board"
                    },
                    {
                        "text": "去找送棺人谈判",
                        "next": "confront_sender"
                    }
                ]
            },
            "intercept_board": {
                "id": "intercept_board",
                "location": "shen_home_later",
                "text": "沈河川拼命赶回沈家，但还是晚了一步。\n\n他刚到村口，就看见一辆木车停在沈家门口。\n\n车上盖着黑布。\n\n没有人赶车。\n\n黑布滑落时，他看见第七块板——那是一块棺底，中央刻着一只睁开的眼睛。\n\n沈长河已经站在了门口。\n\n他手里握着镇棺铃。\n\n沈河川冲过去：\"别接！\"\n\n但沈长河已经开口了——\n\n\"沈家收棺。\"\n\n第三声铃响了。",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "fear_level",
                        "value": 80
                    }
                ],
                "choices": [
                    {
                        "text": "冲进去",
                        "next": "ending_cliffhanger"
                    }
                ]
            },
            "confront_sender": {
                "id": "confront_sender",
                "location": "outside_village",
                "text": "沈河川根据线索找到了送棺人的落脚处——一座偏远的旧木坊。\n\n他推开门，里面没有人，只有半成品的棺材和满地的刨花。\n\n墙上挂着一幅字：\n\n\"棺道不收债，只收路。\"\n\n沈河川转身要走时，身后传来一个声音——\n\n\"你找我们？\"\n\n他回头，看见一个穿着灰袍的人，脸色苍白，眼睛却很亮。\n\n\"你们为什么要害沈家？\"\n\n\"害？我们只是把钥匙交给该拿的人。\"\n\n\"谁是该拿的人？\"\n\n\"你。\"\n\n沈河川愣住。\n\n\"你已经拿了一块。你拿的每一块，都是你心甘情愿带回去的。\"\n\n沈河川无言以对。\n\n他确实是自己找到那些板的。每一步，都是他自己的选择。\n\n\"那第七块……还在路上吗？\"\n\n\"已经到了。\"\n\n沈河川冲出木坊，拼命往回赶。",
                "actions": [
                    {
                        "type": "setVar",
                        "name": "discovered_plot",
                        "value": true
                    },
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 95
                    },
                    {
                        "type": "addVar",
                        "name": "fear_level",
                        "value": 70
                    }
                ],
                "choices": [
                    {
                        "text": "赶回沈家",
                        "next": "intercept_board"
                    }
                ]
            },
            "final_journey": {
                "id": "final_journey",
                "location": "shen_home_later",
                "text": "沈河川冲回沈家时，第七块板已经合入棺中。\n\n沈长河站在黑棺前，手按在棺盖上，脸色苍白如纸。\n\n\"爸……\"\n\n\"你来了。\"\n\n\"它学了多少？\"\n\n\"够多了。\"\n\n沈长河慢慢松开手。他的无名指上，黑玉戒的暗红纹路已经蔓延到整个戒面。\n\n\"河川，从今天起，这口棺会学我的一切。只要我还活着，它就学我。等我死了，它就会成为我。\"\n\n\"那你……\"\n\n\"我会走得比你想象的要快。\"\n\n沈河川看着父亲，第一次哭了出来。",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "fear_level",
                        "value": 90
                    }
                ],
                "choices": [
                    {
                        "text": "接受这个安排",
                        "next": "ending_accept"
                    },
                    {
                        "text": "试图毁掉替棺",
                        "next": "ending_destroy"
                    }
                ]
            },
            "ending_accept": {
                "id": "ending_accept",
                "location": "shen_home_later",
                "text": "沈河川没有争辩。\n\n他站在父亲身边，看着那口黑棺在灯光下微微泛着暗光。\n\n\"爸，我会找到结束这一切的办法。\"\n\n沈长河笑了笑。\"我知道。\"\n\n\"在那之前，你撑住。\"\n\n沈长河没有回答。他只是拿起镇棺铃，挂在堂屋门后。\n\n\"这铃还能响三次。三次之后，就靠你了。\"\n\n沈河川接过铜铃，感受到裂口处的冰凉。\n\n他走出沈家时，天已经亮了。\n\n身后传来沈长河的声音——\n\n\"河川，保重。\"\n\n他没有回头。\n\n因为他知道，回头就不敢走了。",
                "isEnd": true,
                "endType": "true",
                "endMessage": "替棺已合，沈长河用自己的名字压住了它。沈河川将继续寻找真正的解法。故事未完——敬请期待下集。"
            },
            "ending_destroy": {
                "id": "ending_destroy",
                "location": "shen_home_later",
                "text": "沈河川举起旧刀，对准黑棺劈了下去——\n\n刀锋砍在棺身上，发出一声刺耳的金属碰撞。\n\n棺身出现一道白痕，但很快就自行修复了。\n\n\"没用的。\"沈长河说，\"它已经认了门。\"\n\n沈河川还想再砍，但棺材里传出一声咳嗽——\n\n是沈长河的声音。\n\n他握刀的手僵住了。\n\n那声音太像了。\n\n他如果继续砍下去，砍的可能就不只是木头了。\n\n他放下刀，跪在地上。\n\n沈长河走过来，轻轻拍他的肩。\"你尽力了。剩下的，交给我。\"\n\n沈河川低着头，没有回答。\n\n他知道，从这一刻起，父亲已经不再是那个坐在堂屋里抽旱烟的老人了——\n\n他成了一扇门的守护者。\n\n而沈河川，将成为寻找门后真相的人。",
                "isEnd": true,
                "endType": "good",
                "endMessage": "你选择了不毁棺。沈长河将继续压棺，而你——将去寻找真正的终结之法。"
            },
            "ending_cliffhanger": {
                "id": "ending_cliffhanger",
                "location": "shen_home_later",
                "text": "沈河川冲进院子时，棺材已经合拢。\n\n沈长河站在棺前，手里的镇棺铃已经裂开了一半。\n\n\"爸！\"\n\n沈长河没有回头。\"河川，沈舟在里面吗？\"\n\n沈河川看向里屋。\"在睡觉。你……\"\n\n\"那就好。\"\n\n沈长河忽然笑了一下。\"记住，如果有一天我不在了，这口棺里的'我'会醒来。你不要认他。\"\n\n\"为什么？\"\n\n\"因为他学得再像，也不是我。\"\n\n沈长河说完，将最后一枚棺钉亲手钉了进去。\n\n咔。\n\n棺材彻底闭合。\n\n沈河川站在门外，看着父亲的背影在灯光里缓慢地变暗。\n\n远处，传来第一声鸡鸣。\n\n天，亮了。",
                "isEnd": true,
                "endType": "true",
                "endMessage": "第七块板已合，替棺完完整整地躺在了沈家堂屋。沈长河用自己压住了它——但能压多久，没有人知道。真正的故事，才刚刚开始。"
            },
            "waiting_for_boards": {
                "id": "waiting_for_boards",
                "location": "shen_home_later",
                "text": "时间在等待中流过。\n\n沈河川每年带回一块板，父亲每年把板收好。\n\n沈舟一天天长大，开始会问：\"爸，你总出去干什么？\"\n\n沈河川回答：\"出去找一样东西。\"\n\n\"找到了吗？\"\n\n\"还没有。但快了。\"\n\n他不知道，他找回来的每一块板，都在慢慢改变沈家的命运。\n\n直到第七块板即将送到的那个傍晚，他收到父亲的信——\n\n\"别回来。\"\n\n他看着那三个字，在旅馆里坐了一整夜。\n\n天亮时，他背上旧刀，踏上了回家的路。",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "board_count_sent",
                        "value": 7
                    }
                ],
                "choices": [
                    {
                        "text": "赶回沈家",
                        "next": "final_journey"
                    }
                ]
            },
            "how_long_can_you": {
                "id": "how_long_can_you",
                "location": "shen_home",
                "text": "\"你还能撑多久？\"\n\n沈长河低头看着自己手上的黑玉戒。\"不知道。可能三年，可能一年，也可能更短。\"\n\n\"那如果……\"\n\n\"如果我撑不住，那口棺会自己找上沈舟。\"\n\n沈河川握紧拳头。\"我不会让它找到。\"\n\n沈长河看着他，目光里有欣慰，也有担忧。\"河川，你记住——替棺的事情，不能急。急，就会出错。\"\n\n\"我知道了。\"\n\n沈河川走出堂屋，抬头看着天空。\n\n他知道，留给他的时间，可能比他想像的更少。",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 55
                    }
                ],
                "choices": [
                    {
                        "text": "去南方义庄",
                        "next": "find_yizhuang"
                    }
                ]
            },
            "find_yizhuang": {
                "id": "find_yizhuang",
                "location": "abandoned_yizhuang",
                "text": "沈河川按照父亲的指引，找到了南方那座废弃义庄。\n\n义庄破败不堪，屋顶漏了好几处。里面停着七口棺材——六口有主，一口无名。\n\n那口无名棺放在墙角，蒙了厚厚的灰。\n\n他走近时，棺材里忽然传出一声轻响——咚。\n\n他握紧旧刀，但那声音没有再响。\n\n他打开棺盖——里面是空的。\n\n但棺底嵌着一块木板，背面刻着闭着的眼睛。\n\n他取出了第一块板。\n\n这只是一个开始。",
                "actions": [
                    {
                        "type": "setVar",
                        "name": "has_visited_yizhuang",
                        "value": true
                    },
                    {
                        "type": "addVar",
                        "name": "board_count_sent",
                        "value": 1
                    }
                ],
                "choices": [
                    {
                        "text": "回沈家把板藏好",
                        "next": "return_home_boards"
                    }
                ]
            },
            "north_road": {
                "id": "north_road",
                "location": "old_workshop",
                "text": "沈河川一路向北，走了很多地方——南方旧村、北方荒山、西边古墓群。\n\n他见过很多人，但没有人能告诉他如何让一个已经被记住的名字消失。\n\n直到他来到一座老木坊，见到了秦老。\n\n秦老说：\"名字不是写上去的，是认上去的。\"\n\n沈河川不明白。\"那怎么才能让它不认？\"\n\n\"找一个更干净的名字替进去。\"\n\n沈河川想到了沈舟。\n\n他摇了摇头。\"不行。\"\n\n秦老看着他。\"那你就得找一口'替棺'。让替棺替你们沈家认这笔账。\"",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 40
                    }
                ],
                "choices": [
                    {
                        "text": "\"替棺在哪里？\"",
                        "next": "old_temple_journey"
                    },
                    {
                        "text": "\"还有别的办法吗？\"",
                        "next": "ask_other_way"
                    }
                ]
            },
            "ask_other_way": {
                "id": "ask_other_way",
                "location": "old_workshop",
                "text": "\"还有别的办法吗？\"\n\n秦老沉默了很久。\"有。但你不会想用的。\"\n\n\"什么办法？\"\n\n\"烧掉棺账。让所有名字一起消失。但烧账的人会被棺道永远记住。\"\n\n沈河川沉默。\"那等于是把自己赔进去。\"\n\n\"对。\"\n\n沈河川想了很久。\"告诉我替棺在哪里。\"",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 45
                    }
                ],
                "choices": [
                    {
                        "text": "去旧庙",
                        "next": "old_temple_journey"
                    }
                ]
            }
        },
        "id": "hechuan_old_records_part1"
    },
    {
        "title": "盗棺笔记：河川旧录（下）",
        "subtitle": "无名棺铺·替身之身",
        "description": "合棺之后，替身开始学习沈长河的一切。沈河川追踪送棺人，发现无名棺铺的线索。毁替棺的唯一方法是——找到替你的人。谁会是那个替身？沈长河还能撑多久？最后的结局，由你选择。",
        "author": "Radiation Studio",
        "version": "2.0",
        "variables": {
            "father_alive": true,
            "father_health": 80,
            "coffin_awake": 0,
            "sent_boards_fast": false,
            "discovered_plot": false,
            "found_unnamed_shop": false,
            "talked_to_sender": false,
            "got_replacement_offer": false,
            "chose_self": false,
            "chose_other": false,
            "found_ancient_way": false,
            "burned_coffin": false,
            "ran_away": false,
            "ending_reached": false
        },
        "features": {
            "inventory": true,
            "map": true
        },
        "items": [
            {
                "id": "coffin_nail",
                "name": "棺钉",
                "icon": "📌",
                "description": "钉入黑棺的七枚棺钉之一，沈长河亲手钉下的。"
            },
            {
                "id": "wooden_plate",
                "name": "木牌",
                "icon": "🪧",
                "description": "乱坟中找到的木牌，正面写着'无名棺铺'，背面写着一句话。"
            },
            {
                "id": "old_knife",
                "name": "旧刀",
                "icon": "🔪",
                "description": "沈河川的旧刀，刀刃已卷，但仍可防身。"
            },
            {
                "id": "black_jade_ring",
                "name": "黑玉戒",
                "icon": "💍",
                "description": "沈长河的黑玉戒，暗红纹路已蔓延至整个戒面。"
            },
            {
                "id": "zhen_guang_ling",
                "name": "镇棺铃",
                "icon": "🔔",
                "description": "沈家的镇棺铃，已经裂成两半，还能响最后一次。"
            },
            {
                "id": "sender_letter",
                "name": "送棺人的信",
                "icon": "✉️",
                "description": "在无名棺铺找到的信，上面写着'替棺可毁，但需一命换一命'。"
            },
            {
                "id": "ancient_scroll",
                "name": "古卷",
                "icon": "📜",
                "description": "在无名棺铺密室发现的古卷，记载着'断名之法'。"
            }
        ],
        "map": {
            "title": "无名棺铺·棺道深处",
            "locations": [
                {
                    "id": "shen_home",
                    "name": "沈家堂屋",
                    "description": "黑棺静置在此，沈长河日日守棺，替身正在学习他的声音。"
                },
                {
                    "id": "graveyard",
                    "name": "乱坟岗",
                    "description": "沈河川追踪木车至此，车辙消失，只有一块木牌。"
                },
                {
                    "id": "unnamed_shop",
                    "name": "无名棺铺",
                    "description": "一座隐藏在荒村中的老铺，门口挂着黑色招魂幡，卖的是活人用的棺材。"
                },
                {
                    "id": "shop_front",
                    "name": "棺铺正厅",
                    "description": "铺内陈设古朴，墙上挂满旧棺板，掌柜是一张苍白的脸。"
                },
                {
                    "id": "shop_secret",
                    "name": "棺铺密室",
                    "description": "铺子地下的密室，藏着古卷和送棺人的秘密。"
                },
                {
                    "id": "back_road",
                    "name": "返回之路",
                    "description": "沈河川从棺铺返回沈家的路，途中可能遇到变故。"
                },
                {
                    "id": "shen_home_final",
                    "name": "沈家·最终时刻",
                    "description": "沈长河即将油尽灯枯，替身即将完全成形。"
                }
            ],
            "startingLocation": "shen_home"
        },
        "start": "start",
        "nodes": {
            "start": {
                "id": "start",
                "location": "shen_home",
                "text": "合棺的那一夜之后，沈家安静了三天。\n\n第四天夜里，沈河川听见堂屋传来一阵咳嗽声——\n\n是沈长河的咳嗽。\n\n可沈长河就坐在他对面，没有咳。\n\n他转头看向那口黑棺。\n\n棺材里又咳了一声。\n\n沈长河低声道：'它开始学我了。'\n\n沈河川握紧旧刀。'我去找送棺人。'\n\n沈长河没有阻拦，只是把镇棺铃递给他。'带上它。铃裂了，还能响一次。只一次。'\n\n沈河川接过铜铃，转身走出院门。\n\n他沿着木车留下的两道湿黑车辙，一路追出了村外。\n\n车辙在月光下像两条暗色的疤，一直延伸到远处的乱坟岗。\n\n沈河川走进乱坟岗时，车辙消失了。\n\n前方有一块倒在地上的木牌。",
                "choices": [
                    {
                        "text": "捡起木牌查看",
                        "next": "pick_wooden_plate"
                    },
                    {
                        "text": "先在乱坟岗搜寻四周",
                        "next": "search_graveyard"
                    },
                    {
                        "text": "蹲下检查车辙消失的位置",
                        "next": "check_tracks"
                    }
                ]
            },
            "pick_wooden_plate": {
                "id": "pick_wooden_plate",
                "location": "graveyard",
                "text": "沈河川弯腰捡起木牌。正面刻着四个字：无名棺铺。下面是一行地址——北方，石桥镇外，老槐树下。\n\n他翻到背面，看见一行小字：\n\n'想毁替棺，先找替你的人。'\n\n他心头一紧。替你的人——意思是必须有人替代沈长河，才能毁掉那口棺？\n\n他揣起木牌，朝北方走去。",
                "actions": [
                    {
                        "type": "addItem",
                        "itemId": "wooden_plate"
                    },
                    {
                        "type": "setVar",
                        "name": "found_unnamed_shop",
                        "value": true
                    }
                ],
                "choices": [
                    {
                        "text": "前往北方石桥镇",
                        "next": "road_to_shop"
                    },
                    {
                        "text": "先回沈家告诉父亲",
                        "next": "return_to_father"
                    }
                ]
            },
            "search_graveyard": {
                "id": "search_graveyard",
                "location": "graveyard",
                "text": "沈河川在乱坟岗搜寻了一圈。除了这座木牌，还有几块坍塌的墓碑。\n\n他注意到其中一块墓碑后面似乎有什么东西——是一个被泥土盖住的铁盒。\n\n他伸手去挖，但泥土下有什么东西拉住了他的手——像是一只干枯的手。\n\n他必须快速挖出铁盒，否则那只手会把他拖下去！",
                "qte": {
                    "type": "click",
                    "title": "快速挖掘",
                    "description": "泥土下有东西拉住了你！必须快速挖出铁盒才能挣脱！",
                    "buttonText": "用力挖开",
                    "requiredClicks": 15,
                    "timeLimit": 6000,
                    "success": "graveyard_find",
                    "fail": "graveyard_fail"
                }
            },
            "graveyard_find": {
                "id": "graveyard_find",
                "location": "graveyard",
                "text": "沈河川终于把铁盒挖了出来！\n\n里面是一枚棺钉和一张旧纸条，上面写着'送棺匠人张氏之墓'和一行模糊的日期。\n\n他回到木牌前，捡起它，看到背面那行字。\n\n他沉默片刻，决定先把木牌带回沈家，再做打算。",
                "actions": [
                    {
                        "type": "addItem",
                        "itemId": "wooden_plate"
                    },
                    {
                        "type": "addItem",
                        "itemId": "coffin_nail"
                    },
                    {
                        "type": "setVar",
                        "name": "found_unnamed_shop",
                        "value": true
                    }
                ],
                "choices": [
                    {
                        "text": "回沈家与父亲商议",
                        "next": "return_to_father"
                    },
                    {
                        "text": "直接前往木牌上的地址",
                        "next": "road_to_shop"
                    }
                ]
            },
            "graveyard_fail": {
                "id": "graveyard_fail",
                "location": "graveyard",
                "text": "那只手越拉越紧——\n\n沈河川感觉到一股寒意从指尖蔓延到手臂。\n\n他猛地用力，终于挣脱了那只手。\n\n但他的手腕上多了一道淤青，形状像一只手印。\n\n他没有再停留，捡起木牌就跑出了乱坟岗。\n\n身后，传来一声长长的叹息。",
                "actions": [
                    {
                        "type": "addItem",
                        "itemId": "wooden_plate"
                    },
                    {
                        "type": "setVar",
                        "name": "found_unnamed_shop",
                        "value": true
                    },
                    {
                        "type": "addVar",
                        "name": "father_health",
                        "value": -10
                    }
                ],
                "choices": [
                    {
                        "text": "赶紧回沈家",
                        "next": "return_to_father"
                    }
                ]
            },
            "check_tracks": {
                "id": "check_tracks",
                "location": "graveyard",
                "text": "沈河川蹲下细看车辙消失的地方。泥土表面有被重物压过的痕迹，但不像车轮——更像是棺材被放下又抬起的印记。\n\n他用手拨开一层浮土，下面露出一张旧纸片。\n\n纸片上写着：'无名棺铺，替活人做棺，替死人收名。'\n\n他收起纸片，又捡起木牌，决定去那个地方看看。",
                "actions": [
                    {
                        "type": "addItem",
                        "itemId": "wooden_plate"
                    },
                    {
                        "type": "addItem",
                        "itemId": "sender_letter"
                    },
                    {
                        "type": "setVar",
                        "name": "found_unnamed_shop",
                        "value": true
                    }
                ],
                "choices": [
                    {
                        "text": "前往北方石桥镇",
                        "next": "road_to_shop"
                    }
                ]
            },
            "road_to_shop": {
                "id": "road_to_shop",
                "location": "unnamed_shop",
                "text": "沈河川走了一天一夜，终于在黄昏时分找到了石桥镇外那棵老槐树。\n\n槐树很大，树干要三人合抱。树下有一座破旧的木屋，门口挂着黑色布招，上面用白线绣着两个字——\n\n'棺铺'。\n\n他推门进去，屋内光线昏暗。墙上挂满了棺材板，地上散落着刨花和锯末。\n\n柜台后面坐着一个面色苍白的男人，看起来三四十岁，眼神很冷。\n\n'你来了。'男人说。\n\n'你知道我会来？'\n\n'送棺人告诉过我。'\n\n'你是谁？'\n\n'我是这铺子的掌柜，姓陈。你曾祖父见过我爷爷。'",
                "choices": [
                    {
                        "text": "'替棺怎么毁？'",
                        "next": "ask_destroy"
                    },
                    {
                        "text": "'你为什么要帮送棺人？'",
                        "next": "ask_motive"
                    },
                    {
                        "text": "'我父亲还有多少时间？'",
                        "next": "ask_time"
                    }
                ]
            },
            "ask_destroy": {
                "id": "ask_destroy",
                "location": "shop_front",
                "text": "'替棺怎么毁？'\n\n陈掌柜沉默片刻。'毁不了。'\n\n沈河川握紧旧刀。'那你们为什么要留下地址？'\n\n'毁不了，但可以换。换一个替身，把棺里的名字换出来。'\n\n'怎么换？'\n\n'找一个活人，心甘情愿把自己的名字写进去，然后把原来的名字抽出来。'\n\n沈河川心头一沉。'那就是一命换一命。'\n\n'对。'\n\n'没有别的办法？'\n\n陈掌柜看着他。'有——但你未必敢用。'\n\n'什么办法？'\n\n'烧掉棺账。棺账一烧，所有名字都散，替棺也会变成普通木头。但烧账的人，会被棺道永远记住，成为下一任守棺人。'\n\n沈河川沉默了。",
                "choices": [
                    {
                        "text": "'我选换名。'",
                        "next": "choose_exchange"
                    },
                    {
                        "text": "'我选烧账。'",
                        "next": "choose_burn"
                    },
                    {
                        "text": "'还有没有第三种方法？'",
                        "next": "ask_third"
                    }
                ]
            },
            "ask_motive": {
                "id": "ask_motive",
                "location": "shop_front",
                "text": "'你为什么要帮送棺人？'\n\n陈掌柜端起茶杯，喝了一口。'因为我是送棺人的后代。我家世代替棺道做工，不是害人，而是让棺道不至于溢出来。'\n\n'溢出来会怎样？'\n\n'死人无处可归，活人无处可避。'\n\n沈河川皱眉。'那你们把第七块板送进沈家，就是为了让棺道开一条口子？'\n\n'不是开一条口子——是把已经漏出来的东西引回去。'\n\n'什么意思？'\n\n'你父亲当年从南岭带出来的东西，已经让棺道缺口变大。我们必须用一口新棺把那个缺口封住。你家的替棺，就是封口。'\n\n沈河川恍然大悟——原来替棺不是灾，是补。",
                "choices": [
                    {
                        "text": "'那封口之后呢？'",
                        "next": "after_seal"
                    },
                    {
                        "text": "'但我父亲会死。'",
                        "next": "father_death"
                    }
                ]
            },
            "after_seal": {
                "id": "after_seal",
                "location": "shop_front",
                "text": "'封口之后，沈家就没有棺债了。但代价是你父亲的名字会留在棺里，成为封印的一部分。'\n\n沈河川握紧拳头。'那他能出来吗？'\n\n'不能。除非有人替他。'\n\n'替他的人会怎样？'\n\n'顶替他的位置，入棺。'\n\n沈河川看着自己的手，沉默了。",
                "choices": [
                    {
                        "text": "'我替他。'",
                        "next": "choose_exchange"
                    },
                    {
                        "text": "'还有没有别的办法？'",
                        "next": "ask_third"
                    }
                ]
            },
            "father_death": {
                "id": "father_death",
                "location": "shop_front",
                "text": "'但我父亲会死。'\n\n陈掌柜看着他。'他已经在死了。从你把第七块板带回去的那天起，他就开始替棺认路。现在他每咳一声，棺里的替身就学得更像一分。'\n\n'还有多久？'\n\n'少则三个月，多则半年。'\n\n沈河川闭上眼。'告诉我换名的方法。'",
                "choices": [
                    {
                        "text": "'我替父亲。'",
                        "next": "choose_exchange"
                    }
                ]
            },
            "ask_time": {
                "id": "ask_time",
                "location": "shop_front",
                "text": "'我父亲还有多少时间？'\n\n陈掌柜伸出三根手指。'三个月。最多四个月。'\n\n'如果在这期间毁掉替棺呢？'\n\n'那他就不会死。但棺道缺口会更大，可能会波及整个南岭。'\n\n沈河川沉默片刻。'告诉我所有可能的办法。'",
                "choices": [
                    {
                        "text": "'我选换名。'",
                        "next": "choose_exchange"
                    },
                    {
                        "text": "'我选烧账。'",
                        "next": "choose_burn"
                    },
                    {
                        "text": "'我选第三种。'",
                        "next": "ask_third"
                    }
                ]
            },
            "ask_third": {
                "id": "ask_third",
                "location": "shop_front",
                "text": "'还有第三种方法——找一口比替棺更老的棺，用它的债务来抵消。但那口棺在南岭最深处，极少有人能找到，更少有人能活着回来。'\n\n沈河川想起那块曾祖父的地图，想起父亲说过的话。\n\n'南岭里的倒悬黑棺？'\n\n陈掌柜眼神微变。'你知道？'\n\n'听父亲提过。'\n\n'那口棺是棺道之根。如果能用它做抵押，替棺的债务会被它吸走，但代价是——你必须在它面前留下一样东西。'\n\n'什么东西？'\n\n'你身上最珍视的东西。'\n\n沈河川脑海中闪过沈舟的脸。\n\n他握紧了拳头。",
                "choices": [
                    {
                        "text": "'我去找那口棺。'",
                        "next": "go_to_hanging_coffin"
                    },
                    {
                        "text": "'我换名。'",
                        "next": "choose_exchange"
                    },
                    {
                        "text": "'我烧账。'",
                        "next": "choose_burn"
                    }
                ]
            },
            "go_to_hanging_coffin": {
                "id": "go_to_hanging_coffin",
                "location": "shop_secret",
                "text": "陈掌柜深深看了他一眼。'你确定？'\n\n'确定。'\n\n陈掌柜从柜台下取出一卷古卷，但古卷被一把古老的铜锁锁住。\n\n'要打开这把锁，需要念出正确的口令。这是棺道的规矩。'\n\n'什么口令？'\n\n'沈家祖上定下的——'生死之间，替棺认路'。但你必须在五秒内输入完这八个字，否则锁会自行销毁古卷。'",
                "input": {
                    "label": "输入口令：",
                    "type": "text",
                    "placeholder": "生死之间，替棺认路",
                    "maxLength": 50,
                    "correctAnswer": [
                        "生死之间，替棺认路",
                        "生死之间替棺认路"
                    ],
                    "success": "got_ancient_scroll",
                    "fail": "scroll_destroyed"
                }
            },
            "got_ancient_scroll": {
                "id": "got_ancient_scroll",
                "location": "shop_secret",
                "text": "沈河川输入口令，铜锁咔嗒一声打开了。\n\n陈掌柜把古卷递给他。'这是去南岭深处的地图。那口倒悬黑棺在'无主家'的内层，没有活人带路，你走不到。'\n\n'谁可以带路？'\n\n'送棺人。但送棺人不会为你带路，除非你答应他一件事。'\n\n'什么事？'\n\n'完成棺道未竟的使命——把南岭最后一处缺口封上。'\n\n沈河川接过古卷。'我答应。'\n\n陈掌柜看着他，目光复杂。'你会后悔的。'\n\n'也许。但我更怕什么都不做。'",
                "actions": [
                    {
                        "type": "addItem",
                        "itemId": "ancient_scroll"
                    },
                    {
                        "type": "setVar",
                        "name": "found_ancient_way",
                        "value": true
                    }
                ],
                "choices": [
                    {
                        "text": "出发前往南岭",
                        "next": "journey_to_nanling"
                    },
                    {
                        "text": "先回沈家见父亲最后一面",
                        "next": "return_to_father"
                    }
                ]
            },
            "scroll_destroyed": {
                "id": "scroll_destroyed",
                "location": "shop_secret",
                "text": "口令输入错误！\n\n铜锁发出一声闷响，古卷在陈掌柜手中化为灰烬。\n\n'你输错了。但这不是你的错——是沈家的规矩在变。'\n\n陈掌柜叹了口气。'那你只能选换名或者烧账了。'\n\n沈河川看着那堆灰烬，心中一阵惋惜。\n\n他还有别的选择，但那条路已经断了。",
                "actions": [
                    {
                        "type": "setVar",
                        "name": "found_ancient_way",
                        "value": false
                    }
                ],
                "choices": [
                    {
                        "text": "'我选换名。'",
                        "next": "choose_exchange"
                    },
                    {
                        "text": "'我选烧账。'",
                        "next": "choose_burn"
                    }
                ]
            },
            "journey_to_nanling": {
                "id": "journey_to_nanling",
                "location": "back_road",
                "text": "沈河川离开棺铺，向南岭进发。\n\n走到半路，他遇见了一个人——陆沉。\n\n陆沉的脸比记忆中更瘦，左脸的疤在月光下泛着青色。\n\n'河川，你不能去。'\n\n'为什么？'\n\n'那口棺认的是沈长河，你去没用。'\n\n'那谁去有用？'\n\n'沈舟。'\n\n沈河川心中一痛。'他还小。'\n\n'等不及了。你父亲撑不了那么久。'\n\n沈河川沉默了。'那我去换名。'\n\n陆沉看着他。'你换名，沈舟一样会继承余债。除非你彻底斩断。'\n\n'怎么斩？'\n\n'让沈长河的名字从棺账上消失。'\n\n'烧账？'\n\n'对。但你也会被棺道记住。'\n\n沈河川低头看着自己的手。'那就记住吧。'",
                "choices": [
                    {
                        "text": "继续去南岭",
                        "next": "nanling_deep"
                    },
                    {
                        "text": "折返沈家，烧账",
                        "next": "return_and_burn"
                    },
                    {
                        "text": "跟陆沉走，听取他的建议",
                        "next": "follow_luchen"
                    }
                ]
            },
            "nanling_deep": {
                "id": "nanling_deep",
                "location": "back_road",
                "text": "沈河川按照古卷的指引，穿过密林，来到一片巨大的地下石室。\n\n石室中央，一口巨大的黑棺倒悬在穹顶，棺口朝下。\n\n棺身没有刻字，但棺底有一个凹陷，形状像一只手掌。\n\n他想起陈掌柜的话——留下最珍视的东西。\n\n他从怀里掏出沈舟的照片，放在那个凹陷里。\n\n照片刚放进去，棺身猛然一震，发出一阵低沉的回响。\n\n地底传来一个声音——\n\n'沈长河，已释。'\n\n他愣住了。就这么简单？\n\n他还没来得及反应，石室四周的墙壁开始渗水，水很快漫到膝盖。\n\n他转身往外跑——\n\n身后传来棺主的轻笑声：'你留下了最珍视的东西，但棺也记住了你的气息。从今以后，你替沈舟挡了第一道，但第二道呢？'\n\n沈河川没有回头，拼命往外游。\n\n等他爬出洞口时，浑身湿透。但他心里有一丝轻松——至少，父亲的名字已经不在棺里了。\n\n他决定赶回沈家，把这个消息告诉父亲。",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "father_health",
                        "value": 100
                    },
                    {
                        "type": "setVar",
                        "name": "father_alive",
                        "value": true
                    },
                    {
                        "type": "setVar",
                        "name": "burned_coffin",
                        "value": false
                    }
                ],
                "choices": [
                    {
                        "text": "赶回沈家",
                        "next": "final_return"
                    }
                ]
            },
            "return_and_burn": {
                "id": "return_and_burn",
                "location": "shen_home_final",
                "text": "沈河川赶回沈家。\n\n沈长河已经在床上躺了三天，脸色灰白。黑棺堂屋里还立着，但棺身已经出现裂纹。\n\n'爸，我找到了烧账的方法。'\n\n沈长河睁开眼，看着他。'烧账，你会被棺道记住。'\n\n'我不怕。'\n\n'你怕。但你更怕沈舟。'\n\n沈河川没有否认。\n\n他走到堂屋，从沈长河手里接过棺账，翻到最后一页——沈舟的名字还在。\n\n他划亮火柴——但黑棺开始剧烈震动，一股无形的力量试图夺走火柴！\n\n他必须紧紧握住火柴，坚持点燃棺账！松手会导致失败！",
                "qte": {
                    "type": "hold",
                    "title": "点燃棺账",
                    "description": "黑棺在阻止你！必须紧紧握住火柴才能点燃棺账！松手会导致失败！",
                    "buttonText": "紧紧握住",
                    "holdDuration": 4000,
                    "timeLimit": 6000,
                    "success": "burn_success",
                    "fail": "burn_fail"
                }
            },
            "burn_success": {
                "id": "burn_success",
                "location": "shen_home_final",
                "text": "沈河川咬紧牙关，终于把火柴凑到了棺账上！\n\n火苗舔上纸页时，黑棺猛然震动。棺盖一下被掀开，里面涌出一股黑烟，裹着无数名字的碎片。\n\n沈河川把整本棺账扔进火盆。\n\n火焰瞬间暴涨，热浪扑面而来。\n\n但沈河川没有后退。\n\n他看见那些名字在火中化为灰烬，包括他自己的。\n\n火熄灭后，黑棺安静了。\n\n沈长河从床上坐起来，咳嗽了几声，脸色却慢慢恢复了血色。\n\n'河川……'\n\n沈河川扶住他。'你没事了。'\n\n沈长河看着火盆里的余烬。'可你怎么办？'\n\n沈河川低头，看见自己手腕上浮现出一圈淡淡的黑纹——棺道之印。\n\n他知道，从今以后，他再也离不开南岭了。",
                "actions": [
                    {
                        "type": "setVar",
                        "name": "father_alive",
                        "value": true
                    },
                    {
                        "type": "setVar",
                        "name": "burned_coffin",
                        "value": true
                    },
                    {
                        "type": "addVar",
                        "name": "father_health",
                        "value": 100
                    }
                ],
                "choices": [
                    {
                        "text": "接受命运",
                        "next": "ending_burn_accepted"
                    },
                    {
                        "text": "逃离南岭",
                        "next": "ending_flee"
                    }
                ]
            },
            "burn_fail": {
                "id": "burn_fail",
                "location": "shen_home_final",
                "text": "火柴被夺走了——\n\n黑棺发出一声震耳欲聋的咆哮，整座沈家都在摇晃。\n\n棺盖完全打开，里面伸出无数苍白的手，在空中乱抓。\n\n沈河川被一股力量推到墙边，撞得头晕目眩。\n\n'河川！'沈长河挣扎着从床上爬起来。\n\n他走到棺前，用自己的身体挡住那些手。\n\n'快走！'沈长河喊道，'我撑不住了！'\n\n沈河川看着父亲的背影，眼中含泪。\n\n但他知道，他不能就这么放弃。\n\n他捡起掉落的火柴，重新划亮——",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "father_health",
                        "value": -30
                    }
                ],
                "choices": [
                    {
                        "text": "再次尝试点燃",
                        "next": "return_and_burn"
                    },
                    {
                        "text": "选择换名",
                        "next": "choose_exchange"
                    }
                ]
            },
            "choose_exchange": {
                "id": "choose_exchange",
                "location": "shop_secret",
                "text": "'我替父亲。'\n\n陈掌柜看着他，没有劝。'跟我来。'\n\n他带沈河川走进铺子地下的一间密室。密室里放着一口小棺材，只有一人长，棺盖已经打开。\n\n'躺进去。'\n\n沈河川没有犹豫，躺进了那口小棺。\n\n陈掌柜咬破指尖，在棺盖上写了一个'替'字。\n\n然后他低声念了几句。\n\n沈河川感觉到一阵昏沉，像有什么东西从身体里被抽走，又有什么东西被放了进来。\n\n他闭眼之前，听见陈掌柜说：'从今以后，沈长河的名字会从棺账上消失，但你的名字会补上。你会在棺道里走二十年，然后换下一个。'\n\n沈河川想起了沈舟。\n\n他愿意。",
                "actions": [
                    {
                        "type": "setVar",
                        "name": "father_alive",
                        "value": true
                    },
                    {
                        "type": "setVar",
                        "name": "chose_self",
                        "value": true
                    },
                    {
                        "type": "addVar",
                        "name": "father_health",
                        "value": 100
                    }
                ],
                "choices": [
                    {
                        "text": "进入棺道",
                        "next": "ending_exchange"
                    }
                ]
            },
            "choose_burn": {
                "id": "choose_burn",
                "location": "shop_secret",
                "text": "'我选烧账。'\n\n陈掌柜神色微变。'烧账会毁掉替棺，但你会被棺道永远标记。'\n\n'我知道。'\n\n陈掌柜递给他一页旧纸。'这是棺账的引页。烧掉它，主账也会一起烧。但你得在子时，站在沈家堂屋的正中央烧。'\n\n沈河川接过纸页，转身走回沈家。\n\n子时，他站在堂屋中央，点燃了那页纸。\n\n火焰升腾的瞬间，黑棺剧烈抖动，棺盖崩开，里面涌出的黑雾在火光中消散。\n\n他听见父亲在里屋咳嗽了一声，然后那咳嗽声停了。\n\n他低头，看见自己手腕上的黑纹。\n\n从今以后，他就是一个被棺道记住的人。",
                "actions": [
                    {
                        "type": "setVar",
                        "name": "father_alive",
                        "value": true
                    },
                    {
                        "type": "setVar",
                        "name": "burned_coffin",
                        "value": true
                    },
                    {
                        "type": "addVar",
                        "name": "father_health",
                        "value": 100
                    }
                ],
                "choices": [
                    {
                        "text": "留在沈家，守护一切",
                        "next": "ending_burn_stay"
                    },
                    {
                        "text": "离开沈家，独自流浪",
                        "next": "ending_burn_leave"
                    }
                ]
            },
            "follow_luchen": {
                "id": "follow_luchen",
                "location": "back_road",
                "text": "沈河川跟着陆沉走了一夜。\n\n陆沉把他带到一个废弃的村落，村口停着那辆木车。\n\n'送棺人就是这辆车的主人。但他不会让你见到他，除非你愿意接替他的位置。'\n\n'接替送棺人？'\n\n'对。每一代送棺人都是自愿的。你接替了，就可以调换棺账，把你父亲的名字换出来。'\n\n沈河川沉默了很久。'我接。'\n\n陆沉看着他，表情复杂。'你一旦接替，这辈子都不能停。你会像那辆车一样，永远在夜路上走。'\n\n'为了我爸，值得。'\n\n陆沉叹了口气，指向木车。'那就上车吧。'",
                "actions": [
                    {
                        "type": "setVar",
                        "name": "father_alive",
                        "value": true
                    },
                    {
                        "type": "setVar",
                        "name": "chose_other",
                        "value": true
                    },
                    {
                        "type": "addVar",
                        "name": "father_health",
                        "value": 100
                    }
                ],
                "choices": [
                    {
                        "text": "登上木车",
                        "next": "ending_sender"
                    }
                ]
            },
            "return_to_father": {
                "id": "return_to_father",
                "location": "shen_home_final",
                "text": "沈河川回到沈家时，沈长河已经不能下床了。\n\n'爸，我找到办法了。'\n\n沈长河看着他，目光疲惫。'河川，你已经走了很远了。'\n\n'但我还没走完。'\n\n沈长河伸手，握住他的手。'记住，沈家人可以怕死，但不能欠死人债。'\n\n'我不欠。'\n\n'你欠自己。'\n\n沈河川低头。'等我回来，我们就两清了。'\n\n他转身离开时，沈长河又叫住他——\n\n'河川，别恨我。'\n\n沈河川没有回头。'我不恨你。我恨的是那口棺。'",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "father_health",
                        "value": 40
                    }
                ],
                "choices": [
                    {
                        "text": "前往南岭深处",
                        "next": "nanling_deep"
                    },
                    {
                        "text": "去无名棺铺换取办法",
                        "next": "ask_third"
                    }
                ]
            },
            "final_return": {
                "id": "final_return",
                "location": "shen_home_final",
                "text": "沈河川日夜兼程赶回沈家。\n\n推开门时，沈长河正坐在堂屋门槛上，抽着旱烟。\n\n'河川？'\n\n'爸，你没事了。'\n\n沈长河愣了一下，低头看向自己的双手。'那口棺……'\n\n'棺账已经烧了，替棺也散了。'\n\n沈长河沉默了很久，然后缓缓吐出一口烟。'你怎么办？'\n\n沈河川抬起手腕，露出那道黑纹。'我会活下去。'\n\n沈长河看着他，眼眶微红。'河川，爹对不起你。'\n\n'你没有。你只是做了你该做的。'\n\n父子俩坐在门槛上，看着院子里那棵老槐树。\n\n沈舟从里屋跑出来，喊了一声：'爷爷！爸爸！'\n\n沈河川伸手，把儿子揽进怀里。\n\n那一刻，风穿过竹林，像从未发生过任何事。",
                "actions": [
                    {
                        "type": "setVar",
                        "name": "father_alive",
                        "value": true
                    },
                    {
                        "type": "addVar",
                        "name": "father_health",
                        "value": 100
                    }
                ],
                "choices": [
                    {
                        "text": "故事到此结束",
                        "next": "ending_family"
                    }
                ]
            },
            "ending_exchange": {
                "id": "ending_exchange",
                "location": "back_road",
                "text": "沈河川从棺中醒来时，发现自己躺在一条昏暗的路上。\n\n前方是一辆木车，车上有一口黑棺。\n\n他回头，沈家已经看不见了。\n\n他成了下一任'送棺人'。\n\n每年，他会在某个夜晚经过沈家村外，看着村里的灯火，却从不进村。\n\n他知道，父亲已经安然老去，沈舟已经长大。\n\n而他，选择了替沈家永远守着那条棺道。",
                "isEnd": true,
                "endType": "true",
                "endMessage": "沈河川成为送棺人。沈长河余生安稳，沈舟平安长大。代价是——沈河川再也无法踏进沈家的门。"
            },
            "ending_sender": {
                "id": "ending_sender",
                "location": "back_road",
                "text": "沈河川登上木车，握住那根湿冷的缰绳。\n\n车辆自己动了起来，沿着无尽的夜路前行。\n\n他回头望了一眼沈家的方向，然后转向前方。\n\n从今以后，他是送棺人。\n\n每一夜，他都会替棺道送一口无名棺去某个地方。\n\n他不知道终点在哪里，但他知道，沈家的债已经清了。\n\n因为他成了偿还的一部分。",
                "isEnd": true,
                "endType": "true",
                "endMessage": "沈河川接替送棺人。沈家从此再无棺债，但沈河川永远消失在夜路上。"
            },
            "ending_burn_accepted": {
                "id": "ending_burn_accepted",
                "location": "shen_home_final",
                "text": "沈河川留在沈家，但手腕上的黑纹让他再也无法远离南岭。\n\n他每天看着沈舟长大，看着父亲逐渐恢复。\n\n他从不告诉任何人那道黑纹的事。\n\n直到沈舟二十岁那年，他独自走进了南岭深处。\n\n再也没有回来。\n\n沈舟后来成为了一名棺匠，开始查阅沈家的旧事。\n\n他最终找到了父亲留给他的信——\n\n'阿舟，爹只是去替你还了一笔账。'",
                "isEnd": true,
                "endType": "good",
                "endMessage": "沈河川烧账保父，但被棺道标记。多年后他独自走入南岭，成为沈舟日后追查棺道的起点。"
            },
            "ending_burn_stay": {
                "id": "ending_burn_stay",
                "location": "shen_home_final",
                "text": "沈河川留在了沈家。\n\n他不再离开。每天陪父亲抽旱烟，看沈舟读书写字。\n\n手腕上的黑纹越来越淡，但从未消失。\n\n他偶尔会在夜半惊醒，听见远处有木车驶过的声音。\n\n他知道，那是棺道在等他。\n\n但他选择了平凡的生活。\n\n直到很多年后，他把黑玉戒和镇棺铃一起埋在了老槐树下，然后对沈舟说：\n\n'沈家的路，从你开始，由你结束。'",
                "isEnd": true,
                "endType": "good",
                "endMessage": "沈河川选择留下，过着普通的生活。沈家长大的沈舟，将来会继续面对棺道，但那是另一个故事了。"
            },
            "ending_burn_leave": {
                "id": "ending_burn_leave",
                "location": "back_road",
                "text": "沈河川烧完棺账后，没有停留。\n\n他背起旧刀，一个人走向村外。\n\n他不知道要去哪里，只知道不能再留在沈家，因为棺道会通过他找到沈舟。\n\n他走了很远，再也没有人见过他。\n\n但每年沈舟生日那天，门口会放着一块旧铜片，上面刻着——\n\n'平安。'",
                "isEnd": true,
                "endType": "true",
                "endMessage": "沈河川独自离开，用消失换来了沈家的安宁。沈舟每年都会收到一块铜片，直到某一年，铜片不再出现。"
            },
            "ending_flee": {
                "id": "ending_flee",
                "location": "back_road",
                "text": "沈河川烧掉棺账后，心中涌起恐惧，他收拾行囊，连夜逃出了南岭。\n\n他一路向北，再没有回头。\n\n多年后，他在远方成了一名普通木匠，娶妻生子。\n\n但他时常梦见沈家的堂屋，梦见那口黑棺，梦见父亲站在门槛上看着他。\n\n每次惊醒，他都发现手腕上的黑纹又深了一分。\n\n他知道，棺道没有放过他。\n\n但至少，他给了沈舟一个普通的童年。\n\n这已足够。",
                "isEnd": true,
                "endType": "neutral",
                "endMessage": "沈河川逃走，沈家从此无棺债，但棺道始终未忘。他活在后怕中，却保全了儿子的安宁。"
            },
            "ending_family": {
                "id": "ending_family",
                "location": "shen_home_final",
                "text": "沈长河活到了七十岁，无疾而终。\n\n沈河川送走了父亲，然后看着沈舟长大，成家，生子。\n\n他从未提起棺道的事，只是每年清明，会独自去后山坐一整天。\n\n那里埋着那枚黑玉戒和镇棺铃。\n\n沈舟问过他：'爸，你在看什么？'\n\n他笑了笑。'看一棵树。'\n\n那棵老槐树，已经比屋顶还高了。\n\n风吹过树叶，沙沙作响。\n\n沈河川知道，那是沈长河在说——\n\n'河川，你做到了。'",
                "isEnd": true,
                "endType": "true",
                "endMessage": "沈家三代人，用各自的二十年，换来了终结。沈河川终于可以安心地做父亲了。"
            }
        },
        "id": "hechuan_old_records_part2"
    },
    {
        "title": "盗棺笔记(Hard)",
        "subtitle": "南岭棺道·无主家·原棺开眼·棺账终焚",
        "description": "【9.5难度】爷爷死后，棺材里传来敲击声。一个披蓑衣的老人告诉我：棺里不是爷爷，沈家欠下的棺债，该轮到我来还了。这一次，没有退路。每一步都是生死抉择，每一次QTE都是极限挑战，错误的选择将直接导致死亡。",
        "author": "Radiation Studio",
        "version": "3.0",
        "variables": {
            "has_blood_pouch": false,
            "has_copper_coin": false,
            "has_half_nail": false,
            "has_notebook": false,
            "has_bell": false,
            "has_red_pouch": false,
            "qte_skill": 0,
            "mental_state": 100,
            "correct_path": "",
            "passed_first_qte": false,
            "passed_bell_qte": false,
            "passed_coffin_qte": false,
            "passed_name_qte": false,
            "passed_account_qte": false,
            "passed_nail_qte": false,
            "coffin_counter": 0,
            "memory_check": 0,
            "survival_points": 3
        },
        "features": {
            "inventory": true,
            "map": true
        },
        "items": [
            {
                "id": "black_jade_ring",
                "name": "黑玉戒",
                "icon": "💍",
                "description": "爷爷生前从不离身的戒指。黑玉不亮，像一滴凝固的墨，靠近火光时会泛出一线暗红。"
            },
            {
                "id": "copper_coin",
                "name": "染血铜钱",
                "icon": "💰",
                "description": "蓑衣老人留下的铜钱，中间穿着红绳，边缘磨得发亮。抹上血后会微微发黑。"
            },
            {
                "id": "half_nail",
                "name": "半截棺钉",
                "icon": "📌",
                "description": "沈家神龛木匣里发现的半截棺钉，发黑发锈，像从棺材里硬拔出来的。"
            },
            {
                "id": "yellow_paper",
                "name": "三角黄纸",
                "icon": "📜",
                "description": "木匣里折成三角形的黄纸，一露面棺材里的东西就醒了。"
            },
            {
                "id": "red_pouch",
                "name": "红布包·鸡血",
                "icon": "🔴",
                "description": "厨房梁上挂着的红布袋，里面是一只小瓷瓶，瓶口用蜡封着，装着暗红色的液体。"
            },
            {
                "id": "zhen_guang_ling",
                "name": "镇棺铃",
                "icon": "🔔",
                "description": "爷爷留给孙子的铜铃。铜铃已经旧得发黑，铃口裂了一道缝。"
            },
            {
                "id": "notebook_fragment",
                "name": "残笔记",
                "icon": "📓",
                "description": "爷爷烧剩下的残页，焦黑卷边。写着：“南岭三十六坳，坳坳通阴。黑棺不可落地。见灯勿近，闻铃勿回。”"
            },
            {
                "id": "rong_amulet",
                "name": "红绳护身",
                "icon": "🧵",
                "description": "陆沉用指尖血抹过的红绳，缠在左腕上，能暂时压住棺名。"
            },
            {
                "id": "fu_guan_yin",
                "name": "扶棺印",
                "icon": "🖤",
                "description": "手腕上的黑纹，像一口小棺材。补名者的标记。"
            },
            {
                "id": "white_coffin_mirror",
                "name": "白棺镜",
                "icon": "🔮",
                "description": "无主家门口的白棺，棺底嵌着一面黑镜。"
            },
            {
                "id": "guan_zhang",
                "name": "棺账",
                "icon": "📜",
                "description": "比山还大的账册，记录着所有欠棺之名。"
            },
            {
                "id": "name_thread",
                "name": "名字线",
                "icon": "🧵",
                "description": "连接补名者与棺账的命线。"
            }
        ],
        "map": {
            "title": "南岭棺道·极难",
            "locations": [
                {
                    "id": "shen_home",
                    "name": "沈家堂屋",
                    "description": "爷爷的棺材停在这里。生死抉择的起点。"
                },
                {
                    "id": "tea_hill",
                    "name": "废弃茶山",
                    "description": "村后荒废多年的茶山。旧年间叫抬棺路。"
                },
                {
                    "id": "tomb_road",
                    "name": "棺道口",
                    "description": "老林入口，歪斜石碑上刻着“棺道”二字。"
                },
                {
                    "id": "old_huai_tree",
                    "name": "老槐树空地",
                    "description": "棺道入口前的空地。老槐树下摆着一口黑棺。"
                },
                {
                    "id": "outer_road",
                    "name": "棺道外道",
                    "description": "山壁裂缝后的青砖甬道。两侧石壁嵌满小棺材。"
                },
                {
                    "id": "three_forks",
                    "name": "三岔路口",
                    "description": "三条路：生路、死路、棺路。选错即死。"
                },
                {
                    "id": "dead_road",
                    "name": "死路",
                    "description": "两侧墙壁缓缓合拢，头顶垂下白布条。"
                },
                {
                    "id": "deng_temple",
                    "name": "阴灯前",
                    "description": "青铜古灯燃着幽蓝火焰。灯前站着沈江。"
                },
                {
                    "id": "wu_zhu_jia",
                    "name": "无主家",
                    "description": "棺道尽头，阴灯后的石门。"
                },
                {
                    "id": "stone_door",
                    "name": "石门之外",
                    "description": "无主家的入口。"
                },
                {
                    "id": "white_coffin_room",
                    "name": "白棺室",
                    "description": "无主家入口处。一口白棺立于石阶尽头。"
                },
                {
                    "id": "mirror_inside",
                    "name": "镜中石道",
                    "description": "穿过黑镜后的世界。脚下是账纸。"
                },
                {
                    "id": "guan_zhang_hall",
                    "name": "账册大殿",
                    "description": "黑雾尽头，一本比山还高的账册矗立。"
                },
                {
                    "id": "original_coffin",
                    "name": "原棺之眼",
                    "description": "无主家最深处。原棺像一道从死亡里照出的竖眼。"
                }
            ],
            "startingLocation": "shen_home"
        },
        "start": "start",
        "nodes": {
            "start": {
                "id": "start",
                "location": "shen_home",
                "text": "南岭连下了七天雨。\n\n爷爷死在第七天傍晚。他躺在堂屋正中的棺木里，身上盖着发黄的寿被，脸色青白，嘴角却像挂着一丝笑。\n\n下葬前一夜，雨更大了。堂屋里的白蜡烛忽明忽暗，纸钱灰在地上打旋。\n\n我跪得膝盖发麻，正要起身添灯油，忽然听见棺材里传来一声轻响——\n\n“咚。”\n\n【警告】这是9.5难度模式。错误的选择将直接导致死亡。QTE失败将导致死亡。你只有3次生存机会。",
                "choices": [
                    {
                        "text": "靠近棺材细听",
                        "next": "listen_coffin"
                    },
                    {
                        "text": "叫醒母亲和二叔",
                        "next": "wake_family"
                    },
                    {
                        "text": "假装没听见",
                        "next": "death_ignore"
                    }
                ]
            },
            "death_ignore": {
                "id": "death_ignore",
                "location": "shen_home",
                "text": "我告诉自己一定是听错了。雨声太大，竹叶噼啪作响，棺材里怎么可能有声音？\n\n可第二声紧跟着来了。\n\n“咚。”\n\n比第一声更重，更实。像有人在棺材内壁用指节敲门。\n\n我继续假装没听见。\n\n第三声。\n\n第四声。\n\n然后，棺盖猛地被推开。一只青黑色的手抓住了我的脖颈。\n\n“你不该假装没听见。”\n\n黑暗吞没了一切。\n\n【死亡】你选择了逃避，棺债找上了你。",
                "isEnd": true,
                "endType": "death",
                "endMessage": "死亡结局：逃避无法避免棺债。"
            },
            "wake_family": {
                "id": "wake_family",
                "location": "shen_home",
                "text": "我叫醒了母亲和二叔。母亲睡眼惺忪，二叔却像早就在等这一刻——他猛地睁开眼睛，死死盯向棺材。\n\n然后，棺材里又响了。\n\n“咚。咚。咚。”\n\n不急不慢，三声。像有人在里面用指节敲门。\n\n母亲跪在地上哭，说爷爷一辈子老实，从没害过人，求祖宗保佑。二叔却像疯了一样，抓起墙角的柴刀，狠狠劈向棺钉。",
                "choices": [
                    {
                        "text": "拦住二叔",
                        "next": "stop_uncle"
                    },
                    {
                        "text": "帮他撬棺",
                        "next": "death_pry_coffin"
                    }
                ]
            },
            "death_pry_coffin": {
                "id": "death_pry_coffin",
                "location": "shen_home",
                "text": "我帮二叔按住棺盖。柴刀落下，木屑飞溅，棺钉松了。\n\n二叔正要劈第三刀，棺盖突然自行弹开——\n\n里面涌出一股黑雾，裹着无数苍白的手。那些手抓住我们，将我们拖入棺中。\n\n“你们不该打开。”\n\n棺盖重重合上。\n\n【死亡】你打开了不该打开的棺材。",
                "isEnd": true,
                "endType": "death",
                "endMessage": "死亡结局：擅自开棺，被棺中邪祟拖入。"
            },
            "stop_uncle": {
                "id": "stop_uncle",
                "location": "shen_home",
                "text": "我冲过去抱住二叔的腰：“不能开！人已入殓，半夜开棺是犯忌！”\n\n二叔甩开我，喉咙里发出急促的“啊啊”声，脸涨得通红，拼命想说什么。\n\n可就在这时，棺材里的声音停了。\n\n门口传来了一个苍老的声音。\n\n“不能开。”",
                "choices": [
                    {
                        "text": "回头看向门口",
                        "next": "old_man_arrives"
                    }
                ]
            },
            "listen_coffin": {
                "id": "listen_coffin",
                "location": "shen_home",
                "text": "我屏住呼吸，耳朵贴近棺材。\n\n里面没有声音。\n\n可我刚要后退，棺材里突然传来一阵刺耳的抓挠声——\n\n不是敲。\n\n是抓。\n\n像有什么东西用指甲在棺材内壁拼命刮动。\n\n母亲尖叫一声，二叔抄起柴刀就冲了过来。\n\n就在这时，门口传来一个声音：“不能开。”",
                "choices": [
                    {
                        "text": "回头看向门口",
                        "next": "old_man_arrives"
                    }
                ]
            },
            "old_man_arrives": {
                "id": "old_man_arrives",
                "location": "shen_home",
                "text": "门口不知何时站着一个披蓑衣的老人。\n\n他身材干瘦，斗笠遮住大半张脸，只露出一截灰白胡子。雨水顺着蓑衣往下淌，滴在门槛上，却没有一点脚步声。\n\n他慢慢走进堂屋，身上带着一股潮湿的土腥味。从怀里摸出一枚铜钱，红绳穿着，边缘磨得发亮。\n\n二叔看见那枚铜钱，脸色大变，往后连退两步。\n\n老人看着他，叹了口气：“二十年了，你还是怕。”",
                "choices": [
                    {
                        "text": "问他是谁",
                        "next": "ask_who"
                    },
                    {
                        "text": "问他棺材里是什么",
                        "next": "ask_coffin"
                    }
                ]
            },
            "ask_who": {
                "id": "ask_who",
                "location": "shen_home",
                "text": "“你是谁？”我问。\n\n老人没有回答。他转头看向我，一只眼睛浑浊，一只眼睛清亮。清亮的那只盯着我时，我觉得自己像被什么东西从头到脚看穿了。\n\n“你就是沈老鬼的孙子？”\n\n我点了点头。\n\n他沉默片刻，低声道：“棺里不是你爹。”",
                "choices": [
                    {
                        "text": "“那里面是什么？”",
                        "next": "ask_coffin"
                    }
                ]
            },
            "ask_coffin": {
                "id": "ask_coffin",
                "location": "shen_home",
                "text": "“那里面是什么？”我听见自己的声音在发抖。\n\n老人把铜钱按在棺盖上。棺材里的抓挠声立刻停了。\n\n堂屋安静得只剩雨声。\n\n过了很久，他才说：“是一笔旧账。”\n\n话音刚落，棺盖猛地一震。四角白蜡烛同时熄灭。\n\n黑暗中，老人一把抓住我的手腕，力气大得像铁钳。\n\n“孩子，记住。今晚你看到的，不许告诉任何人。”\n\n“为什么？”\n\n“因为从今晚开始，沈家欠下的棺债，要轮到你来还了。”\n\n话音未落，堂屋深处传来“咔嘣”一声。\n\n棺材开了一条缝。\n\n一只青黑色的手，从缝里慢慢伸了出来。那只手的无名指上，戴着一枚黑玉戒指——\n\n那是爷爷生前从不离身的戒指。",
                "choices": [
                    {
                        "text": "盯着那只手",
                        "next": "black_hand"
                    },
                    {
                        "text": "后退",
                        "next": "death_step_back"
                    }
                ]
            },
            "death_step_back": {
                "id": "death_step_back",
                "location": "shen_home",
                "text": "我往后猛退一步，后背撞上供桌。碗盏叮当乱响，香灰洒了一地。\n\n可那只手没有停。它缓缓伸出，抓住了我的脚踝，将我拖向棺材。\n\n“你跑不掉的。”\n\n棺盖大开，黑雾涌出。\n\n【死亡】你选择了退缩，棺债追上了你。",
                "isEnd": true,
                "endType": "death",
                "endMessage": "死亡结局：面对棺债时退缩，被拖入棺中。"
            },
            "black_hand": {
                "id": "black_hand",
                "location": "shen_home",
                "text": "那只手伸出来的时候，我没有叫。\n\n不是不怕，是怕到了极点，喉咙像被一团湿泥堵住，半点声音都挤不出来。\n\n堂屋里漆黑一片，只有闪电掠过时才能照见那口棺材。\n\n棺盖开了一条窄缝，那只青黑色的手就搭在棺沿上。\n\n戒指戴在无名指上。黑玉不亮，像一滴凝固的墨。可我知道，靠近火光时，它里面会泛出一线暗红。",
                "choices": [
                    {
                        "text": "问老人这只手是谁的",
                        "next": "ask_hand"
                    },
                    {
                        "text": "看向二叔",
                        "next": "look_uncle"
                    }
                ]
            },
            "ask_hand": {
                "id": "ask_hand",
                "location": "shen_home",
                "text": "“这只手是谁的？”我声音发哑。\n\n老人没有回答。他盯着那只手，脸色前所未有的凝重。\n\n“它醒了。”他低声说。\n\n然后他转头冲我喊：“把鸡血拿来！厨房梁上挂着的红布袋！”\n\n我愣着没动。\n\n“快！”\n\n我这才反应过来，跌跌撞撞往厨房跑。",
                "choices": [
                    {
                        "text": "跑去厨房",
                        "next": "get_blood"
                    }
                ]
            },
            "look_uncle": {
                "id": "look_uncle",
                "location": "shen_home",
                "text": "我看向二叔。他死死盯着那只手，嘴唇抖得厉害，喉咙里发出像破风箱一样的声音。\n\n老人忽然低喝一声：“二哑，别看了！”\n\n二叔猛地回过神，一张脸已经惨白如纸。\n\n老人转头对我道：“去厨房，把梁上那只红布袋拿来——快！”",
                "choices": [
                    {
                        "text": "跑去厨房",
                        "next": "get_blood"
                    }
                ]
            },
            "get_blood": {
                "id": "get_blood",
                "location": "shen_home",
                "text": "我冲进厨房。\n\n厨房里冷得不像话。明明是夏初，灶台边却像进了腊月。\n\n梁上确实挂着一只红布袋。我踮脚取下来，里面是一只小瓷瓶，瓶口用蜡封着。\n\n我刚把瓷瓶握在手里，身后忽然响起一道声音——\n\n“阿舟。”\n\n那声音很轻，很哑。\n\n却是爷爷的声音。\n\n我整个人僵住了。",
                "choices": [
                    {
                        "text": "回头",
                        "next": "death_grandpa_voice"
                    },
                    {
                        "text": "不回头，冲出厨房",
                        "next": "dont_look_back"
                    }
                ]
            },
            "death_grandpa_voice": {
                "id": "death_grandpa_voice",
                "location": "shen_home",
                "text": "我转过身。\n\n厨房门外站着爷爷——可他的脸色是青的，眼睛全黑，没有眼白。\n\n“阿舟，别信他。”\n\n“阿舟，跟我走。”\n\n他伸出手，我不由自主地走向他——\n\n然后，他的手穿过我的胸膛。\n\n“你不该回头。”\n\n【死亡】你回头了，被棺影迷惑。",
                "isEnd": true,
                "endType": "death",
                "endMessage": "死亡结局：回头看了不该看的东西，被棺影吞噬。"
            },
            "dont_look_back": {
                "id": "dont_look_back",
                "location": "shen_home",
                "text": "我没有回头。\n\n爷爷生前说过：夜里听见死人叫名，第一声不能应，第二声不能回头，第三声若还听见，就要咬破舌尖往前跑。\n\n“阿舟。”\n\n第二声响起时，我攥紧瓷瓶，咬紧牙关。\n\n“阿舟。”\n\n第三声。\n\n我牙关一紧，狠狠咬破舌尖。疼得眼前一黑，血腥味在嘴里散开的瞬间，身后的声音戛然而止。",
                "choices": [
                    {
                        "text": "冲回堂屋",
                        "next": "back_to_hall"
                    }
                ]
            },
            "back_to_hall": {
                "id": "back_to_hall",
                "location": "shen_home",
                "text": "我冲回堂屋时，那只青黑色的手已经缩回了棺材。\n\n老人接过瓷瓶，咬开蜡封，把暗红色的液体泼在棺盖上。\n\n鸡血落到棺木表面，竟发出“滋滋”的轻响，像泼在烧红的铁上。\n\n棺材里随即传来一声闷吼——不像人，更像野兽被压在泥底，喉咙里挤出来的一口怨气。\n\n老人趁机用短刀挑起那半截棺钉，对准棺盖缝隙狠狠钉了下去。\n\n“砰！”第一下，棺材震动。\n\n“砰！”第二下，梁上灰尘落下。\n\n“砰！”第三下落下时，棺材终于安静了。",
                "actions": [
                    {
                        "type": "setVar",
                        "name": "has_blood_pouch",
                        "value": true
                    },
                    {
                        "type": "setVar",
                        "name": "has_half_nail",
                        "value": true
                    }
                ],
                "choices": [
                    {
                        "text": "问老人里面到底是什么",
                        "next": "ask_truth"
                    }
                ]
            },
            "ask_truth": {
                "id": "ask_truth",
                "location": "shen_home",
                "text": "“里面到底是什么？”我问。\n\n老人看了我一眼，没有立刻回答。他走到堂屋门口，摘下斗笠。\n\n我这才看清他的脸——左脸有一道很长的疤，从眉骨一直拖到下巴，像被什么尖锐的东西硬生生划开过。右耳后面有一块黑色刺青，是一个棺材形状，中间竖着三道细线。\n\n“我姓陆，叫陆沉。”他说，“你爷爷年轻时，和我一起走过棺道。”\n\n“棺道？”\n\n“活人走山路，死人走阴路。棺道，就是夹在两者中间的路。”",
                "choices": [
                    {
                        "text": "“爷爷还活着吗？”",
                        "next": "is_grandpa_alive"
                    },
                    {
                        "text": "“棺道在哪里？”",
                        "next": "where_road"
                    }
                ]
            },
            "is_grandpa_alive": {
                "id": "is_grandpa_alive",
                "location": "shen_home",
                "text": "“我爷爷……还活着吗？”\n\n陆沉沉默了很久。\n\n然后他说：“你爷爷没死。”\n\n我脑子里轰的一声。\n\n“那这口棺材里是谁？”\n\n“是替身。你爷爷真正的身子，被带回南岭了。”\n\n“谁带走的？”\n\n陆沉缓缓吐出两个字：\n\n“棺主。”",
                "choices": [
                    {
                        "text": "“我怎么才能找到他？”",
                        "next": "find_grandpa"
                    }
                ]
            },
            "find_grandpa": {
                "id": "find_grandpa",
                "location": "shen_home",
                "text": "“我怎么才能找到他？”\n\n陆沉看向屋外的雨。天边已经泛起一点灰白。\n\n“村后老林，有一条路叫棺道。你爷爷就在那里。”\n\n“棺道是什么？”\n\n“活人走山路，死人走阴路。棺道，就是夹在两者中间的路。”\n\n他话音刚落，棺材里忽然传来一个声音——\n\n“阿舟。”\n\n苍老、沙哑，却是爷爷的声音。\n\n这一次，声音不是从门外传来的。\n\n是从棺材里面。",
                "choices": [
                    {
                        "text": "“爷爷？”",
                        "next": "death_call_grandpa"
                    },
                    {
                        "text": "问陆沉怎么办",
                        "next": "ask_road"
                    }
                ]
            },
            "death_call_grandpa": {
                "id": "death_call_grandpa",
                "location": "shen_home",
                "text": "“爷爷？”我冲到棺材前。\n\n陆沉一把拉住我：“别应！”\n\n可已经晚了。我回应了那声呼唤。\n\n棺盖猛地推开，一股无形的力量将我吸入棺中。\n\n“你应了，就属于我了。”\n\n【死亡】你回应了棺中的呼唤，被棺主夺走了名字。",
                "isEnd": true,
                "endType": "death",
                "endMessage": "死亡结局：回应了棺中的呼唤，被夺走名字。"
            },
            "where_road": {
                "id": "where_road",
                "location": "shen_home",
                "text": "“棺道在哪里？”\n\n陆沉看向屋外的雨。天边已经泛起一点灰白。\n\n“村后老林。天亮前，我带你走一趟。”\n\n“这么急？”\n\n“因为天亮后，这口棺材就压不住了。”\n\n他话音刚落，棺材里忽然传来一个声音——\n\n“阿舟。”\n\n苍老、沙哑，却是爷爷的声音。",
                "choices": [
                    {
                        "text": "问陆沉怎么办",
                        "next": "ask_road"
                    }
                ]
            },
            "ask_road": {
                "id": "ask_road",
                "location": "shen_home",
                "text": "“怎么办？”我问陆沉。\n\n“带上你爷爷留给你的东西，跟我走。”\n\n我回头看了一眼堂屋。母亲坐在地上，抱着昏迷的二叔，眼神已经哭空了。那口棺材静静摆在堂屋中央，棺盖上压着铜钱和半截棺钉。\n\n我找出爷爷留下那本烧过一半的残笔记，塞进怀里。又解下腰间那枚铜铃——那是母亲刚才塞给我的。\n\n陆沉看见铜铃，眼神微变：“镇棺铃。你爷爷留给你的？”\n\n“嗯。”\n\n“有时候能救命，有时候会要命。”",
                "actions": [
                    {
                        "type": "setVar",
                        "name": "has_notebook",
                        "value": true
                    },
                    {
                        "type": "setVar",
                        "name": "has_bell",
                        "value": true
                    }
                ],
                "choices": [
                    {
                        "text": "跟着陆沉离开",
                        "next": "leave_home"
                    }
                ]
            },
            "leave_home": {
                "id": "leave_home",
                "location": "tea_hill",
                "text": "我们从后门离开沈家，沿着村后的泥路往山里走。雨水打在竹叶上，噼里啪啦像无数细小的脚步声。\n\n天边已有微光，可山里仍旧黑沉沉的，像一张张开的嘴。\n\n陆沉走在前面。他脚下极稳，泥路上几乎不留脚印。",
                "choices": [
                    {
                        "text": "继续走",
                        "next": "tea_hill_deep"
                    }
                ]
            },
            "tea_hill_deep": {
                "id": "tea_hill_deep",
                "location": "tea_hill",
                "text": "山路越走越窄。村后的竹林尽头，是一片荒废多年的茶山。茶树早没人打理，枝叶疯长，路被野草掩得只剩一条若有若无的黑线。\n\n陆沉说，这条路以前叫抬棺路。旧年间，南岭各村有人横死、客死、淹死，不能入祖坟，就从这条路抬进山里。\n\n走到茶山尽头时，天终于亮了。\n\n可山里没有鸟叫。雨也停了。\n\n四周静得不正常。",
                "choices": [
                    {
                        "text": "看向前方",
                        "next": "tomb_road_enter"
                    }
                ]
            },
            "tomb_road_enter": {
                "id": "tomb_road_enter",
                "location": "tomb_road",
                "text": "前方是一片老林。树木高大，枝叶交错，黑压压遮住天光。\n\n林子入口处立着一块歪斜的石碑，碑面长满青苔，只隐约能看见两个字——\n\n棺道。\n\n我刚想走近看清，腰间的铜铃忽然轻轻响了一声。\n\n叮。\n\n声音很轻，却在死寂的山林里传得很远。\n\n陆沉脸色骤变。\n\n下一刻，老林深处传来一阵回应——\n\n叮。叮。叮。\n\n一声接一声。像有很多铃铛藏在林子里，同时醒了过来。\n\n陆沉反手抽出短刀：“从现在起，不管听见什么，都不要回头。”",
                "choices": [
                    {
                        "text": "踏入棺道",
                        "next": "enter_road"
                    },
                    {
                        "text": "犹豫",
                        "next": "death_hesitate"
                    }
                ]
            },
            "death_hesitate": {
                "id": "death_hesitate",
                "location": "tomb_road",
                "text": "我站在石碑前，双腿像灌了铅。\n\n身后是沈家，身前是棺道。\n\n陆沉没有催我。他只是站在老林入口，等着我自己做决定。\n\n我犹豫了太久。\n\n就在这时，身后传来脚步声。不是陆沉的。\n\n我回头——\n\n一片黑雾涌来，将我吞没。\n\n“你犹豫了，所以你死了。”\n\n【死亡】你在棺道入口犹豫太久，被身后的东西拖走了。",
                "isEnd": true,
                "endType": "death",
                "endMessage": "死亡结局：犹豫太久，被棺道的东西拖入。"
            },
            "enter_road": {
                "id": "enter_road",
                "location": "tomb_road",
                "text": "踏进老林的那一刻，天光彻底暗了下来。\n\n明明外面是清晨，林子里却像还在半夜。树干上缠满藤蔓，藤蔓之间挂着褪色的红布条。\n\n走了没多久，我就发现不对劲——\n\n身后的脚步声变多了。\n\n一开始，只有我和陆沉两个人的脚步。\n\n后来变成了三个。\n\n再后来，像有一整队人跟在我们后面，脚步整齐、沉重，踩得泥水啪嗒作响。\n\n腰间的铜铃又响了。\n\n叮。\n\n这一次，铃声响起后，身后的队伍也停了。\n\n然后，一个熟悉的声音从我背后传来——\n\n“阿舟，扶爷爷一把。”",
                "choices": [
                    {
                        "text": "不回头，继续走",
                        "next": "dont_look_road"
                    },
                    {
                        "text": "回头",
                        "next": "death_look_back"
                    }
                ]
            },
            "death_look_back": {
                "id": "death_look_back",
                "location": "tomb_road",
                "text": "我忍不住回了头。\n\n身后什么都没有。没有队伍，没有抬棺人，只有一条被浓雾吞没的路。\n\n可就在我转回头的一瞬间，陆沉脸色变了——\n\n“你脸上有东西。”\n\n我抬手一摸，指尖触到一片冰凉。那是一张黄纸，上面写着三个字：\n\n沈长河。\n\n我的名字。\n\n然后，那张纸燃烧起来，我的脸也跟着燃烧——\n\n“你回头了，你就死了。”\n\n【死亡】你回头了，阴名贴附在了你的脸上。",
                "isEnd": true,
                "endType": "death",
                "endMessage": "死亡结局：回头看了不该看的东西，阴名贴将你标记。"
            },
            "dont_look_road": {
                "id": "dont_look_road",
                "location": "old_huai_tree",
                "text": "我咬牙不回头，跟着陆沉一直走到林子深处。\n\n前方忽然出现一片空地。空地中央有一棵巨大的老槐树，树干粗得三个人都抱不过来。\n\n槐树下面，摆着一口棺材。通体漆黑，没有棺架，就这么直接压在泥地上。\n\n棺材前跪着一个人。\n\n那人穿灰色寿衣，背对着我们，头低垂着，像在给棺材磕头。\n\n我正想问那是谁，陆沉猛地捂住我的嘴。\n\n“别出声。”\n\n我顺着他的目光看过去——\n\n跪着的那个人，右手无名指上戴着一枚黑玉戒。\n\n和爷爷那枚一模一样。",
                "choices": [
                    {
                        "text": "盯着他",
                        "next": "shadow_grandpa"
                    },
                    {
                        "text": "后退",
                        "next": "death_step_back_tree"
                    }
                ]
            },
            "death_step_back_tree": {
                "id": "death_step_back_tree",
                "location": "old_huai_tree",
                "text": "我往后退了一步，踩到一根枯枝。\n\n“啪。”\n\n那个和爷爷长得一模一样的东西，耳朵微微动了一下。\n\n然后他站了起来。动作很慢，膝盖和腰背都不太会弯，骨头发出细密的脆响。\n\n他朝我们走来。\n\n“阿舟，别听他的。爷爷没死，爷爷只是被他们困住了。”\n\n我被他的声音迷惑，停下了脚步——\n\n他伸出手，抓住了我的肩膀。\n\n“跟爷爷走吧。”\n\n黑雾从他身体里涌出，将我包围。\n\n【死亡】你被棺影迷惑，跟着它走了。",
                "isEnd": true,
                "endType": "death",
                "endMessage": "死亡结局：被棺影的声音迷惑，陷入幻境。"
            },
            "shadow_grandpa": {
                "id": "shadow_grandpa",
                "location": "old_huai_tree",
                "text": "那个“爷爷”已经走到老槐树边，离我们只剩十来步。\n\n陆沉抬手将三枚铜钱甩了出去。\n\n铜钱打在他胸口，猛地冒起三道黑烟。\n\n那张爷爷的脸像水面倒影一样晃动起来——有那么一刹那，我看见那张脸下面藏着另一张脸。\n\n没有五官。\n\n只有一层湿漉漉的黑皮。\n\n“走！”陆沉拽着我绕过老槐树，冲向后面的山壁。\n\n山壁上有一道裂缝，被藤蔓挡住。可我们还没跑到，那口黑棺突然横着滑了过来。\n\n棺身贴着泥地，发出令人牙酸的摩擦声，硬生生挡住了裂缝。\n\n身后，“爷爷”又站了起来。",
                "choices": [
                    {
                        "text": "摇镇棺铃",
                        "next": "ring_bell"
                    },
                    {
                        "text": "冲过去推开黑棺",
                        "next": "push_coffin"
                    }
                ]
            },
            "push_coffin": {
                "id": "push_coffin",
                "location": "old_huai_tree",
                "text": "我冲向黑棺，双手抵住棺身。\n\n棺木冰冷刺骨，像一块千年寒铁。但我必须推开它！裂缝就在后面，不推开黑棺我们就死定了！\n\n身后传来那个“爷爷”的笑声。\n\n“阿舟，你推不动的。那是你爷爷背了二十年的债。”\n\n我咬紧牙关，用尽全身力气往前推——！",
                "qte": {
                    "type": "click",
                    "title": "推开黑棺",
                    "description": "【极限挑战】棺木重逾千斤！必须在3秒内点击30次才能推开！失败即死！",
                    "buttonText": "用力推开",
                    "requiredClicks": 30,
                    "timeLimit": 3000,
                    "success": "push_success",
                    "fail": "death_push_fail"
                }
            },
            "death_push_fail": {
                "id": "death_push_fail",
                "location": "old_huai_tree",
                "text": "我用尽了力气，黑棺却纹丝不动！\n\n身后那个“爷爷”已经走到了我面前，他那双全黑的眼睛死死盯着我。\n\n“阿舟，放弃吧……”\n\n他伸出手，抓住了我的脖颈。\n\n“跟爷爷走吧……”\n\n【死亡】你没能推开黑棺，被棺影抓住了。",
                "isEnd": true,
                "endType": "death",
                "endMessage": "死亡结局：QTE失败，未能推开黑棺。"
            },
            "push_success": {
                "id": "push_success",
                "location": "old_huai_tree",
                "text": "我咬紧牙关，一次又一次地猛推——！\n\n黑棺终于动了！它缓缓向旁边挪开，山壁上的裂缝露了出来！\n\n“进去！”陆沉抓住我冲进裂缝。\n\n身后传来那个“爷爷”愤怒的嘶吼——但我们已经冲了进去。",
                "actions": [
                    {
                        "type": "setVar",
                        "name": "passed_coffin_qte",
                        "value": true
                    },
                    {
                        "type": "addVar",
                        "name": "qte_skill",
                        "value": 10
                    }
                ],
                "choices": [
                    {
                        "text": "冲进裂缝深处",
                        "next": "outer_road"
                    }
                ]
            },
            "ring_bell": {
                "id": "ring_bell",
                "name": "ring_bell",
                "location": "old_huai_tree",
                "text": "我伸手解下腰间的镇棺铃。\n\n铜铃握在掌心，裂口冰凉，却沉得像一块铁。\n\n陆沉说：“对着棺头摇三下。只能三下。快！”\n\n身后那个“爷爷”已经逼近了——我必须按顺序摇响铃铛！",
                "qte": {
                    "type": "sequence",
                    "title": "摇响镇棺铃",
                    "description": "【极限挑战】按顺序按Z-X-Z！必须在2.5秒内完成！错误或超时即死！",
                    "keys": [
                        "Z",
                        "X",
                        "Z"
                    ],
                    "timeLimit": 2500,
                    "success": "ring_success",
                    "fail": "death_ring_fail"
                }
            },
            "death_ring_fail": {
                "id": "death_ring_fail",
                "location": "old_huai_tree",
                "text": "我慌乱中摇错了顺序——铜铃发出刺耳的颤音！\n\n黑棺不仅没有后退，反而猛地向前滑了一步！\n\n身后那个“爷爷”发出一阵诡异的笑声：“阿舟，你的心乱了……”\n\n他伸出手，穿透了我的胸膛。\n\n“跟爷爷走吧……”\n\n【死亡】你摇错了铃铛的顺序，镇棺铃反噬了你。",
                "isEnd": true,
                "endType": "death",
                "endMessage": "死亡结局：QTE失败，镇棺铃反噬。"
            },
            "ring_success": {
                "id": "ring_success",
                "location": "old_huai_tree",
                "text": "叮——！\n\n第一声响起时，林子里的风停了。黑棺微微一震。\n\n叮——！\n\n第二声响起时，老槐树上的红布条全部竖了起来，像一条条被吊死的舌头。黑棺往后退了半尺。\n\n身后传来母亲的哭喊声：“阿舟，救我！”\n\n我咬紧牙关，继续摇铃——\n\n叮——！\n\n铜铃裂口处渗出一丝血。不是我的血，是铃里流出来的血。\n\n黑棺剧烈震动，棺身底下传来一阵沉闷的喘息声。\n\n然后它缓缓往旁边挪开。\n\n山壁上的裂缝露了出来。",
                "actions": [
                    {
                        "type": "setVar",
                        "name": "passed_bell_qte",
                        "value": true
                    },
                    {
                        "type": "addVar",
                        "name": "qte_skill",
                        "value": 10
                    }
                ],
                "choices": [
                    {
                        "text": "冲进裂缝深处",
                        "next": "outer_road"
                    }
                ]
            },
            "outer_road": {
                "id": "outer_road",
                "location": "outer_road",
                "text": "我们在狭窄的山缝里穿行。身后的笑声被石壁一点一点隔开，却没有消失。\n\n走了约莫一盏茶时间，前面终于宽敞了一些。\n\n陆沉点燃一根火折子。\n\n微弱的火光亮起，我才看清我们所在的地方——\n\n这里不是天然山洞。\n\n脚下铺着青砖，两侧石壁上雕着一排排小棺材。每一口只有巴掌大，密密麻麻嵌在墙里，像无数闭着的眼睛。\n\n“这就是棺道？”\n\n陆沉点头：“只是外道。”",
                "choices": [
                    {
                        "text": "低头躲避",
                        "next": "look_coffin_names"
                    },
                    {
                        "text": "盯着棺材",
                        "next": "death_stare_coffin"
                    }
                ]
            },
            "death_stare_coffin": {
                "id": "death_stare_coffin",
                "location": "outer_road",
                "text": "我盯着那些小棺材看。\n\n忽然，其中一口棺材的盖子动了一下。\n\n然后是第二口。第三口。\n\n所有小棺材的盖子都开始打开，露出里面漆黑的空洞。\n\n从空洞里伸出无数苍白的手指，抓住了我的脚踝。\n\n“你看了不该看的东西。”\n\n【死亡】你盯着棺材看太久，被里面的东西抓住了。",
                "isEnd": true,
                "endType": "death",
                "endMessage": "死亡结局：盯着棺材看太久，被棺中邪祟抓住。"
            },
            "look_coffin_names": {
                "id": "look_coffin_names",
                "location": "outer_road",
                "text": "黑棺从洞口升出来后，并没有停下。它被那八只苍白的手托着，从我们面前缓缓经过。\n\n棺身上刻着密密麻麻的名字。\n\n我本不该看。\n\n可火光一晃，我看见了三个字——\n\n沈长河。\n\n爷爷的名字。刻在棺身最末端。\n\n而在沈长河下面，还有一个刚刚刻上去的新名字——\n\n沈舟。\n\n我全身血液都冷了。",
                "choices": [
                    {
                        "text": "问陆沉怎么办",
                        "next": "name_on_coffin"
                    }
                ]
            },
            "name_on_coffin": {
                "id": "name_on_coffin",
                "location": "outer_road",
                "text": "“我名字在上面。”我听见自己的声音在发抖。\n\n陆沉脸色难看：“棺道认名。活人看见自己的名字上棺，等棺落地，就算被点了阴册。”\n\n“怎么救？”\n\n“替名。”他咬破指尖，在红绳上抹了一道血，绕住我的左腕。\n\n黑棺上的“沈舟”两个字微微晃了一下。\n\n可下一秒，棺材里传来一声轻笑——\n\n“陆沉，二十年了，你还只会这点把戏。”\n\n陆沉整个人僵住了。\n\n“棺主。”",
                "choices": [
                    {
                        "text": "问棺主是谁",
                        "next": "ask_owner"
                    },
                    {
                        "text": "看铜铃上的字",
                        "next": "look_bell_writing"
                    }
                ]
            },
            "ask_owner": {
                "id": "ask_owner",
                "location": "outer_road",
                "text": "“棺主是什么？”\n\n陆沉没有回答。可棺材里的声音替他说了——\n\n“沈舟，你不是想找你爷爷吗？他就在下面。只要你替这口棺走完一程，我就让你见他。”\n\n我肩膀猛地一沉。\n\n不是错觉。\n\n真有什么东西压在我肩上——起初像一块湿布，可很快越来越沉，沉得我膝盖发软。",
                "choices": [
                    {
                        "text": "看铜铃上的字",
                        "next": "look_bell_writing"
                    },
                    {
                        "text": "咬牙硬撑",
                        "next": "death_bear_weight"
                    }
                ]
            },
            "death_bear_weight": {
                "id": "death_bear_weight",
                "location": "outer_road",
                "text": "我咬紧牙关硬撑。那股重量压在骨头上、魂魄上、名字上——\n\n我耳边甚至听见了木头摩擦肩骨的声音。\n\n吱呀。吱呀。\n\n像真有一根无形的棺杠压在我身上。\n\n陆沉把红绳缠到棺身上用力一拉——可只晃了一下，便重新稳住。\n\n“刻得太深了。”陆沉脸色铁青。\n\n我撑不住了，跪倒在地。\n\n黑棺缓缓落下，压在了我的身上。\n\n“你不够格。”\n\n【死亡】你没有找到正确的方法，被棺名压垮了。",
                "isEnd": true,
                "endType": "death",
                "endMessage": "死亡结局：没能找到解名的方法，被棺名压垮。"
            },
            "look_bell_writing": {
                "id": "look_bell_writing",
                "location": "outer_road",
                "text": "腰间镇棺铃忽然动了一下。没有响，只是微微发热。\n\n我低头看去，铜铃裂口处原本渗出的血已经凝住，凝成一道细小的红线，顺着铃身慢慢浮现出一行极小的字。\n\n陆沉一眼扫过，脸色微变：“这是沈长河留下的铃文。”\n\n“写的什么？”\n\n“活人不上棺，死人不留名。”\n\n我忽然明白了。我的名字刻在棺上，是要把我当死人收进阴册。既然“死人不留名”，那我的名字就不能留在棺上。\n\n我举起短刀，对准其中一口小棺材上的名字，狠狠划了下去——\n\n周满仓。\n\n刀尖落下的一瞬间，墙里的小棺材猛地震动起来，里面传来指甲抓木的声音。",
                "actions": [
                    {
                        "type": "setVar",
                        "name": "passed_name_qte",
                        "value": true
                    }
                ],
                "choices": [
                    {
                        "text": "跟着陆沉跑",
                        "next": "run_to_forks"
                    }
                ]
            },
            "run_to_forks": {
                "id": "run_to_forks",
                "location": "three_forks",
                "text": "我们在狭窄的棺道里狂奔。身后白气贴地滑行，速度极快，像无数死人从墙壁里爬出来追我们。\n\n跑出十几丈后，前方忽然出现三条岔路。\n\n每条岔路口都立着一块石碑——\n\n左边：生路。入者不生。\n\n中间：死路。入者不死。\n\n右边：棺路。入者无名。\n\n我喘得胸口发疼：“走哪条？”\n\n陆沉没有立刻回答。他盯着三块石牌，脸色阴沉得像要滴出水。",
                "choices": [
                    {
                        "text": "走生路",
                        "next": "death_wrong_path_1"
                    },
                    {
                        "text": "走死路",
                        "next": "dead_road"
                    },
                    {
                        "text": "走棺路",
                        "next": "death_wrong_path_2"
                    }
                ]
            },
            "death_wrong_path_1": {
                "id": "death_wrong_path_1",
                "location": "three_forks",
                "text": "我选择了左边的生路。\n\n“入者不生”——我以为这是反话。\n\n可踏入那条路的瞬间，两侧墙壁开始合拢。\n\n白布条从天而降，缠住了我的脖颈。\n\n“你选错了。生路是死路。”\n\n【死亡】你选错了路，生路才是真正的死路。",
                "isEnd": true,
                "endType": "death",
                "endMessage": "死亡结局：选错了路，生路是陷阱。"
            },
            "death_wrong_path_2": {
                "id": "death_wrong_path_2",
                "location": "three_forks",
                "text": "我选择了右边的棺路。\n\n“入者无名”——我以为这意味着自由。\n\n可踏入那条路的瞬间，我感觉自己的名字正在被剥离。\n\n“沈舟……沈……”\n\n我的意识开始模糊，身体变得透明。\n\n“你入了棺路，就不再是你了。”\n\n【死亡】你选错了路，棺路将你吞噬。",
                "isEnd": true,
                "endType": "death",
                "endMessage": "死亡结局：选错了路，棺路将你无名化。"
            },
            "dead_road": {
                "id": "dead_road",
                "location": "dead_road",
                "text": "我们刚冲进去，身后的白气便猛地停在路口——那些模糊的人脸在岔道外徘徊，却不敢进来。\n\n可还没等我松口气，我忽然发现前面的路在变窄。\n\n两侧墙壁正在缓缓向中间合拢。\n\n“跑！”\n\n我们在不断合拢的死路里拼命往前冲。头顶垂下许多白布条，上面写满黑字——全是人的生辰八字。\n\n我脚下突然踩空，整个人往前扑倒。\n\n手掌按到一块松动的青砖——\n\n“咔。”\n\n机关声响起。\n\n两侧墙壁停住了。\n\n可前方传来一阵锁链拖动的声音。黑暗里，有什么东西被慢慢放了下来。\n\n陆沉举起火折子。\n\n火光照亮前方时，我看见一排棺材从头顶垂下——\n\n一共七口。\n\n每一口棺材下面都吊着一根铁链。铁链末端，拴着一具尸体。\n\n最中间那具尸体，背对着我们。右手无名指上，戴着一枚黑玉戒。",
                "choices": [
                    {
                        "text": "“爷爷！”",
                        "next": "grandpa_hanging"
                    }
                ]
            },
            "grandpa_hanging": {
                "id": "grandpa_hanging",
                "location": "dead_road",
                "text": "“爷爷！”我冲过去。\n\n陆沉死死拉住我：“别过去！”\n\n“那是我爷爷！”\n\n“我知道。可他现在的状态，不一定是活人。”\n\n我愣在原地。\n\n爷爷没有回头。他只是低低叹了一声。\n\n“阿舟，你不该来。”\n\n陆沉握紧短刀：“沈长河，你早知道我会带他进来？”\n\n“不是我知道——是棺道知道。”",
                "choices": [
                    {
                        "text": "“空棺？”",
                        "next": "empty_coffin"
                    },
                    {
                        "text": "“那原棺呢？”",
                        "next": "where_original"
                    }
                ]
            },
            "empty_coffin": {
                "id": "empty_coffin",
                "location": "dead_road",
                "text": "“空棺？”陆沉的声音冷得像冰。\n\n“空棺。”爷爷一字一句道，“没有尸，没有骨，没有陪葬。可有名字——我的名字。”\n\n“你们十二个人进南岭，是被一封信引去的。那封信没有署名，只写着一句话——南岭原棺现，沈家债可平。”\n\n“你们找到了那口棺？”\n\n“找到了。一口倒悬黑棺，吊在墓室最高处，棺口朝下。那一晚，棺里有人喊我的名字——一声接一声。”",
                "choices": [
                    {
                        "text": "“怎么救你和大伯？”",
                        "next": "how_to_save"
                    }
                ]
            },
            "where_original": {
                "id": "where_original",
                "location": "dead_road",
                "text": "“原棺在哪里？”\n\n“在内道尽头的无主家里。要找原棺，必须过三道关——死路七棺、阴灯照名、无主家开门。”\n\n我死死记住。\n\n“你怎么办？”我问爷爷。\n\n他看着我，露出一点很浅的笑——那笑终于像回了从前。\n\n“爷爷老了，走不动了。”\n\n“七棺吊尸，不是吊住我，是吊住我的名。我的名若离开这里，你的名就会补上来。”",
                "choices": [
                    {
                        "text": "“怎么救你和大伯？”",
                        "next": "how_to_save"
                    }
                ]
            },
            "how_to_save": {
                "id": "how_to_save",
                "location": "dead_road",
                "text": "“怎么救你和大伯？”\n\n爷爷没有回答。他只说：“要找原棺，必须过三道关。死路七棺、阴灯照名、无主家开门——记住，见灯勿近，闻铃勿回，棺落不可扶。”\n\n“阿舟，爷爷老了，走不动了。”\n\n最左边那口棺材裂开了。\n\n陆沉猛地拉住我：“走！”\n\n爷爷厉声道：“走！”\n\n我最后看见的，是他背对着我，像小时候每一次送我出门那样，摆了摆手。\n\n“别回头。”",
                "choices": [
                    {
                        "text": "继续跑",
                        "next": "deng_temple"
                    }
                ]
            },
            "deng_temple": {
                "id": "deng_temple",
                "location": "deng_temple",
                "text": "我们冲过死路尽头，被陆沉拽进了一条更深的石阶。\n\n石阶尽头亮着一点幽蓝的火——像一只睁开的眼睛。\n\n陆沉停下脚步。\n\n我顺着他目光看去——石阶下方，有一盏青铜古灯。\n\n灯前站着一个人。\n\n身形高瘦，肩上扛着一根黑色棺杠，背对着我们。\n\n他听见脚步声，慢慢转过头来。\n\n那张脸和父亲有七分相似，却更冷，也更瘦。\n\n“你就是沈舟？”\n\n陆沉低声道：“他是你大伯，沈江。”",
                "choices": [
                    {
                        "text": "“大伯？”",
                        "next": "meet_jiang"
                    }
                ]
            },
            "meet_jiang": {
                "id": "meet_jiang",
                "location": "deng_temple",
                "text": "沈江看着我，肩上的棺杠渗出血来。\n\n“你爹当年求我留下。”他的声音很淡，“他说沈家总得有人回去传香火。我是长子，所以我留下了。”\n\n“二十年来，我一直在替沈家抬棺。”\n\n我喉咙发紧：“我……能做什么？”\n\n“你已经在做了。”他看向身后的黑暗，“你过了死路，到了阴灯前。无主家就在灯后面——但你得过第三关。”\n\n“阴灯照名。”\n\n“活人照灯，灯灭人亡。所以不能让它照出活人名——得照棺名。”",
                "choices": [
                    {
                        "text": "补位抬棺",
                        "next": "lift_coffin"
                    }
                ]
            },
            "lift_coffin": {
                "id": "lift_coffin",
                "location": "deng_temple",
                "text": "我走到沈江身边，伸手抓住那根黑色棺杠。\n\n冰冷刺骨的触感瞬间传遍全身。\n\n“记住，九步。一步都不能错。一步都不能停。”\n\n沈江的声音从头顶传来：“开始！”\n\n我深吸一口气，踏上第一步——\n\n青铜灯的火焰猛地一跳，幽蓝色的光芒扫过我的脸！\n\n我咬紧牙关，继续往前走——！",
                "qte": {
                    "type": "click",
                    "title": "抬棺过灯",
                    "description": "【极限挑战】阴灯正在照你的名字！必须在4秒内点击25次才能走完九步！失败即被照名！",
                    "buttonText": "快步前行",
                    "requiredClicks": 25,
                    "timeLimit": 4000,
                    "success": "lift_success",
                    "fail": "death_lift_fail"
                }
            },
            "death_lift_fail": {
                "id": "death_lift_fail",
                "location": "deng_temple",
                "text": "我走得太慢了——\n\n青铜灯的光芒扫过我的脸，我感觉自己的名字正在被从身体里抽离。\n\n“沈舟……”\n\n我的意识开始模糊。\n\n“你太慢了。”\n\n青铜灯的火焰暴涨，将我吞噬。\n\n【死亡】你走得太慢，被阴灯照出了名字。",
                "isEnd": true,
                "endType": "death",
                "endMessage": "死亡结局：QTE失败，被阴灯照名。"
            },
            "lift_success": {
                "id": "lift_success",
                "location": "deng_temple",
                "text": "我咬紧牙关，一步一步往前冲——！\n\n九步！终于走完了九步！\n\n青铜灯的火焰在我身后熄灭，化作一缕青烟。\n\n沈江松了一口气：“你过了第三关。”\n\n他指向身后的石门：“无主家就在里面。但进去之后，就没有回头路了。”",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "qte_skill",
                        "value": 10
                    }
                ],
                "choices": [
                    {
                        "text": "踏入石门",
                        "next": "stone_door"
                    }
                ]
            },
            "stone_door": {
                "id": "stone_door",
                "location": "stone_door",
                "text": "石门裂开的那一瞬间，我听见的不是风声。\n\n是“呼吸”。\n\n像一座埋在山体深处的巨大活物，在沉睡多年后，缓缓睁开了口。\n\n青铜灯在门前晃了一下，火焰突然缩成豆点。所有脚步声、呼吸声、衣料摩擦声，全都被压进石壁深处。\n\n只剩下门后那片黑暗在动。\n\n沈江站在我左侧，肩上的棺杠已经重新扣紧。陆沉在右侧，短刀没有收回。\n\n我站在中间。\n\n陆沉低声说：“从现在开始，别在心里想任何名字。”",
                "choices": [
                    {
                        "text": "踏入门缝",
                        "next": "enter_door"
                    },
                    {
                        "text": "问沈江无主家是什么",
                        "next": "death_ask_wuzhu"
                    }
                ]
            },
            "death_ask_wuzhu": {
                "id": "death_ask_wuzhu",
                "location": "stone_door",
                "text": "“无主家到底是什么？”我问沈江。\n\n他没有回头，声音很沉：“是棺道的心脏。所有欠棺的名字，最终都会流到这里。”\n\n就在这时，门内的黑暗像是回应这句话，微微波动了一下。\n\n下一秒，一个声音从里面传出来——很轻，像贴着骨头说的：\n\n“沈舟，你在想爷爷。”\n\n我后背瞬间发凉。\n\n黑暗伸出一只手，抓住了我的脚踝。\n\n“你不该想名字。”\n\n【死亡】你在无主家门前想了名字，被棺主抓住了。",
                "isEnd": true,
                "endType": "death",
                "endMessage": "死亡结局：在无主家门前想了名字，被棺主抓住。"
            },
            "enter_door": {
                "id": "enter_door",
                "location": "white_coffin_room",
                "text": "我们踏进门缝。\n\n脚落地的一瞬间，我感觉整个人像踩进了一口沉睡的深井。\n\n声音消失。光也消失。\n\n青铜灯的火被隔绝在外，连最后一点幽蓝都被黑暗吞掉。\n\n然后，我听见了第二个声音——不是棺主。\n\n是很多人。低声交谈。\n\n像在很远的地方开会，又像在我耳朵里。\n\n“来了一个新的名字。”\n\n“沈家的。”\n\n“可以补位。”",
                "choices": [
                    {
                        "text": "走近白棺",
                        "next": "white_coffin_mirror"
                    },
                    {
                        "text": "观察白棺上的痕迹",
                        "next": "observe_coffin"
                    }
                ]
            },
            "observe_coffin": {
                "id": "observe_coffin",
                "location": "white_coffin_room",
                "text": "我仔细看那口白棺。\n\n棺身上没有刻字，没有花纹，连一条划痕都没有。可它的表面泛着一层极淡的油光——像被无数双手摸过。\n\n沈江说：“每一代补名者，都会摸过这口棺。”\n\n“然后呢？”\n\n“然后他们就不想摸第二次了。”\n\n我还没来得及问为什么，棺盖忽然“咔”的一声——自己滑开了一道缝。",
                "choices": [
                    {
                        "text": "看向棺内",
                        "next": "white_coffin_mirror"
                    }
                ]
            },
            "white_coffin_mirror": {
                "id": "white_coffin_mirror",
                "location": "white_coffin_room",
                "text": "棺盖滑开的那一刻，我看见里面什么都没有。\n\n只有一面镜子。\n\n一面竖在棺底的黑镜。\n\n镜面映出我们三个人的影子。\n\n可其中一个影子，没有动。\n\n沈江皱眉：“不对。”\n\n陆沉已经举刀：“退！”\n\n可已经晚了。\n\n镜子里的“我”，慢慢抬起头。它看着我，嘴角一点点裂开。\n\n然后，它替我说了一句话——\n\n“我知道你在找什么。”",
                "choices": [
                    {
                        "text": "问镜中影子是谁",
                        "next": "who_are_you"
                    },
                    {
                        "text": "后退",
                        "next": "death_step_back_mirror"
                    },
                    {
                        "text": "伸手触碰镜面",
                        "next": "touch_mirror"
                    }
                ]
            },
            "death_step_back_mirror": {
                "id": "death_step_back_mirror",
                "location": "white_coffin_room",
                "text": "我往后退了一步。\n\n可那面镜子像认定了我——镜面忽然裂开一条细缝，一只手从里面伸了出来。\n\n干净、苍白，指节修长。\n\n无名指上戴着一枚黑玉戒。\n\n那只手抓住了我的影子，用力一拽——我整个人猛地向前一沉，像被什么东西从身体里抽走了一半。\n\n“你不该后退。”\n\n我被拖入镜中，永远消失了。\n\n【死亡】你在镜面前后退，被镜中邪祟拖入。",
                "isEnd": true,
                "endType": "death",
                "endMessage": "死亡结局：在镜面前后退，被镜中邪祟拖入。"
            },
            "who_are_you": {
                "id": "who_are_you",
                "location": "white_coffin_room",
                "text": "“你到底是谁？”我对着镜子问。\n\n镜中的“我”笑了一下。\n\n“我已经回答你了。”\n\n“我是上一任补名者。”\n\n“你未来的某一种结局。”\n\n我脑子一片混乱。\n\n沈江忽然一步踏前，棺杠横在镜前：“别让它说完。”\n\n陆沉低吼：“它已经开始写你了！”",
                "choices": [
                    {
                        "text": "触碰镜面",
                        "next": "touch_mirror"
                    }
                ]
            },
            "touch_mirror": {
                "id": "touch_mirror",
                "location": "white_coffin_room",
                "text": "我伸出手，指尖触到镜面。\n\n镜面像水面一样泛起波纹。那一瞬间，镜中的“我”贴近了，隔着玻璃与我对视。\n\n“你终于来了。”它说。\n\n“我已经等了你二十年。”\n\n它抬手，轻轻敲了一下镜子。\n\n整面黑镜瞬间碎裂——但没有碎片飞溅，所有碎块都向内聚拢，形成一条通往深处的路。",
                "choices": [
                    {
                        "text": "看向前方的路",
                        "next": "mirror_inside"
                    }
                ]
            },
            "mirror_inside": {
                "id": "mirror_inside",
                "location": "mirror_inside",
                "text": "我不是被拖进去的。\n\n更准确地说，是“被替换进去的”。\n\n当那只黑玉戒的手抓住我的影子时，我感觉身体像被从中间轻轻撕开——一半留在现实，一半跌进镜面。\n\n再睁眼时，我站在一条石道上。\n\n石道两侧没有墙，只有无尽的黑雾。雾里漂浮着无数半透明的字，像纸灰，又像被烧毁的族谱残页。\n\n我低头。\n\n脚下不是路——是一页巨大的“账纸”。\n\n上面密密麻麻写着名字。",
                "choices": [
                    {
                        "text": "往前走",
                        "next": "walk_forward"
                    },
                    {
                        "text": "查看脚下账纸上的名字",
                        "next": "read_account"
                    }
                ]
            },
            "read_account": {
                "id": "read_account",
                "location": "mirror_inside",
                "text": "我蹲下，仔细看脚下那些名字。\n\n它们像活物一样微微起伏。有的名字已经发黑，有的还在泛红，像刚写上去不久。\n\n我看到了周满仓——他已经被划掉了。\n\n看到李三娘——她的名字旁边有一行小字：“欠棺半程，已偿。”\n\n而在最下方那片空白区域，我的名字正在缓慢成形。\n\n“沈。”\n\n“舟。”\n\n一笔一划，像有人在用我的命当墨。",
                "choices": [
                    {
                        "text": "往前走",
                        "next": "walk_forward"
                    }
                ]
            },
            "walk_forward": {
                "id": "walk_forward",
                "location": "guan_zhang_hall",
                "text": "我沿着石道往前走。\n\n走了不知道多久——在这里，时间像被压扁了。\n\n黑雾中，缓缓浮现出一张巨大的纸影。\n\n那不是纸。\n\n是一本账册。\n\n一本比山还高的账册。\n\n每一页都写满名字，每一页都在翻动时震动整条石道。\n\n而在账册的最中心，有一根黑色的“钉”——钉住了所有名字。\n\n我还没来得及反应，身后传来脚步声。\n\n很慢，很稳。\n\n我回头。\n\n看见了“我自己”。",
                "choices": [
                    {
                        "text": "“你是谁？”",
                        "next": "past_self_talk"
                    },
                    {
                        "text": "“你想让我做什么？”",
                        "next": "past_self_talk"
                    }
                ]
            },
            "past_self_talk": {
                "id": "past_self_talk",
                "location": "guan_zhang_hall",
                "text": "“你是谁？”我后退一步。\n\n他笑了。\n\n“你已经叫过我了。”\n\n我一愣。\n\n“你以为那是棺主在用你？错了。是你在替我说话。”\n\n“你到底是什么东西？”\n\n他没有回答。只是伸手，轻轻按在我的胸口。\n\n那一瞬间，我看见一条线——从我身体里延伸出去，连接到那本巨大的账册上。\n\n“你是补名者。我是被补掉的上一代。”",
                "choices": [
                    {
                        "text": "“我怎么才能不变成你？”",
                        "next": "how_to_avoid"
                    },
                    {
                        "text": "看向账册",
                        "next": "look_account"
                    }
                ]
            },
            "how_to_avoid": {
                "id": "how_to_avoid",
                "location": "guan_zhang_hall",
                "text": "“我怎么才能不变成你？”\n\n他看着我，眼神里有一种说不清的东西。\n\n“补名有两种方式。”\n\n“第一种——你走完棺道，成为新账主。”\n\n“第二种——你被写完。名字写满，就不是人了——会变成棺。”",
                "choices": [
                    {
                        "text": "冲向裂缝",
                        "next": "run_to_crack"
                    },
                    {
                        "text": "看向账册",
                        "next": "look_account"
                    }
                ]
            },
            "run_to_crack": {
                "id": "run_to_crack",
                "location": "guan_zhang_hall",
                "text": "我冲向那条裂缝。\n\n可跑出三步，脚下账纸忽然收紧——像一只巨大的手掌攥住了我的脚踝。\n\n“别急着走。”身后那个“我”轻轻说，“你还没看完。”\n\n他指向账册。\n\n我的名字，已经快写完了。\n\n“沈舟”两个字，只剩最后一笔。",
                "choices": [
                    {
                        "text": "抓住那根写字的线",
                        "next": "grab_thread"
                    },
                    {
                        "text": "用力挣脱",
                        "next": "death_break_free"
                    }
                ]
            },
            "death_break_free": {
                "id": "death_break_free",
                "location": "guan_zhang_hall",
                "text": "我用尽全力挣脱脚下的束缚。\n\n可越挣扎，账纸缠得越紧。那些名字像活过来一样，顺着我的脚踝往上爬——沈长河、陆沉、周满仓……\n\n每一个名字都在发力，像在把我往账册深处拖。\n\n“别挣扎了。”那个“我”轻轻说，“你越动，被写进去得越快。”\n\n我低头——我的名字只剩最后一笔了。\n\n那一笔落下，我被彻底写进了账册。\n\n【死亡】你选择了挣扎，被账册吞噬。",
                "isEnd": true,
                "endType": "death",
                "endMessage": "死亡结局：选择挣扎，被账册吞噬。"
            },
            "look_account": {
                "id": "look_account",
                "location": "guan_zhang_hall",
                "text": "我抬头看向那本比山还高的账册。\n\n它在翻动。每一页都写满名字，每一页都在呼吸。\n\n而在最中央那一页，我的名字正在成形。\n\n沈。\n\n舟。\n\n两笔已完，最后一笔正在落下。",
                "choices": [
                    {
                        "text": "抓住那根写字的线",
                        "next": "grab_thread"
                    }
                ]
            },
            "grab_thread": {
                "id": "grab_thread",
                "location": "guan_zhang_hall",
                "text": "我看见了那根线。\n\n连接着我胸口和账册的那条“名字线”。它很细，像一根浸了墨的丝线。\n\n但我能感觉到它——它在跳动。\n\n最后一笔即将落下。\n\n我必须抓住这根线，用力拽断它！这是我唯一的机会！",
                "qte": {
                    "type": "click",
                    "title": "抓住名字线",
                    "description": "【极限挑战】抓住那根名字线！必须在3秒内点击35次才能拽断！失败即被写进账册！",
                    "buttonText": "用力拽断",
                    "requiredClicks": 35,
                    "timeLimit": 3000,
                    "success": "grab_success",
                    "fail": "death_grab_fail"
                }
            },
            "death_grab_fail": {
                "id": "death_grab_fail",
                "location": "guan_zhang_hall",
                "text": "我没能抓住那根线！\n\n它从指尖滑走——最后一笔落下。\n\n“沈舟”两个字，完整写在了账册上。\n\n黑雾瞬间收紧，我感觉自己正在被写进账册里——\n\n“你终究还是被写了。”\n\n那个“另一个我”看着我，嘴角带着一丝怜悯。\n\n【死亡】你没能拽断名字线，被写进了账册。",
                "isEnd": true,
                "endType": "death",
                "endMessage": "死亡结局：QTE失败，被写进账册。"
            },
            "grab_success": {
                "id": "grab_success",
                "location": "guan_zhang_hall",
                "text": "我抓住了那根线！\n\n它不是线。是命。\n\n我用力一扯——！\n\n整条账册，第一次停住。\n\n黑雾剧烈震动。那个“另一个我”脸色微变：“你做什么？”\n\n我看着他，第一次清楚地说出一句话：\n\n“既然是补名——那我也可以改名。”\n\n我猛地一拉——！\n\n整条名字线，被我硬生生拽偏了一寸。\n\n“沈舟”两个字，发生了第一次错位。",
                "actions": [
                    {
                        "type": "setVar",
                        "name": "passed_account_qte",
                        "value": true
                    },
                    {
                        "type": "addVar",
                        "name": "qte_skill",
                        "value": 10
                    }
                ],
                "choices": [
                    {
                        "text": "踏入真正的无主家",
                        "next": "original_coffin_eye"
                    }
                ]
            },
            "original_coffin_eye": {
                "id": "original_coffin_eye",
                "location": "original_coffin",
                "text": "石门彻底裂开。\n\n我看见了“看见”的声音——不是听觉，是意识被强行翻开。\n\n无主家露出了真正的样子。\n\n没有山。没有墓。没有路。\n\n只有一片巨大的“空”。\n\n空到黑暗都不完整。\n\n而最中央，是一口棺。\n\n一口“没有形状”的棺。\n\n它像是被世界遗忘后自己长出来的阴影。",
                "choices": [
                    {
                        "text": "接受身份，成为新账主",
                        "next": "ending_account_master"
                    },
                    {
                        "text": "拒绝补名，强行撕裂账册",
                        "next": "ending_tear"
                    },
                    {
                        "text": "问那个“未长成的我”为什么在这里",
                        "next": "ending_ask_past"
                    },
                    {
                        "text": "烧掉棺账，终结一切",
                        "next": "burn_account_final"
                    }
                ]
            },
            "burn_account_final": {
                "id": "burn_account_final",
                "location": "original_coffin",
                "text": "“我不接。”\n\n我抬头看向原棺竖眼。\n\n“入册可以烧，合名可以断。”\n\n“你养了我的名字二十年，不是为了让我做棺主——是为了等我亲手烧了你。”\n\n原棺中，那个命影第一次真正笑了。\n\n他抬手指向原棺最深处：“棺账在那里。烧账，要先拔账芯。”",
                "choices": [
                    {
                        "text": "拔钉烧账",
                        "next": "burn_lu_chen"
                    }
                ]
            },
            "burn_lu_chen": {
                "id": "burn_lu_chen",
                "location": "original_coffin",
                "text": "陆沉忽然笑了一声，那笑声很轻，却带着一种说不出的疲惫。\n\n他从怀里掏出那枚染血铜钱——铜钱已经裂开，红绳只剩半截。\n\n“沈舟，记住。人这一辈子，总要有一笔账，是自己亲手结的。”\n\n他将铜钱按进自己眉心那道旧疤。\n\n他脸上的疤一点一点裂开，裂缝里没有血，只有幽蓝色的火。\n\n沈江脸色骤变：“陆沉！”",
                "choices": [
                    {
                        "text": "冲进棺眼拔钉",
                        "next": "burn_pull_nail"
                    }
                ]
            },
            "burn_pull_nail": {
                "id": "burn_pull_nail",
                "location": "original_coffin",
                "text": "无数名字开始燃烧。不是纸燃的声音——是命被解开的声音。\n\n周满仓。李三娘。陈狗子。赵老七。何半瞎。那些曾经在棺道里索债的死人，此刻不再伸手。\n\n沈江咬牙冲上去，用断棺杠顶住原棺边缘：“沈舟，进去拿账芯！”\n\n我冲进棺眼。蓝火烧在身侧，像无数亡魂伸出来的手，推着我往前。\n\n黑色账册就在原棺最深处。我必须抓住账芯黑钉，用力拔出来！",
                "qte": {
                    "type": "hold",
                    "title": "拔出账芯黑钉",
                    "description": "【极限挑战】抓住账芯黑钉！必须按住5秒才能拔出！松手即失败！无数名字会钻进你的身体！",
                    "buttonText": "用力拔出",
                    "holdDuration": 5000,
                    "timeLimit": 7000,
                    "success": "pull_nail_success",
                    "fail": "death_pull_nail_fail"
                }
            },
            "death_pull_nail_fail": {
                "id": "death_pull_nail_fail",
                "location": "original_coffin",
                "text": "我抓不住了——手一松，黑钉重新钉回账册！\n\n无数名字瞬间反噬，我被一股力量弹开，重重撞在棺壁上！\n\n“沈舟！”陆沉怒吼一声，他的身体已经被蓝火吞没大半！\n\n但已经太晚了。\n\n原棺的竖眼闭合，将我永远困在了里面。\n\n【死亡】你没能拔出账芯黑钉，被原棺吞噬。",
                "isEnd": true,
                "endType": "death",
                "endMessage": "死亡结局：QTE失败，被原棺吞噬。"
            },
            "pull_nail_success": {
                "id": "pull_nail_success",
                "location": "original_coffin",
                "text": "我伸手抓住账芯黑钉——！\n\n黑钉猛地刺入掌心，疼得我几乎跪下。无数名字顺着伤口钻进我身体里，哭喊、怨恨、求救、诅咒，像潮水一样冲进脑子。\n\n棺主的声音在我耳边低吼：“你敢烧账，沈长河也会散！”\n\n我咬紧牙关，没有松手——！\n\n黑钉终于被我拔了出来！\n\n整本棺账瞬间翻开。最后一页上，“沈舟”两个字燃起蓝火。\n\n黑河尽头，爷爷出现了。",
                "actions": [
                    {
                        "type": "setVar",
                        "name": "passed_nail_qte",
                        "value": true
                    },
                    {
                        "type": "addVar",
                        "name": "qte_skill",
                        "value": 10
                    }
                ],
                "choices": [
                    {
                        "text": "听爷爷说完",
                        "next": "burn_grandpa_farewell"
                    }
                ]
            },
            "burn_grandpa_farewell": {
                "id": "burn_grandpa_farewell",
                "location": "original_coffin",
                "text": "“爷爷，我带你走。”\n\n爷爷摇头：“爷爷走不了了。”\n\n我攥紧拳头：“那我烧了它。”\n\n爷爷点头：“烧了它。沈家人不欠棺材。”\n\n我看着他——他还是那个站在堂屋门口抽旱烟的老人，脾气硬，话不多，却总是在风雨来之前，把门闩插好。\n\n“爷爷……”\n\n他抬手，像小时候那样摸了摸我的头。可他的手穿过了我。\n\n“回家。”",
                "choices": [
                    {
                        "text": "被沈江拖出棺眼",
                        "next": "burn_fire_ends"
                    }
                ]
            },
            "burn_fire_ends": {
                "id": "burn_fire_ends",
                "location": "original_coffin",
                "text": "一只手抓住了我的衣领。是沈江——他满身是血，几乎站不稳，却硬生生把我从棺眼里拖了出去。\n\n陆沉已经看不见了。只剩那只镇棺铃，悬在蓝火中央，铃身裂成两半。\n\n铃声最后响了一次。\n\n叮。\n\n这一声后，整条棺道安静了。\n\n所有抬棺声、敲棺声、哭声、笑声，全都消失。\n\n沈江背起我，朝来路狂奔。\n\n无主家在身后塌陷，原棺沉入黑暗。最后一刻，我回头看见爷爷站在火光里，朝我摆了摆手。\n\n他还是说：“别回头。”",
                "choices": [
                    {
                        "text": "回家",
                        "next": "ending_return_home"
                    }
                ]
            },
            "ending_return_home": {
                "id": "ending_return_home",
                "location": "shen_home",
                "text": "三天后，我们把堂屋里的那口棺材抬到山脚下烧了。\n\n棺材烧到一半，里面没有尸体，也没有替身——只有一枚裂开的黑玉戒。\n\n戒指在火里碎成两半。\n\n二叔说，那天夜里，他梦见爷爷、大伯，还有一个脸上带疤的男人，三个人抬着一口空棺往山外走。走到天亮时，棺材散了，人也散了。\n\n从那以后，沈家再也没有听见过棺声。\n\n南岭的雨季还是很长。竹林还是会在夜里呜呜作响。村里人仍旧绕开那条废弃的抬棺路。\n\n只有我知道——棺道已经没了。\n\n至少，沈家的那条棺道没了。\n\n后来我整理爷爷留下的旧物，在床底找到一页没有烧尽的残纸，纸上只有一行字：\n\n“活人走活路，死人归死人。”\n\n我把那页纸烧在了爷爷坟前。火很干净，没有黑烟。\n\n那天傍晚，我下山时，忽然听见身后传来一声很轻的铃响。\n\n叮。\n\n我停了一下。\n\n没有回头。\n\n风从山里吹出来，带着泥土和竹叶的味道。像有人在远处笑了一声，又像什么都没有发生。\n\n我继续往前走。\n\n山路尽头，天光正亮。\n\n而这一次，我知道——前面没有棺材在等我。\n\n只有回家的路。",
                "isEnd": true,
                "endType": "true",
                "endMessage": "【通关！】棺账终焚，沈家债清。陆沉散于火光，爷爷归于山野。而你，终于可以回家了。恭喜你完成9.5难度挑战！"
            },
            "ending_account_master": {
                "id": "ending_account_master",
                "location": "original_coffin",
                "text": "我站在原棺前，看着那个“未长成的我”。\n\n他没有催我。只是等着。\n\n我伸手，握住了原棺边缘。\n\n那一瞬间，所有名字都安静了。\n\n我听见自己的声音说：“我接。”\n\n原棺的眼缓缓闭合。地面的名字停止倒流，开始重新排列——以我为中心。\n\n我成为了新账主。",
                "isEnd": true,
                "endType": "true",
                "endMessage": "你接过了棺账，成为了新的账主。沈家的债，在你这里结束。"
            },
            "ending_tear": {
                "id": "ending_tear",
                "location": "original_coffin",
                "text": "我没有接受。\n\n我伸手，抓住了那条名字线——那条连接着我的命、连接着沈家所有名字的线。\n\n我用力一扯。\n\n整本棺账被我从中间撕裂。\n\n名字如灰烬般飞散，原棺发出刺耳的崩裂声。\n\n那个“未长成的我”在消散前说了一句话：\n\n“你拆掉了自己的根。”\n\n我回他：“那我重新长。”",
                "isEnd": true,
                "endType": "victory",
                "endMessage": "你撕碎了棺账，也撕碎了沈家三代人的债。你自由了。"
            },
            "ending_ask_past": {
                "id": "ending_ask_past",
                "location": "original_coffin",
                "text": "我看着那个“未长成的我”，问：“你在这里多久了？”\n\n他沉默了一会儿。\n\n“比你想象的要久。”\n\n“你后悔吗？”\n\n他笑了。“我后悔的不是进来——而是没有问过自己，值不值得。”\n\n我看着他，忽然明白了。\n\n他不是我的未来。\n\n他是我的一个选择。\n\n“走吧。”他说，“你还有机会。”\n\n我转身，走向裂缝。",
                "isEnd": true,
                "endType": "good",
                "endMessage": "你选择了活完整。那个未长成的你，在账册里替你记住了所有路。"
            }
        },
        "id": "the_stolen_coffin_hard"
    },
    {
        "title": "盗棺笔记：河川旧录(Hard)",
        "subtitle": "替棺归途·无名棺铺·替身之身",
        "description": "【9.5难度】沈河川年轻时发现沈家的棺债即将落在儿子沈舟身上。他离开家乡，寻找替棺，试图为儿子挡下命运。七块棺板，七年归途，替棺认路，阴债渐醒。每一步都是生死抉择，每一次QTE都是极限挑战。",
        "author": "Radiation Studio",
        "version": "3.0",
        "variables": {
            "trust_father": 50,
            "fear_level": 30,
            "knowledge_about_guandao": 0,
            "copper_piece_active": false,
            "has_told_mother": false,
            "has_confronted_father": false,
            "has_visited_yizhuang": false,
            "has_taken_coffin": false,
            "board_count_sent": 0,
            "sent_boards_fast": false,
            "has_warned_gu_old": false,
            "gu_old_survived": false,
            "discovered_plot": false,
            "ending_reached": false,
            "father_alive": true,
            "father_health": 80,
            "coffin_awake": 0,
            "found_unnamed_shop": false,
            "talked_to_sender": false,
            "got_replacement_offer": false,
            "chose_self": false,
            "chose_other": false,
            "found_ancient_way": false,
            "burned_coffin": false,
            "ran_away": false,
            "qte_skill": 0,
            "survival_points": 3
        },
        "features": {
            "inventory": true,
            "map": true
        },
        "items": [
            {
                "id": "black_copper_piece",
                "name": "黑色铜片",
                "icon": "🔲",
                "description": "后山发现的铜片，握着能听见死人的声音。表面有暗红纹路。"
            },
            {
                "id": "guan_zhang_fragment",
                "name": "棺账残页",
                "icon": "📜",
                "description": "沈长河藏了多年的棺账，最后一页出现了沈舟的名字。"
            },
            {
                "id": "black_jade_ring",
                "name": "黑玉戒",
                "icon": "💍",
                "description": "沈长河无名指上的黑玉戒，靠近火光会泛暗红。"
            },
            {
                "id": "old_knife",
                "name": "旧刀",
                "icon": "🔪",
                "description": "沈河川离家时带的刀，刀身布满锈迹，但刀刃依然锋利。"
            },
            {
                "id": "coffin_board_1",
                "name": "第一块棺板",
                "icon": "🪵",
                "description": "替棺的第一块板，背面刻着一只闭着的眼睛。"
            },
            {
                "id": "coffin_board_2",
                "name": "第二块棺板",
                "icon": "🪵",
                "description": "替棺的第二块板，背面刻着闭着的眼睛。"
            },
            {
                "id": "red_blood_pouch",
                "name": "红布包·鸡血",
                "icon": "🔴",
                "description": "厨房梁上挂着的红布袋，里面是封着蜡的瓷瓶。"
            },
            {
                "id": "old_coin",
                "name": "旧铜钱",
                "icon": "💰",
                "description": "沈长河给的铜钱，边缘磨得发亮。"
            },
            {
                "id": "zhen_guang_ling",
                "name": "镇棺铃",
                "icon": "🔔",
                "description": "沈家祖传的铜铃，铃口裂了一道缝。"
            },
            {
                "id": "gu_old_letter",
                "name": "顾老的信",
                "icon": "✉️",
                "description": "顾老在义庄被烧前留下的信。"
            },
            {
                "id": "coffin_nail",
                "name": "棺钉",
                "icon": "📌",
                "description": "钉入黑棺的七枚棺钉之一。"
            },
            {
                "id": "wooden_plate",
                "name": "木牌",
                "icon": "🪧",
                "description": "乱坟中找到的木牌，正面写着'无名棺铺'。"
            },
            {
                "id": "sender_letter",
                "name": "送棺人的信",
                "icon": "✉️",
                "description": "在无名棺铺找到的信。"
            },
            {
                "id": "ancient_scroll",
                "name": "古卷",
                "icon": "📜",
                "description": "记载着'断名之法'的古卷。"
            }
        ],
        "map": {
            "title": "南岭棺道·前传·极难",
            "locations": [
                {
                    "id": "shen_home",
                    "name": "沈家堂屋",
                    "description": "沈家老宅的堂屋，棺账和黑玉戒都藏在这里。"
                },
                {
                    "id": "back_hill",
                    "name": "沈家后山",
                    "description": "一片荒芜的丘陵地，沈河川在这里发现了黑色铜片。"
                },
                {
                    "id": "outside_village",
                    "name": "山外旅馆",
                    "description": "沈河川离开沈家后住的第一间旅馆。"
                },
                {
                    "id": "old_workshop",
                    "name": "秦老的木坊",
                    "description": "北方一座老木坊，秦老一辈子只给活人做棺材。"
                },
                {
                    "id": "abandoned_yizhuang",
                    "name": "废弃义庄",
                    "description": "一口无名的棺材停在这里二十七年。"
                },
                {
                    "id": "old_temple",
                    "name": "旧庙",
                    "description": "庙里供奉的不是神，是一口没有名字的棺。"
                },
                {
                    "id": "south_village",
                    "name": "南方旧村",
                    "description": "其他家族也受棺债所困的地方。"
                },
                {
                    "id": "shen_home_later",
                    "name": "沈家（多年后）",
                    "description": "七块棺板一块接一块送进沈家。"
                },
                {
                    "id": "old_forest",
                    "name": "旧林深处",
                    "description": "曾祖父地图上标注的旧林。"
                },
                {
                    "id": "graveyard",
                    "name": "乱坟岗",
                    "description": "沈河川追踪木车至此。"
                },
                {
                    "id": "unnamed_shop",
                    "name": "无名棺铺",
                    "description": "一座隐藏在荒村中的老铺。"
                },
                {
                    "id": "shop_front",
                    "name": "棺铺正厅",
                    "description": "铺内陈设古朴，墙上挂满旧棺板。"
                },
                {
                    "id": "shop_secret",
                    "name": "棺铺密室",
                    "description": "铺子地下的密室。"
                },
                {
                    "id": "back_road",
                    "name": "返回之路",
                    "description": "沈河川从棺铺返回沈家的路。"
                },
                {
                    "id": "shen_home_final",
                    "name": "沈家·最终时刻",
                    "description": "沈长河即将油尽灯枯。"
                }
            ],
            "startingLocation": "shen_home"
        },
        "start": "start",
        "nodes": {
            "start": {
                "id": "start",
                "location": "shen_home",
                "text": "二十年前，沈河川还年轻。\n\n那时候的沈家，并不像后来一样安静。沈长河还在。沈江还在。陆沉也还没有变成那个满脸伤疤的人。\n\n他们四个人经常坐在院子里讨论一件事——南岭。那个所有沈家人都不愿意提起的地方。\n\n沈河川一直不理解，为什么父亲和大哥宁愿守着那些死人留下的东西，也不愿意过普通人的生活。\n\n他问过沈长河：\"爸，我们沈家到底欠了谁？\"\n\n【警告】这是9.5难度模式。错误的选择将直接导致死亡。QTE失败将导致死亡。你只有3次生存机会。",
                "choices": [
                    {
                        "text": "等待沈长河回答",
                        "next": "debt_answer"
                    },
                    {
                        "text": "打断父亲，说自己有事要出去",
                        "next": "death_leave_debt"
                    },
                    {
                        "text": "转身去厨房找母亲",
                        "next": "talk_to_mother"
                    }
                ]
            },
            "death_leave_debt": {
                "id": "death_leave_debt",
                "location": "shen_home",
                "text": "沈河川没有等父亲回答。他总觉得那些话太沉重，听了心里堵得慌。\n\n他借口有事，走出堂屋。\n\n风穿过院子，老槐树的叶子哗哗作响。他站在树下，听见树后传来一声很轻的叹息——\n\n不是风声。\n\n他转过头，什么都没看见。\n\n但那声叹息，像一个人蹲在树根下面，对着泥土说话。\n\n他没有在意，继续往外走——\n\n身后传来一声闷响，堂屋的门关上了。\n\n然后，他听见父亲在里面喊他的名字——\n\n“河川……别出去……”\n\n他回头，看见堂屋里亮起一道绿光。\n\n那道光芒吞没了他。\n\n【死亡】你没有听完父亲的话就离开了，错过了唯一的机会。",
                "isEnd": true,
                "endType": "death",
                "endMessage": "死亡结局：没有听完父亲的话，错过了关键信息。"
            },
            "debt_answer": {
                "id": "debt_answer",
                "location": "shen_home",
                "text": "沈长河沉默了很久。\n\n“不是欠谁。是欠一口棺。”\n\n沈河川觉得荒唐。“棺材还能找人要债？”\n\n沈长河看着他，眼神很复杂。“河川，你记住。这世上最可怕的不是死人，是死人留下的规矩。”\n\n沈河川还想再问，但沈长河已经转身去摆弄那本旧账了。\n\n那天夜里，沈河川第一次听见堂屋地底传来三声敲击。\n\n咚。咚。咚。\n\n他没有睡。",
                "choices": [
                    {
                        "text": "第二天去后山",
                        "next": "back_hill_discovery"
                    },
                    {
                        "text": "叫醒父亲问那声音",
                        "next": "ask_sound_night"
                    }
                ]
            },
            "ask_sound_night": {
                "id": "ask_sound_night",
                "location": "shen_home",
                "text": "沈河川披衣起身，走到堂屋。沈长河已经坐在那里了，手里握着那本棺账。\n\n“爸，那是什么声音？”\n\n“底下有东西。”\n\n“什么东西？”\n\n“一口等着进门的东西。”\n\n沈河川脊背发凉。“它什么时候会进来？”\n\n沈长河抬头看他。“等你有了孩子。”",
                "choices": [
                    {
                        "text": "回房，但决定天亮去后山",
                        "next": "back_hill_discovery"
                    },
                    {
                        "text": "问父亲那口棺在哪里",
                        "next": "where_is_coffin"
                    }
                ]
            },
            "where_is_coffin": {
                "id": "where_is_coffin",
                "location": "shen_home",
                "text": "\"那口棺在哪里？\"\n\n沈长河沉默了很久。\"在南岭深处。但你不能去。\"\n\n\"为什么？\"\n\n\"因为去了的人，都没有回来过。\"\n\n\"大伯不是回来了吗？\"\n\n\"他回来的只是身体。他的名字还留在那里。\"\n\n沈河川第一次觉得，父亲不是在吓唬他。",
                "choices": [
                    {
                        "text": "天亮后去后山",
                        "next": "back_hill_discovery"
                    },
                    {
                        "text": "偷偷翻找棺账",
                        "next": "steal_ledger"
                    }
                ]
            },
            "steal_ledger": {
                "id": "steal_ledger",
                "location": "shen_home",
                "text": "等沈长河回房后，沈河川悄悄打开木匣，翻出棺账。\n\n他看到了那些名字——沈家祖上的，还有一些陌生的。每个名字后面都有一个日期，有的被划掉了，有的还在。\n\n最后一页是空白的。\n\n但纸面上有一道极浅的压痕，像被笔尖用力划过，又没写下字。\n\n他用手电筒侧着照了一下——\n\n看见两个字：\n\n沈舟。\n\n他猛地合上棺账。",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 50
                    },
                    {
                        "type": "addVar",
                        "name": "fear_level",
                        "value": 30
                    }
                ],
                "choices": [
                    {
                        "text": "把棺账放回原处，天亮后去后山",
                        "next": "back_hill_discovery"
                    },
                    {
                        "text": "带着棺账离开沈家",
                        "next": "death_leave_with_ledger"
                    }
                ]
            },
            "death_leave_with_ledger": {
                "id": "death_leave_with_ledger",
                "location": "outside_village",
                "text": "沈河川把棺账塞进怀里，连夜离开了沈家。\n\n他没有告诉任何人。\n\n他以为带着棺账就能找到答案——\n\n但他走到山脚时，棺账忽然变得很烫。\n\n他低头翻开，看见最后一页的\"沈舟\"两个字正在渗血。\n\n那血不是他的。\n\n是纸自己流出来的。\n\n他犹豫了一下，还是继续往前走了。\n\n可没走几步，身后传来一阵低沉的轰鸣——\n\n沈家方向亮起一道绿光。\n\n他回头，看见沈家正在被黑雾吞没。\n\n“你不该带走它。”\n\n黑雾朝他涌来。\n\n【死亡】你带走了棺账，沈家被黑雾吞没。",
                "isEnd": true,
                "endType": "death",
                "endMessage": "死亡结局：带走了棺账，导致沈家被黑雾吞没。"
            },
            "talk_to_mother": {
                "id": "talk_to_mother",
                "location": "shen_home",
                "text": "沈河川走进厨房。母亲正在择菜。\n\n\"妈，沈家以前是不是有什么事？\"\n\n母亲的手停了一下。\"你爸没告诉你？\"\n\n\"他只说欠了一口棺。\"\n\n母亲沉默了很久，然后低声说：\"你爸年轻的时候，跟你大伯进过南岭。回来以后，大伯就失踪了，你爸也变了一个人。\"",
                "actions": [
                    {
                        "type": "setVar",
                        "name": "has_told_mother",
                        "value": true
                    },
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 20
                    }
                ],
                "choices": [
                    {
                        "text": "继续问母亲",
                        "next": "ask_mother_more"
                    },
                    {
                        "text": "决定自己去查",
                        "next": "back_hill_discovery"
                    }
                ]
            },
            "ask_mother_more": {
                "id": "ask_mother_more",
                "location": "shen_home",
                "text": "\"那口棺材现在在哪里？\"\n\n母亲摇头。\"没人知道。你爸说它在等一个名字。\"\n\n\"等谁的名字？\"\n\n母亲看了他很久，然后说：\"你爸说，可能是沈家最后一个人的名字。\"",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 30
                    },
                    {
                        "type": "addVar",
                        "name": "fear_level",
                        "value": 10
                    }
                ],
                "choices": [
                    {
                        "text": "去后山散心",
                        "next": "back_hill_discovery"
                    },
                    {
                        "text": "直接去找父亲对质",
                        "next": "confront_father_direct"
                    }
                ]
            },
            "confront_father_direct": {
                "id": "confront_father_direct",
                "location": "shen_home",
                "text": "沈河川走到堂屋，沈长河正在把棺账锁进木匣。\n\n\"爸，最后一个人的名字是谁？\"\n\n沈长河的手停住了。他没有转身。\"你妈告诉你了？\"\n\n\"告诉我一部分。剩下的，我想听你说。\"\n\n沈长河把木匣放回柜里，慢慢转过身。他脸上没有愤怒，只有一种很深的疲惫。\n\n\"河川，有些事知道得越早，越害怕。\"\n\n\"我不怕。\"\n\n沈长河看着他，目光像在看一个还没长大的孩子。\"你当然不怕。因为你还没看到那东西。\"",
                "actions": [
                    {
                        "type": "setVar",
                        "name": "has_confronted_father",
                        "value": true
                    },
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 20
                    }
                ],
                "choices": [
                    {
                        "text": "不再追问，去后山",
                        "next": "back_hill_discovery"
                    },
                    {
                        "text": "继续追问，直到父亲开口",
                        "next": "press_father"
                    }
                ]
            },
            "press_father": {
                "id": "press_father",
                "location": "shen_home",
                "text": "\"爸，如果你不告诉我，我会自己去找答案。到时候，可能比你现在告诉我更危险。\"\n\n沈长河看了他很久。最后，他叹了口气。\n\n\"南岭里有一口倒悬的黑棺。那口棺不是装死人的，是装活人的名字。当年我和你大伯进去，是想把那口棺的债断掉。\"\n\n\"断掉了吗？\"\n\n\"没有。我们只带出了一样东西——你大伯的名。\"",
                "actions": [
                    {
                        "type": "setVar",
                        "name": "has_confronted_father",
                        "value": true
                    },
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 40
                    }
                ],
                "choices": [
                    {
                        "text": "去后山冷静一下",
                        "next": "back_hill_discovery"
                    }
                ]
            },
            "back_hill_discovery": {
                "id": "back_hill_discovery",
                "location": "back_hill",
                "text": "后山是沈家屋后一片荒芜的丘陵地。野草比人高，路早就被灌木封死。\n\n沈河川沿着一条几乎看不见的小路往上走。脚下泥土潮湿，带着一股说不清的旧味。\n\n走了不到一炷香时间，他踢到了一件硬物。\n\n弯腰扒开杂草，看见一块黑色的铜片被半埋在土里。半个手掌大小，没有纹路，没有字，边角圆钝得不像自然磨损。\n\n他伸手去挖——泥土坚硬如铁，铜片像是钉在地里一样。",
                "qte": {
                    "type": "click",
                    "title": "挖掘铜片",
                    "description": "【极限挑战】铜片嵌在坚硬的泥土中！必须在3秒内点击20次才能挖出！失败即被泥土中的东西拖入！",
                    "buttonText": "用力挖掘",
                    "requiredClicks": 20,
                    "timeLimit": 3000,
                    "success": "copper_found",
                    "fail": "death_copper_fail"
                }
            },
            "death_copper_fail": {
                "id": "death_copper_fail",
                "location": "back_hill",
                "text": "泥土太硬了。沈河川的手指被石头划破，鲜血滴在铜片上——\n\n铜片忽然发出一阵微光，然后沉入了泥土深处。\n\n他愣在原地，看着那个洞慢慢合拢。\n\n身后传来一声叹息。\n\n他没有回头，只是握紧了满是血的手，转身下山。\n\n可他走了没几步，脚下的泥土突然裂开——\n\n一只手从地下伸出，抓住了他的脚踝。\n\n“你不该放弃。”\n\n他被拖入地下。\n\n【死亡】你没能挖出铜片，被地下的东西拖走了。",
                "isEnd": true,
                "endType": "death",
                "endMessage": "死亡结局：QTE失败，被地下邪祟拖入。"
            },
            "copper_found": {
                "id": "copper_found",
                "location": "back_hill",
                "text": "沈河川终于把铜片挖了出来。\n\n他把它捡起来，翻过来看背面——还是什么都没有。\n\n就在握紧铜片的一瞬间，他听见了一个声音。\n\n一个死了二十年的声音。\n\n“河川。”",
                "actions": [
                    {
                        "type": "setVar",
                        "name": "copper_piece_active",
                        "value": true
                    }
                ],
                "choices": [
                    {
                        "text": "仔细辨认那个声音",
                        "next": "recognize_voice"
                    },
                    {
                        "text": "把铜片扔掉",
                        "next": "death_drop_copper"
                    },
                    {
                        "text": "攥紧铜片，带回家",
                        "next": "keep_copper"
                    }
                ]
            },
            "death_drop_copper": {
                "id": "death_drop_copper",
                "location": "back_hill",
                "text": "沈河川手一抖，铜片掉在地上。\n\n那声音立刻消失了。\n\n他站在原地，后背全是冷汗。\n\n他认得那个声音——是沈长河。\n\n可父亲明明坐在堂屋里。\n\n他犹豫了一下，还是弯腰把铜片捡了起来——\n\n可铜片表面已经变了。原本光滑的表面出现了一道裂缝，从裂缝里渗出一缕黑雾。\n\n那黑雾钻进了他的鼻子。\n\n“你不该扔掉它。”\n\n他眼前一黑。\n\n【死亡】你扔掉了铜片，黑雾钻进了你的身体。",
                "isEnd": true,
                "endType": "death",
                "endMessage": "死亡结局：扔掉了铜片，被黑雾侵蚀。"
            },
            "keep_copper": {
                "id": "keep_copper",
                "location": "back_hill",
                "text": "沈河川攥紧铜片，那声音没有消失，反而更清晰了。\n\n“河川，听我说。”\n\n他强迫自己冷静下来。“你是谁？”\n\n那声音沉默了片刻。“我是你父亲。”\n\n“你不是。我爸在家。”\n\n“我在家的日子，已经不多了。”\n\n沈河川心头一紧。\"什么意思？\"\n\n\"你找到的这块铜片，是当年从南岭带出来的。它记住了我说过的话——在我说出那些话之前，就已经记住了。\"",
                "actions": [
                    {
                        "type": "setVar",
                        "name": "copper_piece_active",
                        "value": true
                    },
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 30
                    }
                ],
                "choices": [
                    {
                        "text": "带着铜片回家",
                        "next": "return_home_copper"
                    },
                    {
                        "text": "追问铜片更多问题",
                        "next": "copper_questions"
                    }
                ]
            },
            "copper_questions": {
                "id": "copper_questions",
                "location": "back_hill",
                "text": "\"你刚才说'我在家的日子不多了'——为什么？\"\n\n铜片沉默了更久。然后那声音再次响起——\n\n“因为棺账上已经有了我的名字。沈长河，已入棺。”\n\n沈河川手心出汗。\"什么时候的事？\"\n\n“你儿子出生那天。”\n\n沈河川猛地想起，沈舟出生那天，南岭方向下了一场很大的雨——回山雨。",
                "actions": [
                    {
                        "type": "setVar",
                        "name": "copper_piece_active",
                        "value": true
                    },
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 40
                    },
                    {
                        "type": "addVar",
                        "name": "fear_level",
                        "value": 20
                    }
                ],
                "choices": [
                    {
                        "text": "下山回家",
                        "next": "return_home_copper"
                    },
                    {
                        "text": "继续往后山深处走",
                        "next": "deeper_hill"
                    }
                ]
            },
            "recognize_voice": {
                "id": "recognize_voice",
                "location": "back_hill",
                "text": "沈河川僵在原地。\n\n那是沈长河的声音。可二十年前，沈长河曾经失踪过一段时间——村里人都说他去了南岭，回来后什么也不说。\n\n这个声音，\"河川\"——是他父亲私底下才会叫他的方式。\n\n“爸？你在哪里？”\n\n那声音没有回答。\n\n但铜片表面的暗红纹路，像树根一样缓缓扩展，像是声音正在从铜片深处爬出来。",
                "actions": [
                    {
                        "type": "setVar",
                        "name": "copper_piece_active",
                        "value": true
                    },
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 20
                    }
                ],
                "choices": [
                    {
                        "text": "把铜片装进口袋带回家",
                        "next": "return_home_copper"
                    },
                    {
                        "text": "把铜片埋回原处",
                        "next": "death_bury_copper"
                    }
                ]
            },
            "death_bury_copper": {
                "id": "death_bury_copper",
                "location": "back_hill",
                "text": "沈河川蹲下来，把铜片放回它被发现的位置，用泥土盖住。\n\n“抱歉，我不能带你走。”\n\n铜片安静地躺在土里，没有发出任何声音。\n\n但沈河川起身时，忽然听见身后传来一声极轻的叹息——\n\n像是有人从很远的地方，终于放弃了什么。\n\n他站了片刻，还是转身下山了。\n\n可他没走几步，脚下的泥土开始震动——\n\n一个巨大的裂缝在他面前裂开，从中伸出无数苍白的手。\n\n“你不该埋掉我。”\n\n他被那些手拖入裂缝。\n\n【死亡】你埋掉了铜片，惹怒了地下的东西。",
                "isEnd": true,
                "endType": "death",
                "endMessage": "死亡结局：埋掉了铜片，被地下邪祟拖入裂缝。"
            },
            "deeper_hill": {
                "id": "deeper_hill",
                "location": "back_hill",
                "text": "沈河川没有下山，反而继续往后山深处走。\n\n灌木越来越密，脚下的路越来越软，像踩在厚厚的腐叶上。\n\n走了大约二十分钟，他看见前方有一片塌陷的地面——像是一座被填平的墓穴。\n\n塌陷处露出半截棺材角，已经腐烂得不成形。\n\n沈河川走近，发现棺材旁边散落着几块铜片碎片，和他口袋里的那块材质一样。\n\n而在棺材正下方的泥土里，埋着一只锈迹斑斑的铁盒。",
                "choices": [
                    {
                        "text": "打开铁盒",
                        "next": "open_box"
                    },
                    {
                        "text": "把铁盒整个带走",
                        "next": "take_box"
                    },
                    {
                        "text": "先检查棺材里的东西",
                        "next": "death_check_coffin_deep"
                    }
                ]
            },
            "death_check_coffin_deep": {
                "id": "death_check_coffin_deep",
                "location": "back_hill",
                "text": "沈河川先检查了那口半露的棺材。\n\n棺材已经腐烂得差不多了，里面的东西早已化尽，只剩下几根发黑的骨头和一块铜片碎片。\n\n他拿起碎片，和口袋里的那块对比——材质完全一致。\n\n就在这时，那些发黑的骨头突然动了——\n\n它们从棺材里伸出，抓住了他的手臂。\n\n“你不该碰我的东西。”\n\n他被拖入棺材。\n\n【死亡】你检查了棺材里的东西，被骨头抓住了。",
                "isEnd": true,
                "endType": "death",
                "endMessage": "死亡结局：触碰了棺材里的骨头，被拖入棺中。"
            },
            "open_box": {
                "id": "open_box",
                "location": "back_hill",
                "text": "沈河川撬开铁盒。\n\n里面是一叠发黄的纸，纸角已经脆裂。最上面一张画着一张简陋的地图，标注着一条路线——从沈家后山开始，穿过一片标记为\"旧林\"的地方，一直延伸到一座用圈圈出的位置。\n\n圈旁写着两个字：\n\n南岭。\n\n地图背面，是一行字：\n\n“此路入，未必出。但若沈家子孙有问，可试。”\n\n落款是：沈林——沈河川的曾祖父。",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 50
                    },
                    {
                        "type": "addVar",
                        "name": "fear_level",
                        "value": 30
                    }
                ],
                "choices": [
                    {
                        "text": "把地图和铜片一起带回家",
                        "next": "return_home_copper"
                    },
                    {
                        "text": "立刻按地图路线走",
                        "next": "enter_old_forest"
                    }
                ]
            },
            "enter_old_forest": {
                "id": "enter_old_forest",
                "location": "old_forest",
                "text": "沈河川没有犹豫，按照地图上的路线走向那片\"旧林\"。\n\n林子比他想象的更深。树木高大得遮天蔽日，脚下腐叶堆积了不知多少年，踩上去软得像踏在尸体上。\n\n走了约莫一个时辰，他看见一棵老树上刻着一个标记——和地图上一模一样。\n\n标记下方，树根处埋着半截露出地面的铁环。\n\n他弯腰拉动铁环，地面掀开一道暗门。",
                "choices": [
                    {
                        "text": "进入暗门",
                        "next": "enter_secret_room"
                    },
                    {
                        "text": "犹豫",
                        "next": "death_hesitate_forest"
                    }
                ]
            },
            "death_hesitate_forest": {
                "id": "death_hesitate_forest",
                "location": "old_forest",
                "text": "沈河川站在暗门前，犹豫了。\n\n他不知道门后面有什么。\n\n可就在他犹豫的瞬间，头顶的树木开始摇晃——\n\n无数树枝从上方垂下，缠住了他的脖颈。\n\n“你犹豫了，所以你死了。”\n\n树枝收紧，将他吊了起来。\n\n【死亡】你在暗门前犹豫太久，被树枝缠住。",
                "isEnd": true,
                "endType": "death",
                "endMessage": "死亡结局：在暗门前犹豫太久，被古树的树枝缠住。"
            },
            "enter_secret_room": {
                "id": "enter_secret_room",
                "location": "old_forest",
                "text": "暗门下方是一间极小的石室，里面放着一口腐朽的小棺材。棺材里没有尸骨，只有一卷用油布包裹的纸。\n\n沈河川打开油布，里面是一张泛黄的纸条——\n\n\"替棺第三块板，藏于北边老木坊地窖。取板者需自备三寸长钉。\"\n\n他记住了这句话，把油布重新包好，放回原处。",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 55
                    },
                    {
                        "type": "addVar",
                        "name": "board_count_sent",
                        "value": 0
                    }
                ],
                "choices": [
                    {
                        "text": "回家准备长钉",
                        "next": "return_home_copper"
                    },
                    {
                        "text": "继续在旧林搜寻",
                        "next": "search_old_forest_more"
                    }
                ]
            },
            "search_old_forest_more": {
                "id": "search_old_forest_more",
                "location": "old_forest",
                "text": "沈河川没有急着离开，而是继续在旧林深处搜索。\n\n他走了不到半里，发现了一座被藤蔓完全覆盖的旧坟。坟前没有碑，但坟头压着一块青石板，石板下面压着三枚旧铜钱。\n\n他拿起铜钱，发现其中一枚背面刻着一个字——\"替\"。",
                "actions": [
                    {
                        "type": "addItem",
                        "itemId": "old_coin"
                    },
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 60
                    }
                ],
                "choices": [
                    {
                        "text": "下山回家",
                        "next": "return_home_copper"
                    }
                ]
            },
            "take_box": {
                "id": "take_box",
                "location": "back_hill",
                "text": "沈河川把铁盒整个拎起来，沉甸甸的。他不敢在山上打开，怕一打开就放出了什么东西。\n\n他抱着盒子快步下山。\n\n回到家后，他才打开盒子——里面是一张旧地图、几块铜片碎片、还有一枚断成两半的黑玉戒。\n\n那枚戒指，和父亲手上戴的一模一样。",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 45
                    }
                ],
                "choices": [
                    {
                        "text": "拿着戒指去问父亲",
                        "next": "confront_ring"
                    },
                    {
                        "text": "把铁盒藏起来，暂时不说",
                        "next": "death_hide_box"
                    }
                ]
            },
            "death_hide_box": {
                "id": "death_hide_box",
                "location": "shen_home",
                "text": "沈河川把铁盒藏在自己的床底。\n\n他没有告诉任何人。\n\n但每天晚上，他都能听见铁盒里传来细微的声响——像是什么东西在盒子里翻动纸页。\n\n他不敢打开。\n\n直到一个月后，他终于忍不住，在半夜打开盒子——\n\n里面的地图多了一条路线。\n\n那条路线原本是空白的，现在却画上了一道新的红线，从沈家后山延伸出去，一直画到一座标注为\"旧庙\"的地方。\n\n而旧庙旁边，用极细的笔迹写着四个字：\n\n替棺在此。\n\n他还没来得及反应，铁盒突然发热——\n\n一股黑烟从盒子里涌出，吞没了他。\n\n“你不该藏着它。”\n\n【死亡】你把铁盒藏了太久，里面的东西苏醒了。",
                "isEnd": true,
                "endType": "death",
                "endMessage": "死亡结局：把铁盒藏了太久，被里面的黑烟吞没。"
            },
            "return_home_copper": {
                "id": "return_home_copper",
                "location": "shen_home",
                "text": "沈河川带着铜片和地图回到了沈家。\n\n他没有立刻去找父亲，而是先把东西藏好。\n\n第二天一早，他走进堂屋，看见沈长河正坐在棺账前，脸色比昨天更差。\n\n“爸。”\n\n沈长河抬头看他，眼神里有一丝惊讶。“你昨天去哪里了？”\n\n“后山。”",
                "choices": [
                    {
                        "text": "把铜片给父亲看",
                        "next": "show_copper_to_father"
                    },
                    {
                        "text": "问父亲关于替棺的事",
                        "next": "ask_about_replacement"
                    }
                ]
            },
            "show_copper_to_father": {
                "id": "show_copper_to_father",
                "location": "shen_home",
                "text": "沈河川从口袋里掏出铜片，放在父亲面前。\n\n沈长河的手猛地一抖。“你在哪里找到的？”\n\n“后山。”\n\n沈长河拿起铜片，翻来覆去地看。“它有没有跟你说话？”\n\n“说了。它说……你的名字已经在棺账上了。”\n\n沈长河沉默了很久。然后他说：“既然你已经知道了，那我告诉你——我需要你的帮助。”",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "trust_father",
                        "value": 20
                    },
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 50
                    }
                ],
                "choices": [
                    {
                        "text": "\"我帮你。\"",
                        "next": "help_father"
                    }
                ]
            },
            "ask_about_replacement": {
                "id": "ask_about_replacement",
                "location": "shen_home",
                "text": "\"爸，什么是替棺？\"\n\n沈长河放下棺账，看着他。“替棺就是——用另一口棺来替沈家还账。但替棺需要七块板，每一块都要从不同的地方取来。”\n\n“七块板？”\n\n“对。第一块在南方废弃义庄，第二块在北边老木坊，剩下的散布在各处。”",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 55
                    }
                ],
                "choices": [
                    {
                        "text": "\"我去找。\"",
                        "next": "help_father"
                    }
                ]
            },
            "help_father": {
                "id": "help_father",
                "location": "shen_home",
                "text": "\"我帮你。\"沈河川说。\n\n沈长河看着他，眼眶微红。“河川，你知道这意味着什么吗？”\n\n“意味着我可能会死。但如果我不去，沈舟就会死。”\n\n沈长河沉默了很久。然后他从怀里掏出那枚黑玉戒，放在桌上。“拿着。它能挡一次点名。”\n\n沈河川拿起戒指，握在掌心。冰凉的触感传来，像父亲的手。",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "trust_father",
                        "value": 30
                    },
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 60
                    }
                ],
                "choices": [
                    {
                        "text": "出发去找第一块板",
                        "next": "go_yizhuang"
                    }
                ]
            },
            "confront_ring": {
                "id": "confront_ring",
                "location": "shen_home",
                "text": "沈河川拿着断成两半的黑玉戒走到堂屋，放在父亲面前。\n\n“这是什么？”\n\n沈长河看到那两半戒指，脸色骤变。“你在哪里找到的？”\n\n“后山深处。一个铁盒里。”\n\n沈长河沉默了很久。然后他说：“那是你曾祖父的东西。”\n\n“曾祖父也进过南岭？”\n\n“进过。他没能回来。但他托人把这枚戒指带了出来——说如果沈家后代有人想进去，这枚戒指能挡一次。”",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "trust_father",
                        "value": 20
                    },
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 50
                    }
                ],
                "choices": [
                    {
                        "text": "\"那曾祖父说的'点名'是什么？\"",
                        "next": "what_is_naming"
                    }
                ]
            },
            "what_is_naming": {
                "id": "what_is_naming",
                "location": "shen_home",
                "text": "\"点名就是——那口棺把你的名字从活人账上划掉，写到它的账上。一旦写上去，你就是它的。\"\n\n沈河川咬牙。\"那怎么才能不被点名？\"\n\n“找替身。让另一个名字替你上账。”\n\n“替身去哪里找？\"\n\n沈长河看着他，目光里有犹豫，也有决绝。\"南方，废弃义庄，有一口无名棺。你若能用它做成替身，就能拖一次。\"",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 60
                    }
                ],
                "choices": [
                    {
                        "text": "\"我去找那口棺。\"",
                        "next": "go_yizhuang"
                    }
                ]
            },
            "go_yizhuang": {
                "id": "go_yizhuang",
                "location": "abandoned_yizhuang",
                "text": "沈河川按照指引，找到了南方那座废弃义庄。\n\n义庄破败不堪，屋顶漏了好几处。里面停着七口棺材——六口有主，一口无名。\n\n那口无名棺放在墙角，蒙了厚厚的灰。\n\n他走近时，棺材里忽然传出一声轻响——咚。\n\n他握紧旧刀，但那声音没有再响。\n\n他伸手去推棺盖——棺盖像是被什么东西压住，纹丝不动。",
                "qte": {
                    "type": "hold",
                    "title": "推开棺盖",
                    "description": "【极限挑战】棺盖沉重如铁！必须按住4秒才能推开！松手即失败！棺盖会重新合上并夹住你的手！",
                    "buttonText": "用力推开",
                    "holdDuration": 4000,
                    "timeLimit": 6000,
                    "success": "yizhuang_open_success",
                    "fail": "death_yizhuang_open_fail"
                }
            },
            "death_yizhuang_open_fail": {
                "id": "death_yizhuang_open_fail",
                "location": "abandoned_yizhuang",
                "text": "棺盖太重了。沈河川松手的瞬间，棺盖猛地合上，发出一声震耳欲聋的巨响——\n\n吱呀——\n\n整座义庄开始摇晃。墙角的灰簌簌落下。\n\n他听见身后传来脚步声——不是他的。\n\n他转身，看见那六口有主的棺材正在微微震动。\n\n棺盖开始打开——\n\n里面伸出无数苍白的手，抓住了他的身体。\n\n“你不该松开。”\n\n他被拖入棺材群中。\n\n【死亡】你松手了，被义庄里的棺材抓住了。",
                "isEnd": true,
                "endType": "death",
                "endMessage": "死亡结局：QTE失败，被义庄里的棺材抓住。"
            },
            "yizhuang_open_success": {
                "id": "yizhuang_open_success",
                "location": "abandoned_yizhuang",
                "text": "沈河川拼尽全力，终于推开了棺盖——\n\n里面是空的。\n\n但棺底嵌着一块木板，背面刻着闭着的眼睛。\n\n他取出了第一块板。\n\n至此，他已经有了一块。还差六块。",
                "actions": [
                    {
                        "type": "setVar",
                        "name": "has_visited_yizhuang",
                        "value": true
                    },
                    {
                        "type": "addVar",
                        "name": "board_count_sent",
                        "value": 1
                    },
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 60
                    },
                    {
                        "type": "addVar",
                        "name": "qte_skill",
                        "value": 10
                    }
                ],
                "choices": [
                    {
                        "text": "继续去寻找其他棺板",
                        "next": "collect_boards"
                    },
                    {
                        "text": "先把这块送回沈家",
                        "next": "return_home_boards"
                    }
                ]
            },
            "collect_boards": {
                "id": "collect_boards",
                "location": "old_workshop",
                "text": "沈河川决定趁热打铁，继续收集剩余的棺板。\n\n他先后去了北边老木坊、西边旧墓群、东边古井，以及沈家后山深处。每一处都找到了一块刻着闭眼图案的木板。\n\n去老木坊时，秦老看了他一眼，什么也没问，只是指了指地窖的方向。那块板放在地窖最深处的角落，上面压着一口旧缸。\n\n去旧墓群时，他在一座无主坟前挖了半夜，才从棺材底下抽出那块板。坟头上不知何时落了一只乌鸦，一直盯着他看。\n\n去东边古井时，他把绳子系在腰上，下到井底，在淤泥中摸出了第五块板。井水冰冷刺骨，像一只手攥住了他的脚踝。\n\n最后一块在沈家后山深处——他沿着旧路走到极深处，在一棵被雷劈过的老树下找到了第六块。\n\n至此，六块板全部到手。加上义庄第一块，总共七块。",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "board_count_sent",
                        "value": 7
                    },
                    {
                        "type": "addVar",
                        "name": "knowledge_about_guandao",
                        "value": 75
                    }
                ],
                "choices": [
                    {
                        "text": "把所有板送回沈家",
                        "next": "return_home_boards"
                    }
                ]
            },
            "return_home_boards": {
                "id": "return_home_boards",
                "location": "shen_home_later",
                "text": "沈河川把所有棺板送回沈家。\n\n沈长河看着那七块板，脸色复杂。“七块板齐了。现在要合棺。”\n\n“怎么合？”\n\n“七块板要按顺序排列，每一块之间要用三寸长钉固定。但合棺的人必须是沈家的人——而且，合棺的瞬间，替棺会认人。”\n\n“认什么人？”\n\n“认它要替的人。”\n\n沈河川握紧拳头。“我来合棺。”",
                "choices": [
                    {
                        "text": "开始合棺",
                        "next": "assemble_coffin"
                    }
                ]
            },
            "assemble_coffin": {
                "id": "assemble_coffin",
                "location": "shen_home_later",
                "text": "沈河川按照父亲的指示，开始组装替棺。\n\n七块板要按顺序排列——第一块在最上面，第七块在最下面。每一块之间要用长钉固定。\n\n他拿起第一块板，放在地上。然后是第二块、第三块……\n\n当他拿起第七块板时，那块板突然发烫——\n\n背面那只闭着的眼睛，似乎睁开了一丝缝隙。\n\n他必须快速完成合棺！否则替棺会提前认人！",
                "qte": {
                    "type": "click",
                    "title": "组装替棺",
                    "description": "【极限挑战】必须在3秒内点击25次完成合棺！慢了替棺会提前认人！",
                    "buttonText": "快速组装",
                    "requiredClicks": 25,
                    "timeLimit": 3000,
                    "success": "assemble_success",
                    "fail": "death_assemble_fail"
                }
            },
            "death_assemble_fail": {
                "id": "death_assemble_fail",
                "location": "shen_home_later",
                "text": "沈河川组装得太慢了——\n\n第七块板背面的眼睛完全睁开了！\n\n一道红光从眼睛里射出，击中了他的胸口。\n\n“你太慢了。我要认的是你。”\n\n替棺的板开始移动，将他包围。\n\n他被封入了替棺中。\n\n【死亡】你组装太慢，被替棺认作了替身。",
                "isEnd": true,
                "endType": "death",
                "endMessage": "死亡结局：QTE失败，被替棺认作了替身。"
            },
            "assemble_success": {
                "id": "assemble_success",
                "location": "shen_home_later",
                "text": "沈河川咬紧牙关，快速完成了合棺！\n\n最后一根长钉敲下时，七块板发出一声低沉的共鸣。\n\n替棺立了起来，稳稳地站在堂屋中央。\n\n沈长河走过来，把手按在棺盖上。“它认了。认了我的名字。”\n\n沈河川松了一口气。“这样就没事了？”\n\n沈长河摇头。“只是暂时的。它会学我的一切，包括我的名字。等它学得差不多了，就会替换我。”",
                "actions": [
                    {
                        "type": "addVar",
                        "name": "qte_skill",
                        "value": 10
                    },
                    {
                        "type": "setVar",
                        "name": "coffin_awake",
                        "value": 1
                    }
                ],
                "choices": [
                    {
                        "text": "寻找毁掉替棺的方法",
                        "next": "start"
                    }
                ]
            }
        },
        "id": "hechuan_old_records_hard"
    }
];
