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
        { "id": "phone", "name": "手机", "icon": "📱", "description": "你的智能手机" }
    ],
    "map": {
        "title": "教学楼",
        "locations": [
            { "id": "classroom", "name": "高三(2)班教室", "description": "你刚才还在自习的地方" },
            { "id": "hallway", "name": "走廊", "description": "昏暗的走廊，墙上的灯忽明忽暗" },
            { "id": "staircase", "name": "楼梯间", "description": "通往楼下的楼梯" },
            { "id": "restroom", "name": "卫生间", "description": "走廊尽头的卫生间" },
            { "id": "entrance", "name": "教学楼入口", "description": "通往校门的出口" }
        ],
        "startingLocation": "classroom"
    },
    "nodes": [
        {
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
        {
            "id": "check_bag",
            "location": "classroom",
            "text": "你检查了一下书包，确认课本和作业都已经收好。\n\n突然，你摸到一个不属于自己的东西——一张旧照片。\n\n照片上是一个穿着校服的女孩，背景似乎是这栋教学楼。照片背面写着一行字：\"帮帮我\"",
            "choices": [
                {
                    "text": "把照片塞进书包，赶紧离开",
                    "next": "hallway_enter",
                    "actions": [
                        { "type": "addItem", "itemId": "photo" }
                    ]
                },
                {
                    "text": "把照片扔掉",
                    "next": "hallway_enter"
                }
            ]
        },
        {
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
        {
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
        {
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
        {
            "id": "restroom_escape",
            "location": "restroom",
            "text": "你用力撞门，门纹丝不动。\n\n身后传来一阵冰冷的气息，你慢慢转过头...\n\n一张苍白的脸正贴着你的脸。\n\n\"你看到了不该看的东西...\"",
            "isEnd": true,
            "endType": "death",
            "endMessage": "好奇心害死猫...",
            "choices": []
        },
        {
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
        {
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
        {
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
                    "condition": { "hasItem": "photo" }
                },
                {
                    "text": "继续躲着",
                    "next": "hide_wait"
                }
            ]
        },
        {
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
        {
            "id": "sneak_away",
            "location": "hallway",
            "text": "你趁她不注意，悄悄溜出教室，来到走廊上。\n\n手里的照片突然变得冰冷，你看了一眼——照片上的女孩正在对你微笑。\n\n\"谢谢你...\"一个声音在你耳边响起。\n\n你感到一阵温暖，恐惧感消退了一些。",
            "actions": [
                { "type": "removeItem", "itemId": "photo" },
                { "type": "addItem", "itemId": "photo_blessing" }
            ],
            "choices": [
                {
                    "text": "继续往出口走",
                    "next": "entrance_go"
                }
            ]
        },
        {
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
        {
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
        {
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
        {
            "id": "go_downstairs",
            "location": "staircase",
            "text": "你深吸一口气，开始下楼。\n\n每一步都发出刺耳的回响，在空旷的楼梯间里回荡。\n\n突然，你踩到了什么东西——一个湿漉漉的、软软的东西。\n\n你低头一看，是一撮黑色的长发...\n\n然后，一只冰冷的手抓住了你的脚踝。",
            "isEnd": true,
            "endType": "death",
            "endMessage": "你没能逃脱她的魔爪...",
            "choices": []
        },
        {
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
        {
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
        {
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
        {
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
        {
            "id": "get_key",
            "location": "entrance",
            "text": "你打开抽屉，找到了大门钥匙。\n\n就在这时，保安室的门\"砰\"地一声关上了。\n\n你握紧钥匙，冲向大门。",
            "actions": [
                { "type": "addItem", "itemId": "door_key" }
            ],
            "choices": [
                {
                    "text": "用钥匙打开大门",
                    "next": "open_door"
                }
            ]
        },
        {
            "id": "face_ghost",
            "location": "entrance",
            "text": "你转过身，看到那个女孩站在你面前。\n\n她的眼睛里流出黑色的液体，嘴角裂开一个诡异的笑容。\n\n\"你想逃？\"她问道，声音冰冷刺骨。\n\n你吓得动弹不得...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "你被恐惧冻结了...",
            "choices": []
        },
        {
            "id": "rush_out",
            "location": "entrance",
            "text": "你拿着钥匙冲出保安室，冲向大门。\n\n身后传来女孩的尖叫声，但你没有回头。\n\n你用钥匙打开大门，冲了出去。\n\n外面的月光洒在你身上，你终于松了一口气。",
            "actions": [
                { "type": "addItem", "itemId": "door_key" }
            ],
            "choices": [
                {
                    "text": "逃离学校",
                    "next": "escape_school"
                }
            ]
        },
        {
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
        {
            "id": "climb_window",
            "location": "entrance",
            "text": "你跑到窗边，试图爬出去。\n\n但窗户太高了，你爬不上去。\n\n身后的脚步声越来越近...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "你无处可逃...",
            "choices": []
        },
        {
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
        {
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
        {
            "id": "escape_school",
            "location": "entrance",
            "text": "你终于逃离了那栋恐怖的教学楼。\n\n回望学校，教学楼在月光下显得格外阴森。\n\n你拿出手机，发现有一条未读消息：\n\n\"谢谢你...终于有人愿意听我说了...\"\n\n你不知道这是谁发的，但你知道，这一切还没有结束。\n\n校园惊魂系列序章完。",
            "isEnd": true,
            "endType": "victory",
            "endMessage": "你成功逃离了教学楼，但故事才刚刚开始...",
            "choices": []
        }
    ]
}