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
    { "id": "black_copper_piece", "name": "黑色铜片", "icon": "🔲", "description": "后山发现的铜片，握着能听见死人的声音。表面有暗红纹路。" },
    { "id": "guan_zhang_fragment", "name": "棺账残页", "icon": "📜", "description": "沈长河藏了多年的棺账，最后一页出现了沈舟的名字。" },
    { "id": "black_jade_ring", "name": "黑玉戒", "icon": "💍", "description": "沈长河无名指上的黑玉戒，靠近火光会泛暗红。" },
    { "id": "old_knife", "name": "旧刀", "icon": "🔪", "description": "沈河川离家时带的刀，刀身布满锈迹，但刀刃依然锋利。" },
    { "id": "coffin_board_1", "name": "第一块棺板", "icon": "🪵", "description": "替棺的第一块板，背面刻着一只闭着的眼睛。" },
    { "id": "coffin_board_2", "name": "第二块棺板", "icon": "🪵", "description": "替棺的第二块板，背面刻着闭着的眼睛。" },
    { "id": "red_blood_pouch", "name": "红布包·鸡血", "icon": "🔴", "description": "厨房梁上挂着的红布袋，里面是封着蜡的瓷瓶。" },
    { "id": "old_coin", "name": "旧铜钱", "icon": "💰", "description": "沈长河给的铜钱，边缘磨得发亮。" },
    { "id": "zhen_guang_ling", "name": "镇棺铃", "icon": "🔔", "description": "沈家祖传的铜铃，铃口裂了一道缝。" },
    { "id": "gu_old_letter", "name": "顾老的信", "icon": "✉️", "description": "顾老在义庄被烧前留下的信。" },
    { "id": "coffin_nail", "name": "棺钉", "icon": "📌", "description": "钉入黑棺的七枚棺钉之一。" },
    { "id": "wooden_plate", "name": "木牌", "icon": "🪧", "description": "乱坟中找到的木牌，正面写着'无名棺铺'。" },
    { "id": "sender_letter", "name": "送棺人的信", "icon": "✉️", "description": "在无名棺铺找到的信。" },
    { "id": "ancient_scroll", "name": "古卷", "icon": "📜", "description": "记载着'断名之法'的古卷。" }
  ],
  "map": {
    "title": "南岭棺道·前传·极难",
    "locations": [
      { "id": "shen_home", "name": "沈家堂屋", "description": "沈家老宅的堂屋，棺账和黑玉戒都藏在这里。" },
      { "id": "back_hill", "name": "沈家后山", "description": "一片荒芜的丘陵地，沈河川在这里发现了黑色铜片。" },
      { "id": "outside_village", "name": "山外旅馆", "description": "沈河川离开沈家后住的第一间旅馆。" },
      { "id": "old_workshop", "name": "秦老的木坊", "description": "北方一座老木坊，秦老一辈子只给活人做棺材。" },
      { "id": "abandoned_yizhuang", "name": "废弃义庄", "description": "一口无名的棺材停在这里二十七年。" },
      { "id": "old_temple", "name": "旧庙", "description": "庙里供奉的不是神，是一口没有名字的棺。" },
      { "id": "south_village", "name": "南方旧村", "description": "其他家族也受棺债所困的地方。" },
      { "id": "shen_home_later", "name": "沈家（多年后）", "description": "七块棺板一块接一块送进沈家。" },
      { "id": "old_forest", "name": "旧林深处", "description": "曾祖父地图上标注的旧林。" },
      { "id": "graveyard", "name": "乱坟岗", "description": "沈河川追踪木车至此。" },
      { "id": "unnamed_shop", "name": "无名棺铺", "description": "一座隐藏在荒村中的老铺。" },
      { "id": "shop_front", "name": "棺铺正厅", "description": "铺内陈设古朴，墙上挂满旧棺板。" },
      { "id": "shop_secret", "name": "棺铺密室", "description": "铺子地下的密室。" },
      { "id": "back_road", "name": "返回之路", "description": "沈河川从棺铺返回沈家的路。" },
      { "id": "shen_home_final", "name": "沈家·最终时刻", "description": "沈长河即将油尽灯枯。" }
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
        { "text": "等待沈长河回答", "next": "debt_answer" },
        { "text": "打断父亲，说自己有事要出去", "next": "death_leave_debt" },
        { "text": "转身去厨房找母亲", "next": "talk_to_mother" }
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
        { "text": "第二天去后山", "next": "back_hill_discovery" },
        { "text": "叫醒父亲问那声音", "next": "ask_sound_night" }
      ]
    },
    "ask_sound_night": {
      "id": "ask_sound_night",
      "location": "shen_home",
      "text": "沈河川披衣起身，走到堂屋。沈长河已经坐在那里了，手里握着那本棺账。\n\n“爸，那是什么声音？”\n\n“底下有东西。”\n\n“什么东西？”\n\n“一口等着进门的东西。”\n\n沈河川脊背发凉。“它什么时候会进来？”\n\n沈长河抬头看他。“等你有了孩子。”",
      "choices": [
        { "text": "回房，但决定天亮去后山", "next": "back_hill_discovery" },
        { "text": "问父亲那口棺在哪里", "next": "where_is_coffin" }
      ]
    },
    "where_is_coffin": {
      "id": "where_is_coffin",
      "location": "shen_home",
      "text": "\"那口棺在哪里？\"\n\n沈长河沉默了很久。\"在南岭深处。但你不能去。\"\n\n\"为什么？\"\n\n\"因为去了的人，都没有回来过。\"\n\n\"大伯不是回来了吗？\"\n\n\"他回来的只是身体。他的名字还留在那里。\"\n\n沈河川第一次觉得，父亲不是在吓唬他。",
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
        { "text": "带着棺账离开沈家", "next": "death_leave_with_ledger" }
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
      "text": "\"那口棺材现在在哪里？\"\n\n母亲摇头。\"没人知道。你爸说它在等一个名字。\"\n\n\"等谁的名字？\"\n\n母亲看了他很久，然后说：\"你爸说，可能是沈家最后一个人的名字。\"",
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
      "text": "沈河川走到堂屋，沈长河正在把棺账锁进木匣。\n\n\"爸，最后一个人的名字是谁？\"\n\n沈长河的手停住了。他没有转身。\"你妈告诉你了？\"\n\n\"告诉我一部分。剩下的，我想听你说。\"\n\n沈长河把木匣放回柜里，慢慢转过身。他脸上没有愤怒，只有一种很深的疲惫。\n\n\"河川，有些事知道得越早，越害怕。\"\n\n\"我不怕。\"\n\n沈长河看着他，目光像在看一个还没长大的孩子。\"你当然不怕。因为你还没看到那东西。\"",
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
      "text": "\"爸，如果你不告诉我，我会自己去找答案。到时候，可能比你现在告诉我更危险。\"\n\n沈长河看了他很久。最后，他叹了口气。\n\n\"南岭里有一口倒悬的黑棺。那口棺不是装死人的，是装活人的名字。当年我和你大伯进去，是想把那口棺的债断掉。\"\n\n\"断掉了吗？\"\n\n\"没有。我们只带出了一样东西——你大伯的名。\"",
      "actions": [
        { "type": "setVar", "name": "has_confronted_father", "value": true },
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 40 }
      ],
      "choices": [
        { "text": "去后山冷静一下", "next": "back_hill_discovery" }
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
        { "type": "setVar", "name": "copper_piece_active", "value": true }
      ],
      "choices": [
        { "text": "仔细辨认那个声音", "next": "recognize_voice" },
        { "text": "把铜片扔掉", "next": "death_drop_copper" },
        { "text": "攥紧铜片，带回家", "next": "keep_copper" }
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
      "text": "\"你刚才说'我在家的日子不多了'——为什么？\"\n\n铜片沉默了更久。然后那声音再次响起——\n\n“因为棺账上已经有了我的名字。沈长河，已入棺。”\n\n沈河川手心出汗。\"什么时候的事？\"\n\n“你儿子出生那天。”\n\n沈河川猛地想起，沈舟出生那天，南岭方向下了一场很大的雨——回山雨。",
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
      "text": "沈河川僵在原地。\n\n那是沈长河的声音。可二十年前，沈长河曾经失踪过一段时间——村里人都说他去了南岭，回来后什么也不说。\n\n这个声音，\"河川\"——是他父亲私底下才会叫他的方式。\n\n“爸？你在哪里？”\n\n那声音没有回答。\n\n但铜片表面的暗红纹路，像树根一样缓缓扩展，像是声音正在从铜片深处爬出来。",
      "actions": [
        { "type": "setVar", "name": "copper_piece_active", "value": true },
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 20 }
      ],
      "choices": [
        { "text": "把铜片装进口袋带回家", "next": "return_home_copper" },
        { "text": "把铜片埋回原处", "next": "death_bury_copper" }
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
        { "text": "打开铁盒", "next": "open_box" },
        { "text": "把铁盒整个带走", "next": "take_box" },
        { "text": "先检查棺材里的东西", "next": "death_check_coffin_deep" }
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
      "text": "沈河川没有犹豫，按照地图上的路线走向那片\"旧林\"。\n\n林子比他想象的更深。树木高大得遮天蔽日，脚下腐叶堆积了不知多少年，踩上去软得像踏在尸体上。\n\n走了约莫一个时辰，他看见一棵老树上刻着一个标记——和地图上一模一样。\n\n标记下方，树根处埋着半截露出地面的铁环。\n\n他弯腰拉动铁环，地面掀开一道暗门。",
      "choices": [
        { "text": "进入暗门", "next": "enter_secret_room" },
        { "text": "犹豫", "next": "death_hesitate_forest" }
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
      "text": "沈河川没有急着离开，而是继续在旧林深处搜索。\n\n他走了不到半里，发现了一座被藤蔓完全覆盖的旧坟。坟前没有碑，但坟头压着一块青石板，石板下面压着三枚旧铜钱。\n\n他拿起铜钱，发现其中一枚背面刻着一个字——\"替\"。",
      "actions": [
        { "type": "addItem", "itemId": "old_coin" },
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 60 }
      ],
      "choices": [
        { "text": "下山回家", "next": "return_home_copper" }
      ]
    },
    "take_box": {
      "id": "take_box",
      "location": "back_hill",
      "text": "沈河川把铁盒整个拎起来，沉甸甸的。他不敢在山上打开，怕一打开就放出了什么东西。\n\n他抱着盒子快步下山。\n\n回到家后，他才打开盒子——里面是一张旧地图、几块铜片碎片、还有一枚断成两半的黑玉戒。\n\n那枚戒指，和父亲手上戴的一模一样。",
      "actions": [
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 45 }
      ],
      "choices": [
        { "text": "拿着戒指去问父亲", "next": "confront_ring" },
        { "text": "把铁盒藏起来，暂时不说", "next": "death_hide_box" }
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
        { "text": "把铜片给父亲看", "next": "show_copper_to_father" },
        { "text": "问父亲关于替棺的事", "next": "ask_about_replacement" }
      ]
    },
    "show_copper_to_father": {
      "id": "show_copper_to_father",
      "location": "shen_home",
      "text": "沈河川从口袋里掏出铜片，放在父亲面前。\n\n沈长河的手猛地一抖。“你在哪里找到的？”\n\n“后山。”\n\n沈长河拿起铜片，翻来覆去地看。“它有没有跟你说话？”\n\n“说了。它说……你的名字已经在棺账上了。”\n\n沈长河沉默了很久。然后他说：“既然你已经知道了，那我告诉你——我需要你的帮助。”",
      "actions": [
        { "type": "addVar", "name": "trust_father", "value": 20 },
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 50 }
      ],
      "choices": [
        { "text": "\"我帮你。\"", "next": "help_father" }
      ]
    },
    "ask_about_replacement": {
      "id": "ask_about_replacement",
      "location": "shen_home",
      "text": "\"爸，什么是替棺？\"\n\n沈长河放下棺账，看着他。“替棺就是——用另一口棺来替沈家还账。但替棺需要七块板，每一块都要从不同的地方取来。”\n\n“七块板？”\n\n“对。第一块在南方废弃义庄，第二块在北边老木坊，剩下的散布在各处。”",
      "actions": [
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 55 }
      ],
      "choices": [
        { "text": "\"我去找。\"", "next": "help_father" }
      ]
    },
    "help_father": {
      "id": "help_father",
      "location": "shen_home",
      "text": "\"我帮你。\"沈河川说。\n\n沈长河看着他，眼眶微红。“河川，你知道这意味着什么吗？”\n\n“意味着我可能会死。但如果我不去，沈舟就会死。”\n\n沈长河沉默了很久。然后他从怀里掏出那枚黑玉戒，放在桌上。“拿着。它能挡一次点名。”\n\n沈河川拿起戒指，握在掌心。冰凉的触感传来，像父亲的手。",
      "actions": [
        { "type": "addVar", "name": "trust_father", "value": 30 },
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 60 }
      ],
      "choices": [
        { "text": "出发去找第一块板", "next": "go_yizhuang" }
      ]
    },
    "confront_ring": {
      "id": "confront_ring",
      "location": "shen_home",
      "text": "沈河川拿着断成两半的黑玉戒走到堂屋，放在父亲面前。\n\n“这是什么？”\n\n沈长河看到那两半戒指，脸色骤变。“你在哪里找到的？”\n\n“后山深处。一个铁盒里。”\n\n沈长河沉默了很久。然后他说：“那是你曾祖父的东西。”\n\n“曾祖父也进过南岭？”\n\n“进过。他没能回来。但他托人把这枚戒指带了出来——说如果沈家后代有人想进去，这枚戒指能挡一次。”",
      "actions": [
        { "type": "addVar", "name": "trust_father", "value": 20 },
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 50 }
      ],
      "choices": [
        { "text": "\"那曾祖父说的'点名'是什么？\"", "next": "what_is_naming" }
      ]
    },
    "what_is_naming": {
      "id": "what_is_naming",
      "location": "shen_home",
      "text": "\"点名就是——那口棺把你的名字从活人账上划掉，写到它的账上。一旦写上去，你就是它的。\"\n\n沈河川咬牙。\"那怎么才能不被点名？\"\n\n“找替身。让另一个名字替你上账。”\n\n“替身去哪里找？\"\n\n沈长河看着他，目光里有犹豫，也有决绝。\"南方，废弃义庄，有一口无名棺。你若能用它做成替身，就能拖一次。\"",
      "actions": [
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 60 }
      ],
      "choices": [
        { "text": "\"我去找那口棺。\"", "next": "go_yizhuang" }
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
        { "type": "setVar", "name": "has_visited_yizhuang", "value": true },
        { "type": "addVar", "name": "board_count_sent", "value": 1 },
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 60 },
        { "type": "addVar", "name": "qte_skill", "value": 10 }
      ],
      "choices": [
        { "text": "继续去寻找其他棺板", "next": "collect_boards" },
        { "text": "先把这块送回沈家", "next": "return_home_boards" }
      ]
    },
    "collect_boards": {
      "id": "collect_boards",
      "location": "old_workshop",
      "text": "沈河川决定趁热打铁，继续收集剩余的棺板。\n\n他先后去了北边老木坊、西边旧墓群、东边古井，以及沈家后山深处。每一处都找到了一块刻着闭眼图案的木板。\n\n去老木坊时，秦老看了他一眼，什么也没问，只是指了指地窖的方向。那块板放在地窖最深处的角落，上面压着一口旧缸。\n\n去旧墓群时，他在一座无主坟前挖了半夜，才从棺材底下抽出那块板。坟头上不知何时落了一只乌鸦，一直盯着他看。\n\n去东边古井时，他把绳子系在腰上，下到井底，在淤泥中摸出了第五块板。井水冰冷刺骨，像一只手攥住了他的脚踝。\n\n最后一块在沈家后山深处——他沿着旧路走到极深处，在一棵被雷劈过的老树下找到了第六块。\n\n至此，六块板全部到手。加上义庄第一块，总共七块。",
      "actions": [
        { "type": "addVar", "name": "board_count_sent", "value": 7 },
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 75 }
      ],
      "choices": [
        { "text": "把所有板送回沈家", "next": "return_home_boards" }
      ]
    },
    "return_home_boards": {
      "id": "return_home_boards",
      "location": "shen_home_later",
      "text": "沈河川把所有棺板送回沈家。\n\n沈长河看着那七块板，脸色复杂。“七块板齐了。现在要合棺。”\n\n“怎么合？”\n\n“七块板要按顺序排列，每一块之间要用三寸长钉固定。但合棺的人必须是沈家的人——而且，合棺的瞬间，替棺会认人。”\n\n“认什么人？”\n\n“认它要替的人。”\n\n沈河川握紧拳头。“我来合棺。”",
      "choices": [
        { "text": "开始合棺", "next": "assemble_coffin" }
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
        { "type": "addVar", "name": "qte_skill", "value": 10 },
        { "type": "setVar", "name": "coffin_awake", "value": 1 }
      ],
      "choices": [
        { "text": "寻找毁掉替棺的方法", "next": "start" }
      ]
    }
  }
}