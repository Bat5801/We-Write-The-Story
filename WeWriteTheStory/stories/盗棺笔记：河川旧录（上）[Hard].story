{
  "title": "盗棺笔记：河川旧录（上）[Hard]",
  "subtitle": "替棺·借棺·空棺",
  "description": "你是沈长河，二十五岁那年，第一次真正见识到棺材会挑人。周满仓的横死棺、何秀娘的借棺、乱葬坳的空棺——这三口棺，从此把你和沈家的命运牢牢绑在了一起。",
  "author": "Radiation Studio",
  "version": "3.0",
  "variables": {
    "fear_level": 40,
    "knowledge_about_guandao": 0,
    "has_seen_white_shoes": false,
    "has_named_hexiu": false,
    "has_entered_coffin_account": false,
    "coffin_weight": 0,
    "survivor_count": 8,
    "ending_reached": false
  },
  "features": {
    "inventory": true,
    "map": true
  },
  "items": [
    { "id": "coffin_bar", "name": "黑木棺杠", "icon": "🔧", "description": "父亲留下的棺杠，黑木做的，两头磨得发亮。" },
    { "id": "coffin_nail", "name": "棺钉", "icon": "📌", "description": "父亲临出门前塞给你的棺钉，后来成了关键。" },
    { "id": "soul_rope", "name": "引魂绳", "icon": "🪢", "description": "红麻绳，绑在棺头用来引路。" },
    { "id": "black_jade_ring", "name": "黑玉戒", "icon": "💍", "description": "乱葬坳老人给你的戒指，里面封着血。" },
    { "id": "white_shoes", "name": "白布鞋", "icon": "👟", "description": "何秀娘留下的鞋，湿冷如冰。" }
  ],
  "map": {
    "title": "南岭·乱葬坳",
    "locations": [
      { "id": "shen_home", "name": "沈家堂屋", "description": "沈家老宅，父亲病重在床。" },
      { "id": "shiling_village", "name": "石岭村周家", "description": "周满仓的家，棺材停在堂屋正中。" },
      { "id": "bamboo_road", "name": "竹林山路", "description": "通往乱葬坳的山路，两边都是竹林。" },
      { "id": "luan_zang_ao", "name": "乱葬坳", "description": "南岭的乱葬坳，埋着无数无归之人。" },
      { "id": "coffin_account", "name": "棺账房", "description": "老槐树下的石室，记载着所有欠棺之人。" }
    ],
    "startingLocation": "shen_home"
  },
  "start": "start",
  "nodes": {
    "start": {
      "id": "start",
      "location": "shen_home",
      "text": "南岭下了很久的雨。\n\n山路被泡得发黑，竹林里的水一夜一夜往下滴。风从坳口吹过来，带着湿土和纸灰混在一起的味道。\n\n你叫沈长河，今年二十五岁。你爹是抬阴棺的——替横死、客死、淹死、无人认领的死人收尸、迁坟、封穴。\n\n你十六岁跟着他第一次抬棺。那天他只教了你一句话：\n\n'死人上了肩，就不是木头。'\n\n你当时不懂。\n\n后来才明白。\n\n有些棺，抬的不是尸。\n\n是债。\n\n事情发生在清明后的第三天。天刚擦黑，石岭村村长的侄子浑身泥水跑来了。\n\n'长河叔，救命。村里死了个木匠，周满仓。被房梁压死的。'\n\n你爹病得下不了床，靠在床头问了一句：\n\n'死的时候，眼睛闭上没有？'\n\n来人摇头。'没闭。'\n\n你爹沉默很久，然后看着你：\n\n'长河，你去。'\n\n你点头，拿起棺杠就要走。刚到门口，你爹忽然叫住你。\n\n'记住——棺重可以换肩，但不能问重。'",
      "choices": [
        { "text": "带齐人前往石岭村", "next": "arrive_shiling" },
        { "text": "追问父亲为什么不能问重", "next": "ask_father_rule" }
      ]
    },
    "ask_father_rule": {
      "id": "ask_father_rule",
      "location": "shen_home",
      "text": "'为什么不能问重？'\n\n你爹脸色很差，嘴唇发青。'问重，棺会加肩。问空，棺会找人填。'\n\n你还想再问，他已经闭上眼。'走吧。别拖。'\n\n你握紧棺杠，转身出门。\n\n雨更大了。",
      "actions": [
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 10 },
        { "type": "addVar", "name": "fear_level", "value": 15 }
      ],
      "choices": [
        { "text": "前往石岭村", "next": "arrive_shiling" }
      ]
    },
    "arrive_shiling": {
      "id": "arrive_shiling",
      "location": "shiling_village",
      "text": "你带了七个人，加上你正好八个。南岭抬棺，最忌单数。\n\n周家门口挂着白布，灵棚搭得很急。院子里烧着纸钱，火却不旺，烟全往地上贴着走，像有什么东西压着不让它飘。\n\n周满仓的棺材停在堂屋正中——杉木的，新棺。\n\n你走近，发现棺材底下是湿的。不是雨水，是从棺材下面渗出来的黑糊糊一小摊，像墨汁，又像泡过草灰的井水。\n\n你蹲下去用手指沾了一点——很凉。凉得不像水。像死人舌头贴了一下指尖。\n\n身后的老赵已经把棺杠架好了。\n\n'长河，起不？'\n\n你站起来。堂屋里所有人都看着你。\n\n你爹不在。这一趟棺，就得你拿主意。",
      "choices": [
        { "text": "下令起棺", "next": "coffin_rise" },
        { "text": "先检查棺钉是否正常", "next": "check_coffin_nails" }
      ]
    },
    "check_coffin_nails": {
      "id": "check_coffin_nails",
      "location": "shiling_village",
      "text": "你绕棺一周，检查四角棺钉。\n\n钉得很死，棺盖严丝合缝。但奇怪的是，棺盖边缘有一道极细的裂缝，从缝里隐约透出一丝黑气。\n\n你伸手去摸——指尖传来一阵刺骨的寒意。\n\n老礼生在旁边低声说：'不能再拖了。再拖下去，怕是要出事。'\n\n你看向老赵。'起。'",
      "actions": [
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 15 },
        { "type": "addVar", "name": "fear_level", "value": 20 }
      ],
      "choices": [
        { "text": "起棺", "next": "coffin_rise" }
      ]
    },
    "coffin_rise": {
      "id": "coffin_rise",
      "location": "shiling_village",
      "text": "老礼生敲了一下引魂锣。\n\n'铛——'\n\n锣声很闷，像敲在湿布上。\n\n八个人同时弯腰。棺杠入肩。\n\n你右肩刚压上去，就知道不对。\n\n太重了。不是木头重，也不是死人重。那重量像是从棺材里一点点爬出来，顺着棺杠钻进肩骨，再往膝盖里压。\n\n你牙关一紧，脚下差点跪下去。\n\n老赵低声骂道：'他娘的，这木匠生前吃铁长大的？'\n\n没有人笑。因为所有人都感觉到了——这口棺，重得不正常。\n\n棺已经起肩，不能再落。死人出门，第一落是安葬。中途无故落棺，就是把死人丢在半路。\n\n你们只能咬牙往外走。\n\n刚走出堂屋，棺材里传来一声轻响——\n\n'咚。'\n\n像有人在里面用指节敲了一下棺盖。",
      "qte": {
        "type": "hold",
        "title": "顶住棺重",
        "description": "棺重异常，你必须顶住！松手会导致棺杠落地！",
        "buttonText": "用力顶住",
        "holdDuration": 7000,
        "timeLimit": 8000,
        "success": "coffin_hold_success",
        "fail": "coffin_hold_fail"
      }
    },
    "coffin_hold_success": {
      "id": "coffin_hold_success",
      "title": "顶住棺重",
      "location": "shiling_village",
      "text": "你咬紧牙关，死死顶住棺重！\n\n棺杠压进肩肉里，疼得你眼前发黑，但你没有松手。\n\n老赵在后面低喝：'稳住！'\n\n你们强行稳住棺，继续往外走。\n\n周家女人听见声音，哭声猛地停了。整个院子一下静得吓人。\n\n'咚。'\n\n又一声。这一次更重，你肩上的棺杠跟着震了一下。\n\n老赵声音发颤：'长河，要不要开棺？'\n\n'不开。'你盯着前面的山路。\n\n'死人出门不开棺。谁开，谁替他躺。'",
      "actions": [
        { "type": "addVar", "name": "fear_level", "value": 25 },
        { "type": "addVar", "name": "coffin_weight", "value": 60 }
      ],
      "choices": [
        { "text": "继续抬棺上路", "next": "bamboo_road_start" },
        { "text": "让老赵闭嘴，不准再提开棺", "next": "silence_zhaolao" }
      ]
    },
    "coffin_hold_fail": {
      "id": "coffin_hold_fail",
      "location": "shiling_village",
      "text": "棺重太沉，你撑不住了！\n\n棺杠从肩上滑开，整口棺重重砸在地上——\n\n'砰！'\n\n地面震动，纸钱漫天飞舞。\n\n老赵脸色惨白：'长河！'\n\n你赶紧重新架杠，但已经晚了。棺底接触地面的瞬间，你听见里面传来一声长叹，像有人终于找到了落脚处。\n\n老礼生哭丧着脸：'完了完了，落棺了……'\n\n你咬牙重新起棺。这一次，棺更重了——像多了一个人压在上面。\n\n你知道，从这一刻起，这趟棺已经不是送葬那么简单了。\n\n棺材里传来一声轻笑，你听见自己的名字被写进了什么东西里。",
      "actions": [
        { "type": "addVar", "name": "fear_level", "value": 50 },
        { "type": "addVar", "name": "coffin_weight", "value": 90 }
      ],
      "choices": [
        { "text": "继续上路", "next": "bamboo_road_start" }
      ]
    },
    "silence_zhaolao": {
      "id": "silence_zhaolao",
      "location": "shiling_village",
      "text": "'再提开棺，你替他躺。'\n\n老赵脸色一白，不敢再说话。\n\n你深吸一口气，带着众人走出周家。\n\n雨还在下。山路被泡得发亮，竹林里的水滴噼里啪啦落下来，像有许多看不见的人跟在后面踩泥。\n\n走了不到半里，棺材开始滴水。一滴，一滴，从棺盖缝里渗出来，落在青石板上。\n\n啪嗒。啪嗒。\n\n像有人跟着你们数步子。\n\n你低头看——水是黑的。每滴落地后都没有散开，而是聚成一个小小的圆，像一只只没有眼白的眼睛。",
      "actions": [
        { "type": "addVar", "name": "fear_level", "value": 30 }
      ],
      "choices": [
        { "text": "继续往前走", "next": "bamboo_road_start" }
      ]
    },
    "bamboo_road_start": {
      "id": "bamboo_road_start",
      "location": "bamboo_road",
      "text": "山路很窄，两边都是竹林。老礼生没有跟来——按规矩，横死棺过了村口，礼生就不能再送。\n\n你们八个人，只能自己走。\n\n走了大约半炷香，你听见棺材里传出了哭声。\n\n不是周家女人的哭。也不是山风。那哭声很细，像一个女人捂着嘴，贴在棺木里面哭。\n\n呜——呜呜——\n\n哭了两声后，又变成了孩子。再后来，像是很多人挤在一口棺材里，一起低低地哭。\n\n老赵声音已经发颤：'长河，这不是一口棺。'\n\n你知道他的意思。有些棺，看着装一个人，实际上里面跟着不止一个。\n\n'别听。往前走。'你咬着牙说。\n\n就在这时，前面的刘三忽然停下脚步。\n\n'长河……前面有东西。'",
      "choices": [
        { "text": "让刘三描述看到了什么", "next": "liu_san_report" },
        { "text": "亲自上前查看", "next": "see_shoes" }
      ]
    },
    "liu_san_report": {
      "id": "liu_san_report",
      "location": "bamboo_road",
      "text": "刘三声音发紧：'一双鞋。白布鞋。正摆在路中间。'\n\n你心头一沉。'鞋尖朝哪边？'\n\n'朝我们。'\n\n你握紧棺杠。'别说话。往前走。'\n\n'还走？'\n\n'不走，棺就落了。'\n\n众人继续往前。每一步，肩上的棺材就沉一分。\n\n离那双鞋还剩三步时，棺材里面又响了——不是敲，是抓。指甲刮着棺材内壁，一下一下慢慢拖。\n\n那声音听得人牙根发酸。\n\n老赵忍不住骂了一句：'周满仓，你死都死了，别折腾活人！'\n\n你脸色一变——\n\n棺材里的抓挠声突然停了。\n\n下一刻，里面传出一个男人的声音：\n\n'我没折腾。是她要回来。'",
      "actions": [
        { "type": "addVar", "name": "fear_level", "value": 45 },
        { "type": "setVar", "name": "has_seen_white_shoes", "value": true }
      ],
      "choices": [
        { "text": "继续往前走", "next": "see_shoes" }
      ]
    },
    "see_shoes": {
      "id": "see_shoes",
      "location": "bamboo_road",
      "text": "你走到前面，看见那双白布鞋。\n\n湿漉漉的，鞋面上沾着泥，像刚从河里捞出来。正整整齐齐摆在山路中央，鞋尖朝着你们。\n\n像有人站在那里，等你们把棺材抬过去。\n\n棺材里的男人又说话了。这一次，他叫的是你：\n\n'沈长河。'\n\n你肩膀一下麻了。\n\n'别应！'老赵在后面急道。\n\n你当然知道不能应。活人夜路听见死人叫名，第一声不能应，第二声不能回，第三声若还听见，就得咬破舌尖往前走。\n\n'沈长河。'\n\n第二声来了。你咬紧牙，强迫自己盯着前面。\n\n那双白布鞋似乎比刚才近了一点——不是你们靠近它，是它自己往这边挪了一点。\n\n'沈长河。'\n\n第三声响起。你狠狠咬破舌尖。\n\n血腥味在嘴里散开。棺材里的声音戛然而止。\n\n与此同时，那双白布鞋忽然倒了——不是被风吹倒，而是像穿鞋的人跪了下来。鞋尖一点点往内扣。\n\n泥地上多出两道膝盖印。\n\n一个女人的哭声从棺材下面传了出来：\n\n'让我回家。'",
      "qte": {
        "type": "click",
        "title": "咬破舌尖",
        "description": "死人叫你的名字！必须快速点击按钮咬破舌尖才能阻止它！",
        "buttonText": "咬紧牙关！",
        "requiredClicks": 12,
        "timeLimit": 2500,
        "success": "bite_tongue_success",
        "fail": "bite_tongue_fail"
      }
    },
    "bite_tongue_success": {
      "id": "bite_tongue_success",
      "location": "bamboo_road",
      "text": "你咬破舌尖，血腥味散开！\n\n棺材里的声音戛然而止。那双白布鞋倒在地上，鞋尖往里扣，像有人跪了下来。\n\n'让我回家。'\n\n女人的哭声从棺材下面传来，一声比一声轻，却一声比一声冷。\n\n你问刘三：'周满仓家里，有没有女人横死？'\n\n刘三脸色一白：'有……他媳妇，何秀娘。三年前淹死的，草草埋在乱葬坳边上。'\n\n你心里明白了几分。周满仓是木匠，自己打一辈子棺材，却没有给自己媳妇钉那三枚棺钉。\n\n何秀娘不是来害周满仓。她是找不到自己的棺路了。\n\n而现在，她来找他了。\n\n她要借他的棺。\n\n也要借他的命。",
      "actions": [
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 30 },
        { "type": "addVar", "name": "fear_level", "value": 50 }
      ],
      "choices": [
        { "text": "继续抬棺前进", "next": "continue_forward" },
        { "text": "停下，尝试沟通", "next": "communicate_hexiu" }
      ]
    },
    "bite_tongue_fail": {
      "id": "bite_tongue_fail",
      "location": "bamboo_road",
      "text": "你犹豫了一瞬——\n\n第三声落下时，你没有及时咬破舌尖。\n\n'沈长河。'\n\n这一次，声音更近了。像周满仓就趴在棺盖里面，脸贴着木板，隔着一寸棺木看你。\n\n你的肩膀开始发麻，一股冷意顺着手臂蔓延。\n\n'长河！快咬破！'老赵嘶吼。\n\n你终于狠下心，咬破舌尖——但已经晚了。棺材里传来一声轻笑，你听见自己的名字被写进了什么东西里。\n\n你低头看左腕，那里多了一圈极淡的黑印，像一根缩小的棺杠。\n\n'你已经被它记住了。'老赵声音发颤。\n\n棺材里的头发开始往外渗，像活蛇一样缠上棺杠。",
      "actions": [
        { "type": "addVar", "name": "fear_level", "value": 65 },
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 20 }
      ],
      "choices": [
        { "text": "继续前进", "next": "continue_forward" }
      ]
    },
    "continue_forward": {
      "id": "continue_forward",
      "location": "bamboo_road",
      "text": "你们继续往前走。棺材里的头发开始往外渗，一缕一缕，像水草一样从棺盖缝隙里钻出来，贴着棺木往下垂。\n\n一缕头发擦过你的手背——冰得像蛇。\n\n你终于忍不住，问刘三：'何秀娘死后，周家到底怎么葬的？'\n\n'薄板棺，埋乱葬坳……他们没给她钉棺。'\n\n你心里一沉。没钉棺的人，就等于死后没有归处。\n\n你低声对众人说：'停。'\n\n'停？你刚才不是说不能停？'\n\n'不是落棺。是压肩停。'\n\n所谓压肩停，是抬棺匠的老办法——棺不落地，人不换肩，只用肩头死死顶住，让棺停在半空。\n\n八个人同时站稳。棺材悬在半空。\n\n你从腰间摸出那枚棺钉——父亲临出门前塞给你的。\n\n'补钉。'你说。",
      "choices": [
        { "text": "为何秀娘补棺钉", "next": "repair_coffin" },
        { "text": "不理会，继续抬棺", "next": "ignore_hexiu" }
      ]
    },
    "communicate_hexiu": {
      "id": "communicate_hexiu",
      "location": "bamboo_road",
      "text": "你停下棺，深吸一口气。\n\n'何秀娘。'\n\n所有人脸色都变了——因为你叫了她的名字。\n\n山路上的风一下停了。白布鞋也不动了。棺材里的哭声彻底消失。\n\n'你没棺钉，我给你补一枚。你没归处，我送你到乱葬坳。但这口棺，不是你的。'\n\n话音刚落，棺材猛地一震。那股重量几乎把你压跪下去。\n\n你手里的棺钉像活了一样，拼命往棺盖里钻。\n\n你咬住牙，用力往下按。",
      "qte": {
        "type": "sequence",
        "title": "补棺钉",
        "description": "按顺序按下按键，替何秀娘补上棺钉！",
        "sequence": ["A", "S", "D", "F"],
        "timeLimit": 4000,
        "success": "repair_coffin_success",
        "fail": "repair_coffin_fail"
      }
    },
    "repair_coffin": {
      "id": "repair_coffin",
      "location": "bamboo_road",
      "text": "你让刘三把引魂绳拿出来，一头绑在棺钉上，另一头缠住自己的左腕。\n\n'长河，你疯了？这叫牵阴路！'老赵急了。\n\n你知道。牵阴路，就是活人替死人找归处。若路找对了，死人走。若路找错了，活人替它留下。\n\n但眼下没有别的办法。\n\n你把棺钉抵在棺盖正中，低声说：\n\n'何秀娘。'\n\n所有人脸色都变了。你叫了她的名字。\n\n山路上的风一下停了。白布鞋也不动了。棺材里的哭声彻底消失。\n\n你继续说：\n\n'你没棺钉，我给你补一枚。你没归处，我送你到乱葬坳。但这口棺，不是你的。'\n\n话音刚落，棺材猛地一震。你必须按顺序钉下三枚棺钉！",
      "qte": {
        "type": "sequence",
        "title": "补棺钉",
        "description": "按顺序按下按键，替何秀娘补上棺钉！",
        "sequence": ["A", "S", "D", "F"],
        "timeLimit": 4000,
        "success": "repair_coffin_success",
        "fail": "repair_coffin_fail"
      }
    },
    "repair_coffin_success": {
      "id": "repair_coffin_success",
      "location": "bamboo_road",
      "text": "你咬紧牙关，按顺序钉下三枚棺钉！\n\n'砰！砰！砰！'\n\n棺钉完全入木。白布鞋瞬间停住。棺材里的哭声也停了。\n\n你低头看去——前方那双白布鞋不见了。泥地上的水印一路延伸向乱葬坳，像有人终于转身，往该去的地方走了。\n\n老赵松了一口气。'成了？'\n\n你没有回答。因为你看见棺材底下，那第九串脚印还在——它没有离开，反而更深了。\n\n棺材忽然轻了。轻得不正常。刚才重得像山，现在却像里面什么都没有。\n\n刘三颤声说：'长河，怎么轻了？'\n\n你心里猛地一跳。你爹那句话——'棺重可以换肩，但不能问重'——但刘三已经问出口了。\n\n下一刻，棺材里面传来周满仓的声音。\n\n很轻。很近。带着一丝说不出的笑。\n\n'因为我下去了。'\n\n'这一肩，换我来抬。'\n\n话音落下，棺材底下那第九串脚印旁边，又慢慢浮出了一串新的脚印——比刚才那串大。\n\n而棺材里，再也没有半点声音。\n\n你终于明白——何秀娘不是借棺失败。她是把周满仓也带下去了。\n\n这口棺，现在空了。\n\n可你们八个人，还抬着它。",
      "actions": [
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 50 },
        { "type": "addVar", "name": "fear_level", "value": 70 },
        { "type": "setVar", "name": "has_named_hexiu", "value": true }
      ],
      "choices": [
        { "text": "继续抬棺入坳", "next": "enter_luan_zang_ao" }
      ]
    },
    "repair_coffin_fail": {
      "id": "repair_coffin_fail",
      "location": "bamboo_road",
      "text": "你按错了顺序——\n\n棺钉没能钉进棺盖，反而弹了回来。棺材里传出一声凄厉的尖叫，刘三脚下一滑，棺头猛地一偏！\n\n'稳住！'你大吼。\n\n众人强行把棺抬正，但已经晚了。棺盖缝隙里涌出更多头发，像活蛇一样缠上棺杠。\n\n何秀娘的声音从棺材下面传来，带着怨毒：\n\n'你骗我。'\n\n那双白布鞋重新出现在路中间，这一次，鞋尖不再朝你们——而是朝棺材。\n\n你知道，她要进去了。\n\n'继续走！别停！'你咬牙道。\n\n但棺材越来越重，像里面多了两个人。",
      "actions": [
        { "type": "addVar", "name": "fear_level", "value": 80 },
        { "type": "addVar", "name": "coffin_weight", "value": 100 }
      ],
      "choices": [
        { "text": "加速赶往乱葬坳", "next": "enter_luan_zang_ao" }
      ]
    },
    "ignore_hexiu": {
      "id": "ignore_hexiu",
      "location": "bamboo_road",
      "text": "你没有理会何秀娘的哭声，继续抬棺前进。\n\n但棺材里的头发越钻越多，很快垂到了棺杠上。老赵吓得差点松手。\n\n'里面不是周满仓！'他哭丧着脸。\n\n'不管里面是什么，棺没到地，都不能松。'\n\n你说完这句话，前方那双白布鞋忽然动了——它没有站起来，而是贴着泥地慢慢朝你们滑过来，鞋后拖出两道长长的水印。\n\n像有个看不见的女人，正跪在地上，一点点爬向棺材。\n\n你心里明白，有些债，躲不过。\n\n棺材开始剧烈震动，棺盖缝隙里涌出一股黑气。",
      "actions": [
        { "type": "addVar", "name": "fear_level", "value": 70 }
      ],
      "choices": [
        { "text": "继续前进", "next": "enter_luan_zang_ao" }
      ]
    },
    "enter_luan_zang_ao": {
      "id": "enter_luan_zang_ao",
      "location": "luan_zang_ao",
      "text": "乱葬坳就在前面。一片被竹林围住的山洼，碑面长满青苔，上面只剩两个字还能看清——\n\n无归。\n\n就在棺头越过石碑的一瞬间，棺材忽然重了一下——不是很重，只轻轻一沉。像有人从棺材下面松了肩。\n\n那两串脚印停在了石碑外。小的是何秀娘，大的是周满仓。它们没有再跟进来。\n\n'他们走完了。'你低声说。\n\n你们继续往里走。乱葬坳里没有风，也没有虫叫，只有脚下的泥很软，每踩一步都像踩进了腐烂的棉絮里。\n\n周家的坟坑挖在最里面，很浅。坑边插着两根白幡，被雨水打湿，贴在竹竿上，像两条发白的舌头。\n\n你们把棺材抬到坑边。老赵松了一口气：'落吧。'\n\n你刚要点头，忽然发现不对——\n\n坑里有东西。\n\n一只青白色的手从泥里伸出来，五指弯曲，正搭在坑沿上。",
      "choices": [
        { "text": "让刘三用竹枝挑开那只手", "next": "probe_hand" },
        { "text": "直接落棺", "next": "force_drop_coffin" },
        { "text": "换一个地方挖坑", "next": "find_new_spot" }
      ]
    },
    "probe_hand": {
      "id": "probe_hand",
      "location": "luan_zang_ao",
      "text": "你让刘三折了一根竹枝，伸过去挑那只手。\n\n竹枝刚碰到它，那只手忽然缩回了泥里。紧接着，坟坑里传来一阵很轻的笑声——像老人，又像小孩，不是一个人笑，是很多人憋着笑，从泥土下面笑出来。\n\n你头皮发麻。乱葬坳里的东西醒了。\n\n'落棺。'你压低声音。\n\n八个人同时弯肩。棺材慢慢往下沉。\n\n可就在棺底快要碰到泥土的时候，坟坑里忽然传来一个声音：\n\n'满了。'",
      "actions": [
        { "type": "addVar", "name": "fear_level", "value": 80 }
      ],
      "choices": [
        { "text": "继续落棺", "next": "force_drop_coffin" },
        { "text": "停棺，开棺检查", "next": "open_coffin_check" }
      ]
    },
    "force_drop_coffin": {
      "id": "force_drop_coffin",
      "location": "luan_zang_ao",
      "text": "你不管那声音，下令继续落棺！\n\n但棺材刚碰到泥土，整口棺忽然被一股力量往上顶——不是人顶的，是从地下顶的！\n\n'起！'你大吼。\n\n众人拼命把棺抬起来。坟坑里的泥水鼓起一个泡，泡破了，里面冒出一股黑气。\n\n然后，坑底浮出了一张脸——没有皮，只有一层湿漉漉的泥，五官却清清楚楚。它仰着头看着你们，嘴巴一开一合：\n\n'满了。'\n\n你背后发冷。刘三已经快哭了：'长河，它说满了是什么意思？'\n\n你没有回答。因为你知道——这坑不能用。周家的坟坑，被别的东西占了。\n\n'开棺。'你说。\n\n所有人都愣住了。\n\n'你刚才不是说，死人出门不开棺？'\n\n'现在棺里没有死人。'",
      "actions": [
        { "type": "addVar", "name": "fear_level", "value": 90 }
      ],
      "choices": [
        { "text": "开棺检查", "next": "open_coffin_check" }
      ]
    },
    "find_new_spot": {
      "id": "find_new_spot",
      "location": "luan_zang_ao",
      "text": "你让众人抬着棺，在乱葬坳里找新的地方。\n\n走了一圈，你发现所有看起来能挖坑的地方，地面都有微微隆起——像是下面已经埋了东西。\n\n'这里根本没有空位。'刘三绝望地说。\n\n你看着四周。乱葬坳里埋的都是无归之人，有些坟没有碑，有些碑没有名。年深日久，坟和坟之间的界限早就乱了。\n\n你停在一块歪斜的石碑前。碑上刻着'无归'两个字。\n\n'开棺。'你说。\n\n'什么？'\n\n'棺里真空了，就不能按周满仓下葬。否则这口空棺入土，迟早还会爬出来。'",
      "actions": [
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 40 }
      ],
      "choices": [
        { "text": "开棺检查", "next": "open_coffin_check" }
      ]
    },
    "open_coffin_check": {
      "id": "open_coffin_check",
      "location": "luan_zang_ao",
      "text": "你们把棺材悬在坑边，没有落地。刘三用棺斧撬开棺钉。\n\n第一枚钉起出来的时候，山坳里传来一声叹息。\n\n第二枚钉起出来的时候，竹林深处像有人轻轻咳了一声。\n\n第三枚钉刚松，棺材里面忽然自己响了——\n\n'咚。'\n\n众人手都停了。你盯着棺盖。\n\n'继续。'\n\n刘三脸色惨白，把第三枚钉撬了出来。棺盖开了一条缝。一股冷气从里面冒出来——没有尸臭，只有水腥味，像打开了一口深井。\n\n你伸手推开棺盖。\n\n棺材里果然空了。没有周满仓，没有何秀娘——\n\n只有一双鞋。\n\n一双湿漉漉的白布鞋，正整整齐齐摆在棺底，鞋尖朝着你。",
      "qte": {
        "type": "sequence",
        "title": "开棺检查",
        "description": "按顺序按下按键撬开棺钉！",
        "sequence": ["J", "K", "L", ";", "'"],
        "timeLimit": 4000,
        "success": "coffin_open_success",
        "fail": "coffin_open_fail"
      }
    },
    "coffin_open_success": {
      "id": "coffin_open_success",
      "location": "luan_zang_ao",
      "text": "你成功撬开棺钉，推开棺盖——\n\n棺材里空了。只有那双白布鞋，整整齐齐摆在棺底，鞋尖朝着你。\n\n你拿起火折子往棺里照——\n\n火光一晃，你看见棺材内壁上刻着字。不是木匠刻的，更像是指甲一点点抠出来的。\n\n字很乱，密密麻麻，全是人的名字。\n\n何秀娘。周满仓。赵金斗。李三娘。陈狗子……\n\n最后，你在棺尾看见了一行新字——字迹很浅，像刚刚开始往外长：\n\n沈长河。\n\n你浑身一僵。手里的火折子差点掉进棺里。\n\n棺材里面忽然传来一道声音，低沉、潮湿，像从很深的地下传出来：\n\n'借棺者，留名。'\n\n'替棺者，入账。'\n\n声音落下的瞬间，棺内壁上的那些名字全都轻轻动了一下——像许多人在黑暗里同时抬头。\n\n你终于明白。所谓借棺，不是死人借棺。是棺借人。\n\n从你叫出何秀娘名字、给她补钉的那一刻开始，你就成了替棺的人。",
      "actions": [
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 70 },
        { "type": "addVar", "name": "fear_level", "value": 95 }
      ],
      "choices": [
        { "text": "合上棺盖", "next": "close_coffin" },
        { "text": "仔细查看棺内的名字", "next": "examine_names" }
      ]
    },
    "coffin_open_fail": {
      "id": "coffin_open_fail",
      "location": "luan_zang_ao",
      "text": "你按错了顺序——\n\n棺钉卡住了！刘三用力过猛，棺斧脱手飞出，砸在旁边的石碑上。\n\n'砰！'\n\n这一声像是惊醒了什么。乱葬坳里所有的坟都开始震动，泥土下面传来无数抓挠声。\n\n棺材里的白布鞋忽然立了起来——鞋里没有脚，却直直站在棺底，鞋尖对着你！\n\n棺内壁上的名字开始往下渗水，黑水一滴一滴落在棺底，慢慢汇成了一行字：\n\n三代抬棺。\n\n你脑子嗡的一声。这四个字，你从没见过，却像刻进了骨头里。\n\n乱葬坳里的泥地开始震动，坟坑里猛地伸出十几只青白色的手，抓住棺底，狠狠往下拽！\n\n你必须拼命拉住棺！",
      "actions": [
        { "type": "addVar", "name": "fear_level", "value": 100 }
      ],
      "choices": [
        { "text": "拼命拉住棺", "next": "fight_coffin" }
      ]
    },
    "examine_names": {
      "id": "examine_names",
      "location": "luan_zang_ao",
      "text": "你凑近棺壁，仔细看那些名字——\n\n有些已经发黑，有些还像刚刻上去，木屑边缘泛着湿红。名字很多，多得不像一口棺材该有的。\n\n在这些名字中，你看见一个熟悉的——沈林。那是你的曾祖父。\n\n他的名字下面，有一行小字：\n\n'沈家第一代替棺人。'\n\n你心里一沉。原来沈家的债，从曾祖父那一代就开始了。\n\n就在这时，棺材里面又传来那个声音：\n\n'沈长河。'\n\n'你终于看到账了。'\n\n你抬头，看见棺盖上慢慢渗出一行字：\n\n'三代之内，沈家人都要抬棺。'\n\n'你是第一代。'\n\n'还剩两代。'\n\n棺内壁上的名字开始燃烧，发出黑色的火焰。",
      "actions": [
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 80 },
        { "type": "addVar", "name": "fear_level", "value": 100 }
      ],
      "choices": [
        { "text": "合上棺盖", "next": "close_coffin" }
      ]
    },
    "close_coffin": {
      "id": "close_coffin",
      "location": "luan_zang_ao",
      "text": "你想把棺盖合上——\n\n已经晚了。棺材里那双白布鞋忽然立了起来，鞋尖对着你。棺内壁上的名字开始往下渗水，黑水汇成一行字：\n\n三代抬棺。\n\n你脑子嗡的一声。\n\n乱葬坳里的泥地忽然开始震动，坟坑里猛地伸出十几只青白色的手，抓住棺底，狠狠往下拽！\n\n'拉住！'你大吼。\n\n老赵从后面抱住你的腰，刘三用棺杠卡住坑沿——\n\n但那口棺还是沉下去了。不是落进坑，是被坑吃了。\n\n泥水翻涌，棺材一点点往下陷。棺盖没有合上，你眼睁睁看着那双白布鞋立在棺里，随着棺材一起沉进泥中。\n\n最后一刻，棺底那行'三代抬棺'的字忽然亮了一下。\n\n然后，棺材彻底没入泥里。\n\n坟坑恢复平静，像什么都没有发生过。\n\n只有你的左腕，还被红绳勒出一道血痕。血痕周围，慢慢浮出一圈黑印——很细，像一根缩小的棺杠。",
      "actions": [
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 90 },
        { "type": "addVar", "name": "fear_level", "value": 100 }
      ],
      "choices": [
        { "text": "看着自己的手腕", "next": "check_wrist" }
      ]
    },
    "fight_coffin": {
      "id": "fight_coffin",
      "location": "luan_zang_ao",
      "text": "你死死拉住棺杠，和那些手对抗！\n\n'拉住！别松手！'你嘶吼。\n\n老赵抱住你的腰，刘三用棺杠卡住坑沿——\n\n但那股力量太大了。你感觉自己的身体正在被拖向坟坑。\n\n关键时候，你左腕上的红绳猛地绷紧——那根绑着棺钉的引魂绳，像被什么东西从黑暗深处拽住。\n\n'啊——！'你惨叫一声，却没有松手。\n\n棺钉从你腰间被扯出来，带着一道血痕。\n\n'砰！'\n\n棺钉砸在棺盖上，发出一声巨响。那些手猛地缩了回去。\n\n棺材趁机往下沉——不是被拉下去的，是自己沉下去的。\n\n泥水翻涌，棺底那行'三代抬棺'的字亮了一下，然后彻底消失。\n\n坟坑恢复平静。你的左腕上，红绳勒出的血痕周围，浮出一圈黑印。",
      "actions": [
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 85 },
        { "type": "addVar", "name": "fear_level", "value": 95 }
      ],
      "choices": [
        { "text": "看着自己的手腕", "next": "check_wrist" }
      ]
    },
    "check_wrist": {
      "id": "check_wrist",
      "location": "luan_zang_ao",
      "text": "你盯着自己的手腕。那圈黑印还在，细细一圈，贴在皮肤下面，像一截缩小的棺杠。\n\n不疼，却沉。明明只是一圈印子，你却觉得整条胳膊都压着什么东西。\n\n老赵瘫坐在地上，大口喘气：'结束了？'\n\n你没有回答。因为你听见身后传来一阵脚步声——不是老赵，不是刘三，也不是你们八个人中的任何一个。\n\n那脚步声很慢，很稳，从乱葬坳深处传来。一步，一步，像有人抬着什么极重的东西，正在朝你们走来。\n\n众人也听见了。所有人都回过头。\n\n黑暗里，不知什么时候亮起了一点幽蓝色的火。\n\n火光下，站着一个老人。他穿着一身旧寿衣，手里拄着一根黑木拐杖。脸被阴影遮住，看不清五官。\n\n可他的声音很清楚：\n\n'沈家人。'\n\n'你终于替了第一口棺。'\n\n你攥紧棺杠，问他：\n\n'你是谁？'\n\n老人抬起头。你看见他的右手无名指上，戴着一枚黑色玉戒——黑得像一滴凝住的墨，火光照上去时，里面却泛出一线暗红，像有血被封在玉里，很多年都没干。\n\n他说：\n\n'带你去看账的人。'",
      "actions": [
        { "type": "setVar", "name": "has_entered_coffin_account", "value": true }
      ],
      "choices": [
        { "text": "跟老人走", "next": "go_to_account" },
        { "text": "质问老人到底是谁", "next": "question_old_man" }
      ]
    },
    "go_to_account": {
      "id": "go_to_account",
      "location": "coffin_account",
      "text": "你跟着老人走进乱葬坳深处。\n\n越往里，泥越软，脚踩下去会有黑水从旁边冒出来。那黑水里偶尔漂着纸钱——有些已经烂得不成样子，却还能看见上面写着名字。\n\n走了一段，你听见身后传来木头摩擦的声音——吱呀，吱呀。\n\n你回头看——刚才被坟坑吞下去的那口棺材，不知什么时候又出来了。没有人抬，却贴着泥地跟在你们身后慢慢滑。棺盖开着，里面空空荡荡，只有那双白布鞋仍旧直直立在棺底，鞋尖朝着你。\n\n'别看空棺。'老人头也不回地说。'它空着，就会想装东西。'\n\n你不敢再看。\n\n很快，老人带你走到一棵老槐树下。树身粗得三个人都抱不过来，枝叶全是枯的。树上挂满了红绳，每一根下面都吊着一块小木牌。\n\n木牌上写着名字——何秀娘、周满仓、赵金斗、李三娘……这些名字，你在那口棺的内壁上都看见过。\n\n'不是死人名。'老人说。'是欠棺名。'\n\n他走到树后，伸手在树皮上摸索——\n\n咔。\n\n一声轻响。老槐树裂开了一道缝，像一扇门，从树身中间慢慢打开。里面没有树心，只有一条往下的石阶。\n\n'棺账房。'老人说。\n\n他率先走了下去。你咬牙跟了上去。\n\n石阶很冷。越往下走，越听不见外面的声音。\n\n走到一半，你忽然听见耳边有人叫你——\n\n'沈长河。'\n\n声音很轻，像你爹。\n\n老人没有回头，只说了一句：\n\n'别应。'\n\n你心里一紧，继续往下走。\n\n第二声又来了——这一次，像你娘。\n\n你娘死得早，你已经很多年没听过她的声音。可这两个字一出来，你眼眶还是一热，差点回头。\n\n'棺账房里，最会叫人的不是鬼。'老人声音沉了几分。'是名字。'\n\n你咬破舌尖，强迫自己继续往前。\n\n石阶尽头，是一间很小的石室。石室四面都是墙，墙上没有灯，却有幽蓝色的光——来自石室中央的一张桌子。\n\n桌子上放着一本账册。\n\n黑皮。没有字。也没有灰。干净得不像放在地底。\n\n老人走到桌前，抬起戴着黑玉戒的手，按在账册上。\n\n黑玉戒泛起一线暗红。\n\n账册自己翻开。\n\n第一页，空白。\n\n第二页，空白。\n\n直到第三页，才慢慢浮出几个字：\n\n何秀娘。周满仓。\n\n名字下面，还有一行小字：\n\n'借棺未清，替者入账。'\n\n紧接着，下面又慢慢浮出三个字——\n\n沈长河。\n\n字迹很新，像刚用血写上去。",
      "actions": [
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 100 },
        { "type": "addVar", "name": "fear_level", "value": 100 }
      ],
      "choices": [
        { "text": "伸手去拿账册", "next": "touch_ledger" },
        { "text": "问老人这账怎么还", "next": "ask_payment" }
      ]
    },
    "question_old_man": {
      "id": "question_old_man",
      "location": "luan_zang_ao",
      "text": "'你到底是谁？为什么要带我看账？'\n\n老人看着你。他的脸很老，老得像一张被水泡皱的黄纸。皮肉贴着骨头，眼窝很深，嘴唇发青。最吓人的是他的眼睛——一只浑浊发白，另一只黑得很深，黑得没有光，像一口小小的棺材。\n\n'活人欠钱，死人欠路。'老人说。'路没走完，就叫棺债。'\n\n'我爹也说过类似的话。但我从没想过，这种东西真的会变成一笔账。'\n\n老人抬起戴黑玉戒的手，指了指你的左腕。\n\n'你替何秀娘补了钉，牵了阴路。她的路是走完了。可周满仓的棺，被你抬空了。空棺入坳，必须有人补名。'\n\n你低头看向手腕——那圈黑印还在，像一根缩小的棺杠，深深压在皮肤下面。\n\n'这账怎么还？'你问。\n\n老人像是等的就是这句话。他抬手，指向乱葬坳深处。\n\n'跟我来。'",
      "actions": [
        { "type": "addVar", "name": "knowledge_about_guandao", "value": 95 }
      ],
      "choices": [
        { "text": "跟老人走", "next": "go_to_account" }
      ]
    },
    "touch_ledger": {
      "id": "touch_ledger",
      "location": "coffin_account",
      "text": "你伸手去拿账册——\n\n手指刚碰到封面，一股刺骨的寒意顺着指尖蔓延！\n\n你想缩手，却发现手指像被粘住了一样。账册翻开，最后一页上，你的名字下面又浮出一行新字：\n\n'沈长河之后，尚有二代。'\n\n你浑身发冷。\n\n老人低声说：\n\n'从今晚开始，你不是抬棺人。'\n\n'你是替棺人。'\n\n石室里的蓝光瞬间熄灭。黑暗中，老人一把抓住你的手腕，把那枚黑玉戒塞进你掌心——\n\n戒指冷得吓人，像握住了一块刚从死人嘴里取出来的玉。\n\n'记住。'他的声音压得很低。\n\n'南岭原棺现，沈家债可平。'\n\n你还没来得及问，石室外那口空棺忽然发出一声闷响——\n\n'咚。'\n\n像有人在里面敲了一下。\n\n老人贴在你耳边，说出一句让你后半辈子都没能忘掉的话：\n\n'从今晚开始。'\n\n'你不是抬棺人。'\n\n'你是替棺人。'\n\n话音未落，石室中央的账册再次翻开。最后一页上，你的名字下面，又慢慢浮出了一行新字——\n\n'沈长河之后。'\n\n'尚有二代。'",
      "actions": [
        { "type": "addItem", "itemId": "black_jade_ring" }
      ],
      "choices": [
        { "text": "接过黑玉戒", "next": "ending_first" }
      ]
    },
    "ask_payment": {
      "id": "ask_payment",
      "location": "coffin_account",
      "text": "'这账怎么还？'\n\n老人翻到前面几页。那些原本空白的页纸开始一张张显字——每一页都有名字，每一个名字下面都有一句不同的话：\n\n'欠棺一程。'\n\n'横死未归。'\n\n'借名未还。'\n\n'棺落无人扶。'\n\n'死人不留名。'\n\n你越看越冷。这些不是普通账册，它记的不是钱，是命。\n\n老人翻到最后一页。这一页很奇怪，没有具体名字，只有四个大字：\n\n三代抬棺。\n\n你看见这四个字，左腕上的黑印忽然一痛，像有人用钉子在里面重新刻了一遍。\n\n'三代之内，沈家人都要抬棺。'老人说。\n\n'为什么是沈家？'\n\n老人没有回答。他伸手把账册往前推了一点：\n\n'你自己看。'\n\n那四个字下面，慢慢浮出一行更小的字：\n\n'沈家长河，替棺第一。'\n\n紧接着，第二行字也浮了出来：\n\n'若要平账，入南岭，寻原棺。'\n\n'原棺。'你第一次听见这两个字，却觉得整间石室都冷了下来。\n\n桌上的账册开始轻轻震动，墙壁里的蓝光也变得忽明忽暗。\n\n老人脸色微微一变，立刻伸手按住账册——但已经晚了。\n\n账册深处传来一声轻笑，不是老人的声音，也不是任何活人的声音。\n\n'沈长河。'\n\n'你终于看到账了。'\n\n你全身僵住。老人低喝一声：'闭眼！'\n\n你还没反应过来，账册里忽然伸出一只青黑色的手——五指细长，指甲乌紫，抓住账页边缘，像有什么东西正要从账里爬出来！\n\n老人猛地拔下自己手上的黑玉戒，狠狠按在账册上！\n\n'砰！'\n\n账册合上。那只青黑色的手被夹在里面，没有血，却传出一声刺耳的尖笑。\n\n石室里的蓝光瞬间熄灭。\n\n黑暗中，老人一把抓住你的手腕，把那枚黑玉戒塞进你掌心——\n\n'记住。南岭原棺现，沈家债可平。'\n\n'从今晚开始，你不是抬棺人。你是替棺人。'",
      "actions": [
        { "type": "addItem", "itemId": "black_jade_ring" }
      ],
      "choices": [
        { "text": "接过黑玉戒", "next": "ending_first" }
      ]
    },
    "ending_first": {
      "id": "ending_first",
      "location": "coffin_account",
      "text": "你握紧黑玉戒，走出棺账房。\n\n天还没亮。乱葬坳外的雾很重，竹林被雾压得看不见叶子，只能看见一根根发黑的竹竿，像无数支没人收走的引魂幡。\n\n老槐树还站在坳子最深处，树上的红绳轻轻晃着，每一根下面都吊着一块小木牌。\n\n那些名字在雾里看不清，却像一直在看你。\n\n你低头看自己的左腕——那圈黑印还在，细细一圈，贴在皮肤下面，像一截缩小的棺杠。\n\n不疼。却沉。\n\n你知道，从今晚开始，你不再是普通的抬棺人。\n\n你是替棺人。\n\n沈家的债，从你这里正式开始。\n\n而账册上那行'尚有二代'的字，像一把刀，悬在你的头顶。\n\n你不知道，那两代人是谁。\n\n但你知道，他们迟早会来。\n\n（第一部分·完）",
      "isEnd": true,
      "endType": "true",
      "endMessage": "你成为了沈家第一代替棺人。黑玉戒已在手，棺账已开。前路漫漫，三代人的命运从此绑定。"
    }
  }
}