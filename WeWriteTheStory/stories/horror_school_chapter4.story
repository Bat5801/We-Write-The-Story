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
            { "id": "tomb_entrance", "name": "墓穴入口", "description": "通往地下墓穴的入口" },
            { "id": "tomb_hall", "name": "墓穴大厅", "description": "墓穴的主大厅" },
            { "id": "sacrifice_chamber", "name": "献祭室", "description": "进行献祭仪式的房间" },
            { "id": "demon_room", "name": "恶魔之室", "description": "封印恶魔的房间" },
            { "id": "exit", "name": "出口", "description": "逃离墓穴的出口" }
        ],
        "startingLocation": "tomb_entrance"
    },
    "nodes": [
        {
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
        {
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
        {
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
        {
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
        {
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
        {
            "id": "check_rooms",
            "location": "tomb_hall",
            "text": "你查看了旁边的房间，发现里面都是棺材。\n\n其中一个棺材是开着的，里面躺着一具骸骨，旁边放着一把剑。\n\n剑身上刻着一些符文，看起来像是用来对付恶魔的武器。\n\n你拿起剑，感觉一阵力量涌入体内。",
            "actions": [
                { "type": "addItem", "itemId": "holy_sword" }
            ],
            "choices": [
                {
                    "text": "继续深入",
                    "next": "go_deeper"
                }
            ]
        },
        {
            "id": "leave_tomb",
            "location": "tomb_entrance",
            "text": "你转身准备离开，但墓穴的入口已经消失了。\n\n身后传来一阵低沉的声音：\n\n\"既然来了，就不要走了...\"\n\n你感到一阵寒意，转身看去...\n\n一个巨大的阴影笼罩着你...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "你无法逃离命运...",
            "choices": []
        },
        {
            "id": "rescue_girl",
            "location": "tomb_hall",
            "text": "你冲进去，试图解开绑在女孩身上的绳子。\n\n但那些黑袍人转过身来，看到了你。\n\n\"又是你...\"\n\n他们朝你冲过来，你拔出剑（如果你有的话），和他们搏斗。",
            "choices": [
                {
                    "text": "战斗",
                    "next": "fight_cult",
                    "condition": { "hasItem": "holy_sword" }
                },
                {
                    "text": "逃跑",
                    "next": "run_away",
                    "condition": { "notHasItem": "holy_sword" }
                }
            ]
        },
        {
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
        {
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
        {
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
        {
            "id": "run_away",
            "location": "tomb_hall",
            "text": "你转身就跑，但那些黑袍人追了上来。\n\n你跑到一个死胡同，无处可逃。\n\n他们包围了你，慢慢靠近...\n\n你感到一阵绝望...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "你被包围了...",
            "choices": []
        },
        {
            "id": "interrupt_ritual",
            "location": "tomb_hall",
            "text": "你冲进去，大喊：\"住手！\"\n\n那些黑袍人转过身来，看到了你。\n\n\"你？！\"\n\n就在这时，祭坛裂开了，那个巨大的身影完全浮现出来。\n\n是一个恶魔！\n\n它发出一声咆哮，震耳欲聋。",
            "choices": [
                {
                    "text": "战斗",
                    "next": "fight_demon",
                    "condition": { "hasItem": "holy_sword" }
                },
                {
                    "text": "逃跑",
                    "next": "run_from_demon",
                    "condition": { "notHasItem": "holy_sword" }
                }
            ]
        },
        {
            "id": "watch_demon",
            "location": "tomb_hall",
            "text": "你继续观察，那个巨大的身影完全浮现出来。\n\n是一个恶魔，长着巨大的翅膀和锋利的爪子。\n\n它发出一声咆哮，那些黑袍人纷纷跪下：\n\n\"伟大的主人...\"\n\n恶魔看了他们一眼，然后伸出手，将他们一个个捏碎。\n\n它的目光转向了你...",
            "choices": [
                {
                    "text": "战斗",
                    "next": "fight_demon",
                    "condition": { "hasItem": "holy_sword" }
                },
                {
                    "text": "逃跑",
                    "next": "run_from_demon",
                    "condition": { "notHasItem": "holy_sword" }
                }
            ]
        },
        {
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
                    "condition": { "hasItem": "holy_sword" }
                }
            ]
        },
        {
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
        {
            "id": "escape_with_girl",
            "location": "tomb_hall",
            "text": "你扶着女孩，朝出口跑去。\n\n但出口已经被恶魔堵住了。\n\n它站在出口前，看着你。\n\n\"你以为你能逃掉吗？\"\n\n它伸出手，一道黑色的能量朝你袭来。",
            "choices": [
                {
                    "text": "用剑抵挡",
                    "next": "block_attack",
                    "condition": { "hasItem": "holy_sword" }
                },
                {
                    "text": "闪避",
                    "next": "dodge_attack",
                    "condition": { "notHasItem": "holy_sword" }
                }
            ]
        },
        {
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
        {
            "id": "run_from_demon",
            "location": "tomb_hall",
            "text": "你转身就跑，但恶魔的速度太快了。\n\n它伸出手，抓住了你的肩膀。\n\n你感到一阵剧痛，然后被扔到了墙上。\n\n你摔倒在地，动弹不得。\n\n恶魔慢慢靠近...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "你太弱小了...",
            "choices": []
        },
        {
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
        {
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
        {
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
        {
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
        {
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
        {
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
        {
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
        {
            "id": "ending",
            "location": "exit",
            "text": "几天后，学校恢复了平静。\n\n那个邪教组织被彻底摧毁，恶魔也被封印了。\n\n张雪的灵魂终于可以安息了，她出现在你的梦中，微笑着说：\n\n\"谢谢你...一切都结束了...\"\n\n你从梦中醒来，阳光透过窗户照进来。\n\n你走到窗边，看着学校的钟楼。\n\n一切都结束了，但那些记忆永远不会消失...\n\n校园惊魂系列终章完。",
            "isEnd": true,
            "endType": "victory",
            "endMessage": "一切都结束了，校园终于恢复了平静。但那些恐怖的记忆，将永远留在你的心中...",
            "choices": []
        }
    ]
}