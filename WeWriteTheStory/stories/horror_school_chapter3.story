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
            { "id": "archive_room", "name": "档案室", "description": "存放学校历史档案的房间" },
            { "id": "principal_office", "name": "校长办公室", "description": "校长的办公室" },
            { "id": "meeting_room", "name": "会议室", "description": "学校的会议室" },
            { "id": "secret_room", "name": "密室", "description": "隐藏在档案室后面的秘密房间" },
            { "id": "hallway_admin", "name": "行政楼走廊", "description": "行政楼的走廊" }
        ],
        "startingLocation": "hallway_admin"
    },
    "nodes": [
        {
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
        {
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
        {
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
        {
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
        {
            "id": "read_archive",
            "location": "archive_room",
            "text": "你继续查看档案，发现了更多关于那个地下墓穴的信息：\n\n\"1965年，有学生报告在地下室听到奇怪的声音...\"\n\n\"1978年，一名教师在地下室失踪...\"\n\n\"1990年，学校扩建时，工人发现了墓穴的入口...但被校方封锁了...\"\n\n\"2005年，邪教组织开始在学校活动...\"\n\n\"2021年，张雪失踪...\"\n\n原来，这一切都和那个地下墓穴有关！",
            "actions": [
                { "type": "addItem", "itemId": "archive_file" }
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
        {
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
        {
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
        {
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
        {
            "id": "run_away",
            "location": "hallway_admin",
            "text": "你转身就跑，但身后传来一阵阴冷的笑声。\n\n\"你跑不掉的...\"\n\n你感到一只手抓住了你的肩膀，回头一看...\n\n是校长，他的脸已经变得扭曲。\n\n\"加入我们吧...\"\n\n你感到一阵眩晕，然后失去了意识...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "你被黑暗吞噬了...",
            "choices": []
        },
        {
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
        {
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
        {
            "id": "search_more",
            "location": "archive_room",
            "text": "你继续查找，发现了一份更详细的记录：\n\n\"地下墓穴的位置：行政楼地下室，档案室后面\"\n\n\"墓穴里有一个祭坛，上面刻着古老的符文\"\n\n\"符文的含义：召唤远古的恶魔，获得永生\"\n\n\"1950年，校方发现墓穴后，试图摧毁它，但失败了\"\n\n\"他们只能将其封印，并安排人看守...\"\n\n\"看守者：历任校长...\"\n\n原来，校长也是邪教组织的一员！",
            "actions": [
                { "type": "addItem", "itemId": "tomb_record" }
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
        {
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
        {
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
        {
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
        {
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
        {
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
        {
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
        {
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
        {
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
        {
            "id": "rescue_moon",
            "location": "secret_room",
            "text": "你冲进去，试图解开绑在林晓月身上的绳子。\n\n但校长转过身来，看到了你。\n\n\"又是你...\"\n\n他举起刀，朝你冲过来。\n\n你感到一阵寒意，动弹不得...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "你太冲动了...",
            "choices": []
        },
        {
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
        {
            "id": "leave_call",
            "location": "secret_room",
            "text": "你转身离开，准备去报警。\n\n但当你走到楼梯口时，门已经关上了。\n\n身后传来一阵阴冷的笑声：\n\n\"你以为你能逃掉吗？\"\n\n你感到一只手抓住了你的肩膀...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "你无处可逃...",
            "choices": []
        },
        {
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
        {
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
        {
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
        {
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
        {
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
        {
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
        {
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
        {
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
        {
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
        {
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
        {
            "id": "leave_final",
            "location": "hallway_admin",
            "text": "你和林晓月离开了学校，报了警。\n\n警方封锁了学校，展开了调查。\n\n几天后，你从新闻上看到，那个邪教组织被一网打尽，校长和其他成员都被逮捕了。\n\n但你知道，这一切还没有真正结束...\n\n地下墓穴里的东西，也许还没有完全消失...\n\n校园惊魂系列第三章完。",
            "isEnd": true,
            "endType": "victory",
            "endMessage": "邪教组织被摧毁了，但地下墓穴的秘密还未完全揭开...",
            "choices": []
        }
    ]
}