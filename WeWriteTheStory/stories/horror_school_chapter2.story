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
            { "id": "bell_tower", "name": "钟楼", "description": "学校最高的建筑，据说闹鬼" },
            { "id": "clock_room", "name": "钟室", "description": "钟楼顶部，放置大钟的房间" },
            { "id": "tower_stairs", "name": "钟楼楼梯", "description": "通往钟室的螺旋楼梯" },
            { "id": "old_room", "name": "钟楼密室", "description": "隐藏在钟楼深处的秘密房间" },
            { "id": "courtyard", "name": "学校广场", "description": "钟楼下方的广场" }
        ],
        "startingLocation": "courtyard"
    },
    "nodes": [
        {
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
        {
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
        {
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
        {
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
        {
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
        {
            "id": "run_away",
            "location": "courtyard",
            "text": "你转身就跑，但身后传来一阵阴冷的笑声。\n\n\"你以为你能逃掉吗？\"\n\n你感到一只手抓住了你的肩膀，回头一看...\n\n一片漆黑。\n\n然后，你失去了意识。",
            "isEnd": true,
            "endType": "death",
            "endMessage": "你无法逃离命运...",
            "choices": []
        },
        {
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
        {
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
        {
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
        {
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
        {
            "id": "run_down",
            "location": "tower_stairs",
            "text": "你转身往下跑，但脚下一滑，摔倒了。\n\n你顺着楼梯滚了下去，撞在墙上。\n\n意识渐渐模糊，你最后看到的是一个穿着白色校服的女孩站在你面前...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "你摔得太重了...",
            "choices": []
        },
        {
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
        {
            "id": "charge",
            "location": "bell_tower",
            "text": "你冲向那个女孩，但你的手穿过了她的身体。\n\n她只是一个幽灵！\n\n\"为什么要伤害我...\"她的声音充满悲伤。\n\n你感到一阵愧疚，但已经来不及了。\n\n她伸出手，触碰了你的额头。\n\n你感到一阵剧痛，然后失去了意识...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "你伤害了不该伤害的人...",
            "choices": []
        },
        {
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
        {
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
        {
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
        {
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
        {
            "id": "help_snow",
            "location": "bell_tower",
            "text": "\"我能帮你吗？\"你问道。\n\n张雪的眼中闪过一丝希望：\"如果你能找到他们的秘密，揭露他们的罪行，我的灵魂就能安息...\"\n\n\"钟室里有一个密室，里面有他们的所有证据...\"\n\n她递给你一把钥匙：\"这是密室的钥匙...\"\n\n\"但你要小心，他们就在附近...\"",
            "actions": [
                { "type": "addItem", "itemId": "secret_key" }
            ],
            "choices": [
                {
                    "text": "去钟室",
                    "next": "go_up"
                }
            ]
        },
        {
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
        {
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
        {
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
        {
            "id": "read_diary",
            "location": "old_room",
            "text": "日记是邪教组织头目的，上面写着：\n\n\"1998年，我们发现了那个古老的仪式...\"\n\"2005年，第一次实验失败了...\"\n\"2021年，张雪成为了祭品，但仪式失败了...她的灵魂太强大了...\"\n\"2024年，我们找到了新的方法...用钟楼的钟声来增强仪式的力量...\"\n\"午夜十二点，钟声响起时，仪式的力量最强...\"\n\"我们需要一个新的祭品，就在今晚...\"\n\n原来，他们计划在今晚进行仪式！",
            "actions": [
                { "type": "addItem", "itemId": "cult_diary" }
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
        {
            "id": "check_other_files",
            "location": "old_room",
            "text": "你继续查看其他文件，发现了一份仪式计划：\n\n\"仪式时间：午夜十二点\"\n\"仪式地点：钟楼\"\n\"祭品：新来的学生\"\n\"仪式目的：用钟声的力量封印张雪的灵魂，同时获得永生\"\n\n还有一张地图，标记着张雪遗体的位置——在地下室的最深处。",
            "actions": [
                { "type": "addItem", "itemId": "ritual_plan" },
                { "type": "addItem", "itemId": "body_map" }
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
        {
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
        {
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
        {
            "id": "push_him",
            "location": "clock_room",
            "text": "你冲过去，试图推倒那个头目。\n\n但他转过身来，眼中闪烁着邪恶的光芒。\n\n\"你来得正好...\"他说道，\"我正需要一个祭品...\"\n\n他抓住你，把你拖向大钟。\n\n钟声继续响起，\"咚...咚...咚...\"\n\n你感到一阵眩晕...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "你成为了祭品...",
            "choices": []
        },
        {
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
        {
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
        {
            "id": "pray_for_snow",
            "location": "old_room",
            "text": "你跪在祭坛前，为张雪祈祷。\n\n\"安息吧...\"\n\n突然，一道光芒从骸骨中升起，张雪的灵魂出现了。\n\n\"谢谢你...\"\n\n她的声音变得温暖：\"你找到了我的遗体，我的灵魂终于可以安息了...\"\n\n\"但邪教组织还没有被消灭...他们还会回来的...\"\n\n她递给你一枚护身符：\"拿着这个，它会保护你...\"\n\n然后，她慢慢消失了。",
            "actions": [
                { "type": "addItem", "itemId": "amulet" }
            ],
            "choices": [
                {
                    "text": "离开地下室",
                    "next": "leave_basement_final"
                }
            ]
        },
        {
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
        {
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
        {
            "id": "leave_basement_final",
            "location": "courtyard",
            "text": "你走出地下室，回到了学校广场。\n\n天已经亮了，第一缕阳光洒在你身上。\n\n你回头看了一眼钟楼，它在阳光下显得格外宁静。\n\n张雪的灵魂终于安息了，但你知道，邪教组织还没有被完全消灭。\n\n他们还会回来的...\n\n校园惊魂系列第二章完。",
            "isEnd": true,
            "endType": "victory",
            "endMessage": "张雪的灵魂终于安息了，但黑暗还未完全消散...",
            "choices": []
        }
    ]
}