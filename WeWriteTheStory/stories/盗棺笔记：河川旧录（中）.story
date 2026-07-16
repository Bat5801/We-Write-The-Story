{
  "title": "盗棺笔记：河川旧录（中）",
  "subtitle": "旧信重来·守门棺·取账",
  "description": "三天后，十二个人在南岭口集齐。一封旧信、一口守门棺、一次生死抉择——你们终于踏上了入南岭的路。",
  "author": "Radiation Studio",
  "version": "3.0",
  "variables": {
    "fear_level": 50,
    "knowledge_about_guandao": 60,
    "team_count": 12,
    "survivor_count": 12,
    "has_entered_nanling": false,
    "has_seen_guard_coffin": false,
    "has_taken_ledger": false,
    "ending_reached": false
  },
  "features": {
    "inventory": true,
    "map": true
  },
  "items": [
    { "id": "black_jade_ring", "name": "黑玉戒", "icon": "💍", "description": "乱葬坳老人给你的戒指，里面封着血。" },
    { "id": "old_book", "name": "沈家旧书", "icon": "📖", "description": "父亲留下的书，记载着沈家三代抬棺的秘密。" },
    { "id": "lu_chen_token", "name": "陆沉信物", "icon": "🪙", "description": "陆沉的铜牌，刻着'棺账'二字。" },
    { "id": "old_letter", "name": "旧信", "icon": "✉️", "description": "沈林留下的信，指引寻找原棺的路。" },
    { "id": "coffin_ledger", "name": "棺账册", "icon": "📕", "description": "记载所有棺债的账册，黑色封面。" }
  ],
  "map": {
    "title": "南岭·深处",
    "locations": [
      { "id": "nanling_gate", "name": "南岭口", "description": "通往南岭的入口，终年大雾。" },
      { "id": "fog_path", "name": "雾中路", "description": "南岭深处的路，雾气弥漫，看不见前方。" },
      { "id": "guard_coffin", "name": "守门棺", "description": "守在路口的一口棺材，挡住去路。" },
      { "id": "ledger_room", "name": "账册室", "description": "存放棺账册的石室，在守门棺后面。" },
      { "id": "no_return_ao", "name": "无归坳", "description": "南岭最深处，原棺所在之地。" }
    ],
    "startingLocation": "nanling_gate"
  },
  "start": "start",
  "nodes": {
    "start": {
      "id": "start",
      "location": "nanling_gate",
      "text": "八月十五。南岭口。\n\n天还没亮，雾气就已经漫过了山头。\n\n你站在路口，看着白茫茫的一片，心里一片冰凉。\n\n陆沉说的没错——南岭口的雾，终年不散。不是普通的雾，是阴雾。里面裹着无数无归之人的怨气。\n\n你握紧手上的黑玉戒，等待着。\n\n很快，路口陆续出现了人影。\n\n第一个来的是一个中年男人，穿着一身粗布衣裳，背着一把斧头。他叫张铁，是个木匠，替过一口木匠棺。\n\n第二个来的是一个老妇人，头发花白，手里拿着一串佛珠。她叫王婆，替过一口婴儿棺。\n\n第三个、第四个、第五个……\n\n十二个人，一个不差。\n\n陆沉最后一个到。他还是那身黑色长袍，面容清瘦，眼神深邃。\n\n'人齐了。'\n\n他看着你们，声音不高，却有一种让人无法拒绝的力量。\n\n'现在，我要说规矩。'\n\n所有人都看着他。\n\n'第一：入南岭后，不准回头。'\n\n'第二：不准说话。'\n\n'第三：遇到棺材，不准开。'\n\n'第四：遇到叫名字的，不准应。'\n\n'第五：遇到岔路，跟着黑玉戒走。'\n\n他顿了顿，目光扫过每个人的脸。\n\n'记住这五条规矩。违反任何一条，后果自负。'\n\n'还有——'\n\n他从怀里掏出一封旧信，举起来。\n\n'这是沈林留下的信。上面写着寻找原棺的路。'\n\n'我们要先找到守门棺，拿到棺账册，才能继续往前走。'\n\n'守门棺后面，就是无归坳。'\n\n'原棺就在无归坳里。'\n\n他把信递给你。\n\n'沈长河，你带路。'\n\n你接过信，深吸一口气。\n\n'走吧。'",
      "choices": [
        { "text": "带领众人进入南岭", "next": "enter_nanling" },
        { "text": "先看旧信内容", "next": "read_old_letter" }
      ]
    },
    "read_old_letter": {
      "id": "read_old_letter",
      "location": "nanling_gate",
      "text": "你接过旧信，拆开。\n\n信纸发黄，字迹模糊，但还能看清——\n\n'道光二十三年。沈林。'\n\n'入南岭，寻原棺。'\n\n'路有三关。'\n\n'第一关：雾中路。听声辨路，莫回头。'\n\n'第二关：守门棺。替棺者，可入。'\n\n'第三关：无归坳。原棺现，债可平。'\n\n'切记：十二人齐，缺一不可。'\n\n'少一人，多一棺。'\n\n你看完信，心里一沉。\n\n'少一人，多一棺。'这句话是什么意思？\n\n你抬头看向陆沉。\n\n'这句话是什么意思？'\n\n陆沉看着你，眼神深邃。\n\n'意思是——如果十二个人少了一个，就会多出一口棺材。'\n\n'谁的棺材？'\n\n'少的那个人的。'\n\n你心里一片冰凉。\n\n'走吧。'陆沉说。\n\n你握紧信，深吸一口气，走进了雾里。",
      "actions": [
        { "type": "addItem", "itemId": "old_letter" },
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 10 },
        { "type": "addVar", "name": "fear_level", "value": 20 }
      ],
      "choices": [
        { "text": "带领众人进入南岭", "next": "enter_nanling" }
      ]
    },
    "enter_nanling": {
      "id": "enter_nanling",
      "location": "fog_path",
      "text": "你带领十二个人，走进了南岭的雾里。\n\n雾气很重，伸手不见五指。只有脚下的路，还能勉强看清——是青石板铺的，很滑，踩上去会发出轻微的声响。\n\n走了大约半炷香，你听见身后传来一阵脚步声——不是十二个人的，是第十三个人的。\n\n一步，一步，很轻，很稳。\n\n你心里一紧，却不敢回头。陆沉说过，不准回头。\n\n脚步声越来越近，越来越清晰。你甚至能感觉到有人在你身后呼吸——很凉，像从棺材里吹出来的风。\n\n'沈长河。'\n\n身后传来一个声音，很轻，很熟——\n\n是你爹的声音。\n\n你浑身一僵，却还是没有回头。\n\n'长河，回头看看我。'\n\n声音更近了，几乎贴在你耳边。\n\n你咬紧牙关，继续往前走。\n\n'长河——'\n\n第三声响起。你按照父亲教的方法，咬破舌尖——\n\n血腥味在嘴里散开。身后的声音戛然而止。\n\n脚步声也消失了。\n\n你松了一口气，继续往前走。\n\n走了一段，你忽然发现不对劲——\n\n队伍里，少了一个人。\n\n王婆不见了。",
      "qte": {
        "type": "click",
        "title": "忍住回头",
        "description": "身后有人叫你！快速点击按钮，忍住回头的冲动！",
        "buttonText": "咬紧牙关！",
        "requiredClicks": 10,
        "timeLimit": 4000,
        "success": "resist_look_success",
        "fail": "resist_look_fail"
      }
    },
    "resist_look_success": {
      "id": "resist_look_success",
      "location": "fog_path",
      "text": "你咬紧牙关，忍住了回头的冲动！\n\n身后的声音消失了。但当你清点人数时，发现——\n\n王婆不见了。\n\n'王婆呢？'张铁低声问。\n\n没有人回答。\n\n陆沉走到前面，看着你。\n\n'继续走。'\n\n'少了一个人！'\n\n'少一人，多一棺。'\n\n他重复了旧信上的话，然后看向队伍后面。\n\n你顺着他的目光看去——\n\n雾气中，不知什么时候多出了一口棺材。\n\n黑漆的，不大，像是一口婴儿棺。\n\n棺盖没有合上，里面躺着一个人——\n\n王婆。\n\n她的眼睛闭着，面容安详，像是睡着了。\n\n但你知道，她不是睡着了。\n\n因为她的胸口，没有起伏。\n\n'继续走。'陆沉再次说道。\n\n你看着那口棺材，心里一片冰凉。\n\n'少一人，多一棺。'\n\n原来这句话是真的。",
      "actions": [
        { "type": "addVar", "name": "survivor_count", "value": -1 },
        { "type": "addVar", "name": "fear_level", "value": 30 },
        { "type": "setVar", "name": "has_entered_nanling", "value": true }
      ],
      "choices": [
        { "text": "继续往前走", "next": "continue_fog_path" },
        { "text": "去看看王婆", "next": "check_wangpo" }
      ]
    },
    "resist_look_fail": {
      "id": "resist_look_fail",
      "location": "fog_path",
      "text": "你忍不住回头了——\n\n身后什么都没有。没有你爹，没有脚步声，只有白茫茫的雾气。\n\n但当你转过头来时，发现队伍里少了两个人——\n\n王婆和张铁都不见了。\n\n雾气中，多出了两口棺材。\n\n一口是婴儿棺，躺着王婆。\n\n一口是成人棺，躺着张铁。\n\n'我说过，不准回头。'陆沉的声音很平静，却带着一丝寒意。\n\n你看着那两口棺材，心里一片冰凉。\n\n'继续走。'陆沉说。\n\n你没有说话，只是握紧黑玉戒，继续往前走。\n\n你知道，从这一刻起，每一步都可能是最后一步。",
      "actions": [
        { "type": "addVar", "name": "survivor_count", "value": -2 },
        { "type": "addVar", "name": "fear_level", "value": 50 },
        { "type": "setVar", "name": "has_entered_nanling", "value": true }
      ],
      "choices": [
        { "text": "继续往前走", "next": "continue_fog_path" }
      ]
    },
    "check_wangpo": {
      "id": "check_wangpo",
      "location": "fog_path",
      "text": "你走向那口棺材，想看王婆最后一眼。\n\n刚走到棺材边，王婆的眼睛忽然睁开了——\n\n眼白全是黑的。\n\n'沈长河。'\n\n她叫你的名字。\n\n你心里一沉，赶紧后退。\n\n'别应。'陆沉在后面低喝。\n\n你咬紧牙关，没有回答。\n\n王婆看着你，嘴角微微上扬——那不是笑，是皮肉被拉扯的痕迹。\n\n'你会替我躺的。'\n\n说完这句话，她的眼睛慢慢闭上了。\n\n棺盖自己合上了。\n\n'走吧。'陆沉说。\n\n你看着那口合上的棺材，心里一片冰凉。\n\n王婆说的话，像一根针，扎进了你的心里。\n\n你会替我躺的。\n\n你不知道这是什么意思。但你知道，这句话不会是空穴来风。",
      "actions": [
        { "type": "addVar", "name": "fear_level", "value": 40 }
      ],
      "choices": [
        { "text": "继续往前走", "next": "continue_fog_path" }
      ]
    },
    "continue_fog_path": {
      "id": "continue_fog_path",
      "location": "fog_path",
      "text": "你们继续往前走。\n\n雾气越来越重，能见度越来越低。只能看见前面人的背影，连脸都看不清。\n\n走了大约一炷香，你听见前面传来一阵木头摩擦的声音——\n\n吱呀，吱呀。\n\n像有人在慢慢推开一口棺材。\n\n队伍停了下来。\n\n你走到前面，拨开雾气——\n\n眼前出现了一口棺材。\n\n很大的一口棺材，黑漆的，上面刻满了符文。棺盖开着一条缝，从缝里透出一丝黑气。\n\n棺材前面，立着一块石碑，上面刻着四个字——\n\n守门棺。\n\n你心里一沉。这就是陆沉说的守门棺。\n\n旧信上写着：'第二关：守门棺。替棺者，可入。'\n\n'替棺者，可入。'这句话是什么意思？\n\n陆沉走到棺材边，看着你们。\n\n'这是守门棺。要过去，必须有人替棺。'\n\n'什么意思？'\n\n'替棺者，躺在里面，替守门棺守一会儿。'\n\n'守多久？'\n\n'直到守门棺认可。'\n\n'如果不认可呢？'\n\n'那就永远躺在里面。'\n\n所有人都沉默了。\n\n陆沉看着你们，眼神深邃。\n\n'谁来？'",
      "choices": [
        { "text": "自己去替棺", "next": "volunteer_coffin" },
        { "text": "让别人去替棺", "next": "choose_others" },
        { "text": "尝试绕过守门棺", "next": "try_bypass" }
      ]
    },
    "volunteer_coffin": {
      "id": "volunteer_coffin",
      "location": "guard_coffin",
      "text": "'我去。'\n\n你站出来。\n\n所有人都看着你。\n\n'你是沈长河。沈家第三代替棺人。'陆沉说。\n\n'替棺是你的命。'\n\n你没有说话，只是走到守门棺前，深吸一口气，躺了进去。\n\n棺材里面很冷，很窄。你只能勉强躺下，四肢都被卡住了。\n\n棺盖慢慢合上——不是被人合上的，是自己合上的。\n\n黑暗中，你听见一阵声音——不是外面的声音，是从棺材下面传来的。\n\n像有人在说话，又像有人在哭。\n\n你闭上眼睛，强迫自己冷静下来。\n\n忽然，你感觉到一只手搭在你的肩膀上——\n\n很凉，很轻。\n\n你猛地睁开眼——\n\n黑暗中，你看见一张脸。\n\n没有五官，只有一片模糊的轮廓。它贴着你的脸，呼吸很凉。\n\n'你是替棺人。'\n\n它说。\n\n'沈家的人。'\n\n'你要替谁？'\n\n你没有回答。\n\n它又问了一遍：'你要替谁？'\n\n你还是没有回答。\n\n'不替？'\n\n它的声音变了，变得尖锐，变得怨毒。\n\n'那就替我吧。'\n\n它伸出手，抓住你的脖子——\n\n你感觉自己的呼吸越来越困难，眼前越来越黑。\n\n就在这时，你手上的黑玉戒猛地一亮——\n\n一道红光从戒指里射出来，照亮了棺材内部。\n\n那张脸发出一声惨叫，消失了。\n\n棺盖自己打开了。\n\n你大口喘气，从棺材里爬出来。\n\n陆沉看着你，点了点头。\n\n'守门棺认可你了。'\n\n你看着他，心里一片茫然。\n\n刚才那张脸，是谁？",
      "qte": {
        "type": "hold",
        "title": "对抗棺中鬼",
        "description": "棺材里有东西抓住了你！握紧黑玉戒，坚持住！",
        "buttonText": "握紧戒指！",
        "holdDuration": 6000,
        "timeLimit": 8000,
        "success": "coffin_success",
        "fail": "coffin_fail"
      }
    },
    "choose_others": {
      "id": "choose_others",
      "location": "guard_coffin",
      "text": "'让别人去。'\n\n你看向队伍里的其他人。\n\n所有人都避开了你的目光。没有人愿意去替棺。\n\n'既然没有人愿意去，那就抽签。'陆沉说。\n\n他从怀里掏出十二根竹签，其中一根是红色的。\n\n'抽到红签的人，去替棺。'\n\n你们依次抽签。\n\n你抽到的是黑签。\n\n孙铜锣抽到的是红签。\n\n她看着那根红签，没有说话，只是走到守门棺前，躺了进去。\n\n棺盖慢慢合上。\n\n里面传来一阵挣扎声，然后是一声惨叫——\n\n很轻，很短，像是被什么东西捂住了嘴。\n\n所有人都沉默了。\n\n过了很久，棺盖自己打开了。\n\n孙铜锣躺在里面，一动不动。\n\n她的胸口，没有起伏。\n\n'她死了？'有人低声问。\n\n陆沉走到棺材边，伸出手，在孙铜锣额头按了一下。\n\n'没有。她替了守门棺。'\n\n'什么意思？'\n\n'守门棺认可她了。但她也付出了代价。'\n\n'什么代价？'\n\n'她的一半命。'\n\n你看着孙铜锣，心里一片冰凉。\n\n她替了守门棺，却失去了一半的命。\n\n'走吧。'陆沉说。\n\n你们绕过守门棺，继续往前走。",
      "actions": [
        { "type": "addVar", "name": "survivor_count", "value": -1 },
        { "type": "addVar", "name": "fear_level", "value": 40 },
        { "type": "setVar", "name": "has_seen_guard_coffin", "value": true }
      ],
      "choices": [
        { "text": "继续往前走", "next": "after_guard_coffin" }
      ]
    },
    "try_bypass": {
      "id": "try_bypass",
      "location": "guard_coffin",
      "text": "'我们绕过去。'\n\n你提议。\n\n陆沉看着你，摇了摇头。\n\n'绕不过去。'\n\n'为什么？'\n\n'守门棺不是摆在那里的。它是活的。'\n\n你心里一沉。\n\n就在这时，守门棺忽然动了——\n\n不是被风吹动，是自己动的。棺盖慢慢打开，从里面伸出一只手——\n\n青黑色的，五指细长，指甲乌紫。\n\n那只手抓住了离棺材最近的一个人——李老四。\n\n李老四惨叫一声，被拖进了棺材里。\n\n棺盖自己合上了。\n\n里面传来一阵骨头断裂的声音，然后是一声惨叫——\n\n很轻，很短，像是被什么东西捂住了嘴。\n\n所有人都吓得后退。\n\n'我都说了，绕不过去。'陆沉的声音很平静，却带着一丝寒意。\n\n'现在，谁来替棺？'\n\n你看着那口棺材，心里一片冰凉。\n\n李老四的惨叫声还在耳边回响。\n\n你知道，你没有选择。",
      "actions": [
        { "type": "addVar", "name": "survivor_count", "value": -1 },
        { "type": "addVar", "name": "fear_level", "value": 60 },
        { "type": "setVar", "name": "has_seen_guard_coffin", "value": true }
      ],
      "choices": [
        { "text": "自己去替棺", "next": "volunteer_coffin" },
        { "text": "抽签决定", "next": "choose_others" }
      ]
    },
    "coffin_success": {
      "id": "coffin_success",
      "location": "guard_coffin",
      "text": "你握紧黑玉戒，坚持住！\n\n戒指发出一道红光，那张脸惨叫一声，消失了。\n\n棺盖自己打开了。\n\n你大口喘气，从棺材里爬出来。\n\n陆沉看着你，点了点头。\n\n'守门棺认可你了。'\n\n你看着他，心里一片茫然。\n\n'刚才那张脸是谁？'\n\n'守门棺的鬼。'\n\n'它为什么要抓我？'\n\n'因为你是替棺人。'\n\n'替棺人怎么样？'\n\n'替棺人，是守门棺最喜欢的食物。'\n\n你心里一沉。\n\n'走吧。'陆沉说。\n\n你们绕过守门棺，继续往前走。\n\n走了不远，你看见一间石室——\n\n不大，四面都是墙，墙上没有灯，却有幽蓝色的光。\n\n石室中央，放着一张桌子。\n\n桌子上，放着一本账册。\n\n黑皮。没有字。也没有灰。\n\n你认得它。\n\n这就是棺账册。",
      "actions": [
        { "type": "addVar", "name": "fear_level", "value": 30 },
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 20 },
        { "type": "setVar", "name": "has_seen_guard_coffin", "value": true }
      ],
      "choices": [
        { "text": "走向账册", "next": "approach_ledger" },
        { "text": "让陆沉去拿", "next": "let_lu_chen_take" }
      ]
    },
    "coffin_fail": {
      "id": "coffin_fail",
      "location": "guard_coffin",
      "text": "你撑不住了——\n\n那张脸掐住你的脖子，你感觉自己的呼吸越来越困难，眼前越来越黑。\n\n就在你快要失去意识的时候，孙铜锣忽然冲进棺材里——\n\n她一把推开那张脸，抓住你的手，把你拉出了棺材。\n\n你大口喘气，躺在地上。\n\n孙铜锣站在棺材边，看着里面。\n\n那张脸发出一声惨叫，伸出手抓住了孙铜锣——\n\n她没有躲开。\n\n'替你躺。'她说。\n\n然后，她躺进了棺材里。\n\n棺盖慢慢合上。\n\n里面传来一阵挣扎声，然后是一声惨叫——\n\n很轻，很短。\n\n陆沉走到棺材边，伸出手，在棺盖上按了一下。\n\n'守门棺认可了。'\n\n'她……她怎么样了？'\n\n'替了守门棺。'\n\n'她死了？'\n\n'没有。她的一半命还在。'\n\n你看着那口棺材，心里一片愧疚。\n\n孙铜锣替了你。\n\n'走吧。'陆沉说。\n\n你们绕过守门棺，继续往前走。\n\n走了不远，你看见一间石室。\n\n石室中央，放着一张桌子。\n\n桌子上，放着一本账册。",
      "actions": [
        { "type": "addVar", "name": "survivor_count", "value": -1 },
        { "type": "addVar", "name": "fear_level", "value": 55 },
        { "type": "setVar", "name": "has_seen_guard_coffin", "value": true }
      ],
      "choices": [
        { "text": "走向账册", "next": "approach_ledger" }
      ]
    },
    "after_guard_coffin": {
      "id": "after_guard_coffin",
      "location": "ledger_room",
      "text": "你们绕过守门棺，继续往前走。\n\n走了不远，你看见一间石室——\n\n不大，四面都是墙，墙上没有灯，却有幽蓝色的光。\n\n石室中央，放着一张桌子。\n\n桌子上，放着一本账册。\n\n黑皮。没有字。也没有灰。\n\n你认得它。\n\n这就是棺账册。\n\n陆沉走到桌前，看着你们。\n\n'这是棺账册。上面记载着所有替棺人的名字和债。'\n\n'要继续往前走，必须拿到它。'\n\n'谁去拿？'\n\n所有人都看着你。\n\n你是沈长河。沈家第三代替棺人。\n\n这本账册，本来就是你的。",
      "choices": [
        { "text": "走向账册", "next": "approach_ledger" },
        { "text": "让陆沉去拿", "next": "let_lu_chen_take" }
      ]
    },
    "approach_ledger": {
      "id": "approach_ledger",
      "location": "ledger_room",
      "text": "你走到桌前，伸手去拿账册——\n\n手指刚碰到封面，一股刺骨的寒意顺着指尖蔓延！\n\n账册自己翻开，第一页上，慢慢浮出一行字：\n\n'沈长河。'\n\n'沈家第三代替棺人。'\n\n'债：三口棺。'\n\n你心里一沉。三口棺？你只替过何秀娘一口。\n\n账册继续翻页。第二页上，写着：\n\n'沈林。'\n\n'沈家第一代替棺人。'\n\n'债：十口棺。'\n\n'沈山。'\n\n'沈家第二代替棺人。'\n\n'债：七口棺。'\n\n'沈家总债：二十口棺。'\n\n你看着这些数字，心里一片冰凉。\n\n二十口棺。\n\n沈家欠了二十口棺的债。\n\n你只替了一口，还有十九口。\n\n账册翻到最后一页，上面写着：\n\n'若要平账，需入无归坳，寻原棺。'\n\n'原棺现，债可平。'\n\n'原棺不现，债不止。'\n\n你握紧账册，心里一片茫然。\n\n二十口棺。\n\n你要替二十口棺，才能还清沈家的债。\n\n这可能吗？",
      "qte": {
        "type": "sequence",
        "title": "拿取账册",
        "description": "按顺序按下按键，从桌上拿起棺账册！",
        "sequence": ["E", "R", "T"],
        "timeLimit": 5000,
        "success": "take_ledger_success",
        "fail": "take_ledger_fail"
      }
    },
    "let_lu_chen_take": {
      "id": "let_lu_chen_take",
      "location": "ledger_room",
      "text": "'陆沉，你去拿。'\n\n陆沉看着你，点了点头。\n\n他走到桌前，伸手去拿账册——\n\n手指刚碰到封面，账册忽然发出一声尖叫！\n\n一道黑气从账册里冒出来，缠住了陆沉的手——\n\n他惨叫一声，赶紧缩回手。\n\n'不行。'他说。\n\n'只有替棺人才能拿。'\n\n'为什么？'\n\n'因为账册上记着替棺人的债。只有替棺人自己，才能承受那份重量。'\n\n你看着他，心里一片沉重。\n\n'我去。'\n\n你走到桌前，深吸一口气，伸手去拿账册。",
      "actions": [
        { "type": "addVar", "name": "fear_level", "value": 25 }
      ],
      "choices": [
        { "text": "拿取账册", "next": "approach_ledger" }
      ]
    },
    "take_ledger_success": {
      "id": "take_ledger_success",
      "location": "ledger_room",
      "text": "你成功拿起账册——\n\n账册很重，不是纸重，是里面的债重。\n\n你翻开最后一页，上面写着：\n\n'若要平账，需入无归坳，寻原棺。'\n\n'原棺现，债可平。'\n\n'原棺不现，债不止。'\n\n你握紧账册，看向陆沉。\n\n'无归坳在哪？'\n\n'就在前面。'\n\n他指向石室后面的一条通道——\n\n通道很窄，很黑，看不到尽头。\n\n'穿过这条通道，就是无归坳。'\n\n'原棺就在无归坳里。'\n\n你看着那条通道，心里一片冰凉。\n\n二十口棺的债。\n\n原棺。\n\n你不知道等待你的是什么。\n\n但你知道，你必须去。\n\n因为沈家的债，从你这里开始，也要从你这里结束。",
      "actions": [
        { "type": "addItem", "itemId": "coffin_ledger" },
        { "type": "setVar", "name": "has_taken_ledger", "value": true },
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 30 },
        { "type": "addVar", "name": "fear_level", "value": 40 }
      ],
      "choices": [
        { "text": "进入通道", "next": "enter_passage" }
      ]
    },
    "take_ledger_fail": {
      "id": "take_ledger_fail",
      "location": "ledger_room",
      "text": "你按错了顺序——\n\n账册没有拿到，反而被一股力量弹开！\n\n黑气从账册里冒出来，在你面前形成了一个人影——\n\n没有五官，只有一片模糊的轮廓。\n\n'沈长河。'\n\n它叫你的名字。\n\n'你还不够资格拿我。'\n\n'为什么？'\n\n'因为你欠的债，还没还完。'\n\n'什么债？'\n\n'何秀娘的债。'\n\n'我已经替她补了棺钉！'\n\n'补钉不够。你还要替她走最后一程。'\n\n它伸出手，抓住你的手腕——\n\n你感觉一股力量从它手里传过来，像有无数只手在拉你。\n\n'放开我！'你嘶吼。\n\n就在这时，你手上的黑玉戒猛地一亮——\n\n红光闪过，那个人影惨叫一声，消失了。\n\n账册安静下来，躺在桌上。\n\n你深吸一口气，重新拿起账册。\n\n这一次，没有任何阻碍。\n\n你翻开最后一页，上面写着：\n\n'若要平账，需入无归坳，寻原棺。'",
      "actions": [
        { "type": "addItem", "itemId": "coffin_ledger" },
        { "type": "setVar", "name": "has_taken_ledger", "value": true },
        { "type": "addVar", "name": "fear_level", "value": 50 }
      ],
      "choices": [
        { "text": "进入通道", "next": "enter_passage" }
      ]
    },
    "enter_passage": {
      "id": "enter_passage",
      "location": "no_return_ao",
      "text": "你带领众人，走进了通道。\n\n通道很窄，很黑，只能听见自己的脚步声和呼吸声。\n\n走了大约一炷香，通道忽然变宽了——\n\n你走出通道，眼前出现了一片开阔地。\n\n无归坳。\n\n和你想象的不一样。没有坟，没有棺材，只有一片平地，地上铺着一层薄薄的黑土。\n\n平地中央，放着一口棺材。\n\n很大的一口棺材，黑漆的，上面刻满了符文。棺盖紧闭，却从缝隙里透出一丝红光。\n\n原棺。\n\n你终于找到了它。\n\n陆沉走到你身边，看着那口棺材。\n\n'这就是原棺。'\n\n'天下所有棺的源头。'\n\n'沈家三代的债，都在里面。'\n\n你看着原棺，心里一片冰凉。\n\n二十口棺的债。\n\n你要打开它吗？\n\n打开它会怎么样？\n\n契约解除？棺债还清？\n\n还是——\n\n所有人都替棺？\n\n你握紧黑玉戒，深吸一口气。\n\n'怎么打开？'\n\n陆沉看着你，眼神深邃。\n\n'需要十二个人的血。'\n\n'什么？'\n\n'每个人滴一滴血在棺盖上。'\n\n'十二滴血，才能打开原棺。'\n\n你看着他，心里一片沉重。\n\n十二个人。\n\n现在只剩下十一个。\n\n'少一个人怎么办？'\n\n陆沉没有回答。只是看向队伍后面。\n\n你顺着他的目光看去——\n\n雾气中，不知什么时候多出了一口棺材。\n\n里面躺着一个人。\n\n孙铜锣。\n\n她的眼睛闭着，面容安详。\n\n但她的胸口，没有起伏。\n\n'她也算一个。'陆沉说。\n\n'她已经……'\n\n'替棺人，都是死人。'\n\n'只是还没埋而已。'\n\n他看着你，眼神深邃。\n\n'现在，开始吧。'\n\n（第三部分·完）",
      "isEnd": true,
      "endType": "true",
      "endMessage": "原棺就在眼前。十二滴血，才能打开它。沈家三代的债，即将在无归坳了结。"
    }
  }
}