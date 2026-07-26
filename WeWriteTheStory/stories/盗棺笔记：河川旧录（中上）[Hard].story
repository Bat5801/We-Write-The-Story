{
  "title": "盗棺笔记：河川旧录（中上）[Hard]",
  "subtitle": "棺账·南岭来信·死人铺",
  "description": "你从乱葬坳回来后，父亲的身体一天比一天差。一本尘封的旧书、一封来自南岭的信、一个自称陆沉的男人——命运的齿轮开始转动。",
  "author": "Radiation Studio",
  "version": "3.0",
  "variables": {
    "fear_level": 50,
    "knowledge_about_guandao": 50,
    "has_read_old_book": false,
    "has_received_letter": false,
    "has_joined_expedition": false,
    "team_count": 0,
    "survivor_count": 8,
    "ending_reached": false
  },
  "features": {
    "inventory": true,
    "map": true
  },
  "items": [
    { "id": "black_jade_ring", "name": "黑玉戒", "icon": "💍", "description": "乱葬坳老人给你的戒指，里面封着血。" },
    { "id": "old_book", "name": "沈家旧书", "icon": "📖", "description": "父亲临终前交给你的书。" },
    { "id": "lu_chen_token", "name": "陆沉信物", "icon": "🪙", "description": "陆沉的铜牌。" },
    { "id": "nanling_letter", "name": "南岭来信", "icon": "✉️", "description": "一封来自南岭深处的信。" }
  ],
  "map": {
    "title": "南岭·石岭村",
    "locations": [
      { "id": "shen_home", "name": "沈家堂屋", "description": "沈家老宅。" },
      { "id": "dead_shop", "name": "死人铺", "description": "村口的棺材铺。" },
      { "id": "south_road", "name": "南岭路口", "description": "通往南岭的路口。" }
    ],
    "startingLocation": "shen_home"
  },
  "start": "start",
  "nodes": {
    "start": {
      "id": "start",
      "location": "shen_home",
      "text": "你回到家时，天已经亮了。你爹靠在床头，脸色比昨晚更差。\n\n'回来了？'\n\n你把昨晚发生的事说了一遍——何秀娘、白布鞋、空棺、乱葬坳、老人、棺账房、黑玉戒。\n\n你爹听完，沉默了很久。然后从枕头底下摸出一本旧书——《沈家棺录》。\n\n'这是你曾祖父留下来的。里面记着沈家所有替棺的事。'\n\n他把书递给你。\n\n'你看了就知道，该怎么做。'\n\n说完这句话，他闭上了眼。\n\n这一次，他没有再睁开。",
      "choices": [
        { "text": "立刻翻开旧书", "next": "read_old_book" },
        { "text": "先守在父亲身边", "next": "stay_with_father" }
      ]
    },
    "stay_with_father": {
      "id": "stay_with_father",
      "location": "shen_home",
      "text": "你坐在床边，握着父亲的手。他的手越来越凉，脉搏越来越弱。\n\n'爹。'\n\n他睁开眼，看了你一眼。\n\n'记住。南岭原棺现，沈家债可平。'\n\n'什么是原棺？'\n\n他没有回答。只说了最后一句话：\n\n'你会找到的。'\n\n然后，他永远闭上了眼睛。\n\n葬礼结束后，你回到堂屋，翻开了那本《沈家棺录》。",
      "actions": [
        { "type": "addVar", "name": "fear_level", "value": 15 },
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 5 }
      ],
      "choices": [
        { "text": "翻开旧书", "next": "read_old_book" }
      ]
    },
    "read_old_book": {
      "id": "read_old_book",
      "location": "shen_home",
      "text": "你翻开《沈家棺录》——\n\n第一页，空白。第二页，还是空白。直到第三页，才有字：\n\n'道光二十三年。沈林。'\n\n'替何氏妇棺。借棺者，留名。'\n\n'棺账已开。三代之内，不可平。'\n\n你继续往后翻。爷爷沈山那一页：\n\n'光绪十二年。沈山。'\n\n'替周氏子棺。空棺入坳，替者入账。'\n\n翻到最后一页，你看见一行新字——墨迹未干：\n\n'民国二十四年。沈长河。'\n\n'替何秀娘棺。借棺未清，替者入账。'\n\n'沈家第三代替棺人。'\n\n就在这时，门外传来敲门声。门缝里，塞进一封信。",
      "qte": {
        "type": "click",
        "title": "阅读旧书",
        "description": "快速翻阅《沈家棺录》，找出关键信息！",
        "buttonText": "翻页！",
        "requiredClicks": 10,
        "timeLimit": 3500,
        "success": "book_read_success",
        "fail": "book_read_fail"
      }
    },
    "book_read_success": {
      "id": "book_read_success",
      "location": "shen_home",
      "text": "你快速翻阅旧书，找到了关键信息——\n\n沈家三代替棺的秘密。最后一页上，你的名字已经被写了上去。\n\n'咚咚咚。'\n\n敲门声再次响起。门缝里，塞进一封信。\n\n信是用黄纸写的，字迹模糊。信封上只有两个字——南岭。\n\n你拆开。里面只有一行字：\n\n'八月十五，南岭口。寻原棺，平棺债。十二人齐，可入。'\n\n就在这时，门外传来一个声音——不是敲门，是说话：\n\n'沈长河？'\n\n你抬起头。门缝里，你看见一只手——戴着一枚黑色玉戒。\n\n和你手上那枚一模一样。",
      "actions": [
        { "type": "addItem", "itemId": "old_book" },
        { "type": "addItem", "itemId": "nanling_letter" },
        { "type": "setVar", "name": "has_read_old_book", "value": true },
        { "type": "setVar", "name": "has_received_letter", "value": true },
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 20 },
        { "type": "addVar", "name": "fear_level", "value": 30 }
      ],
      "choices": [
        { "text": "打开门", "next": "open_door" }
      ]
    },
    "book_read_fail": {
      "id": "book_read_fail",
      "location": "shen_home",
      "text": "你翻得太慢——\n\n旧书里的字开始扭曲，像活了一样，从纸上爬出来！\n\n你猛地松手，书掉在地上。那些字在地上形成了一行字：\n\n'沈长河。你太慢了。'\n\n最后一页上，你的名字旁边，多了一行字：\n\n'慢者，替棺加倍。'\n\n'咚咚咚。'\n\n敲门声响起。门缝里，塞进一封信。\n\n信上只有一行字：\n\n'八月十五，南岭口。'\n\n门外传来一个声音：\n\n'沈长河？开门。'",
      "actions": [
        { "type": "addItem", "itemId": "old_book" },
        { "type": "addItem", "itemId": "nanling_letter" },
        { "type": "addVar", "name": "fear_level", "value": 50 }
      ],
      "choices": [
        { "text": "打开门", "next": "open_door" }
      ]
    },
    "open_door": {
      "id": "open_door",
      "location": "shen_home",
      "text": "你打开门。门外站着一个男人。\n\n四十岁上下，穿一件黑色长袍，面容清瘦，眼神深邃。右手无名指上，戴着一枚黑色玉戒——和你手上那枚一模一样。\n\n'陆沉。'\n\n他自报姓名。\n\n'你是沈家的人。'\n\n'我是棺账房的守账人。'\n\n他从怀里掏出一块铜牌。铜牌上刻着两个字——棺账。\n\n'百年前，沈林与棺账房立下约定：三代之内，沈家必须入南岭，寻原棺，平棺债。'\n\n'若不平，沈家永远替棺。'\n\n'什么时候出发？'\n\n'三天后。八月十五。'\n\n'十二个人，去哪找？'\n\n'你已经找到了一个。'\n\n'谁？'\n\n'你自己。'\n\n他递给你一块铜牌。'三天后，去死人铺，找最后一个人。'",
      "actions": [
        { "type": "addItem", "itemId": "lu_chen_token" },
        { "type": "setVar", "name": "has_joined_expedition", "value": true },
        { "type": "setVar", "name": "team_count", "value": 11 },
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 25 },
        { "type": "addVar", "name": "fear_level", "value": 40 }
      ],
      "choices": [
        { "text": "前往死人铺", "next": "go_to_dead_shop" }
      ]
    },
    "go_to_dead_shop": {
      "id": "go_to_dead_shop",
      "location": "dead_shop",
      "text": "你来到村口的死人铺。店铺不大，门面很旧，门口摆着几口棺材，都用白布盖着。\n\n店里亮着一盏灯，昏黄的光透过纸窗，照在地上，投下一个扭曲的影子——像一口棺材。\n\n你推门进去。柜台后面坐着一个老头，头发花白，手里拿着一把刻刀，正在刻一块木牌。\n\n木牌上写着名字——何秀娘。\n\n'周老板？'\n\n老头抬起头，看了你一眼。他的眼睛很奇怪——左眼浑浊发白，右眼黑得很深。\n\n'你是沈长河。'\n\n他没有问，直接说出了你的名字。\n\n'陆沉让你来的？'\n\n'是。找最后一个人。'\n\n周老板看着你，沉默了一会儿。\n\n'跟我来。'\n\n他走向店铺后面。你跟着他穿过一条狭窄的走廊，来到一间密室。\n\n密室里摆满了棺材。最里面，有一口特别大的棺材。\n\n黑漆的，上面刻满了符文。棺材盖没有合上，里面躺着一个人——\n\n一个年轻女人。穿着一身白衣，面容安详，像是睡着了。\n\n但你知道，她不是睡着。\n\n因为她的胸口，没有起伏。",
      "qte": {
        "type": "sequence",
        "title": "进入死人铺",
        "description": "按顺序按下按键，推开死人铺的门！",
        "sequence": ["W", "A", "S", "D"],
        "timeLimit": 4000,
        "success": "enter_shop_success",
        "fail": "enter_shop_fail"
      }
    },
    "enter_shop_success": {
      "id": "enter_shop_success",
      "location": "dead_shop",
      "text": "你推开死人铺的门——\n\n店里弥漫着木头和油漆的味道，还有一丝淡淡的腐臭。\n\n柜台后面坐着周老板，手里拿着刻刀，正在刻一块木牌。\n\n木牌上写着：何秀娘。\n\n'你是沈长河。'\n\n他直接说出了你的名字。\n\n'陆沉让你来的？'\n\n'是。找最后一个人。'\n\n周老板看着你，沉默了一会儿。\n\n'跟我来。'\n\n他带你来到密室。密室里摆满了棺材。\n\n最里面，有一口特别大的黑漆棺材。棺材盖没有合上，里面躺着一个年轻女人——\n\n穿着一身白衣，面容安详，胸口却没有起伏。\n\n'她是谁？'\n\n'最后一个人。'\n\n'她已经死了。'\n\n'没有。'\n\n周老板走到棺材边，伸出手，在女人额头按了一下。\n\n女人的眼睛猛地睁开——\n\n眼白全是黑的。",
      "actions": [
        { "type": "addVar", "name": "fear_level", "value": 60 },
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 15 },
        { "type": "setVar", "name": "team_count", "value": 12 }
      ],
      "choices": [
        { "text": "继续看下去", "next": "watch_girl" }
      ]
    },
    "enter_shop_fail": {
      "id": "enter_shop_fail",
      "location": "dead_shop",
      "text": "你按错了顺序——\n\n门没有推开，反而发出一声刺耳的尖叫！\n\n门缝里，忽然伸出一只手，抓住你的手腕！\n\n你用力挣脱，手缩了回去。黄纸掉在地上。你捡起来一看——上面写着三个字：\n\n别进来。\n\n你正准备离开，门忽然自己开了。\n\n周老板站在门口，看着你。\n\n'你太慢了。'\n\n他转身走向店铺后面。你犹豫了一下，跟了上去。\n\n密室里，最里面的黑漆棺材前，周老板正在按一个女人的额头。\n\n女人的眼睛猛地睁开——\n\n眼白全是黑的。",
      "actions": [
        { "type": "addVar", "name": "fear_level", "value": 75 },
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 10 },
        { "type": "setVar", "name": "team_count", "value": 12 }
      ],
      "choices": [
        { "text": "继续看下去", "next": "watch_girl" }
      ]
    },
    "watch_girl": {
      "id": "watch_girl",
      "name": "dead_shop",
      "text": "你强迫自己站在原地，看着那个女人。\n\n她的眼睛睁开了——眼白全是黑的，像两口小小的棺材。\n\n但她没有看你。她的目光穿过你，看向密室深处。\n\n'有人来了。'\n\n她的声音很轻。\n\n'十二个人。'\n\n'什么时候到？'\n\n'三天后。'\n\n'八月十五。'\n\n她说出这四个字，眼睛慢慢闭上了。\n\n'她叫孙铜锣。'周老板说。\n\n'替棺人。第十一个。也是最后一个。'\n\n'她怎么变成这样的？'\n\n'替棺之后，就成了这样。半人半鬼，不死不活。'\n\n周老板看着你，眼神深邃。\n\n'沈长河，你要记住——'\n\n'替棺人，都是死人。'\n\n'只是还没埋而已。'",
      "actions": [
        { "type": "addVar", "name": "fear_level", "value": 70 },
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 25 }
      ],
      "choices": [
        { "text": "离开死人铺", "next": "leave_shop" }
      ]
    },
    "leave_shop": {
      "id": "leave_shop",
      "location": "south_road",
      "text": "你离开死人铺，站在村口的老槐树下。\n\n天已经完全黑了。远处的竹林在风中摇曳，发出沙沙的声音，像有无数人在低声说话。\n\n你抬头看着老槐树——树上挂满了红绳，每一根下面都吊着一块小木牌。\n\n木牌上写着名字——何秀娘、周满仓、赵金斗、李三娘……\n\n这些名字，你在乱葬坳的棺壁上见过，在《沈家棺录》里读过，在死人铺的木牌上刻过。\n\n它们像一张网，把你牢牢缠住。\n\n你低头看了看手上的黑玉戒——戒指在月光下泛出一线暗红，像里面封着的血正在慢慢流动。\n\n你握紧戒指，深吸一口气。\n\n三天后。八月十五。南岭口。\n\n十二个人。\n\n你不知道等待你的是什么。\n\n但你知道，你必须去。\n\n因为沈家的债，从你这里开始，也要从你这里结束。\n\n（第二部分·完）",
      "isEnd": true,
      "endType": "true",
      "endMessage": "十二人集齐，只待出发。死人铺的秘密、孙铜锣的诡异、原棺的真相——一切都将在南岭深处揭晓。"
    }
  }
}