{
  "title": "盗棺笔记：河川旧录（中下）[Hard]",
  "subtitle": "灯前分路·我是长子",
  "description": "十二滴血，打开原棺。沈长河的命运、沈家三代的债——一切都将在无归坳了结。百年后，他的孙子沈河川发现了这段秘密……",
  "author": "Radiation Studio",
  "version": "3.0",
  "variables": {
    "fear_level": 70,
    "knowledge_about_guandao": 70,
    "team_count": 12,
    "survivor_count": 8,
    "has_opened_coffin": false,
    "has_seen_truth": false,
    "ending_reached": false
  },
  "features": {
    "inventory": true,
    "map": true
  },
  "items": [
    { "id": "black_jade_ring", "name": "黑玉戒", "icon": "💍", "description": "乱葬坳老人给你的戒指。" },
    { "id": "coffin_ledger", "name": "棺账册", "icon": "📕", "description": "记载所有棺债的账册。" },
    { "id": "family_portrait", "name": "全家福", "icon": "🖼️", "description": "沈河川找到的全家福照片。" }
  ],
  "map": {
    "title": "无归坳·沈家老宅",
    "locations": [
      { "id": "no_return_ao", "name": "无归坳", "description": "南岭最深处。" },
      { "id": "shen_home_modern", "name": "沈家老宅（现代）", "description": "沈河川住的地方。" }
    ],
    "startingLocation": "no_return_ao"
  },
  "start": "start",
  "nodes": {
    "start": {
      "id": "start",
      "location": "no_return_ao",
      "text": "无归坳。\n\n原棺就在眼前。\n\n陆沉说：'需要十二个人的血。'\n\n现在只剩下八个人。\n\n但王婆、张铁、李老四、赵六也算——他们躺在那四口棺材里，半人半鬼，不死不活。\n\n陆沉从怀里掏出一把小刀，递给你。\n\n'每个人滴一滴血。'\n\n你接过刀，看着众人。\n\n八个人滴完了血。\n\n现在轮到你了。\n\n你握紧刀，深吸一口气，划向自己的指尖——\n\n一滴血滴在棺盖上。\n\n血顺着符文慢慢渗进去。棺盖上的红光亮了一下。\n\n最后，陆沉走到那四口棺材前，伸出手，在每个人的手腕上划了一道——\n\n四滴血从他们的手腕上滴下来，落在原棺的棺盖上。\n\n第十二滴血。\n\n棺盖上的符文忽然全部亮了起来——\n\n红光冲天，照亮了整个无归坳。\n\n原棺开始震动。\n\n'轰！'\n\n棺盖被一股力量掀开，飞向半空。\n\n里面，一片红光。\n\n你眯起眼，看向棺内——\n\n里面没有尸体。\n\n只有一本书。\n\n黑皮。没有字。和棺账册一模一样。\n\n但这本书比棺账册大得多，厚得多。\n\n陆沉走到棺前，看着那本书。\n\n'这是原账。'\n\n'天下所有棺债的源头。'\n\n'沈家三代的债，都在里面。'",
      "qte": {
        "type": "sequence",
        "title": "滴血开棺",
        "description": "按顺序按下按键，滴下你的血！",
        "sequence": ["A", "S", "D", "F", "G"],
        "timeLimit": 5000,
        "success": "blood_success",
        "fail": "blood_fail"
      }
    },
    "blood_success": {
      "id": "blood_success",
      "location": "original_coffin",
      "text": "你成功滴下血——\n\n第十二滴血落下，棺盖上的符文全部亮了起来！\n\n红光冲天，棺盖被掀开，飞向半空。\n\n里面没有尸体，只有一本黑色封面的书。\n\n原账。\n\n陆沉走到棺前，看着那本书。\n\n'这是原账。天下所有棺债的源头。'\n\n他伸手去拿——\n\n书自己翻开，第一页上，慢慢浮出一行字：\n\n'沈林。沈山。沈长河。'\n\n'沈家三代。'\n\n'债：二十口棺。'\n\n'已还：一口。'\n\n'未还：十九口。'\n\n你看着这些数字，心里一片冰凉。\n\n二十口棺。\n\n只还了一口。\n\n还有十九口。\n\n陆沉继续翻页。第二页上，写着：\n\n'若要平账，需有人替十九口棺。'\n\n'替棺者，入原棺。'\n\n'永不超生。'\n\n'谁替？'\n\n陆沉看着你，眼神深邃。\n\n'你。'",
      "actions": [
        { "type": "addVar", "name": "fear_level", "value": 40 },
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 20 },
        { "type": "setVar", "name": "has_opened_coffin", "value": true }
      ],
      "choices": [
        { "text": "质问陆沉", "next": "question_lu_chen" },
        { "text": "接受命运", "next": "accept_fate" },
        { "text": "拒绝替棺", "next": "refuse_coffin" }
      ]
    },
    "blood_fail": {
      "id": "blood_fail",
      "location": "original_coffin",
      "text": "你按错了顺序——\n\n第十二滴血没有成功滴下，原棺的符文开始闪烁不定！\n\n棺盖没有完全打开，只开了一条缝。\n\n从缝里，伸出一只手——\n\n青黑色的，五指细长，指甲乌紫。\n\n那只手抓住了离棺材最近的一个人——赵六。\n\n赵六惨叫一声，被拖进了棺材里。\n\n棺盖自己合上了。\n\n里面传来一阵骨头断裂的声音，然后是一声惨叫——\n\n很轻，很短。\n\n所有人都吓得后退。\n\n'重新来。'陆沉的声音很平静，却带着一丝寒意。\n\n你看着那口棺材，心里一片冰凉。\n\n赵六死了。\n\n因为你的失误。\n\n'再试一次。'陆沉说。\n\n你深吸一口气，重新拿起刀。",
      "actions": [
        { "type": "addVar", "name": "survivor_count", "value": -1 },
        { "type": "addVar", "name": "fear_level", "value": 60 }
      ],
      "choices": [
        { "text": "重新滴血", "next": "start" }
      ]
    },
    "question_lu_chen": {
      "id": "question_lu_chen",
      "location": "original_coffin",
      "text": "'为什么是我？'\n\n陆沉看着你，沉默了一会儿。\n\n'因为你是长子。'\n\n'长子？'\n\n'沈家的长子。'\n\n他翻开原账，指着其中一页。\n\n那一页上，写着：\n\n'沈家规矩：长子替棺。'\n\n'三代之内，长子必须替完所有棺债。'\n\n'否则，沈家永远替棺。'\n\n你看着这行字，心里一片冰凉。\n\n长子替棺。\n\n这就是沈家的规矩。\n\n你是沈长河，沈家的长子。\n\n所以，你必须替完十九口棺。\n\n'我不替。'\n\n你说。\n\n陆沉看着你，眼神深邃。\n\n'你以为，你有选择吗？'\n\n他翻开原账的最后一页。\n\n那一页上，写着：\n\n'沈长河。'\n\n'沈家第三代替棺人。'\n\n'命：替十九口棺。'\n\n'若不替，沈家断子绝孙。'\n\n你看着这行字，心里一片沉重。\n\n沈家断子绝孙。\n\n这就是代价。",
      "actions": [
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 25 },
        { "type": "addVar", "name": "fear_level", "value": 50 }
      ],
      "choices": [
        { "text": "接受命运", "next": "accept_fate" },
        { "text": "拒绝替棺", "next": "refuse_coffin" }
      ]
    },
    "accept_fate": {
      "id": "accept_fate",
      "location": "original_coffin",
      "text": "'好。我替。'\n\n你深吸一口气，走到原棺前。\n\n陆沉看着你，点了点头。\n\n'你是个聪明人。'\n\n你抬起脚，准备走进原棺——\n\n就在这时，孙铜锣忽然从棺材里坐了起来！\n\n她的眼睛睁开了——眼白全是黑的。\n\n'不要替。'\n\n她说。\n\n'为什么？'\n\n'因为你替不完。'\n\n'沈家真正的债，不是棺。'\n\n'是血。'\n\n你看着她，心里一片茫然。\n\n'什么血？'\n\n孙铜锣没有回答，只是指着原棺里面。\n\n你顺着她的目光看去——\n\n原棺里面，那本原账的封面慢慢裂开，从里面流出了一滴血——\n\n黑色的血。\n\n像墨汁，又像泡过草灰的井水。\n\n那滴血落在棺底，慢慢汇成了一行字：\n\n'沈家的债，不是棺。'\n\n'是血债。'\n\n'三代人的血。'\n\n你看着这行字，心里一片冰凉。\n\n血债。\n\n不是棺债，是血债。\n\n你终于明白了。\n\n沈家欠的不是棺，是血。\n\n三代人的血。",
      "actions": [
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 30 },
        { "type": "addVar", "name": "fear_level", "value": 60 },
        { "type": "setVar", "name": "has_seen_truth", "value": true }
      ],
      "choices": [
        { "text": "问孙铜锣更多", "next": "ask_sun_more" }
      ]
    },
    "refuse_coffin": {
      "id": "refuse_coffin",
      "location": "original_coffin",
      "text": "'我不替。'\n\n你转身就走。\n\n'你走不了。'陆沉的声音从身后传来。\n\n你回头看去——\n\n原棺的棺盖自己合上了，但里面的红光透过缝隙，照在地上，形成了一个圆圈。\n\n你站在圆圈里。\n\n'这是棺阵。'陆沉说。\n\n'进来了，就出不去。'\n\n'除非替完所有棺债。'\n\n你看着那个圆圈，心里一片冰凉。\n\n你被困住了。\n\n就在这时，孙铜锣忽然从棺材里坐了起来！\n\n她的眼睛睁开了——眼白全是黑的。\n\n'不要替。'\n\n她说。\n\n'为什么？'\n\n'因为你替不完。'\n\n'沈家真正的债，不是棺。'\n\n'是血。'\n\n你看着她，心里一片茫然。\n\n'什么血？'\n\n孙铜锣没有回答，只是指着原棺里面。\n\n你顺着她的目光看去——\n\n原棺里面，那本原账的封面慢慢裂开，从里面流出了一滴血——\n\n黑色的血。\n\n那滴血落在棺底，慢慢汇成了一行字：\n\n'沈家的债，不是棺。'\n\n'是血债。'\n\n'三代人的血。'",
      "actions": [
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 25 },
        { "type": "addVar", "name": "fear_level", "value": 70 },
        { "type": "setVar", "name": "has_seen_truth", "value": true }
      ],
      "choices": [
        { "text": "问孙铜锣更多", "next": "ask_sun_more" }
      ]
    },
    "ask_sun_more": {
      "id": "ask_sun_more",
      "location": "original_coffin",
      "text": "'孙铜锣，什么是血债？'\n\n孙铜锣看着你，眼神深邃。\n\n'百年前，沈林替何氏妇棺。那口棺，是原棺的一部分。'\n\n'沈林替了那口棺，就等于和原棺结下了契约。'\n\n'契约规定：沈家三代，必须用自己的血，还清所有棺债。'\n\n'棺债只是表面。真正的债，是血债。'\n\n'三代人的血。'\n\n'那怎么还？'\n\n'用三代人的命。'\n\n'沈林死了，他的血还了一部分。'\n\n'沈山死了，他的血还了一部分。'\n\n'现在轮到你了。'\n\n'你的血，是最后一部分。'\n\n'只要你死了，沈家的债就还清了。'\n\n你看着她，心里一片冰凉。\n\n原来如此。不是替棺。是送死。\n\n'那陆沉为什么骗我？'\n\n孙铜锣没有回答，只是看向陆沉。\n\n陆沉看着你们，嘴角微微上扬。\n\n'因为他需要你的血。'\n\n孙铜锣说。\n\n'原棺需要活人的血，才能重新开启。'\n\n'一旦开启，天下所有棺债都会消失。'\n\n'但代价是——替棺人的命。'\n\n你看着陆沉，心里一片愤怒。\n\n'你一直在骗我！'\n\n陆沉看着你，没有说话。\n\n他只是慢慢走向原棺，伸出手，准备打开它——",
      "actions": [
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 35 },
        { "type": "addVar", "name": "fear_level", "value": 80 }
      ],
      "choices": [
        { "text": "阻止陆沉", "next": "stop_lu_chen" }
      ]
    },
    "stop_lu_chen": {
      "id": "stop_lu_chen",
      "location": "original_coffin",
      "text": "你冲向陆沉，试图阻止他——\n\n但他太强大了。你根本碰不到他。\n\n他伸出手，轻轻一推——\n\n你像一片树叶一样，被推飞出去，重重摔在地上。\n\n'不要反抗。'陆沉说。\n\n'这是命中注定的。'\n\n他继续走向原棺，准备打开它——\n\n就在这时，孙铜锣忽然从棺材里飞出来，挡在陆沉面前！\n\n她的身体开始发光——不是红光，是白光。\n\n'你不能打开它。'\n\n她说。\n\n'为什么？'\n\n'因为打开它，会释放所有棺债。'\n\n'到时候，天下所有替棺人都会变成鬼。'\n\n'包括你。'\n\n陆沉看着她，眼神冰冷。\n\n'那又怎么样？'\n\n'我不在乎。'\n\n他伸出手，抓住孙铜锣——\n\n她的身体像烟一样散开，但很快又重新凝聚。\n\n'你杀不了我。'\n\n她说。\n\n'我已经是半人半鬼了。'\n\n'但我能阻止你。'\n\n她伸出手，指向原棺——\n\n一道白光从她指尖射出，击中了原棺的棺盖。\n\n棺盖自己合上了。\n\n陆沉看着那口合上的棺材，脸色一变。\n\n'你……'\n\n孙铜锣看着他，眼神深邃。\n\n'走吧。'\n\n'这里不属于你。'\n\n陆沉沉默了很久。\n\n然后，他转身走向通道。\n\n'沈长河，我会回来的。'\n\n'你逃不掉的。'\n\n他的声音慢慢消失在通道里。",
      "qte": {
        "type": "hold",
        "title": "阻止陆沉",
        "description": "孙铜锣正在阻止陆沉！握紧黑玉戒，坚持住！",
        "buttonText": "握紧戒指！",
        "holdDuration": 8000,
        "timeLimit": 10000,
        "success": "stop_success",
        "fail": "stop_fail"
      }
    },
    "stop_success": {
      "id": "stop_success",
      "location": "original_coffin",
      "text": "你握紧黑玉戒，坚持住！\n\n孙铜锣的白光击中原棺，棺盖自己合上了！\n\n陆沉脸色一变，转身走向通道。\n\n'沈长河，我会回来的。'\n\n他的声音慢慢消失。\n\n'我们走吧。'孙铜锣说。\n\n她的身体慢慢变得透明，像烟一样散开，重新凝聚成一个人影——\n\n这一次，她的眼睛不再是全黑的。\n\n眼白恢复了正常。\n\n'你好了？'\n\n'没有。我只是暂时清醒了。'\n\n'替棺的代价，还在。'\n\n'但至少现在，我能走了。'\n\n你们一起走出无归坳，走向通道。\n\n身后，原棺静静地躺在那里。\n\n红光已经熄灭。\n\n但你知道，它还会亮起来的。\n\n因为陆沉会回来。\n\n而沈家的债，还没有还清。",
      "actions": [
        { "type": "addVar", "name": "survivor_count", "value": 1 },
        { "type": "addVar", "name": "fear_level", "value": 50 }
      ],
      "choices": [
        { "text": "走出无归坳", "next": "leave_ao" }
      ]
    },
    "stop_fail": {
      "id": "stop_fail",
      "location": "original_coffin",
      "text": "你撑不住了——\n\n黑玉戒的光芒慢慢减弱，孙铜锣的白光也开始闪烁。\n\n陆沉趁机伸出手，打开了原棺——\n\n里面的红光冲天而起，照亮了整个无归坳。\n\n原账从棺材里飞出来，悬浮在半空。\n\n书页一张张翻开，上面的名字一个个亮了起来——\n\n何秀娘、周满仓、赵金斗、李三娘……\n\n所有替棺人的名字，都亮了起来。\n\n然后，那些名字开始燃烧——\n\n黑色的火。\n\n火光照亮了每个人的脸。\n\n你看着那些燃烧的名字，心里一片冰凉。\n\n就在这时，孙铜锣忽然发出一声尖叫——\n\n她的身体完全散开，变成了无数光点，飞向原账。\n\n那些光点落在原账上，扑灭了黑色的火焰。\n\n原账慢慢合上，重新回到原棺里。\n\n棺盖自己合上了。\n\n红光熄灭。\n\n陆沉看着那口合上的棺材，脸色惨白。\n\n'你竟然用自己的命来阻止我！'\n\n孙铜锣没有回答。\n\n她已经消失了。\n\n陆沉转身走向通道，消失在黑暗中。\n\n你看着原棺，心里一片沉重。\n\n孙铜锣用自己的命，阻止了陆沉。\n\n而你，还活着。\n\n但沈家的债，还没有还清。",
      "actions": [
        { "type": "addVar", "name": "survivor_count", "value": -1 },
        { "type": "addVar", "name": "fear_level", "value": 80 }
      ],
      "choices": [
        { "text": "走出无归坳", "next": "leave_ao" }
      ]
    },
    "leave_ao": {
      "id": "leave_ao",
      "location": "shen_home_modern",
      "text": "你走出无归坳，回到了外面的世界。\n\n南岭的雾已经散了。阳光透过云层，照在你身上——\n\n很暖，很真实。\n\n你回头看向南岭深处，心里一片沉重。\n\n沈家的债，还没有还清。\n\n陆沉会回来的。\n\n而你，必须做好准备。\n\n你握紧黑玉戒，转身走向远方。\n\n（时间流逝……百年后……）\n\n你叫沈河川。今年二十五岁。\n\n你是沈长河的孙子。\n\n你从小就知道，沈家有一个秘密——关于棺材的秘密。\n\n今天，你终于鼓起勇气，打开了地下室的门。\n\n里面很暗，很潮湿。空气中弥漫着一股木头和油漆混合的味道。\n\n你打开手电筒，照向里面——\n\n地下室里摆满了棺材。\n\n最里面，放着一口特别大的棺材。\n\n黑漆的，上面刻满了符文。\n\n棺盖没有合上，里面放着一本书——\n\n黑皮。没有字。\n\n你认得它。\n\n这是棺账册。\n\n你翻开第一页，上面写着：\n\n'沈林。沈山。沈长河。'\n\n'沈家三代。'\n\n'债：二十口棺。'\n\n'已还：一口。'\n\n'未还：十九口。'\n\n你看着这些数字，心里一片冰凉。\n\n沈家欠了二十口棺的债。\n\n而你，是沈家的第四代。\n\n你爷爷的债，还没有还清。\n\n现在，轮到你了。",
      "actions": [
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 40 },
        { "type": "addVar", "name": "fear_level", "value": 60 }
      ],
      "choices": [
        { "text": "继续翻看棺账册", "next": "read_ledger_modern" }
      ]
    },
    "read_ledger_modern": {
      "id": "read_ledger_modern",
      "location": "basement",
      "text": "你继续翻看棺账册——\n\n每一页都记载着不同的替棺事件。\n\n你看到爷爷沈长河那一页：\n\n'民国二十四年。沈长河。'\n\n'替何秀娘棺。借棺未清，替者入账。'\n\n'入南岭，寻原棺。'\n\n'未平账。'\n\n你心里一沉。爷爷入了南岭，却没有平账。\n\n你继续往后翻。最后一页，空白。\n\n但当你翻到最后一页时，上面慢慢浮出一行字——\n\n墨迹未干，像是刚写上去的：\n\n'沈河川。'\n\n'沈家第四代。'\n\n'债：十九口棺。'\n\n'若要平账，需入南岭，寻原棺。'\n\n你看着这行字，心里一片冰凉。\n\n十九口棺。\n\n爷爷没有还清的债，现在轮到你了。\n\n你合上棺账册，站起身。\n\n地下室的角落里，放着一张照片——\n\n全家福。\n\n你爷爷、你奶奶、你父亲、你母亲，还有小时候的你。\n\n照片已经发黄，但每个人的笑容都很清晰。\n\n你看着照片，心里一片沉重。\n\n为了他们。\n\n为了沈家。\n\n你必须还清这笔债。\n\n你握紧棺账册，走出地下室。\n\n阳光照在你身上——\n\n很暖，很真实。\n\n但你知道，温暖的背后，是无尽的黑暗。\n\n南岭在等你。\n\n原棺在等你。\n\n沈家的债，在等你。\n\n（第四部分·完）",
      "actions": [
        { "type": "addItem", "itemId": "family_portrait" },
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 30 },
        { "type": "addVar", "name": "fear_level", "value": 50 }
      ],
      "isEnd": true,
      "endType": "true",
      "endMessage": "百年后，沈长河的孙子沈河川发现了棺账秘密。十九口棺的债，现在轮到他了。"
    }
  }
}