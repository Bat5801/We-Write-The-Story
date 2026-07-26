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
            { "id": "classroom", "name": "高三(2)班教室", "description": "你所在的班级" },
            { "id": "teacher_office", "name": "教师办公室", "description": "班主任的办公室" },
            { "id": "library", "name": "图书馆", "description": "学校的图书馆" },
            { "id": "gym", "name": "体育馆", "description": "学校的体育馆" },
            { "id": "basement", "name": "地下室", "description": "废弃的地下室，很少有人去" }
        ],
        "startingLocation": "classroom"
    },
    "nodes": [
        {
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
        {
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
        {
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
        {
            "id": "press_teacher",
            "location": "teacher_office",
            "text": "\"老师，我知道一些事情，也许能帮助找到她。\"你说道。\n\n班主任看了你一眼，犹豫了一下：\"好吧，跟我来。\"\n\n她带你来到一个角落，低声说：\"那个失踪的学生叫林晓月，是个品学兼优的好学生。昨晚她留下来整理班级资料，之后就不见了。\"\n\n\"还有一件事，\"她的声音更低了，\"三年前，也有一个学生在这里失踪，至今没有找到...\"\n\n她递给你一张照片：\"这是林晓月留下的，我们在她桌子上发现的。\"",
            "actions": [
                { "type": "addItem", "itemId": "photo_moon" }
            ],
            "choices": [
                {
                    "text": "查看照片",
                    "next": "check_photo"
                }
            ]
        },
        {
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
        {
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
        {
            "id": "search_desk",
            "location": "classroom",
            "text": "你趁没人注意，拉开了她的抽屉。\n\n里面有一张旧报纸剪报，标题是：\"三年前女学生失踪案仍未破获\"。\n\n旁边还有一张纸条，上面画着一个简易的地图，指向学校后面的地下室。",
            "actions": [
                { "type": "addItem", "itemId": "news_clipping" },
                { "type": "addItem", "itemId": "basement_map" }
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
        {
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
        {
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
        {
            "id": "search_more",
            "location": "library",
            "text": "你继续翻找，发现了一本学校的旧日志，里面记录着：\n\n\"1998年，学校扩建时发现了一个地下空间，里面有一些奇怪的符号和祭品。校方决定将其封闭...\"\n\n\"2005年，有学生报告在地下室附近听到奇怪的声音...\"\n\n\"2021年，张雪失踪前曾多次前往地下室...\"\n\n看来，这个地下室是一切的关键。",
            "actions": [
                { "type": "addItem", "itemId": "school_log" }
            ],
            "choices": [
                {
                    "text": "去地下室",
                    "next": "go_basement"
                }
            ]
        },
        {
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
        {
            "id": "check_bag",
            "location": "gym",
            "text": "你打开书包，里面有一本日记和一部手机。\n\n日记里写着：\n\"今天我看到了那个女孩...她穿着白色的校服...她在地下室门口...\"\n\"我要去看看，也许能找到三年前的真相...\"\n\"如果我出事了，告诉大家真相...\"\n\n手机上有一条未发送的短信：\"地下室里有...\"\n\n短信没有写完。",
            "actions": [
                { "type": "addItem", "itemId": "diary" },
                { "type": "addItem", "itemId": "phone_moon" }
            ],
            "choices": [
                {
                    "text": "去地下室",
                    "next": "go_basement"
                }
            ]
        },
        {
            "id": "give_bag",
            "location": "teacher_office",
            "text": "你把书包交给班主任，她的脸色变得更加凝重。\n\n\"这是晓月的书包...看来她确实来过体育馆。\"\n\n她叹了口气：\"也许你是对的，我们需要找到那个地下室。\"\n\n她给了你一把钥匙：\"这是地下室的备用钥匙，希望能找到她。\"",
            "actions": [
                { "type": "addItem", "itemId": "basement_key" }
            ],
            "choices": [
                {
                    "text": "去地下室",
                    "next": "go_basement"
                }
            ]
        },
        {
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
        {
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
        {
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
        {
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
        {
            "id": "call_for_help",
            "location": "basement",
            "text": "你大声呼救，但只有自己的回声在空旷的地下室里回荡。\n\n突然，你听到一个声音回应了你——不是人声，而是一种低沉的、像是从喉咙深处发出的声音。\n\n那个声音越来越近...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "你的呼救引来了不该来的东西...",
            "choices": []
        },
        {
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
        {
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
        {
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
        {
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
        {
            "id": "check_files",
            "location": "basement",
            "text": "你翻看桌子上的文件，发现这是一份实验记录：\n\n\"实验对象：张雪，17岁\"\n\"实验目的：通过古老仪式将灵魂封印在肉体中，实现永生\"\n\"实验结果：失败。灵魂被困在学校中，无法安息...\"\n\n\"新实验对象：林晓月，17岁\"\n\"实验目的：用新的祭品安抚张雪的灵魂\"\n\n原来，这一切都是一个疯狂的实验！",
            "actions": [
                { "type": "addItem", "itemId": "experiment_log" }
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
        {
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
        {
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
        {
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
        {
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
        {
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
        {
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
        {
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
        {
            "id": "rescue_moon",
            "location": "basement",
            "text": "你冲进去，试图解开绑在林晓月身上的绳子。\n\n那个穿白大褂的人转过身来，看到了你。\n\n\"你不该来这里...\"他说着，朝你走来。\n\n你感到一阵寒意，双腿不听使唤地发抖。",
            "isEnd": true,
            "endType": "death",
            "endMessage": "你太冲动了...",
            "choices": []
        },
        {
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
        {
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
        {
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
        {
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
        {
            "id": "leave_basement",
            "location": "basement",
            "text": "你转身离开地下室，决定先报警。\n\n但当你走到门口时，门已经关上了。\n\n身后传来一阵阴风，你慢慢转过身...\n\n张雪的鬼魂站在你面前，眼神空洞。\n\n\"你知道了太多...\"\n\n你感到一阵寒意，然后失去了意识...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "你无法逃离真相...",
            "choices": []
        },
        {
            "id": "leave_basement_call",
            "location": "basement",
            "text": "你转身离开地下室，拿出手机准备报警。\n\n但手机没有信号，这里太深了。\n\n你只能先离开这里，到地面上去。\n\n当你走到门口时，门突然关上了。\n\n身后传来一阵阴冷的笑声...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "你逃不掉的...",
            "choices": []
        },
        {
            "id": "escape_basement",
            "location": "basement",
            "text": "你和林晓月终于逃出了地下室，回到了地面上。\n\n警察已经赶到了，他们封锁了地下室入口。\n\n林晓月被送往医院，而你作为目击者接受了调查。\n\n几天后，你从新闻上看到，那个邪教组织被一网打尽，张雪的遗体也被找到了。\n\n但你知道，这一切还没有结束...\n\n校园惊魂系列第一章完。",
            "isEnd": true,
            "endType": "victory",
            "endMessage": "你成功救出了林晓月，但黑暗中似乎还有更多秘密等待揭开...",
            "choices": []
        }
    ]
}