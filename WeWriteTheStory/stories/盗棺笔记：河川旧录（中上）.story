{
  "title": "盗棺笔记：河川旧录（中上）",
  "subtitle": "棺账·南岭来信·死人铺",
  "description": "你从乱葬坳回来后，父亲的身体一天比一天差。一本尘封的旧书、一封来自南岭的信、一个自称陆沉的男人——命运的齿轮开始转动。",
  "author": "Radiation Studio",
  "version": "3.0",
  "variables": {
    "fear_level": 40,
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
    { "id": "coffin_bar", "name": "黑木棺杠", "icon": "🔧", "description": "父亲留下的棺杠，黑木做的，两头磨得发亮。" },
    { "id": "black_jade_ring", "name": "黑玉戒", "icon": "💍", "description": "乱葬坳老人给你的戒指，里面封着血。" },
    { "id": "old_book", "name": "沈家旧书", "icon": "📖", "description": "父亲临终前交给你的书，记载着沈家三代抬棺的秘密。" },
    { "id": "nanling_letter", "name": "南岭来信", "icon": "✉️", "description": "一封来自南岭深处的信，字迹模糊，信纸发黄。" },
    { "id": "lu_chen_token", "name": "陆沉信物", "icon": "🪙", "description": "陆沉留下的铜令牌，上面刻着'棺账'二字。" }
  ],
  "map": {
    "title": "南岭·石岭村",
    "locations": [
      { "id": "shen_home", "name": "沈家堂屋", "description": "沈家老宅，父亲病重在床。" },
      { "id": "village_gate", "name": "村口", "description": "石岭村的村口，一棵老槐树。" },
      { "id": "dead_shop", "name": "死人铺", "description": "村口的棺材铺，老板姓周，据说能看见阴间的路。" },
      { "id": "lu_chen_inn", "name": "陆沉客栈", "description": "陆沉住的客栈，在镇东头。" },
      { "id": "south_road", "name": "南岭路口", "description": "通往南岭的路口，终年大雾。" }
    ],
    "startingLocation": "shen_home"
  },
  "start": "start",
  "nodes": {
    "start": {
      "id": "start",
      "location": "shen_home",
      "text": "你回到家时，天已经亮了。\n\n雨还在下，檐角的水一滴一滴往下掉，在石阶上砸出一个个小小的坑。\n\n你爹靠在床头，脸色比昨晚更差。嘴唇发青，眼窝深陷，整个人瘦得像一张被抽干了血的皮。\n\n'回来了？'\n\n他声音很轻，像从很远的地方飘过来。\n\n你点头，走到床边。\n\n'出事了？'\n\n你没有瞒他。把昨晚发生的事从头到尾说了一遍——何秀娘、白布鞋、空棺、乱葬坳、老人、棺账房、黑玉戒。\n\n你爹听完，沉默了很久。久到你以为他已经睡着了。\n\n就在你要离开的时候，他忽然伸出手，抓住你的手腕。\n\n那只手很凉，比昨晚棺材底下的水还凉。\n\n'长河。'\n\n'嗯。'\n\n'沈家欠了三代的债。'\n\n'我知道了。'\n\n'你曾祖父沈林，替棺第一。'\n\n'我在棺壁上看到了他的名字。'\n\n'你爷爷沈山，替棺第二。'\n\n你心里一沉。原来爷爷也是替棺人。\n\n'轮到你了。'\n\n你爹松开手，从枕头底下摸出一本旧书。\n\n书皮发黑，书页发黄，封面上写着四个字：\n\n沈家棺录。\n\n'这是你曾祖父留下来的。里面记着沈家所有替棺的事。'\n\n他把书递给你。你接过来——书很重，不是纸重，是里面的字重。\n\n'你看了就知道，该怎么做。'\n\n说完这句话，你爹闭上了眼。\n\n这一次，他没有再睁开。",
      "choices": [
        { "text": "立刻翻开旧书", "next": "read_old_book" },
        { "text": "先守在父亲身边", "next": "stay_with_father" }
      ]
    },
    "stay_with_father": {
      "id": "stay_with_father",
      "location": "shen_home",
      "text": "你没有立刻看书，而是坐在床边，握着父亲的手。\n\n他的手越来越凉，脉搏越来越弱。你知道，他的时间不多了。\n\n'爹。'\n\n他睁开眼，看了你一眼。\n\n'记住。南岭原棺现，沈家债可平。'\n\n'什么是原棺？'\n\n他没有回答。只说了最后一句话：\n\n'你会找到的。'\n\n然后，他永远闭上了眼睛。\n\n你握着他的手坐了很久。窗外的雨停了，但天还是阴沉沉的。\n\n你爹下葬那天，来了很多人。村里的老人说，沈老头走得安详，不像抬棺的人。\n\n你知道，他走得不安详。他把三代人的债，都交给了你。\n\n葬礼结束后，你回到堂屋，翻开了那本《沈家棺录》。",
      "actions": [
        { "type": "addVar", "name": "fear_level", "value": 10 },
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 5 }
      ],
      "choices": [
        { "text": "翻开旧书", "next": "read_old_book" }
      ]
    },
    "read_old_book": {
      "id": "read_old_book",
      "location": "shen_home",
      "text": "你翻开《沈家棺录》——\n\n第一页，空白。\n\n第二页，还是空白。\n\n直到第三页，才有字。字迹很潦草，像是在极度恐惧中写下的：\n\n'道光二十三年。沈林。'\n\n'替何氏妇棺。借棺者，留名。'\n\n'棺账已开。三代之内，不可平。'\n\n你继续往后翻。每一页都记载着不同的替棺事件——有些只有几行字，有些写得密密麻麻。\n\n你看到爷爷沈山那一页：\n\n'光绪十二年。沈山。'\n\n'替周氏子棺。空棺入坳，替者入账。'\n\n'三代之约，不可破。'\n\n翻到最后一页，你看见一行新字——墨迹未干，像是刚写上去的：\n\n'民国二十四年。沈长河。'\n\n'替何秀娘棺。借棺未清，替者入账。'\n\n'沈家第三代替棺人。'\n\n你心里一沉。原来这一切，早在百年前就已经注定。\n\n就在这时，门外传来敲门声。\n\n'咚咚咚。'\n\n你抬头看去——门缝里，塞进一封信。",
      "qte": {
        "type": "click",
        "title": "阅读旧书",
        "description": "快速翻阅《沈家棺录》，找出关键信息！",
        "buttonText": "翻页！",
        "requiredClicks": 6,
        "timeLimit": 4000,
        "success": "book_read_success",
        "fail": "book_read_fail"
      }
    },
    "book_read_success": {
      "id": "book_read_success",
      "location": "shen_home",
      "text": "你快速翻阅旧书，找到了关键信息——\n\n沈家三代替棺的秘密。每一代都有记载，每一次都是借棺未清，替者入账。\n\n最后一页上，你的名字已经被写了上去。\n\n'咚咚咚。'\n\n敲门声再次响起。门缝里，塞进一封信。\n\n信是用黄纸写的，字迹模糊，像是被水浸过。信封上没有落款，只有两个字——\n\n南岭。\n\n你拿起信，拆开。里面只有一张纸，纸上只有一行字：\n\n'八月十五，南岭口。'\n\n'寻原棺，平棺债。'\n\n'十二人齐，可入。'\n\n你看着这行字，心里一动。原棺。这个词，你在棺账房里听过。\n\n就在这时，门外传来一个声音——不是敲门，是说话：\n\n'沈长河？'\n\n你抬起头。门缝里，你看见一只手——戴着一枚黑色玉戒。\n\n和你手上那枚一模一样。",
      "actions": [
        { "type": "addItem", "itemId": "old_book" },
        { "type": "addItem", "itemId": "nanling_letter" },
        { "type": "setVar", "name": "has_read_old_book", "value": true },
        { "type": "setVar", "name": "has_received_letter", "value": true },
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 20 },
        { "type": "addVar", "name": "fear_level", "value": 20 }
      ],
      "choices": [
        { "text": "打开门", "next": "open_door" },
        { "text": "隔着门问他是谁", "next": "ask_outside" }
      ]
    },
    "book_read_fail": {
      "id": "book_read_fail",
      "location": "shen_home",
      "text": "你翻得太慢——\n\n旧书里的字开始扭曲，像活了一样，从纸上爬出来，顺着你的手指往上爬！\n\n你猛地松手，书掉在地上。\n\n那些字并没有消失——它们在地上形成了一行字：\n\n'沈长河。'\n\n'你太慢了。'\n\n你头皮发麻，赶紧捡起书，重新翻到最后一页。\n\n这一次，你看清了——最后一页上，你的名字旁边，多了一行字：\n\n'慢者，替棺加倍。'\n\n'咚咚咚。'\n\n敲门声响起。门缝里，塞进一封信。\n\n信上只有一行字：\n\n'八月十五，南岭口。'\n\n'寻原棺，平棺债。'\n\n门外传来一个声音：\n\n'沈长河？开门。'",
      "actions": [
        { "type": "addItem", "itemId": "old_book" },
        { "type": "addItem", "itemId": "nanling_letter" },
        { "type": "setVar", "name": "has_read_old_book", "value": true },
        { "type": "setVar", "name": "has_received_letter", "value": true },
        { "type": "addVar", "name": "fear_level", "value": 40 }
      ],
      "choices": [
        { "text": "打开门", "next": "open_door" }
      ]
    },
    "open_door": {
      "id": "open_door",
      "location": "shen_home",
      "text": "你打开门。\n\n门外站着一个男人。\n\n四十岁上下，穿一件黑色长袍，面容清瘦，眼神深邃。右手无名指上，戴着一枚黑色玉戒——和你手上那枚一模一样。\n\n'陆沉。'\n\n他自报姓名。声音不高，却有一种让人无法拒绝的力量。\n\n'你是沈家的人。'\n\n'你怎么知道？'\n\n'这枚戒指引我来的。'\n\n他抬起手，展示那枚黑玉戒。戒指在阳光下泛出一线暗红，像里面封着的血正在慢慢流动。\n\n'你也是替棺人？'\n\n'不是。'\n\n他走进堂屋，目光落在你手中的信上。\n\n'你收到信了。'\n\n'是。'\n\n'八月十五，南岭口。十二人齐，可入。'\n\n他重复了信上的内容，然后看着你：\n\n'你是沈长河。沈家第三代替棺人。'\n\n'你怎么知道这么多？'\n\n他没有回答，只是从怀里掏出一块铜牌。铜牌上刻着两个字——\n\n棺账。\n\n'我是棺账房的守账人。'\n\n'守账人？'\n\n'负责替棺债。'\n\n他把铜牌放在桌上。\n\n'百年前，沈家第一代替棺人沈林，与棺账房立下约定：三代之内，沈家必须入南岭，寻原棺，平棺债。'\n\n'若不平，沈家永远替棺。'\n\n你看着他，心里一片冰凉。\n\n'什么时候出发？'\n\n'三天后。八月十五。'\n\n'十二个人，去哪找？'\n\n他看着你，嘴角微微上扬。\n\n'你已经找到了一个。'\n\n'谁？'\n\n'你自己。'",
      "choices": [
        { "text": "答应参加", "next": "agree_join" },
        { "text": "询问更多细节", "next": "ask_details" },
        { "text": "拒绝参加", "next": "refuse_join" }
      ]
    },
    "ask_outside": {
      "id": "ask_outside",
      "location": "shen_home",
      "text": "'你是谁？'\n\n门外沉默了一会儿。\n\n'陆沉。'\n\n'陆沉？我不认识你。'\n\n'你会认识的。'\n\n他的声音很平静，却有一种让人无法拒绝的力量。\n\n'我是棺账房的守账人。你手上的黑玉戒，是我给你的。'\n\n你低头看了看手上的戒指——是乱葬坳那个老人给的。\n\n'那个老人是你？'\n\n'不是。我是他的继任者。'\n\n'继任者？'\n\n'百年前，沈家第一代替棺人与棺账房立下约定。约定到期，我来履行。'\n\n你心里一沉。\n\n'什么约定？'\n\n'三代之内，沈家必须入南岭，寻原棺，平棺债。'\n\n'若不平呢？'\n\n'沈家永远替棺。'\n\n门外安静了很久。\n\n'八月十五，南岭口。十二人齐，可入。'\n\n'我等你。'\n\n脚步声渐渐远去。\n\n你握着那封信，站在门口，看着空荡荡的街道。",
      "actions": [
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 15 },
        { "type": "addVar", "name": "fear_level", "value": 25 }
      ],
      "choices": [
        { "text": "去找陆沉", "next": "find_lu_chen" },
        { "text": "先考虑一下", "next": "think_over" }
      ]
    },
    "find_lu_chen": {
      "id": "find_lu_chen",
      "location": "lu_chen_inn",
      "text": "你按照陆沉留下的地址，找到了镇东头的客栈。\n\n客栈很旧，门楣上的招牌已经看不清字了。门口坐着一个老头，正在晒太阳。\n\n'请问，陆沉住在这里吗？'\n\n老头睁开眼，看了你一眼。\n\n'他等你很久了。二楼最里面那间。'\n\n你上楼，敲了敲门。\n\n'进来。'\n\n你推开门。\n\n陆沉坐在窗边，手里拿着那本《沈家棺录》——不知什么时候被他拿走了。\n\n'你来了。'\n\n他放下书，看着你。\n\n'考虑好了？'\n\n'我想知道更多。'\n\n'坐下说。'\n\n你坐下。他给你倒了一杯茶。茶很凉，像从井里刚打上来的。\n\n'百年前，沈林替何氏妇棺。那口棺，不是普通的棺。'\n\n'是什么？'\n\n'原棺的一部分。'\n\n'原棺？'\n\n陆沉点点头。\n\n'南岭深处，有一口原棺。那是天下所有棺的源头。借棺、替棺、棺债——都源于那口原棺。'\n\n'沈林替了第一口棺，就等于和原棺结下了契约。契约规定：三代之内，沈家必须入南岭，找到原棺，还清所有棺债。'\n\n'若不平，沈家永远替棺。'\n\n你心里一片冰凉。\n\n'那这次入南岭，是去还债？'\n\n'不是还债。是了债。'\n\n他看着你，眼神深邃。\n\n'找到原棺，契约自然解除。'\n\n'找不到呢？'\n\n'沈家永远替棺。'\n\n你沉默了很久。\n\n'什么时候出发？'\n\n'三天后。八月十五。'\n\n'十二个人，去哪找？'\n\n'我已经找了十个。加上你，十一个。还差一个。'\n\n'还差谁？'\n\n他没有回答。只是从怀里掏出一块铜牌，放在桌上。\n\n'拿着这个。到时候，自然会有人来找你。'",
      "actions": [
        { "type": "addItem", "itemId": "lu_chen_token" },
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 30 },
        { "type": "addVar", "name": "fear_level", "value": 35 },
        { "type": "setVar", "name": "team_count", "value": 11 }
      ],
      "choices": [
        { "text": "答应参加", "next": "agree_join" },
        { "text": "再考虑一下", "next": "think_over" }
      ]
    },
    "think_over": {
      "id": "think_over",
      "location": "shen_home",
      "text": "你没有立刻答应，而是回到家里，坐在父亲的灵前。\n\n灵前的蜡烛在风中摇曳，照得墙上的影子忽长忽短。\n\n你想起父亲说的话：'南岭原棺现，沈家债可平。'\n\n想起棺账房里那个老人说的话：'从今晚开始，你不是抬棺人。你是替棺人。'\n\n想起旧书上记载的秘密：'三代之内，不可平。'\n\n你知道，你没有选择。\n\n从你替何秀娘补棺钉的那一刻起，你就已经踏上了这条路。\n\n要么入南岭，找原棺，平棺债。\n\n要么永远替棺，直到沈家断子绝孙。\n\n你深吸一口气，站起身。\n\n'爹，我走了。'\n\n你拿起黑玉戒，戴在手上。戒指很凉，却有一种奇异的力量，像在告诉你——\n\n走吧。\n\n路在前面。",
      "actions": [
        { "type": "addVar", "name": "fear_level", "value": 20 }
      ],
      "choices": [
        { "text": "去找陆沉", "next": "find_lu_chen" }
      ]
    },
    "agree_join": {
      "id": "agree_join",
      "location": "shen_home",
      "text": "'我去。'\n\n陆沉看着你，点了点头。\n\n'好。'\n\n他从怀里掏出一块铜牌，递给你。\n\n'拿着这个。到时候，自然会有人来找你。'\n\n你接过铜牌。铜牌很沉，上面刻着'棺账'两个字，摸上去冰凉刺骨。\n\n'三天后，八月十五，南岭口。十二个人，缺一不可。'\n\n'还有一个人，是谁？'\n\n他没有回答，只是转身走向门口。\n\n'你会知道的。'\n\n走到门口，他停下脚步。\n\n'对了。'\n\n'什么？'\n\n'这三天，你最好去一趟死人铺。'\n\n'死人铺？'\n\n'村口的棺材铺。老板姓周。'\n\n'去那里干什么？'\n\n他回头看了你一眼，眼神意味深长。\n\n'找最后一个人。'\n\n说完，他推门走了出去。\n\n你站在原地，握着铜牌，心里一片茫然。\n\n死人铺。找最后一个人。\n\n你不知道他说的是谁。但你知道，你必须去。",
      "actions": [
        { "type": "addItem", "itemId": "lu_chen_token" },
        { "type": "setVar", "name": "has_joined_expedition", "value": true },
        { "type": "setVar", "name": "team_count", "value": 11 },
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 25 }
      ],
      "choices": [
        { "text": "前往死人铺", "next": "go_to_dead_shop" },
        { "text": "先准备行李", "next": "prepare_bags" }
      ]
    },
    "ask_details": {
      "id": "ask_details",
      "location": "shen_home",
      "text": "'我想知道更多。'\n\n陆沉看着你，点了点头。\n\n'问吧。'\n\n'十二个人，都是什么人？'\n\n'替棺人。'\n\n'什么意思？'\n\n'每个人都替过棺。每个人都欠着棺债。'\n\n'他们在哪？'\n\n'各地都有。三天后，会在南岭口集合。'\n\n'原棺是什么？'\n\n陆沉沉默了一会儿。\n\n'原棺是天下所有棺的源头。它不在地上，也不在地下。它在南岭深处，一个叫无归坳的地方。'\n\n'无归坳？'\n\n'那里埋着所有替棺人的名字。也埋着沈家三代的债。'\n\n你心里一沉。\n\n'那这次去，是要做什么？'\n\n'找到原棺，打开它。'\n\n'打开它会怎么样？'\n\n'契约解除。棺债还清。'\n\n'如果打不开呢？'\n\n'所有人都替棺。'\n\n你看着他，心里一片冰凉。\n\n'还有一个问题。'\n\n'说。'\n\n'你为什么要帮我？'\n\n陆沉看着你，嘴角微微上扬。\n\n'我不是帮你。我是帮棺账房。'\n\n'什么意思？'\n\n'百年前，沈林与棺账房立下约定。约定到期，我必须来履行。'\n\n'若不履行呢？'\n\n'棺账房的账，永远还不清。'\n\n他站起身，走向门口。\n\n'三天后，八月十五，南岭口。'\n\n'别迟到。'\n\n他走后，你坐在堂屋里，握着那枚黑玉戒，心里久久不能平静。",
      "actions": [
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 35 },
        { "type": "addVar", "name": "fear_level", "value": 30 }
      ],
      "choices": [
        { "text": "前往死人铺", "next": "go_to_dead_shop" }
      ]
    },
    "refuse_join": {
      "id": "refuse_join",
      "location": "shen_home",
      "text": "'我不去。'\n\n陆沉看着你，没有说话。\n\n过了很久，他才开口：\n\n'你以为，你有选择吗？'\n\n'我当然有选择。'\n\n'是吗？'\n\n他抬起手，指了指你的左腕。\n\n你低头看去——那圈黑印还在，细细一圈，贴在皮肤下面。\n\n'从你替何秀娘补棺钉的那一刻起，你就已经签了契约。'\n\n'契约规定：三代之内，沈家必须入南岭。'\n\n'你不去，契约不会解除。'\n\n'你爹的债，你爷爷的债，你曾祖父的债——都会压在你身上。'\n\n'直到你死。'\n\n'直到沈家断子绝孙。'\n\n你看着他，心里一片冰凉。\n\n他说的是真的。你没有选择。\n\n'好。我去。'\n\n陆沉看着你，点了点头。\n\n'这才对。'\n\n他从怀里掏出一块铜牌，递给你。\n\n'三天后，八月十五，南岭口。'\n\n'去死人铺，找最后一个人。'\n\n说完，他走了出去。",
      "actions": [
        { "type": "addItem", "itemId": "lu_chen_token" },
        { "type": "setVar", "name": "has_joined_expedition", "value": true },
        { "type": "setVar", "name": "team_count", "value": 11 },
        { "type": "addVar", "name": "fear_level", "value": 45 }
      ],
      "choices": [
        { "text": "前往死人铺", "next": "go_to_dead_shop" }
      ]
    },
    "prepare_bags": {
      "id": "prepare_bags",
      "location": "shen_home",
      "text": "你决定先准备行李。\n\n入南岭，不是小事。你需要带足够的干粮、水、火折子、绳子、刀。\n\n你翻出父亲留下的背包，开始收拾。\n\n收拾到一半，你忽然发现背包底部有一个暗格。\n\n你打开暗格——里面放着一个小小的木盒。\n\n木盒上刻着'沈家秘物'四个字。\n\n你打开木盒——里面放着三样东西：\n\n一枚铜钱，上面刻着'替棺'两个字。\n\n一张泛黄的纸，画着一幅地图，标注着'南岭·无归坳'。\n\n还有一把小小的钥匙，铜制的，上面刻着'棺'字。\n\n你看着这些东西，心里一动。父亲早就知道这一天会来。\n\n他把所有需要的东西，都准备好了。\n\n你把这些东西放进背包，继续收拾。\n\n收拾完，你站起身，看向窗外。\n\n天已经黑了。村口的死人铺亮着一盏灯，昏黄的光透过纸窗，在地上投下一个扭曲的影子——\n\n像一口棺材。\n\n你深吸一口气，走向门口。",
      "actions": [
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 20 },
        { "type": "addVar", "name": "fear_level", "value": 25 }
      ],
      "choices": [
        { "text": "前往死人铺", "next": "go_to_dead_shop" }
      ]
    },
    "go_to_dead_shop": {
      "id": "go_to_dead_shop",
      "location": "dead_shop",
      "text": "你来到村口的死人铺。\n\n店铺不大，门面很旧，门框上挂着一块褪色的招牌，写着'周家棺铺'。门口摆着几口棺材，有新有旧，都用白布盖着。\n\n店里亮着一盏灯，昏黄的光透过纸窗，照在地上，投下一个扭曲的影子。\n\n你推门进去。\n\n店里弥漫着一股木头和油漆混合的味道，还有一丝淡淡的腐臭——不是尸体的腐臭，是木头腐烂的味道。\n\n柜台后面坐着一个老头，头发花白，穿着一件旧长衫，手里拿着一把刻刀，正在刻一块木牌。\n\n木牌上写着名字——何秀娘。\n\n你心里一沉。\n\n'周老板？'\n\n老头抬起头，看了你一眼。他的眼睛很奇怪——左眼浑浊发白，右眼黑得很深，像一口小小的棺材。\n\n'你是沈长河。'\n\n他没有问，直接说出了你的名字。\n\n'你知道我？'\n\n'沈家的人，我都认识。'\n\n他放下刻刀，站起身。\n\n'你爹走了？'\n\n'走了。'\n\n'可惜。他是个好人。'\n\n他走到门口，看了看外面。\n\n'陆沉让你来的？'\n\n'是。'\n\n'他说什么？'\n\n'让我来找最后一个人。'\n\n周老板看着你，沉默了一会儿。\n\n'跟我来。'\n\n他走向店铺后面。你跟着他穿过一条狭窄的走廊，来到一间密室。\n\n密室里摆满了棺材。\n\n有新的，有旧的，有大的，有小的。有些棺材盖开着，里面空空荡荡；有些棺材盖紧闭，却从缝隙里透出一丝黑气。\n\n最里面，有一口特别大的棺材。\n\n黑漆的，上面刻满了符文。棺材盖没有合上，里面躺着一个人——\n\n一个年轻女人。\n\n穿着一身白衣，面容安详，像是睡着了。\n\n但你知道，她不是睡着。\n\n因为她的胸口，没有起伏。",
      "qte": {
        "type": "sequence",
        "title": "进入死人铺",
        "description": "按顺序按下按键，推开死人铺的门！",
        "sequence": ["W", "A", "S"],
        "timeLimit": 5000,
        "success": "enter_shop_success",
        "fail": "enter_shop_fail"
      }
    },
    "enter_shop_success": {
      "id": "enter_shop_success",
      "location": "dead_shop",
      "text": "你推开死人铺的门——\n\n店里弥漫着木头和油漆的味道，还有一丝淡淡的腐臭。\n\n柜台后面坐着周老板，手里拿着刻刀，正在刻一块木牌。\n\n木牌上写着：何秀娘。\n\n'你是沈长河。'\n\n他直接说出了你的名字。\n\n'陆沉让你来的？'\n\n'是。找最后一个人。'\n\n周老板看着你，沉默了一会儿。\n\n'跟我来。'\n\n他带你来到密室。密室里摆满了棺材。\n\n最里面，有一口特别大的黑漆棺材。棺材盖没有合上，里面躺着一个年轻女人——\n\n穿着一身白衣，面容安详，胸口却没有起伏。\n\n你心里一紧。\n\n'她是谁？'\n\n'最后一个人。'\n\n'她已经死了。'\n\n'没有。'\n\n周老板走到棺材边，伸出手，在女人额头按了一下。\n\n女人的眼睛猛地睁开——\n\n眼白全是黑的。",
      "actions": [
        { "type": "addVar", "name": "fear_level", "value": 50 },
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 15 }
      ],
      "choices": [
        { "text": "后退", "next": "step_back" },
        { "text": "继续看下去", "next": "watch_girl" }
      ]
    },
    "enter_shop_fail": {
      "id": "enter_shop_fail",
      "location": "dead_shop",
      "text": "你按错了顺序——\n\n门没有推开，反而发出一声刺耳的尖叫！\n\n你抬头看去——门缝里，忽然伸出一只手，抓住你的手腕！\n\n那只手很凉，指甲乌紫，指缝里夹着一张黄纸。\n\n你用力挣脱，手缩了回去。\n\n黄纸掉在地上。你捡起来一看——上面写着三个字：\n\n别进来。\n\n你心里一沉，正准备离开，门忽然自己开了。\n\n周老板站在门口，看着你。\n\n'你太慢了。'\n\n他转身走向店铺后面。你犹豫了一下，跟了上去。\n\n密室里，最里面的黑漆棺材前，周老板正在按一个女人的额头。\n\n女人的眼睛猛地睁开——\n\n眼白全是黑的。",
      "actions": [
        { "type": "addVar", "name": "fear_level", "value": 65 },
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 10 }
      ],
      "choices": [
        { "text": "后退", "next": "step_back" },
        { "text": "继续看下去", "next": "watch_girl" }
      ]
    },
    "step_back": {
      "id": "step_back",
      "location": "dead_shop",
      "text": "你吓得后退一步。\n\n'她……她是谁？'\n\n周老板转过身，看着你。\n\n'她叫孙铜锣。'\n\n'孙铜锣？'\n\n'她是第十一个替棺人。也是最后一个。'\n\n'她已经死了。'\n\n'没有。她只是睡着了。'\n\n'眼白全是黑的，还叫睡着了？'\n\n周老板没有回答，只是从怀里掏出一枚铜钱，放在孙铜锣的胸口。\n\n铜钱刚碰到她的皮肤，她的眼睛就慢慢闭上了。\n\n'她替过棺。'\n\n周老板说。\n\n'替谁？'\n\n'替一个孩子。一个被活埋的孩子。'\n\n你心里一沉。\n\n'她怎么了？'\n\n'替棺之后，她就变成了这样。半人半鬼，不死不活。'\n\n'那她怎么参加？'\n\n'陆沉会有办法。'\n\n周老板看着你，眼神意味深长。\n\n'沈长河，你要记住——'\n\n'替棺人，都是死人。'\n\n'只是还没埋而已。'",
      "actions": [
        { "type": "addVar", "name": "fear_level", "value": 70 },
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 20 },
        { "type": "setVar", "name": "team_count", "value": 12 }
      ],
      "choices": [
        { "text": "离开死人铺", "next": "leave_shop" },
        { "text": "再问周老板一些问题", "next": "ask_zhou_more" }
      ]
    },
    "watch_girl": {
      "id": "watch_girl",
      "name": "dead_shop",
      "text": "你强迫自己站在原地，看着那个女人。\n\n她的眼睛睁开了——眼白全是黑的，像两口小小的棺材。\n\n但她没有看你。她的目光穿过你，看向密室深处。\n\n'有人来了。'\n\n她的声音很轻，像从很远的地方飘过来。\n\n'谁来了？'\n\n周老板问。\n\n'十二个人。'\n\n'他们在哪？'\n\n'在路上。'\n\n'什么时候到？'\n\n'三天后。'\n\n'八月十五。'\n\n她说出这四个字，眼睛慢慢闭上了。\n\n周老板走到她身边，伸手在她额头按了一下。\n\n'她叫孙铜锣。'\n\n他说。\n\n'替棺人。第十一个。'\n\n'也是最后一个。'\n\n你看着她，心里一片冰凉。\n\n'她怎么变成这样的？'\n\n'替棺之后，就成了这样。'\n\n'半人半鬼，不死不活。'\n\n'但她能看见别人看不见的东西。'\n\n'比如？'\n\n'比如路上的危险。'\n\n'比如南岭深处的秘密。'\n\n周老板看着你，眼神深邃。\n\n'沈长河，你要记住——'\n\n'替棺人，都是死人。'\n\n'只是还没埋而已。'",
      "actions": [
        { "type": "addVar", "name": "fear_level", "value": 60 },
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 25 },
        { "type": "setVar", "name": "team_count", "value": 12 }
      ],
      "choices": [
        { "text": "离开死人铺", "next": "leave_shop" },
        { "text": "再问周老板一些问题", "next": "ask_zhou_more" }
      ]
    },
    "ask_zhou_more": {
      "id": "ask_zhou_more",
      "location": "dead_shop",
      "text": "'周老板，我想知道更多。'\n\n周老板看着你，点了点头。\n\n'问吧。'\n\n'替棺人都是什么人？'\n\n'都是替过棺的人。'\n\n'替过棺，就会变成这样？'\n\n'不一定。要看替的是什么棺。'\n\n'何秀娘那种？'\n\n'何秀娘是借棺。借棺者，留名。替棺者，入账。'\n\n'那原棺呢？'\n\n周老板沉默了一会儿。\n\n'原棺是天下所有棺的源头。它不在地上，也不在地下。'\n\n'它在南岭深处，无归坳。'\n\n'那里埋着所有替棺人的名字。'\n\n'也埋着沈家三代的债。'\n\n你心里一沉。\n\n'那这次去，是要打开原棺？'\n\n'是。'\n\n'打开它会怎么样？'\n\n'契约解除。棺债还清。'\n\n'如果打不开呢？'\n\n'所有人都替棺。'\n\n'永远？'\n\n'永远。'\n\n周老板看着你，眼神深邃。\n\n'沈长河，你准备好了吗？'\n\n你看着他，没有说话。\n\n但你心里知道——\n\n你没有选择。",
      "actions": [
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 30 },
        { "type": "addVar", "name": "fear_level", "value": 65 }
      ],
      "choices": [
        { "text": "离开死人铺", "next": "leave_shop" }
      ]
    },
    "leave_shop": {
      "id": "leave_shop",
      "location": "village_gate",
      "text": "你离开死人铺，站在村口的老槐树下。\n\n天已经完全黑了。远处的竹林在风中摇曳，发出沙沙的声音，像有无数人在低声说话。\n\n你抬头看着老槐树——树上挂满了红绳，每一根下面都吊着一块小木牌。\n\n木牌上写着名字——何秀娘、周满仓、赵金斗、李三娘……\n\n这些名字，你在乱葬坳的棺壁上见过，在《沈家棺录》里读过，在死人铺的木牌上刻过。\n\n它们像一张网，把你牢牢缠住。\n\n你低头看了看手上的黑玉戒——戒指在月光下泛出一线暗红，像里面封着的血正在慢慢流动。\n\n你握紧戒指，深吸一口气。\n\n三天后。八月十五。南岭口。\n\n十二个人。\n\n你不知道等待你的是什么。\n\n但你知道，你必须去。\n\n因为沈家的债，从你这里开始，也要从你这里结束。\n\n（第二部分·完）",
      "isEnd": true,
      "endType": "true",
      "endMessage": "十二人集齐，只待出发。死人铺的秘密、孙铜锣的诡异、原棺的真相——一切都将在南岭深处揭晓。"
    }
  }
}