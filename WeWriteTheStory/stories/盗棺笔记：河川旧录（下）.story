{
  "title": "盗棺笔记：河川旧录（下）",
  "subtitle": "无名棺铺·替身之身",
  "description": "沈河川追踪送棺人，发现无名棺铺的线索。毁替棺的唯一方法是——找到替你的人。谁会是那个替身？最后的结局，由你选择。",
  "author": "Radiation Studio",
  "version": "3.0",
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
    { "id": "coffin_nail", "name": "棺钉", "icon": "📌", "description": "钉入黑棺的七枚棺钉之一，沈长河亲手钉下的。" },
    { "id": "wooden_plate", "name": "木牌", "icon": "🪧", "description": "乱坟中找到的木牌，正面写着'无名棺铺'，背面写着一句话。" },
    { "id": "old_knife", "name": "旧刀", "icon": "🔪", "description": "沈河川的旧刀，刀刃已卷，但仍可防身。" },
    { "id": "black_jade_ring", "name": "黑玉戒", "icon": "💍", "description": "沈长河的黑玉戒，暗红纹路已蔓延至整个戒面。" },
    { "id": "zhen_guang_ling", "name": "镇棺铃", "icon": "🔔", "description": "沈家的镇棺铃，已经裂成两半，还能响最后一次。" },
    { "id": "sender_letter", "name": "送棺人的信", "icon": "✉️", "description": "在无名棺铺找到的信，上面写着'替棺可毁，但需一命换一命'。" },
    { "id": "ancient_scroll", "name": "古卷", "icon": "📜", "description": "在无名棺铺密室发现的古卷，记载着'断名之法'。" }
  ],
  "map": {
    "title": "无名棺铺·棺道深处",
    "locations": [
      { "id": "shen_home", "name": "沈家堂屋", "description": "黑棺静置在此，沈长河日日守棺，替身正在学习他的声音。" },
      { "id": "graveyard", "name": "乱坟岗", "description": "沈河川追踪木车至此，车辙消失，只有一块木牌。" },
      { "id": "unnamed_shop", "name": "无名棺铺", "description": "一座隐藏在荒村中的老铺，门口挂着黑色招魂幡，卖的是活人用的棺材。" },
      { "id": "shop_front", "name": "棺铺正厅", "description": "铺内陈设古朴，墙上挂满旧棺板，掌柜是一张苍白的脸。" },
      { "id": "shop_secret", "name": "棺铺密室", "description": "铺子地下的密室，藏着古卷和送棺人的秘密。" },
      { "id": "back_road", "name": "返回之路", "description": "沈河川从棺铺返回沈家的路，途中可能遇到变故。" },
      { "id": "shen_home_final", "name": "沈家·最终时刻", "description": "沈长河即将油尽灯枯，替身即将完全成形。" }
    ],
    "startingLocation": "shen_home"
  },
  "start": "start",
  "nodes": {
    "start": {
      "id": "start",
      "location": "shen_home",
      "text": "沈河川走出地下室，手里握着棺账册。\n\n十九口棺的债。\n\n爷爷没有还清的债，现在轮到他了。\n\n他走进堂屋，看见父亲沈长河坐在椅子上，手里握着黑玉戒。\n\n'爸，我知道了。'\n\n沈长河抬起头，看着他。'你知道什么？'\n\n'沈家的债。二十口棺。爷爷只还了一口。'\n\n沈长河沉默了很久。'你不该去地下室的。'\n\n'我必须知道。'\n\n'知道了又能怎样？'\n\n'我要还清它。'\n\n沈长河看着他，眼神复杂。'你怎么还？'\n\n'去南岭。找原棺。'\n\n'你爷爷去过。他没回来。'\n\n'我和他不一样。'\n\n沈长河没有说话，只是把镇棺铃递给他。'带上它。铃裂了，还能响一次。只一次。'\n\n就在这时，门外传来一阵马蹄声——\n\n一辆木车停在院门口。车上放着一口黑棺，棺盖开着一条缝，从缝里透出一丝黑气。\n\n一个穿黑衣的男人站在车旁。\n\n'沈长河，第七块板到了。'\n\n沈长河脸色一变。'什么？'\n\n'合棺的第七块板。'\n\n男人从车上搬下一块漆黑的木板，放在门口。\n\n'三天后，替棺成形。'\n\n说完，他转身走向木车。\n\n'等等！'沈河川喊道。\n\n男人回头看了他一眼。'沈河川。你爷爷欠的债，该你还了。'\n\n然后，木车消失在夜色中。\n\n沈河川握紧镇棺铃，看着那块木板。\n\n三天后。\n\n替棺成形。\n\n他必须在三天内找到办法。",
      "choices": [
        { "text": "追踪木车", "next": "track_carriage" },
        { "text": "先研究棺账册", "next": "study_ledger" },
        { "text": "询问父亲关于第七块板的事", "next": "ask_father_board" }
      ]
    },
    "track_carriage": {
      "id": "track_carriage",
      "location": "graveyard",
      "text": "沈河川沿着木车留下的两道湿黑车辙，一路追出了村外。\n\n车辙在月光下像两条暗色的疤，一直延伸到远处的乱坟岗。\n\n沈河川走进乱坟岗时，车辙消失了。\n\n前方有一块倒在地上的木牌。",
      "choices": [
        { "text": "捡起木牌查看", "next": "pick_wooden_plate" },
        { "text": "先在乱坟岗搜寻四周", "next": "search_graveyard" },
        { "text": "蹲下检查车辙消失的位置", "next": "check_tracks" }
      ]
    },
    "study_ledger": {
      "id": "study_ledger",
      "location": "shen_home",
      "text": "沈河川回到地下室，继续翻看棺账册。\n\n翻到最后一页时，上面慢慢浮出一行新字——\n\n'第七块板到，替棺成形。'\n\n'若要毁替棺，需找替你的人。'\n\n'一命换一命。'\n\n他合上账册，心里一片沉重。\n\n替你的人。\n\n一命换一命。\n\n他想起父亲，想起沈舟。\n\n他不能让任何人替他。\n\n他必须找到别的办法。\n\n他走出地下室，决定追踪木车。",
      "actions": [
        { "type": "addVar", "name": "father_health", "value": -5 },
        { "type": "addVar", "name": "coffin_awake", "value": 10 }
      ],
      "choices": [
        { "text": "追踪木车", "next": "track_carriage" }
      ]
    },
    "ask_father_board": {
      "id": "ask_father_board",
      "location": "shen_home",
      "text": "'爸，第七块板是什么？'\n\n沈长河看着那块木板，脸色惨白。'合棺的最后一块板。六块板已经入棺，加上这第七块，替棺就完整了。'\n\n'什么是替棺？'\n\n'替棺是棺道的规矩。有人替了棺，就必须有人接替。你爷爷替了何秀娘，就必须有人替他。'\n\n'所以你替了爷爷？'\n\n'是。'\n\n'那我呢？'\n\n沈长河沉默了很久。'你不用替。'\n\n'为什么？'\n\n'因为我会想办法。'\n\n'什么办法？'\n\n沈长河没有回答，只是握紧黑玉戒。\n\n'你去追踪木车。送棺人知道一切。'\n\n沈河川看着父亲，心里一片沉重。\n\n他转身走出院门，沿着车辙追了出去。",
      "actions": [
        { "type": "addVar", "name": "father_health", "value": -10 }
      ],
      "choices": [
        { "text": "追踪木车", "next": "track_carriage" }
      ]
    },
    "pick_wooden_plate": {
      "id": "pick_wooden_plate",
      "location": "graveyard",
      "text": "沈河川弯腰捡起木牌。正面刻着四个字：无名棺铺。下面是一行地址——北方，石桥镇外，老槐树下。\n\n他翻到背面，看见一行小字：\n\n'想毁替棺，先找替你的人。'\n\n他心头一紧。替你的人——意思是必须有人替代沈长河，才能毁掉那口棺？\n\n他揣起木牌，朝北方走去。",
      "actions": [
        { "type": "addItem", "itemId": "wooden_plate" },
        { "type": "setVar", "name": "found_unnamed_shop", "value": true }
      ],
      "choices": [
        { "text": "前往北方石桥镇", "next": "road_to_shop" },
        { "text": "先回沈家告诉父亲", "next": "return_to_father" }
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
        { "type": "addItem", "itemId": "wooden_plate" },
        { "type": "addItem", "itemId": "coffin_nail" },
        { "type": "setVar", "name": "found_unnamed_shop", "value": true }
      ],
      "choices": [
        { "text": "回沈家与父亲商议", "next": "return_to_father" },
        { "text": "直接前往木牌上的地址", "next": "road_to_shop" }
      ]
    },
    "graveyard_fail": {
      "id": "graveyard_fail",
      "location": "graveyard",
      "text": "那只手越拉越紧——\n\n沈河川感觉到一股寒意从指尖蔓延到手臂。\n\n他猛地用力，终于挣脱了那只手。\n\n但他的手腕上多了一道淤青，形状像一只手印。\n\n他没有再停留，捡起木牌就跑出了乱坟岗。\n\n身后，传来一声长长的叹息。",
      "actions": [
        { "type": "addItem", "itemId": "wooden_plate" },
        { "type": "setVar", "name": "found_unnamed_shop", "value": true },
        { "type": "addVar", "name": "father_health", "value": -10 }
      ],
      "choices": [
        { "text": "赶紧回沈家", "next": "return_to_father" }
      ]
    },
    "check_tracks": {
      "id": "check_tracks",
      "location": "graveyard",
      "text": "沈河川蹲下细看车辙消失的地方。泥土表面有被重物压过的痕迹，但不像车轮——更像是棺材被放下又抬起的印记。\n\n他用手拨开一层浮土，下面露出一张旧纸片。\n\n纸片上写着：'无名棺铺，替活人做棺，替死人收名。'\n\n他收起纸片，又捡起木牌，决定去那个地方看看。",
      "actions": [
        { "type": "addItem", "itemId": "wooden_plate" },
        { "type": "addItem", "itemId": "sender_letter" },
        { "type": "setVar", "name": "found_unnamed_shop", "value": true }
      ],
      "choices": [
        { "text": "前往北方石桥镇", "next": "road_to_shop" }
      ]
    },
    "road_to_shop": {
      "id": "road_to_shop",
      "location": "unnamed_shop",
      "text": "沈河川走了一天一夜，终于在黄昏时分找到了石桥镇外那棵老槐树。\n\n槐树很大，树干要三人合抱。树下有一座破旧的木屋，门口挂着黑色布招，上面用白线绣着两个字——\n\n'棺铺'。\n\n他推门进去，屋内光线昏暗。墙上挂满了棺材板，地上散落着刨花和锯末。\n\n柜台后面坐着一个面色苍白的男人，看起来三四十岁，眼神很冷。\n\n'你来了。'男人说。\n\n'你知道我会来？'\n\n'送棺人告诉过我。'\n\n'你是谁？'\n\n'我是这铺子的掌柜，姓陈。你曾祖父见过我爷爷。'",
      "choices": [
        { "text": "'替棺怎么毁？'", "next": "ask_destroy" },
        { "text": "'你为什么要帮送棺人？'", "next": "ask_motive" },
        { "text": "'我父亲还有多少时间？'", "next": "ask_time" }
      ]
    },
    "ask_destroy": {
      "id": "ask_destroy",
      "location": "shop_front",
      "text": "'替棺怎么毁？'\n\n陈掌柜沉默片刻。'毁不了。'\n\n沈河川握紧旧刀。'那你们为什么要留下地址？'\n\n'毁不了，但可以换。换一个替身，把棺里的名字换出来。'\n\n'怎么换？'\n\n'找一个活人，心甘情愿把自己的名字写进去，然后把原来的名字抽出来。'\n\n沈河川心头一沉。'那就是一命换一命。'\n\n'对。'\n\n'没有别的办法？'\n\n陈掌柜看着他。'有——但你未必敢用。'\n\n'什么办法？'\n\n'烧掉棺账。棺账一烧，所有名字都散，替棺也会变成普通木头。但烧账的人，会被棺道永远记住，成为下一任守棺人。'\n\n沈河川沉默了。",
      "choices": [
        { "text": "'我选换名。'", "next": "choose_exchange" },
        { "text": "'我选烧账。'", "next": "choose_burn" },
        { "text": "'还有没有第三种方法？'", "next": "ask_third" }
      ]
    },
    "ask_motive": {
      "id": "ask_motive",
      "location": "shop_front",
      "text": "'你为什么要帮送棺人？'\n\n陈掌柜端起茶杯，喝了一口。'因为我是送棺人的后代。我家世代替棺道做工，不是害人，而是让棺道不至于溢出来。'\n\n'溢出来会怎样？'\n\n'死人无处可归，活人无处可避。'\n\n沈河川皱眉。'那你们把第七块板送进沈家，就是为了让棺道开一条口子？'\n\n'不是开一条口子——是把已经漏出来的东西引回去。'\n\n'什么意思？'\n\n'你父亲当年从南岭带出来的东西，已经让棺道缺口变大。我们必须用一口新棺把那个缺口封住。你家的替棺，就是封口。'\n\n沈河川恍然大悟——原来替棺不是灾，是补。",
      "choices": [
        { "text": "'那封口之后呢？'", "next": "after_seal" },
        { "text": "'但我父亲会死。'", "next": "father_death" }
      ]
    },
    "after_seal": {
      "id": "after_seal",
      "location": "shop_front",
      "text": "'封口之后，沈家就没有棺债了。但代价是你父亲的名字会留在棺里，成为封印的一部分。'\n\n沈河川握紧拳头。'那他能出来吗？'\n\n'不能。除非有人替他。'\n\n'替他的人会怎样？'\n\n'顶替他的位置，入棺。'\n\n沈河川看着自己的手，沉默了。",
      "choices": [
        { "text": "'我替他。'", "next": "choose_exchange" },
        { "text": "'还有没有别的办法？'", "next": "ask_third" }
      ]
    },
    "father_death": {
      "id": "father_death",
      "location": "shop_front",
      "text": "'但我父亲会死。'\n\n陈掌柜看着他。'他已经在死了。从你把第七块板带回去的那天起，他就开始替棺认路。现在他每咳一声，棺里的替身就学得更像一分。'\n\n'还有多久？'\n\n'少则三个月，多则半年。'\n\n沈河川闭上眼。'告诉我换名的方法。'",
      "choices": [
        { "text": "'我替父亲。'", "next": "choose_exchange" }
      ]
    },
    "ask_time": {
      "id": "ask_time",
      "location": "shop_front",
      "text": "'我父亲还有多少时间？'\n\n陈掌柜伸出三根手指。'三个月。最多四个月。'\n\n'如果在这期间毁掉替棺呢？'\n\n'那他就不会死。但棺道缺口会更大，可能会波及整个南岭。'\n\n沈河川沉默片刻。'告诉我所有可能的办法。'",
      "choices": [
        { "text": "'我选换名。'", "next": "choose_exchange" },
        { "text": "'我选烧账。'", "next": "choose_burn" },
        { "text": "'我选第三种。'", "next": "ask_third" }
      ]
    },
    "ask_third": {
      "id": "ask_third",
      "location": "shop_front",
      "text": "'还有第三种方法——找一口比替棺更老的棺，用它的债务来抵消。但那口棺在南岭最深处，极少有人能找到，更少有人能活着回来。'\n\n沈河川想起那块曾祖父的地图，想起父亲说过的话。\n\n'南岭里的倒悬黑棺？'\n\n陈掌柜眼神微变。'你知道？'\n\n'听父亲提过。'\n\n'那口棺是棺道之根。如果能用它做抵押，替棺的债务会被它吸走，但代价是——你必须在它面前留下一样东西。'\n\n'什么东西？'\n\n'你身上最珍视的东西。'\n\n沈河川脑海中闪过沈舟的脸。\n\n他握紧了拳头。",
      "choices": [
        { "text": "'我去找那口棺。'", "next": "go_to_hanging_coffin" },
        { "text": "'我换名。'", "next": "choose_exchange" },
        { "text": "'我烧账。'", "next": "choose_burn" }
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
        "correctAnswer": ["生死之间，替棺认路", "生死之间替棺认路"],
        "success": "got_ancient_scroll",
        "fail": "scroll_destroyed"
      }
    },
    "got_ancient_scroll": {
      "id": "got_ancient_scroll",
      "location": "shop_secret",
      "text": "沈河川输入口令，铜锁咔嗒一声打开了。\n\n陈掌柜把古卷递给他。'这是去南岭深处的地图。那口倒悬黑棺在'无主家'的内层，没有活人带路，你走不到。'\n\n'谁可以带路？'\n\n'送棺人。但送棺人不会为你带路，除非你答应他一件事。'\n\n'什么事？'\n\n'完成棺道未竟的使命——把南岭最后一处缺口封上。'\n\n沈河川接过古卷。'我答应。'\n\n陈掌柜看着他，目光复杂。'你会后悔的。'\n\n'也许。但我更怕什么都不做。'",
      "actions": [
        { "type": "addItem", "itemId": "ancient_scroll" },
        { "type": "setVar", "name": "found_ancient_way", "value": true }
      ],
      "choices": [
        { "text": "出发前往南岭", "next": "journey_to_nanling" },
        { "text": "先回沈家见父亲最后一面", "next": "return_to_father" }
      ]
    },
    "scroll_destroyed": {
      "id": "scroll_destroyed",
      "location": "shop_secret",
      "text": "口令输入错误！\n\n铜锁发出一声闷响，古卷在陈掌柜手中化为灰烬。\n\n'你输错了。但这不是你的错——是沈家的规矩在变。'\n\n陈掌柜叹了口气。'那你只能选换名或者烧账了。'\n\n沈河川看着那堆灰烬，心中一阵惋惜。\n\n他还有别的选择，但那条路已经断了。",
      "actions": [
        { "type": "setVar", "name": "found_ancient_way", "value": false }
      ],
      "choices": [
        { "text": "'我选换名。'", "next": "choose_exchange" },
        { "text": "'我选烧账。'", "next": "choose_burn" }
      ]
    },
    "journey_to_nanling": {
      "id": "journey_to_nanling",
      "location": "back_road",
      "text": "沈河川离开棺铺，向南岭进发。\n\n走到半路，他遇见了一个人——陆沉。\n\n陆沉的脸比记忆中更瘦，左脸的疤在月光下泛着青色。\n\n'河川，你不能去。'\n\n'为什么？'\n\n'那口棺认的是沈长河，你去没用。'\n\n'那谁去有用？'\n\n'沈舟。'\n\n沈河川心中一痛。'他还小。'\n\n'等不及了。你父亲撑不了那么久。'\n\n沈河川沉默了。'那我去换名。'\n\n陆沉看着他。'你换名，沈舟一样会继承余债。除非你彻底斩断。'\n\n'怎么斩？'\n\n'让沈长河的名字从棺账上消失。'\n\n'烧账？'\n\n'对。但你也会被棺道记住。'\n\n沈河川低头看着自己的手。'那就记住吧。'",
      "choices": [
        { "text": "继续去南岭", "next": "nanling_deep" },
        { "text": "折返沈家，烧账", "next": "return_and_burn" },
        { "text": "跟陆沉走，听取他的建议", "next": "follow_luchen" }
      ]
    },
    "nanling_deep": {
      "id": "nanling_deep",
      "location": "back_road",
      "text": "沈河川按照古卷的指引，穿过密林，来到一片巨大的地下石室。\n\n石室中央，一口巨大的黑棺倒悬在穹顶，棺口朝下。\n\n棺身没有刻字，但棺底有一个凹陷，形状像一只手掌。\n\n他想起陈掌柜的话——留下最珍视的东西。\n\n他从怀里掏出沈舟的照片，放在那个凹陷里。\n\n照片刚放进去，棺身猛然一震，发出一阵低沉的回响。\n\n地底传来一个声音——\n\n'沈长河，已释。'\n\n他愣住了。就这么简单？\n\n他还没来得及反应，石室四周的墙壁开始渗水，水很快漫到膝盖。\n\n他转身往外跑——\n\n身后传来棺主的轻笑声：'你留下了最珍视的东西，但棺也记住了你的气息。从今以后，你替沈舟挡了第一道，但第二道呢？'\n\n沈河川没有回头，拼命往外游。\n\n等他爬出洞口时，浑身湿透。但他心里有一丝轻松——至少，父亲的名字已经不在棺里了。\n\n他决定赶回沈家，把这个消息告诉父亲。",
      "actions": [
        { "type": "addVar", "name": "father_health", "value": 100 },
        { "type": "setVar", "name": "father_alive", "value": true },
        { "type": "setVar", "name": "burned_coffin", "value": false }
      ],
      "choices": [
        { "text": "赶回沈家", "next": "final_return" }
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
        { "type": "setVar", "name": "father_alive", "value": true },
        { "type": "setVar", "name": "burned_coffin", "value": true },
        { "type": "addVar", "name": "father_health", "value": 100 }
      ],
      "choices": [
        { "text": "接受命运", "next": "ending_burn_accepted" },
        { "text": "逃离南岭", "next": "ending_flee" }
      ]
    },
    "burn_fail": {
      "id": "burn_fail",
      "location": "shen_home_final",
      "text": "火柴被夺走了——\n\n黑棺发出一声震耳欲聋的咆哮，整座沈家都在摇晃。\n\n棺盖完全打开，里面伸出无数苍白的手，在空中乱抓。\n\n沈河川被一股力量推到墙边，撞得头晕目眩。\n\n'河川！'沈长河挣扎着从床上爬起来。\n\n他走到棺前，用自己的身体挡住那些手。\n\n'快走！'沈长河喊道，'我撑不住了！'\n\n沈河川看着父亲的背影，眼中含泪。\n\n但他知道，他不能就这么放弃。\n\n他捡起掉落的火柴，重新划亮——",
      "actions": [
        { "type": "addVar", "name": "father_health", "value": -30 }
      ],
      "choices": [
        { "text": "再次尝试点燃", "next": "return_and_burn" },
        { "text": "选择换名", "next": "choose_exchange" }
      ]
    },
    "choose_exchange": {
      "id": "choose_exchange",
      "location": "shop_secret",
      "text": "'我替父亲。'\n\n陈掌柜看着他，没有劝。'跟我来。'\n\n他带沈河川走进铺子地下的一间密室。密室里放着一口小棺材，只有一人长，棺盖已经打开。\n\n'躺进去。'\n\n沈河川没有犹豫，躺进了那口小棺。\n\n陈掌柜咬破指尖，在棺盖上写了一个'替'字。\n\n然后他低声念了几句。\n\n沈河川感觉到一阵昏沉，像有什么东西从身体里被抽走，又有什么东西被放了进来。\n\n他闭眼之前，听见陈掌柜说：'从今以后，沈长河的名字会从棺账上消失，但你的名字会补上。你会在棺道里走二十年，然后换下一个。'\n\n沈河川想起了沈舟。\n\n他愿意。",
      "actions": [
        { "type": "setVar", "name": "father_alive", "value": true },
        { "type": "setVar", "name": "chose_self", "value": true },
        { "type": "addVar", "name": "father_health", "value": 100 }
      ],
      "choices": [
        { "text": "进入棺道", "next": "ending_exchange" }
      ]
    },
    "choose_burn": {
      "id": "choose_burn",
      "location": "shop_secret",
      "text": "'我选烧账。'\n\n陈掌柜神色微变。'烧账会毁掉替棺，但你会被棺道永远标记。'\n\n'我知道。'\n\n陈掌柜递给他一页旧纸。'这是棺账的引页。烧掉它，主账也会一起烧。但你得在子时，站在沈家堂屋的正中央烧。'\n\n沈河川接过纸页，转身走回沈家。\n\n子时，他站在堂屋中央，点燃了那页纸。\n\n火焰升腾的瞬间，黑棺剧烈抖动，棺盖崩开，里面涌出的黑雾在火光中消散。\n\n他听见父亲在里屋咳嗽了一声，然后那咳嗽声停了。\n\n他低头，看见自己手腕上的黑纹。\n\n从今以后，他就是一个被棺道记住的人。",
      "actions": [
        { "type": "setVar", "name": "father_alive", "value": true },
        { "type": "setVar", "name": "burned_coffin", "value": true },
        { "type": "addVar", "name": "father_health", "value": 100 }
      ],
      "choices": [
        { "text": "留在沈家，守护一切", "next": "ending_burn_stay" },
        { "text": "离开沈家，独自流浪", "next": "ending_burn_leave" }
      ]
    },
    "follow_luchen": {
      "id": "follow_luchen",
      "location": "back_road",
      "text": "沈河川跟着陆沉走了一夜。\n\n陆沉把他带到一个废弃的村落，村口停着那辆木车。\n\n'送棺人就是这辆车的主人。但他不会让你见到他，除非你愿意接替他的位置。'\n\n'接替送棺人？'\n\n'对。每一代送棺人都是自愿的。你接替了，就可以调换棺账，把你父亲的名字换出来。'\n\n沈河川沉默了很久。'我接。'\n\n陆沉看着他，表情复杂。'你一旦接替，这辈子都不能停。你会像那辆车一样，永远在夜路上走。'\n\n'为了我爸，值得。'\n\n陆沉叹了口气，指向木车。'那就上车吧。'",
      "actions": [
        { "type": "setVar", "name": "father_alive", "value": true },
        { "type": "setVar", "name": "chose_other", "value": true },
        { "type": "addVar", "name": "father_health", "value": 100 }
      ],
      "choices": [
        { "text": "登上木车", "next": "ending_sender" }
      ]
    },
    "return_to_father": {
      "id": "return_to_father",
      "location": "shen_home_final",
      "text": "沈河川回到沈家时，沈长河已经不能下床了。\n\n'爸，我找到办法了。'\n\n沈长河看着他，目光疲惫。'河川，你已经走了很远了。'\n\n'但我还没走完。'\n\n沈长河伸手，握住他的手。'记住，沈家人可以怕死，但不能欠死人债。'\n\n'我不欠。'\n\n'你欠自己。'\n\n沈河川低头。'等我回来，我们就两清了。'\n\n他转身离开时，沈长河又叫住他——\n\n'河川，别恨我。'\n\n沈河川没有回头。'我不恨你。我恨的是那口棺。'",
      "actions": [
        { "type": "addVar", "name": "father_health", "value": 40 }
      ],
      "choices": [
        { "text": "前往南岭深处", "next": "nanling_deep" },
        { "text": "去无名棺铺换取办法", "next": "ask_third" }
      ]
    },
    "final_return": {
      "id": "final_return",
      "location": "shen_home_final",
      "text": "沈河川日夜兼程赶回沈家。\n\n推开门时，沈长河正坐在堂屋门槛上，抽着旱烟。\n\n'河川？'\n\n'爸，你没事了。'\n\n沈长河愣了一下，低头看向自己的双手。'那口棺……'\n\n'棺账已经烧了，替棺也散了。'\n\n沈长河沉默了很久，然后缓缓吐出一口烟。'你怎么办？'\n\n沈河川抬起手腕，露出那道黑纹。'我会活下去。'\n\n沈长河看着他，眼眶微红。'河川，爹对不起你。'\n\n'你没有。你只是做了你该做的。'\n\n父子俩坐在门槛上，看着院子里那棵老槐树。\n\n沈舟从里屋跑出来，喊了一声：'爷爷！爸爸！'\n\n沈河川伸手，把儿子揽进怀里。\n\n那一刻，风穿过竹林，像从未发生过任何事。",
      "actions": [
        { "type": "setVar", "name": "father_alive", "value": true },
        { "type": "addVar", "name": "father_health", "value": 100 }
      ],
      "choices": [
        { "text": "故事到此结束", "next": "ending_family" }
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
      "text": "沈长河活到了七十岁，无疾而终。\n\n沈河川送走了父亲，然后看着沈舟长大，成家，生子。\n\n他从未提起棺道的事，只是每年清明，会独自去后山坐一整天。\n\n那里埋着那枚黑玉戒和镇棺铃。\n\n沈舟问过他：'爸，你在看什么？'\n\n他笑了笑。'看一棵树。'\n\n那棵老槐树，已经比屋顶还高了。\n\n风吹过树叶，沙沙作响。\n\n沈河川知道，那是沈长河在说——\n\n'河川，你做到了。'\n\n（第五部分·完）",
      "isEnd": true,
      "endType": "true",
      "endMessage": "沈家三代人，用各自的二十年，换来了终结。沈河川终于可以安心地做父亲了。"
    }
  }
}