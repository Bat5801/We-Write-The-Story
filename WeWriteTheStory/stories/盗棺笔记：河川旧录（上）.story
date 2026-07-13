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
    { "id": "black_copper_piece", "name": "黑色铜片", "icon": "🔲", "description": "后山发现的铜片，握着能听见死人的声音。表面有暗红纹路。" },
    { "id": "guan_zhang_fragment", "name": "棺账残页", "icon": "📜", "description": "沈长河藏了多年的棺账，最后一页出现了沈舟的名字。" },
    { "id": "black_jade_ring", "name": "黑玉戒", "icon": "💍", "description": "沈长河无名指上的黑玉戒，靠近火光会泛暗红。是锁，不是饰物。" },
    { "id": "old_knife", "name": "旧刀", "icon": "🔪", "description": "沈河川离家时带的刀，刀身布满锈迹，但刀刃依然锋利。" },
    { "id": "coffin_board_1", "name": "第一块棺板", "icon": "🪵", "description": "替棺的第一块板，背面刻着一只闭着的眼睛。" },
    { "id": "coffin_board_2", "name": "第二块棺板", "icon": "🪵", "description": "替棺的第二块板，背面刻着闭着的眼睛。" },
    { "id": "red_blood_pouch", "name": "红布包·鸡血", "icon": "🔴", "description": "厨房梁上挂着的红布袋，里面是封着蜡的瓷瓶，装着暗红色的鸡血。" },
    { "id": "old_coin", "name": "旧铜钱", "icon": "💰", "description": "沈长河给的铜钱，边缘磨得发亮，据说能压一时的棺声。" },
    { "id": "zhen_guang_ling", "name": "镇棺铃", "icon": "🔔", "description": "沈家祖传的铜铃，铃口裂了一道缝。能压三次棺声。" },
    { "id": "gu_old_letter", "name": "顾老的信", "icon": "✉️", "description": "顾老在义庄被烧前留下的信，写着替棺认路后就会认人的警告。" }
  ],
  "map": {
    "title": "南岭棺道·前传",
    "locations": [
      { "id": "shen_home", "name": "沈家堂屋", "description": "沈家老宅的堂屋，棺账和黑玉戒都藏在这里。沈长河每晚都要检查一遍。" },
      { "id": "back_hill", "name": "沈家后山", "description": "一片荒芜的丘陵地，野草比人高。沈河川在这里发现了那枚黑色铜片。" },
      { "id": "outside_village", "name": "山外旅馆", "description": "沈河川离开沈家后住的第一间旅馆。窗外下着雨，棺账自己翻开了。" },
      { "id": "old_workshop", "name": "秦老的木坊", "description": "北方一座老木坊，秦老一辈子只给活人做棺材。他告诉沈河川：名字是被认上去的，不是写上去的。" },
      { "id": "abandoned_yizhuang", "name": "废弃义庄", "description": "一口无名的棺材停在这里二十七年。顾老带沈河川找到了它——第一块替棺。" },
      { "id": "old_temple", "name": "旧庙", "description": "庙里供奉的不是神，是一口没有名字的棺。沈河川在这里听见了沈舟的声音。" },
      { "id": "south_village", "name": "南方旧村", "description": "沈河川查到线索的地方，其他家族也受棺债所困。有人试图替下一代挡灾，结果只是延期。" },
      { "id": "shen_home_later", "name": "沈家（多年后）", "description": "七块棺板一块接一块送进沈家。村口的狗不再叫了，夜里的竹林安静得不像话。" },
      { "id": "old_forest", "name": "旧林深处", "description": "曾祖父地图上标注的旧林，据说穿过这片林子能找到另一块棺板的线索。" }
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
        { "text": "等待沈长河回答", "next": "debt_answer" },
        { "text": "打断父亲，说自己有事要出去", "next": "leave_debt" },
        { "text": "转身去厨房找母亲", "next": "talk_to_mother" }
      ]
    },
    "leave_debt": {
      "id": "leave_debt",
      "location": "shen_home",
      "text": "沈河川没有等父亲回答。他总觉得那些话太沉重，听了心里堵得慌。\n\n他借口有事，走出堂屋。\n\n风穿过院子，老槐树的叶子哗哗作响。他站在树下，听见树后传来一声很轻的叹息——\n\n不是风声。\n\n他转过头，什么都没看见。\n\n但那声叹息，像一个人蹲在树根下面，对着泥土说话。",
      "choices": [
        { "text": "去后山看看", "next": "back_hill_discovery" },
        { "text": "回屋睡觉", "next": "sleep_early" }
      ]
    },
    "sleep_early": {
      "id": "sleep_early",
      "location": "shen_home",
      "text": "沈河川回屋躺下，却一直睡不着。\n\n半夜，他听见堂屋传来很轻的说话声——像是父亲在跟谁说话。\n\n他起身靠近门缝，看见沈长河一个人坐在棺材账前，低声念着什么。\n\n桌上的油灯跳了一下，火光里，沈长河的脸上有一道很长的暗影，像另一张脸叠在他脸上。\n\n沈河川退了回去，一夜没合眼。",
      "choices": [
        { "text": "第二天一早去后山", "next": "back_hill_discovery" },
        { "text": "直接问父亲昨晚在跟谁说话", "next": "confront_father_night" }
      ]
    },
    "confront_father_night": {
      "id": "confront_father_night",
      "location": "shen_home",
      "text": "第二天清晨，沈河川直接在早饭时问：\"爸，昨晚你在跟谁说话？\"\n\n沈长河的筷子顿了一下。\"没有谁。\"\n\n\"我听见了。\"\n\n沈长河放下碗，看着沈河川，目光很深。\"有些话，不能说第二遍。你听见了，就忘掉。\"\n\n沈河川还想追问，但沈长河已经起身走了。\n\n母亲在旁边低声说：\"别问了，你爸有他的道理。\"\n\n沈河川沉默地吃完饭，决定自己去后山看看。",
      "actions": [
        { "type": "setVar", "name": "has_confronted_father", "value": true },
        { "type": "addVar", "name": "fear_level", "value": 10 }
      ],
      "choices": [
        { "text": "去后山", "next": "back_hill_discovery" }
      ]
    },
    "talk_to_mother": {
      "id": "talk_to_mother",
      "location": "shen_home",
      "text": "沈河川走进厨房。母亲正在择菜。\n\n\"妈，沈家以前是不是有什么事？\"\n\n母亲的手停了一下。\"你爸没告诉你？\"\n\n\"他只说欠了一口棺。\"\n\n母亲沉默了很久，然后低声说：\"你爸年轻的时候，跟你大伯进过南岭。回来以后，大伯就失踪了，你爸也变了一个人。\"\n\n\"大伯……沈江？\"\n\n\"嗯。他在南岭留下了一样东西。你爸说，那东西会找上沈家的人。\"\n\n\"什么东西？\"\n\n\"一口棺材。一口还没人躺过的棺材。\"\n\n沈河川心里一沉。",
      "actions": [
        { "type": "setVar", "name": "has_told_mother", "value": true },
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 20 }
      ],
      "choices": [
        { "text": "继续问母亲", "next": "ask_mother_more" },
        { "text": "决定自己去查", "next": "back_hill_discovery" }
      ]
    },
    "ask_mother_more": {
      "id": "ask_mother_more",
      "location": "shen_home",
      "text": "\"那口棺材现在在哪里？\"\n\n母亲摇头。\"没人知道。你爸说它在等一个名字。\"\n\n\"等谁的名字？\"\n\n母亲看了他很久，然后说：\"你爸说，可能是沈家最后一个人的名字。\"\n\n沈河川愣住了。\"最后一个人？\"\n\n母亲没有回答，只是低头继续择菜。\n\n但沈河川注意到，母亲的手指在微微发抖。",
      "actions": [
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 30 },
        { "type": "addVar", "name": "fear_level", "value": 10 }
      ],
      "choices": [
        { "text": "去后山散心", "next": "back_hill_discovery" },
        { "text": "直接去找父亲对质", "next": "confront_father_direct" }
      ]
    },
    "confront_father_direct": {
      "id": "confront_father_direct",
      "location": "shen_home",
      "text": "沈河川走到堂屋，沈长河正在把棺账锁进木匣。\n\n\"爸，最后一个人的名字是谁？\"\n\n沈长河的手停住了。他没有转身。\"你妈告诉你了？\"\n\n\"告诉我一部分。剩下的，我想听你说。\"\n\n沈长河把木匣放回柜里，慢慢转过身。他脸上没有愤怒，只有一种很深的疲惫。\n\n\"河川，有些事知道得越早，越害怕。\"\n\n\"我不怕。\"\n\n沈长河看着他，目光像在看一个还没长大的孩子。\"你当然不怕。因为你还没看到那东西。\"\n\n\"什么东西？\"\n\n沈长河没有回答。他只是说：\"等你有了孩子，你就会明白什么叫真正的怕。\"",
      "actions": [
        { "type": "setVar", "name": "has_confronted_father", "value": true },
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 20 }
      ],
      "choices": [
        { "text": "不再追问，去后山", "next": "back_hill_discovery" },
        { "text": "继续追问，直到父亲开口", "next": "press_father" }
      ]
    },
    "press_father": {
      "id": "press_father",
      "location": "shen_home",
      "text": "\"爸，如果你不告诉我，我会自己去找答案。到时候，可能比你现在告诉我更危险。\"\n\n沈长河看了他很久。最后，他叹了口气。\n\n\"南岭里有一口倒悬的黑棺。那口棺不是装死人的，是装活人的名字。当年我和你大伯进去，是想把那口棺的债断掉。\"\n\n\"断掉了吗？\"\n\n\"没有。我们只带出了一样东西——你大伯的名。\"\n\n\"大伯的名？\"\n\n\"他把自己的名字刻进了棺里，替沈家挡了二十年。如今，他的名字快写满了。\"\n\n沈河川遍体生寒。\"写满了会怎样？\"\n\n\"就需要下一个名字。\"\n\n沈河川想起了沈舟。\n\n他握紧了拳头。",
      "actions": [
        { "type": "setVar", "name": "has_confronted_father", "value": true },
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 40 }
      ],
      "choices": [
        { "text": "去后山冷静一下", "next": "back_hill_discovery" }
      ]
    },
    "debt_answer": {
      "id": "debt_answer",
      "location": "shen_home",
      "text": "沈长河沉默了很久。\n\n\"不是欠谁。是欠一口棺。\"\n\n沈河川觉得荒唐。\"棺材还能找人要债？\"\n\n沈长河看着他，眼神很复杂。\"河川，你记住。这世上最可怕的不是死人，是死人留下的规矩。\"\n\n沈河川还想再问，但沈长河已经转身去摆弄那本旧账了。\n\n那天夜里，沈河川第一次听见堂屋地底传来三声敲击。\n\n咚。咚。咚。\n\n他没有睡。",
      "choices": [
        { "text": "第二天去后山", "next": "back_hill_discovery" },
        { "text": "叫醒父亲问那声音", "next": "ask_sound_night" }
      ]
    },
    "ask_sound_night": {
      "id": "ask_sound_night",
      "location": "shen_home",
      "text": "沈河川披衣起身，走到堂屋。沈长河已经坐在那里了，手里握着那本棺账。\n\n\"爸，那是什么声音？\"\n\n\"底下有东西。\"\n\n\"什么东西？\"\n\n\"一口等着进门的东西。\"\n\n沈河川脊背发凉。\"它什么时候会进来？\"\n\n沈长河抬头看他。\"等你有了孩子。\"\n\n沈河川愣住。\"为什么是我的孩子？\"\n\n\"因为沈家欠的是名字。新生的名字最干净，也最容易写进去。\"\n\n沈河川攥紧拳头。\"那如果我没有孩子呢？\"\n\n沈长河笑了一下，那笑容很苦。\"你会有的。沈家的人，逃不过。\"",
      "actions": [
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 30 },
        { "type": "addVar", "name": "fear_level", "value": 20 }
      ],
      "choices": [
        { "text": "回房，但决定天亮去后山", "next": "back_hill_discovery" },
        { "text": "问父亲那口棺在哪里", "next": "where_is_coffin" }
      ]
    },
    "where_is_coffin": {
      "id": "where_is_coffin",
      "location": "shen_home",
      "text": "\"那口棺在哪里？\"\n\n沈长河沉默了很久。\"在南岭深处。但你不能去。\"\n\n\"为什么？\"\n\n\"因为去了的人，都没有回来过。\"\n\n\"大伯不是回来了吗？\"\n\n\"他回来的只是身体。他的名字还留在那里。\"\n\n沈河川第一次觉得，父亲不是在吓唬他。",
      "actions": [
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 40 }
      ],
      "choices": [
        { "text": "天亮后去后山", "next": "back_hill_discovery" },
        { "text": "偷偷翻找棺账", "next": "steal_ledger" }
      ]
    },
    "steal_ledger": {
      "id": "steal_ledger",
      "location": "shen_home",
      "text": "等沈长河回房后，沈河川悄悄打开木匣，翻出棺账。\n\n他看到了那些名字——沈家祖上的，还有一些陌生的。每个名字后面都有一个日期，有的被划掉了，有的还在。\n\n最后一页是空白的。\n\n但纸面上有一道极浅的压痕，像被笔尖用力划过，又没写下字。\n\n他用手电筒侧着照了一下——\n\n看见两个字：\n\n沈舟。\n\n他猛地合上棺账。",
      "actions": [
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 50 },
        { "type": "addVar", "name": "fear_level", "value": 30 }
      ],
      "choices": [
        { "text": "把棺账放回原处，天亮后去后山", "next": "back_hill_discovery" },
        { "text": "带着棺账离开沈家", "next": "leave_with_ledger" }
      ]
    },
    "leave_with_ledger": {
      "id": "leave_with_ledger",
      "location": "outside_village",
      "text": "沈河川把棺账塞进怀里，连夜离开了沈家。\n\n他没有告诉任何人。\n\n他以为带着棺账就能找到答案——\n\n但他走到山脚时，棺账忽然变得很烫。\n\n他低头翻开，看见最后一页的\"沈舟\"两个字正在渗血。\n\n那血不是他的。\n\n是纸自己流出来的。\n\n他犹豫了一下，还是继续往前走了。\n\n他不知道，这个决定会让事情变得完全不同。",
      "actions": [
        { "type": "setVar", "name": "has_confronted_father", "value": true },
        { "type": "addVar", "name": "fear_level", "value": 40 }
      ],
      "choices": [
        { "text": "继续往北走", "next": "north_road" },
        { "text": "停下，把棺账埋掉", "next": "bury_ledger" }
      ]
    },
    "bury_ledger": {
      "id": "bury_ledger",
      "location": "outside_village",
      "text": "沈河川停下脚步，在路边挖了一个坑，把棺账埋了进去。\n\n他告诉自己，这样就能断了沈家的债。\n\n可埋下去的瞬间，他听见泥土下面传来一声咳嗽。\n\n不是他的。\n\n那声音苍老，沙哑——是沈长河。\n\n\"你埋不掉的，河川。\"\n\n沈河川猛地用土填实。声音消失了。\n\n但他知道，那东西没有走。",
      "actions": [
        { "type": "addVar", "name": "fear_level", "value": 50 }
      ],
      "choices": [
        { "text": "继续往北走", "next": "north_road" }
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
        { "text": "仔细辨认那个声音", "next": "recognize_voice" },
        { "text": "把铜片扔掉", "next": "drop_copper" },
        { "text": "攥紧铜片，带回家", "next": "keep_copper" },
        { "text": "在周围继续搜寻", "next": "find_more" }
      ]
    },
    "copper_fail": {
      "id": "copper_fail",
      "location": "back_hill",
      "text": "泥土太硬了。沈河川的手指被石头划破，鲜血滴在铜片上——\n\n铜片忽然发出一阵微光，然后沉入了泥土深处。\n\n他愣在原地，看着那个洞慢慢合拢。\n\n身后传来一声叹息。\n\n他没有回头，只是握紧了满是血的手，转身下山。\n\n他知道，有些东西，不是现在能拿的。",
      "actions": [
        { "type": "addVar", "name": "fear_level", "value": 20 },
        { "type": "setVar", "name": "copper_piece_active", "value": false }
      ],
      "choices": [
        { "text": "回家", "next": "return_home_copper" }
      ]
    },
    "drop_copper": {
      "id": "drop_copper",
      "location": "back_hill",
      "text": "沈河川手一抖，铜片掉在地上。\n\n那声音立刻消失了。\n\n他站在原地，后背全是冷汗。\n\n他认得那个声音——是沈长河。\n\n可父亲明明坐在堂屋里。\n\n他犹豫了一下，还是弯腰把铜片捡了起来，塞进口袋。\n\n铜片表面冰凉，像一块从地下挖出的寒铁。",
      "actions": [
        { "type": "setVar", "name": "copper_piece_active", "value": true },
        { "type": "addVar", "name": "fear_level", "value": 10 }
      ],
      "choices": [
        { "text": "下山回家", "next": "return_home_copper" },
        { "text": "继续往后山深处走", "next": "deeper_hill" }
      ]
    },
    "keep_copper": {
      "id": "keep_copper",
      "location": "back_hill",
      "text": "沈河川攥紧铜片，那声音没有消失，反而更清晰了。\n\n\"河川，听我说。\"\n\n他强迫自己冷静下来。\"你是谁？\"\n\n那声音沉默了片刻。\"我是你父亲。\"\n\n\"你不是。我爸在家。\"\n\n\"我在家的日子，已经不多了。\"\n\n沈河川心头一紧。\"什么意思？\"\n\n\"你找到的这块铜片，是当年从南岭带出来的。它记住了我说过的话——在我说出那些话之前，就已经记住了。\"\n\n沈河川低头看着铜片。表面浮出一道极淡的暗红纹路，像血，又像锈。\n\n\"那口棺……它要的是谁的名字？\"\n\n铜片没有回答。但沈河川感觉到口袋里一阵轻微的震动——像有什么东西正在铜片内部醒来。",
      "actions": [
        { "type": "setVar", "name": "copper_piece_active", "value": true },
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 30 }
      ],
      "choices": [
        { "text": "带着铜片回家", "next": "return_home_copper" },
        { "text": "追问铜片更多问题", "next": "copper_questions" }
      ]
    },
    "copper_questions": {
      "id": "copper_questions",
      "location": "back_hill",
      "text": "\"你刚才说'我在家的日子不多了'——为什么？\"\n\n铜片沉默了更久。然后那声音再次响起——\n\n\"因为棺账上已经有了我的名字。沈长河，已入棺。\"\n\n沈河川手心出汗。\"什么时候的事？\"\n\n\"你儿子出生那天。\"\n\n沈河川猛地想起，沈舟出生那天，南岭方向下了一场很大的雨——回山雨。\n\n\"那你现在……\"\n\n\"我还在撑。但撑不了太久。你找到替棺，越快越好。\"\n\n声音消失了。铜片上的暗红纹路也慢慢淡去，像沉入铜里。",
      "actions": [
        { "type": "setVar", "name": "copper_piece_active", "value": true },
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 40 },
        { "type": "addVar", "name": "fear_level", "value": 20 }
      ],
      "choices": [
        { "text": "下山回家", "next": "return_home_copper" },
        { "text": "继续往后山深处走", "next": "deeper_hill" }
      ]
    },
    "recognize_voice": {
      "id": "recognize_voice",
      "location": "back_hill",
      "text": "沈河川僵在原地。\n\n那是沈长河的声音。可二十年前，沈长河曾经失踪过一段时间——村里人都说他去了南岭，回来后什么也不说。\n\n这个声音，\"河川\"——是他父亲私底下才会叫他的方式。\n\n\"爸？你在哪里？\"\n\n那声音没有回答。\n\n但铜片表面的暗红纹路，像树根一样缓缓扩展，像是声音正在从铜片深处爬出来。\n\n沈河川知道，这东西不能带回家了。可他忍不住想——如果真有办法，用这东西找到真相呢？",
      "actions": [
        { "type": "setVar", "name": "copper_piece_active", "value": true },
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 20 }
      ],
      "choices": [
        { "text": "把铜片装进口袋带回家", "next": "return_home_copper" },
        { "text": "把铜片埋回原处", "next": "bury_copper" },
        { "text": "继续搜寻周围", "next": "find_more" }
      ]
    },
    "bury_copper": {
      "id": "bury_copper",
      "location": "back_hill",
      "text": "沈河川蹲下来，把铜片放回它被发现的位置，用泥土盖住。\n\n\"抱歉，我不能带你走。\"\n\n铜片安静地躺在土里，没有发出任何声音。\n\n但沈河川起身时，忽然听见身后传来一声极轻的叹息——\n\n像是有人从很远的地方，终于放弃了什么。\n\n他站了片刻，还是转身下山了。\n\n他不知道，这个放弃意味着什么。",
      "actions": [
        { "type": "setVar", "name": "copper_piece_active", "value": false },
        { "type": "addVar", "name": "fear_level", "value": 5 }
      ],
      "choices": [
        { "text": "下山回家", "next": "return_home_copper" }
      ]
    },
    "find_more": {
      "id": "find_more",
      "location": "back_hill",
      "text": "沈河川在周围又找了一圈。草丛里还有几片类似的铜片，但都已经锈穿，拿起来就碎成粉末。\n\n只有第一片完好。\n\n他把铜片装进口袋，又在附近翻了翻，想找找有没有文字或记号。\n\n在一丛枯草下，他找到了一块断掉的小石碑，上面刻着一行字——\n\n\"入南岭者，不返。\"\n\n下面是三个人的名字，其中两个已经模糊，第三个还能辨认：\n\n沈江。\n\n沈河川盯着那个名字，久久没有动。",
      "actions": [
        { "type": "setVar", "name": "copper_piece_active", "value": true },
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 25 }
      ],
      "choices": [
        { "text": "把石碑翻过来看背面", "next": "turn_stone" },
        { "text": "带着铜片下山", "next": "return_home_copper" }
      ]
    },
    "turn_stone": {
      "id": "turn_stone",
      "location": "back_hill",
      "text": "沈河川费力地把石碑翻过来。\n\n背面有一行刻得很浅的字，像是有人在很急的情况下用手指划出来的——\n\n\"沈长河留：若见此碑，莫入南岭。\"\n\n是父亲的笔迹。\n\n可这石碑看起来已经在这里很多年了。父亲当年写这行字时，是什么心情？\n\n沈河川看着那行字，想起父亲每天坐在堂屋里的背影。\n\n他第一次觉得，父亲这些年，可能一直在等这行字被人看见。\n\n也可能——他等的人，就是自己。",
      "actions": [
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 35 },
        { "type": "addVar", "name": "trust_father", "value": 10 }
      ],
      "choices": [
        { "text": "带着铜片下山", "next": "return_home_copper" }
      ]
    },
    "deeper_hill": {
      "id": "deeper_hill",
      "location": "back_hill",
      "text": "沈河川没有下山，反而继续往后山深处走。\n\n灌木越来越密，脚下的路越来越软，像踩在厚厚的腐叶上。\n\n走了大约二十分钟，他看见前方有一片塌陷的地面——像是一座被填平的墓穴。\n\n塌陷处露出半截棺材角，已经腐烂得不成形。\n\n沈河川走近，发现棺材旁边散落着几块铜片碎片，和他口袋里的那块材质一样。\n\n而在棺材正下方的泥土里，埋着一只锈迹斑斑的铁盒。\n\n他弯腰去捡——",
      "choices": [
        { "text": "打开铁盒", "next": "open_box" },
        { "text": "把铁盒整个带走", "next": "take_box" },
        { "text": "先检查棺材里的东西", "next": "check_coffin_deep" }
      ]
    },
    "open_box": {
      "id": "open_box",
      "location": "back_hill",
      "text": "沈河川撬开铁盒。\n\n里面是一叠发黄的纸，纸角已经脆裂。最上面一张画着一张简陋的地图，标注着一条路线——从沈家后山开始，穿过一片标记为\"旧林\"的地方，一直延伸到一座用圈圈出的位置。\n\n圈旁写着两个字：\n\n南岭。\n\n地图背面，是一行字：\n\n\"此路入，未必出。但若沈家子孙有问，可试。\"\n\n落款是：沈林——沈河川的曾祖父。\n\n沈河川握着地图，手在微微颤抖。",
      "actions": [
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 50 },
        { "type": "addVar", "name": "fear_level", "value": 30 }
      ],
      "choices": [
        { "text": "把地图和铜片一起带回家", "next": "return_home_copper" },
        { "text": "立刻按地图路线走", "next": "enter_old_forest" }
      ]
    },
    "enter_old_forest": {
      "id": "enter_old_forest",
      "location": "old_forest",
      "text": "沈河川没有犹豫，按照地图上的路线走向那片\"旧林\"。\n\n林子比他想象的更深。树木高大得遮天蔽日，脚下腐叶堆积了不知多少年，踩上去软得像踏在尸体上。\n\n走了约莫一个时辰，他看见一棵老树上刻着一个标记——和地图上一模一样。\n\n标记下方，树根处埋着半截露出地面的铁环。\n\n他弯腰拉动铁环，地面掀开一道暗门。\n\n暗门下方是一间极小的石室，里面放着一口腐朽的小棺材。棺材里没有尸骨，只有一卷用油布包裹的纸。\n\n沈河川打开油布，里面是一张泛黄的纸条——\n\n\"替棺第三块板，藏于北边老木坊地窖。取板者需自备三寸长钉。\"\n\n他记住了这句话，把油布重新包好，放回原处。\n\n走出旧林时，天色已经暗了。他决定先回家准备长钉，再出发去北边。",
      "actions": [
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 55 },
        { "type": "addVar", "name": "board_count_sent", "value": 0 }
      ],
      "choices": [
        { "text": "回家准备长钉", "next": "return_home_copper" },
        { "text": "继续在旧林搜寻", "next": "search_old_forest_more" }
      ]
    },
    "search_old_forest_more": {
      "id": "search_old_forest_more",
      "location": "old_forest",
      "text": "沈河川没有急着离开，而是继续在旧林深处搜索。\n\n他走了不到半里，发现了一座被藤蔓完全覆盖的旧坟。坟前没有碑，但坟头压着一块青石板，石板下面压着三枚旧铜钱。\n\n他拿起铜钱，发现其中一枚背面刻着一个字——\"替\"。\n\n他收好铜钱，记下位置，这才离开旧林。\n\n他隐约觉得，旧林里的线索不止这一处。但他已经在这里待了太久，天快黑了。",
      "actions": [
        { "type": "addItem", "itemId": "old_coin" },
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 60 }
      ],
      "choices": [
        { "text": "下山回家", "next": "return_home_copper" }
      ]
    },
    "check_coffin_deep": {
      "id": "check_coffin_deep",
      "location": "back_hill",
      "text": "沈河川先检查了那口半露的棺材。\n\n棺材已经腐烂得差不多了，里面的东西早已化尽，只剩下几根发黑的骨头和一块铜片碎片。\n\n他拿起碎片，和口袋里的那块对比——材质完全一致。\n\n他这才去拿铁盒。打开后，里面是一张旧地图和一枚断成两半的黑玉戒。\n\n他收起所有东西，决定下山。",
      "actions": [
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 45 }
      ],
      "choices": [
        { "text": "下山回家", "next": "return_home_copper" }
      ]
    },
    "take_box": {
      "id": "take_box",
      "location": "back_hill",
      "text": "沈河川把铁盒整个拎起来，沉甸甸的。他不敢在山上打开，怕一打开就放出了什么东西。\n\n他抱着盒子快步下山。\n\n回到家后，他才打开盒子——里面是一张旧地图、几块铜片碎片、还有一枚断成两半的黑玉戒。\n\n那枚戒指，和父亲手上戴的一模一样。\n\n他愣在原地。\n\n这意味着——父亲已经有过一枚？还是说，这枚才是真的？",
      "actions": [
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 45 }
      ],
      "choices": [
        { "text": "拿着戒指去问父亲", "next": "confront_ring" },
        { "text": "把铁盒藏起来，暂时不说", "next": "hide_box" }
      ]
    },
    "confront_ring": {
      "id": "confront_ring",
      "location": "shen_home",
      "text": "沈河川拿着断成两半的黑玉戒走到堂屋，放在父亲面前。\n\n\"这是什么？\"\n\n沈长河看到那两半戒指，脸色骤变。\"你在哪里找到的？\"\n\n\"后山深处。一个铁盒里。\"\n\n沈长河沉默了很久。然后他说：\"那是你曾祖父的东西。\"\n\n\"曾祖父也进过南岭？\"\n\n\"进过。他没能回来。但他托人把这枚戒指带了出来——说如果沈家后代有人想进去，这枚戒指能挡一次。\"\n\n\"挡一次什么？\"\n\n\"挡一次'点名'。\"\n\n沈河川低头看着那两半戒指。\"那你这枚呢？\"\n\n\"我这枚是假的。\"沈长河低声道，\"真的已经断了。\"\n\n沈河川觉得喉咙发紧。\"那你这些年戴着的——是假的？\"\n\n\"假的也能撑一阵子。\"\n\n沈河川第一次觉得，父亲身上背负的东西，比他想象的还要重。",
      "actions": [
        { "type": "addVar", "name": "trust_father", "value": 20 },
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 50 }
      ],
      "choices": [
        { "text": "\"那曾祖父说的'点名'是什么？\"", "next": "what_is_naming" },
        { "text": "\"你还能撑多久？\"", "next": "how_long_can_you" }
      ]
    },
    "what_is_naming": {
      "id": "what_is_naming",
      "location": "shen_home",
      "text": "\"点名就是——那口棺把你的名字从活人账上划掉，写到它的账上。一旦写上去，你就是它的。\"\n\n沈河川咬牙。\"那怎么才能不被点名？\"\n\n\"找替身。让另一个名字替你上账。\"\n\n\"替身去哪里找？\"\n\n沈长河看着他，目光里有犹豫，也有决绝。\"南方，废弃义庄，有一口无名棺。你若能用它做成替身，就能拖一次。\"\n\n\"一次？\"\n\n\"一次已经很难了。\"",
      "actions": [
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 60 }
      ],
      "choices": [
        { "text": "\"我去找那口棺。\"", "next": "find_yizhuang" },
        { "text": "\"我们一起去。\"", "next": "go_together" }
      ]
    },
    "go_together": {
      "id": "go_together",
      "location": "shen_home",
      "text": "\"我跟你一起去。\"\n\n沈长河摇头。\"你不能跟我一起去。我若离开，堂屋底下的东西会醒得更快。\"\n\n\"那你一个人去？\"\n\n\"我一个人去。你留下，看着沈舟。\"\n\n沈河川想反驳，但看到父亲的眼神，他沉默了。\n\n那一夜，沈长河独自离开了沈家。\n\n沈河川站在门口，看着父亲的背影消失在夜色里。\n\n他不知道，这是不是最后一次看见父亲走路的样子。",
      "actions": [
        { "type": "addVar", "name": "trust_father", "value": 30 }
      ],
      "choices": [
        { "text": "遵守约定，留在家中", "next": "stay_home" },
        { "text": "等父亲走后，偷偷跟上去", "next": "follow_father" }
      ]
    },
    "stay_home": {
      "id": "stay_home",
      "location": "shen_home",
      "text": "沈河川留在了沈家。\n\n他每天照顾沈舟，看着孩子一天天长大。但每到夜里，他都会听见堂屋地底传来的声音——\n\n不是敲击，是呼吸。\n\n像有什么东西正在慢慢苏醒。\n\n三个月后，父亲回来了。他带回来一块木板——背面刻着一只闭着的眼睛。\n\n\"第一块。还有六块。\"\n\n沈河川看着那块木板，终于明白——\n\n这条路，不是一次能走完的。\n\n它需要时间。需要耐心。\n\n也需要有人每一夜都替沈家守门。",
      "actions": [
        { "type": "addVar", "name": "board_count_sent", "value": 1 }
      ],
      "choices": [
        { "text": "开始等待后续木板", "next": "waiting_for_boards" }
      ]
    },
    "follow_father": {
      "id": "follow_father",
      "location": "outside_village",
      "text": "沈河川等父亲走远后，悄悄跟了上去。\n\n他本以为会看到父亲走向南方义庄——\n\n可父亲走的方向，是后山。\n\n沈河川跟着父亲走进那片荒草丛，看见他在那块石碑前停下，从怀里掏出那枚断成两半的黑玉戒，放进碑底的裂缝里。\n\n然后他低声说了一句什么——像是对石碑说的，又像是对地下说的。\n\n沈河川听不清。\n\n但他看见石碑表面浮出一道淡淡的血痕。\n\n父亲起身离开时，沈河川藏在灌木丛里，没有现身。\n\n他忽然觉得，自己可能还不够了解父亲。",
      "actions": [
        { "type": "addVar", "name": "trust_father", "value": -10 },
        { "type": "addVar", "name": "fear_level", "value": 20 }
      ],
      "choices": [
        { "text": "回家，假装没跟踪", "next": "pretend_not_follow" },
        { "text": "上前去问父亲", "next": "confront_follow" }
      ]
    },
    "pretend_not_follow": {
      "id": "pretend_not_follow",
      "location": "shen_home",
      "text": "沈河川回了家，父亲晚一步回来。\n\n两人谁都没提那晚的事。\n\n但沈河川注意到，父亲的黑玉戒换了一枚——不再是那枚裂的，而是一枚新的，却更旧。\n\n沈河川把这个问题咽了下去。\n\n他开始明白，有些事，父亲不说，是因为说了也没用。",
      "choices": [
        { "text": "继续生活", "next": "waiting_for_boards" }
      ]
    },
    "confront_follow": {
      "id": "confront_follow",
      "location": "back_hill",
      "text": "沈河川从灌木丛里走出来。\n\n\"爸。\"\n\n沈长河转身，看见他，沉默了一瞬。\"你跟着我。\"\n\n\"我想知道你在做什么。\"\n\n沈长河没有生气。他只是叹了口气。\"你看到了多少？\"\n\n\"看到你把戒指放进石碑裂缝里。\"\n\n\"那不是普通石碑。那是沈家的'债碑'。每一代人，都要把一样东西放进去。\"\n\n\"放什么？\"\n\n\"放一样能替代名字的东西。但我已经没什么可放了。所以我放了那枚断戒。\"\n\n\"那能撑多久？\"\n\n\"不知道。\"\n\n沈河川看着父亲，第一次主动说：\"下次，我陪你一起去。\"\n\n沈长河没有回答。但也没有拒绝。",
      "actions": [
        { "type": "addVar", "name": "trust_father", "value": 20 },
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 30 }
      ],
      "choices": [
        { "text": "回家", "next": "waiting_for_boards" }
      ]
    },
    "hide_box": {
      "id": "hide_box",
      "location": "shen_home",
      "text": "沈河川把铁盒藏在自己的床底。\n\n他没有告诉任何人。\n\n但每天晚上，他都能听见铁盒里传来细微的声响——像是什么东西在盒子里翻动纸页。\n\n他不敢打开。\n\n直到一个月后，他终于忍不住，在半夜打开盒子——\n\n里面的地图多了一条路线。\n\n那条路线原本是空白的，现在却画上了一道新的红线，从沈家后山延伸出去，一直画到一座标注为\"旧庙\"的地方。\n\n而旧庙旁边，用极细的笔迹写着四个字：\n\n替棺在此。",
      "actions": [
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 50 }
      ],
      "choices": [
        { "text": "去旧庙", "next": "old_temple_journey" },
        { "text": "把地图给父亲看", "next": "show_map_to_father" }
      ]
    },
    "show_map_to_father": {
      "id": "show_map_to_father",
      "location": "shen_home",
      "text": "沈河川把地图拿给沈长河看。\n\n沈长河看完，脸色微变。\"这地图……是你曾祖父画的。\"\n\n\"上面说旧庙里有替棺。\"\n\n沈长河沉默了很久。\"旧庙确实有一口无名棺。但那是很久以前的事了。我不知道它还在不在。\"\n\n\"我去看看。\"\n\n沈长河看着他，终于点了点头。\"去吧。但记住——如果那口棺里有名字，不要碰。\"\n\n\"为什么？\"\n\n\"因为那说明已经有人替它填过名了。你碰了，就会接上。\"\n\n沈河川记住了这句话，出发前往旧庙。",
      "actions": [
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 55 }
      ],
      "choices": [
        { "text": "去旧庙", "next": "old_temple_journey" }
      ]
    },
    "old_temple_journey": {
      "id": "old_temple_journey",
      "location": "old_temple",
      "text": "沈河川走了三天，找到了那座旧庙。\n\n庙门半塌，屋顶长满荒草。里面没有神像，只有一口棺材。\n\n一口没有漆的棺材，放在正中央。\n\n他走近，发现棺盖上积了厚厚的灰。但灰面上有几个手指印——不是他的。\n\n有人来过。\n\n他迟疑了一下，伸手擦去灰尘。\n\n棺盖上刻着一行字：\"若有人替，则可开。\"\n\n沈河川心跳加速。\n\n他正准备开棺——庙门外传来一个声音：\n\n\"别开。\"\n\n他猛地回头。\n\n门口站着一个穿灰衣的老人，左脸上有一道疤，右耳后面有一块黑色刺青——是一个棺材形状。\n\n\"你是谁？\"\n\n\"我姓顾。你可以叫我顾老。\"",
      "choices": [
        { "text": "问顾老这口棺的来历", "next": "gu_old_explain" },
        { "text": "不顾警告，打开棺材", "next": "open_temple_coffin" },
        { "text": "后退，警惕地看着顾老", "next": "gu_old_hostile" }
      ]
    },
    "gu_old_explain": {
      "id": "gu_old_explain",
      "location": "old_temple",
      "text": "\"这口棺是替棺的坯。你曾祖父当年从南岭带出来的。\"\n\n\"他曾祖父？\"\n\n\"对。但他没能完成它。所以他把它留在了这里。\"\n\n\"完成它是什么意思？\"\n\n\"替棺要七块板。只有一块板，只能是坯。你必须找到另外六块，才能合成一口完整的替棺。\"\n\n沈河川心头一沉。\"另外六块在哪里？\"\n\n顾老没有回答。他只是说：\"你曾祖父在南方义庄藏了一块。剩下的五块，散布在沈家历代走过的地方。\"\n\n\"你是怎么知道的？\"\n\n\"因为我跟你曾祖父一起走过。\"\n\n沈河川愣住了。",
      "actions": [
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 60 }
      ],
      "choices": [
        { "text": "\"带我去找那六块板。\"", "next": "gu_old_help" },
        { "text": "\"我该怎么信你？\"", "next": "gu_old_trust" }
      ]
    },
    "gu_old_help": {
      "id": "gu_old_help",
      "location": "old_temple",
      "text": "\"我可以告诉你它们的大致位置，但你必须自己去拿。替棺只认取它的人。\"\n\n\"为什么？\"\n\n\"因为它要学你的气息。如果是由别人代劳，它学了另一个人，最后替的就不是你想替的人了。\"\n\n沈河川明白了。\"好。你告诉我。\"\n\n顾老点头，在地上画了一张简图——南方义庄、北边老木坊、西边旧墓群、东边古井，最后一块在沈家后山深处。\n\n\"你每找到一块，必须隔一年才能送下一块。否则它会提前认路。\"\n\n沈河川记下所有位置，向顾老道谢。\n\n他出发时，顾老在后面说了一句：\n\n\"记住——替棺只能拖，不能断。你想断，就得找更深的路。\"",
      "actions": [
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 70 },
        { "type": "setVar", "name": "has_visited_yizhuang", "value": false }
      ],
      "choices": [
        { "text": "去南方义庄", "next": "go_yizhuang" },
        { "text": "先回沈家跟父亲说一声", "next": "return_home_boards" }
      ]
    },
    "gu_old_trust": {
      "id": "gu_old_trust",
      "location": "old_temple",
      "text": "\"我凭什么信你？\"\n\n顾老沉默片刻，从怀里掏出一枚旧玉片——上面刻着一个沈字。\n\n\"这是你曾祖父给我的信物。他说，如果有一天沈家后人找来，把这玉片给他看。\"\n\n沈河川接过玉片，翻过来——背面刻着一行小字：\n\n\"替棺之事，可问此人。\"\n\n是曾祖父的笔迹。\n\n他终于放下了戒心。",
      "actions": [
        { "type": "addVar", "name": "trust_father", "value": 20 },
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 65 }
      ],
      "choices": [
        { "text": "\"请告诉我替棺的事。\"", "next": "gu_old_explain" }
      ]
    },
    "gu_old_hostile": {
      "id": "gu_old_hostile",
      "location": "old_temple",
      "text": "沈河川后退一步，手按上旧刀。\"你到底是谁？\"\n\n顾老没有动。\"我只是一个替人守了三十年东西的人。\"\n\n\"守什么？\"\n\n\"守这口棺。等你来。\"\n\n沈河川盯着他看了很久，最终松开了刀。\"你知道我会来？\"\n\n\"你曾祖父说的。他说沈家会有一个人在某个时候找过来。\"\n\n\"他什么时候说的？\"\n\n\"他进南岭之前。\"\n\n沈河川沉默了很久。\"他出来了吗？\"\n\n顾老摇头。\"没有。但他留下了这口棺，说如果有人能用上，就替他完成。\"\n\n沈河川深吸一口气。\"带我看吧。\"",
      "actions": [
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 50 },
        { "type": "setVar", "name": "has_visited_yizhuang", "value": false }
      ],
      "choices": [
        { "text": "听顾老讲述替棺的来历", "next": "gu_old_explain" }
      ]
    },
    "open_temple_coffin": {
      "id": "open_temple_coffin",
      "location": "old_temple",
      "text": "沈河川不顾顾老的警告，用力推开了棺盖。\n\n棺材里空空如也——没有尸体，没有陪葬。\n\n只有一块木板，背面刻着一只闭着的眼睛。\n\n他伸手去拿木板的一瞬间，棺材底部忽然渗出一层黑水，迅速漫过木板边缘。\n\n沈河川的手缩得慢了一瞬——指尖沾到了那层黑水。\n\n冰凉的触感顺着指尖蔓延到手腕。他低头看，手指没有变色，但那种凉意像钉进了骨头里。\n\n他拿起木板，退后几步。\n\n顾老站在门口，脸色很不好。\"你拿了不该拿的东西。\"\n\n\"什么？\"\n\n\"那黑水是它的标记。它记住你了。\"",
      "actions": [
        { "type": "addVar", "name": "fear_level", "value": 40 },
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 50 },
        { "type": "setVar", "name": "has_taken_coffin", "value": true }
      ],
      "choices": [
        { "text": "问顾老怎么清除标记", "next": "clean_mark" },
        { "text": "带着木板离开", "next": "leave_with_board" }
      ]
    },
    "clean_mark": {
      "id": "clean_mark",
      "location": "old_temple",
      "text": "\"怎么清除标记？\"\n\n\"用鸡血抹在手指上，连抹三天。但记住——这只是清掉表面的，它已经记住了你的气息。\"\n\n\"那怎么办？\"\n\n\"所以你一定要尽快完成替棺。让另一个名字替代你。\"\n\n沈河川记下了。他带着木板离开了旧庙。",
      "actions": [
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 55 }
      ],
      "choices": [
        { "text": "去南方义庄", "next": "go_yizhuang" },
        { "text": "先回沈家", "next": "return_home_boards" }
      ]
    },
    "leave_with_board": {
      "id": "leave_with_board",
      "location": "old_temple",
      "text": "沈河川把木板包好，快步离开了旧庙。\n\n他没有回头看顾老。但他能感觉到，顾老一直站在门口，看着他消失在路尽头。\n\n走了很远后，他停下来检查木板——背面那只闭着的眼睛，似乎比刚才睁开了一丝缝隙。\n\n缝隙里，有一道极细的红线。\n\n像血。\n\n又像还没干透的漆。",
      "actions": [
        { "type": "addVar", "name": "fear_level", "value": 35 },
        { "type": "setVar", "name": "has_taken_coffin", "value": true }
      ],
      "choices": [
        { "text": "去南方义庄", "next": "go_yizhuang" },
        { "text": "先回沈家", "next": "return_home_boards" }
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
        { "type": "setVar", "name": "has_visited_yizhuang", "value": true },
        { "type": "addVar", "name": "board_count_sent", "value": 1 },
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 60 }
      ],
      "choices": [
        { "text": "继续去寻找其他棺板", "next": "collect_boards" },
        { "text": "先把这两块送回沈家", "next": "return_home_boards" }
      ]
    },
    "yizhuang_open_fail": {
      "id": "yizhuang_open_fail",
      "location": "abandoned_yizhuang",
      "text": "棺盖太重了。沈河川松手的瞬间，棺盖猛地合上，发出一声震耳欲聋的巨响——\n\n吱呀——\n\n整座义庄开始摇晃。墙角的灰簌簌落下。\n\n他听见身后传来脚步声——不是他的。\n\n他转身，看见那六口有主的棺材正在微微震动。\n\n他不敢再停留，抓起第一块板就往外跑。\n\n跑出义庄时，身后传来一声低沉的嗡鸣，像是整座建筑都在叹息。",
      "actions": [
        { "type": "addVar", "name": "fear_level", "value": 30 }
      ],
      "choices": [
        { "text": "先回沈家", "next": "return_home_boards" }
      ]
    },
    "collect_boards": {
      "id": "collect_boards",
      "location": "old_workshop",
      "text": "沈河川决定趁热打铁，继续收集剩余的棺板。\n\n他先后去了北边老木坊、西边旧墓群、东边古井，以及沈家后山深处。每一处都找到了一块刻着闭眼图案的木板。\n\n去老木坊时，秦老看了他一眼，什么也没问，只是指了指地窖的方向。那块板放在地窖最深处的角落，上面压着一口旧缸。\n\n去旧墓群时，他在一座无主坟前挖了半夜，才从棺材底下抽出那块板。坟头上不知何时落了一只乌鸦，一直盯着他看。\n\n去东边古井时，他把绳子系在腰上，下到井底，在淤泥中摸出了第五块板。井水冰冷刺骨，像一只手攥住了他的脚踝。\n\n最后一块在沈家后山深处——他沿着旧路走到极深处，在一棵被雷劈过的老树下找到了第六块。\n\n至此，六块板全部到手。加上旧庙第一块，总共七块。\n\n他把所有板包好，准备送回沈家。",
      "actions": [
        { "type": "addVar", "name": "board_count_sent", "value": 6 },
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 75 }
      ],
      "choices": [
        { "text": "将七块板全部送回沈家", "next": "return_home_boards" }
      ]
    },
    "return_home_copper": {
      "id": "return_home_copper",
      "location": "shen_home",
      "text": "沈河川回到沈家。\n\n院子里，沈长河正坐在门槛上削竹片。他看见沈河川回来，没有多问，只是微微点了一下头。\n\n沈河川把铜片和地图放在桌上，又把铁盒里的东西一一摆出来。\n\n沈长河看完后，沉默了很久。\n\n\"你找到的东西，比我当年找到的还多。\"\n\n\"那说明什么？\"\n\n\"说明你离真相越来越近。\"沈长河看着他，\"也越来越危险。\"",
      "actions": [
        { "type": "addVar", "name": "trust_father", "value": 5 }
      ],
      "choices": [
        { "text": "\"那我要继续找下去。\"", "next": "what_is_naming" },
        { "text": "\"我该从哪里开始？\"", "next": "find_yizhuang" }
      ]
    },
    "return_home_boards": {
      "id": "return_home_boards",
      "location": "shen_home_later",
      "text": "沈河川回到沈家，把棺板藏在粮仓地底。\n\n沈长河看了它们一眼，没有多问，只说了一句：\n\n\"一年一块。别贪快。\"\n\n沈河川点头。\n\n但他心里想的是——如果一年一块，要七年才能集齐。沈舟还等得起吗？",
      "actions": [
        { "type": "addVar", "name": "board_count_sent", "value": 2 }
      ],
      "choices": [
        { "text": "遵守规矩，一年送一块", "next": "send_slowly" },
        { "text": "加快速度，尽快集齐七块", "next": "send_fast" }
      ]
    },
    "send_slowly": {
      "id": "send_slowly",
      "location": "shen_home_later",
      "text": "沈河川选择了耐心。\n\n一年一块，他走遍了顾老说的每一个地方——北边老木坊、西边旧墓群、东边古井、沈家后山深处。\n\n每找到一块，他就带回沈家，藏起来，等第二年再送下一块。\n\n沈舟一天天长大。\n\n到第六块板送进沈家时，沈舟已经十二岁了。\n\n沈河川在一次回村的路上，听见村里人议论——\n\n\"沈家最近半夜总有动静。\"\n\"像是有人在搬木头。\"\n\"可沈长河说那是修老屋。\"\n\n沈河川没有解释。\n\n但他知道，时间不多了。",
      "actions": [
        { "type": "addVar", "name": "board_count_sent", "value": 6 },
        { "type": "setVar", "name": "sent_boards_fast", "value": false }
      ],
      "choices": [
        { "text": "去找顾老", "next": "find_gu_again" },
        { "text": "等待第七块板", "next": "wait_seventh" }
      ]
    },
    "send_fast": {
      "id": "send_fast",
      "location": "shen_home_later",
      "text": "沈河川没有耐心等七年。\n\n他用了三年时间，找齐了所有七块板，一次性全部送回了沈家。\n\n沈长河看到七块板同时出现时，脸色铁青。\"你疯了。\"\n\n\"我不想等。\"\n\n\"它还没认路，你一次性送齐，它会直接记住沈家的门！\"\n\n但已经晚了。\n\n七块板在堂屋地上摆开的那个夜晚，村里的狗全部停止了吠叫。\n\n风穿过竹林时，带着一种木头摩擦的声音——像有人正在把一块块板拼合起来。",
      "actions": [
        { "type": "addVar", "name": "board_count_sent", "value": 7 },
        { "type": "setVar", "name": "sent_boards_fast", "value": true },
        { "type": "addVar", "name": "fear_level", "value": 40 }
      ],
      "choices": [
        { "text": "等待替棺合拢", "next": "coffin_assembles" },
        { "text": "试图把板分开", "next": "separate_boards" }
      ]
    },
    "coffin_assembles": {
      "id": "coffin_assembles",
      "location": "shen_home_later",
      "text": "那夜，七块板在堂屋自行拼合。\n\n每一块扣上时都发出一声沉闷的撞击——咔、咔、咔。\n\n最后一块落下时，一口完整的黑棺出现在沈家堂屋中央。\n\n沈长河站在棺前，手里的镇棺铃在发抖。\n\n棺材里传来一个声音——\n\n\"沈长河。\"\n\n那是它学的第一句话。\n\n沈长河闭上眼。\"它醒了。\"",
      "actions": [
        { "type": "addVar", "name": "fear_level", "value": 60 }
      ],
      "choices": [
        { "text": "摇镇棺铃压它", "next": "ring_ling" },
        { "text": "打开棺盖看里面", "next": "open_assembled_coffin" }
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
        "sequence": ["A", "S", "D"],
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
        { "type": "addVar", "name": "fear_level", "value": 50 }
      ],
      "choices": [
        { "text": "去找顾老", "next": "find_gu_again" }
      ]
    },
    "ring_fail": {
      "id": "ring_fail",
      "location": "shen_home_later",
      "text": "铃响乱了节奏——\n\n棺材猛地震动，棺盖被一股无形的力量顶开了一条缝。\n\n沈河川看见里面伸出一只苍白的手——\n\n那只手戴着一枚黑玉戒。\n\n和沈长河手上的一模一样。\n\n\"快关上！\"沈长河冲过来，和沈河川一起用力把棺盖压了回去。\n\n他们用身体顶住棺盖，直到里面的动静渐渐平息。\n\n\"你快去。\"沈长河喘着气说，\"我撑不了多久。\"\n\n沈河川点头，转身冲出沈家。",
      "actions": [
        { "type": "addVar", "name": "fear_level", "value": 70 }
      ],
      "choices": [
        { "text": "去找顾老", "next": "find_gu_again" }
      ]
    },
    "open_assembled_coffin": {
      "id": "open_assembled_coffin",
      "location": "shen_home_later",
      "text": "沈河川伸手去推棺盖——\n\n沈长河猛地抓住他的手腕。\"别开！\"\n\n\"为什么？\"\n\n\"它还没学全。你一开，它就记住了你才是真正要替的人。\"\n\n沈河川收回手，后背发凉。\n\n那晚之后，沈长河开始每晚坐在棺材前，低声说话——像在教一个人认字。\n\n沈河川知道，他在教替棺学他。\n\n用自己的声音、习惯、咳嗽的节奏……\n\n用自己的命。",
      "actions": [
        { "type": "addVar", "name": "fear_level", "value": 60 }
      ],
      "choices": [
        { "text": "去找顾老", "next": "find_gu_again" }
      ]
    },
    "separate_boards": {
      "id": "separate_boards",
      "location": "shen_home_later",
      "text": "沈河川试图把七块板分开，但它们像被吸住一样，纹丝不动。\n\n每一块木板的背面，那只闭着的眼睛都睁开了——只是睁开，没有瞳孔，像在看着沈家。\n\n他知道，已经晚了。\n\n替棺已经开始认门。",
      "actions": [
        { "type": "addVar", "name": "fear_level", "value": 60 }
      ],
      "choices": [
        { "text": "等待替棺合拢", "next": "coffin_assembles" }
      ]
    },
    "wait_seventh": {
      "id": "wait_seventh",
      "location": "shen_home_later",
      "text": "沈河川等了一年又一年。\n\n第六块板送进沈家后，第七块始终没有消息。\n\n他去找顾老，但顾老消失了。\n\n他去义庄，义庄烧了。\n\n第七块板像是被什么东西截住了。\n\n直到有一天，沈河川收到了父亲的信——\n\n\"第七块板已经到了。别回来。\"\n\n沈河川看着那四个字，知道父亲已经决定独自面对。\n\n他仍然踏上了归途。",
      "actions": [
        { "type": "addVar", "name": "board_count_sent", "value": 7 }
      ],
      "choices": [
        { "text": "赶回沈家", "next": "final_journey" }
      ]
    },
    "find_gu_again": {
      "id": "find_gu_again",
      "location": "outside_village",
      "text": "沈河川多方打探，终于找到了顾老的住处。\n\n可等他赶到时，顾老已经浑身是伤，倒在他住处门外。\n\n他扶起顾老。\"发生了什么事？\"\n\n\"有人……不想让你找到第七块板。\"\n\n\"谁？\"\n\n\"送棺的人。\"\n\n顾老用最后一点力气说：\"替棺不是用来救人的——是用来开门的。七块板合起来，会打开一道通向棺道的门。\"\n\n\"那不是替棺？\"\n\n\"它是——但不只是。它是钥匙。\"\n\n说完，顾老的手垂了下去。",
      "actions": [
        { "type": "setVar", "name": "has_warned_gu_old", "value": true },
        { "type": "setVar", "name": "gu_old_survived", "value": false },
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 80 },
        { "type": "addVar", "name": "fear_level", "value": 50 }
      ],
      "choices": [
        { "text": "赶回沈家", "next": "final_journey" },
        { "text": "先查送棺人是谁", "next": "investigate_sender" }
      ]
    },
    "investigate_sender": {
      "id": "investigate_sender",
      "location": "outside_village",
      "text": "沈河川留在原地，翻查顾老的遗物。\n\n他在顾老的旧衣口袋里找到一封没有署名的信——\n\n\"送棺人不是一个人。是一脉传承的匠人。他们替棺道做工，不替活人。第七块板一旦进村，棺道就会认出沈家的门。\"\n\n沈河川终于明白了——\n\n从一开始，替棺就不是为了救沈舟。\n\n它是为了引棺道进沈家。\n\n他必须阻止第七块板进村。",
      "actions": [
        { "type": "setVar", "name": "discovered_plot", "value": true },
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 90 },
        { "type": "addVar", "name": "fear_level", "value": 60 }
      ],
      "choices": [
        { "text": "赶回沈家，截住第七块板", "next": "intercept_board" },
        { "text": "去找送棺人谈判", "next": "confront_sender" }
      ]
    },
    "intercept_board": {
      "id": "intercept_board",
      "location": "shen_home_later",
      "text": "沈河川拼命赶回沈家，但还是晚了一步。\n\n他刚到村口，就看见一辆木车停在沈家门口。\n\n车上盖着黑布。\n\n没有人赶车。\n\n黑布滑落时，他看见第七块板——那是一块棺底，中央刻着一只睁开的眼睛。\n\n沈长河已经站在了门口。\n\n他手里握着镇棺铃。\n\n沈河川冲过去：\"别接！\"\n\n但沈长河已经开口了——\n\n\"沈家收棺。\"\n\n第三声铃响了。",
      "actions": [
        { "type": "addVar", "name": "fear_level", "value": 80 }
      ],
      "choices": [
        { "text": "冲进去", "next": "ending_cliffhanger" }
      ]
    },
    "confront_sender": {
      "id": "confront_sender",
      "location": "outside_village",
      "text": "沈河川根据线索找到了送棺人的落脚处——一座偏远的旧木坊。\n\n他推开门，里面没有人，只有半成品的棺材和满地的刨花。\n\n墙上挂着一幅字：\n\n\"棺道不收债，只收路。\"\n\n沈河川转身要走时，身后传来一个声音——\n\n\"你找我们？\"\n\n他回头，看见一个穿着灰袍的人，脸色苍白，眼睛却很亮。\n\n\"你们为什么要害沈家？\"\n\n\"害？我们只是把钥匙交给该拿的人。\"\n\n\"谁是该拿的人？\"\n\n\"你。\"\n\n沈河川愣住。\n\n\"你已经拿了一块。你拿的每一块，都是你心甘情愿带回去的。\"\n\n沈河川无言以对。\n\n他确实是自己找到那些板的。每一步，都是他自己的选择。\n\n\"那第七块……还在路上吗？\"\n\n\"已经到了。\"\n\n沈河川冲出木坊，拼命往回赶。",
      "actions": [
        { "type": "setVar", "name": "discovered_plot", "value": true },
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 95 },
        { "type": "addVar", "name": "fear_level", "value": 70 }
      ],
      "choices": [
        { "text": "赶回沈家", "next": "intercept_board" }
      ]
    },
    "final_journey": {
      "id": "final_journey",
      "location": "shen_home_later",
      "text": "沈河川冲回沈家时，第七块板已经合入棺中。\n\n沈长河站在黑棺前，手按在棺盖上，脸色苍白如纸。\n\n\"爸……\"\n\n\"你来了。\"\n\n\"它学了多少？\"\n\n\"够多了。\"\n\n沈长河慢慢松开手。他的无名指上，黑玉戒的暗红纹路已经蔓延到整个戒面。\n\n\"河川，从今天起，这口棺会学我的一切。只要我还活着，它就学我。等我死了，它就会成为我。\"\n\n\"那你……\"\n\n\"我会走得比你想象的要快。\"\n\n沈河川看着父亲，第一次哭了出来。",
      "actions": [
        { "type": "addVar", "name": "fear_level", "value": 90 }
      ],
      "choices": [
        { "text": "接受这个安排", "next": "ending_accept" },
        { "text": "试图毁掉替棺", "next": "ending_destroy" }
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
        { "type": "addVar", "name": "board_count_sent", "value": 7 }
      ],
      "choices": [
        { "text": "赶回沈家", "next": "final_journey" }
      ]
    },
    "how_long_can_you": {
      "id": "how_long_can_you",
      "location": "shen_home",
      "text": "\"你还能撑多久？\"\n\n沈长河低头看着自己手上的黑玉戒。\"不知道。可能三年，可能一年，也可能更短。\"\n\n\"那如果……\"\n\n\"如果我撑不住，那口棺会自己找上沈舟。\"\n\n沈河川握紧拳头。\"我不会让它找到。\"\n\n沈长河看着他，目光里有欣慰，也有担忧。\"河川，你记住——替棺的事情，不能急。急，就会出错。\"\n\n\"我知道了。\"\n\n沈河川走出堂屋，抬头看着天空。\n\n他知道，留给他的时间，可能比他想像的更少。",
      "actions": [
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 55 }
      ],
      "choices": [
        { "text": "去南方义庄", "next": "find_yizhuang" }
      ]
    },
    "find_yizhuang": {
      "id": "find_yizhuang",
      "location": "abandoned_yizhuang",
      "text": "沈河川按照父亲的指引，找到了南方那座废弃义庄。\n\n义庄破败不堪，屋顶漏了好几处。里面停着七口棺材——六口有主，一口无名。\n\n那口无名棺放在墙角，蒙了厚厚的灰。\n\n他走近时，棺材里忽然传出一声轻响——咚。\n\n他握紧旧刀，但那声音没有再响。\n\n他打开棺盖——里面是空的。\n\n但棺底嵌着一块木板，背面刻着闭着的眼睛。\n\n他取出了第一块板。\n\n这只是一个开始。",
      "actions": [
        { "type": "setVar", "name": "has_visited_yizhuang", "value": true },
        { "type": "addVar", "name": "board_count_sent", "value": 1 }
      ],
      "choices": [
        { "text": "回沈家把板藏好", "next": "return_home_boards" }
      ]
    },
    "north_road": {
      "id": "north_road",
      "location": "old_workshop",
      "text": "沈河川一路向北，走了很多地方——南方旧村、北方荒山、西边古墓群。\n\n他见过很多人，但没有人能告诉他如何让一个已经被记住的名字消失。\n\n直到他来到一座老木坊，见到了秦老。\n\n秦老说：\"名字不是写上去的，是认上去的。\"\n\n沈河川不明白。\"那怎么才能让它不认？\"\n\n\"找一个更干净的名字替进去。\"\n\n沈河川想到了沈舟。\n\n他摇了摇头。\"不行。\"\n\n秦老看着他。\"那你就得找一口'替棺'。让替棺替你们沈家认这笔账。\"",
      "actions": [
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 40 }
      ],
      "choices": [
        { "text": "\"替棺在哪里？\"", "next": "old_temple_journey" },
        { "text": "\"还有别的办法吗？\"", "next": "ask_other_way" }
      ]
    },
    "ask_other_way": {
      "id": "ask_other_way",
      "location": "old_workshop",
      "text": "\"还有别的办法吗？\"\n\n秦老沉默了很久。\"有。但你不会想用的。\"\n\n\"什么办法？\"\n\n\"烧掉棺账。让所有名字一起消失。但烧账的人会被棺道永远记住。\"\n\n沈河川沉默。\"那等于是把自己赔进去。\"\n\n\"对。\"\n\n沈河川想了很久。\"告诉我替棺在哪里。\"",
      "actions": [
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 45 }
      ],
      "choices": [
        { "text": "去旧庙", "next": "old_temple_journey" }
      ]
    }
  }
}