{
  "title": "盗棺笔记Ⅱ：第十三副肩（中）[Hard]",
  "subtitle": "活人送殡",
  "description": "【警告】这是Hard难度模式。错误的选择将直接导致死亡。QTE失败将导致死亡。",
  "author": "Radiation Studio",
  "version": "1.0",
  "variables": {
    "has_seen_ghost": true,
    "has_taken_photo": true,
    "has_counted_cabinets": 0,
    "qte_passed": [],
    "mental_state": 100,
    "survival_points": 3,
    "zhou_dean_info": true,
    "old_accident_info": true,
    "coffin_bar_count": 0,
    "has_met_shenzhou": true,
    "has_learned_borrow_name": false,
    "has_burnt_ledger": false,
    "chenwangchuan_info": false,
    "secret_clue_6": false,
    "secret_clue_7": false
  },
  "features": {
    "inventory": true,
    "map": true
  },
  "items": [
    { "id": "phone", "name": "手机", "icon": "📱", "description": "我的智能手机，可以拍照、打电话。" },
    { "id": "receipt", "name": "接运单", "icon": "📋", "description": "公安发来的接运手续单，记录着旧水库无名男尸的信息。" },
    { "id": "photo", "name": "脚印照片", "icon": "📷", "description": "遗体车厢内七双湿脚印的照片，脚尖朝前，没有脚后跟。" },
    { "id": "newspaper", "name": "旧报纸", "icon": "📰", "description": "十五年前的报纸，报道南桥客车坠库事故，头版照片中马成福正抬着担架。" },
    { "id": "video", "name": "车载录像机", "icon": "📹", "description": "八号冷柜里发现的老式录像机，磁带仓里卡着一盘黑色录像带，标签写着'南桥客运'。" },
    { "id": "token", "name": "黑玉戒", "icon": "💍", "description": "沈舟戴在左手无名指的黑色玉戒，戒面刻着一个小小的'舟'字。" },
    { "id": "ledger", "name": "烧账", "icon": "📕", "description": "罗启明交给我的账本，记录着殡仪馆十五年前的账目，以及一份特殊的'借名'名单。" },
    { "id": "bell", "name": "裂铃", "icon": "🔔", "description": "沈舟带来的铜铃，铃身有一道裂纹，声音能震退棺中的亡灵。" },
    { "id": "wooden_tag", "name": "木牌", "icon": "🪓", "description": "陈望川留下的木牌，正面写着'陈砚'，背面写着'父'。" },
    { "id": "ancient_key", "name": "古铜钥匙", "icon": "🔑", "description": "旧殡仪馆暗格里发现的古铜钥匙，上面刻着'0713'。" }
  ],
  "map": {
    "title": "青山县殡仪馆 & 河西村 & 旧水库",
    "locations": [
      { "id": "zhou_house", "name": "周家老宅", "description": "河西村周德安的家，灵堂设在此处。" },
      { "id": "village_street", "name": "河西村街道", "description": "通往周家老宅的村路，两旁是老旧民房。" },
      { "id": "refrigerator", "name": "冷藏室", "description": "停尸楼一层最里面，两排冷柜。" },
      { "id": "duty_room", "name": "值班室", "description": "殡仪馆夜班值班室。" },
      { "id": "monitor_room", "name": "监控室", "description": "停尸楼监控中心。" },
      { "id": "backyard", "name": "后院", "description": "殡仪馆后院，停着遗体车。" },
      { "id": "reservoir", "name": "旧水库", "description": "南桥水库，十五年前客车事故发生地。" },
      { "id": "old_funeral_home", "name": "旧殡仪馆", "description": "十五年前的殡仪馆旧址，现已废弃。" }
    ],
    "startingLocation": "zhou_house"
  },
  "start": "start",
  "nodes": {
    "start": {
      "id": "start",
      "location": "zhou_house",
      "text": "周德安被七个人拖向棺材。他挣扎着，尖叫着。但没有人救他。\n\n沈舟看向我：'走吧。他的账，自己还。'\n\n'那我的名字呢？'\n\n'别急。还有一个人没还。'\n\n'谁？'\n\n'你父亲。'\n\n沈舟转身往外走。我跟在他身后。灵堂里的哀乐声越来越远。\n\n走出周家老宅，外面已经天亮了。雨停了，阳光照在湿漉漉的路面上，像一层银色的网。\n\n马成福站在院子门口，脸色惨白。\n\n'马叔，你没事吧？'\n\n他没有回答，只是盯着我的肩膀。\n\n'怎么了？'\n\n'你的肩上……又多了一道印。'\n\n我低头看了看右肩。果然，那道黑色的印记旁边，又多了一道很浅的线。\n\n'两道了。'马成福说，'还差十一道。'\n\n【Hard模式：注意印的数量，这是关键】",
      "choices": [
        { "text": "问马成福怎么回事", "next": "ask_machengfu" },
        { "text": "跟沈舟回去", "next": "go_back" },
        { "text": "查看马成福身上的疤痕（隐藏线索）", "next": "check_scar" }
      ]
    },
    "check_scar": {
      "id": "check_scar",
      "location": "zhou_house",
      "text": "我查看马成福的脖子。那里有一道很深的疤痕，从锁骨一直延伸到下巴。\n\n疤痕上有一些奇怪的纹路，像是刻上去的。我仔细看了看，那些纹路组成了一个数字：12。\n\n'你抬了十二次？'\n\n马成福脸色一变：'你怎么知道？'\n\n'疤痕上写着。'\n\n他沉默了很久。最后说：'每抬一次，疤痕就会多一道。十二道满了，人就会被棺带走。'\n\n'那你为什么还活着？'\n\n'因为还差一个人。'\n\n'谁？'\n\n'你。'\n\n【隐藏线索获取：马成福的疤痕数字】",
      "choices": [
        { "text": "跟沈舟回去", "next": "go_back" },
        { "text": "去旧水库看看", "next": "go_reservoir" }
      ]
    },
    "ask_machengfu": {
      "id": "ask_machengfu",
      "location": "zhou_house",
      "text": "'为什么会多一道？'\n\n'因为你进了灵堂。'\n\n'进灵堂就会多一道？'\n\n'不是所有灵堂。只有有棺的灵堂。'\n\n'什么意思？'\n\n马成福看着我：'每一口棺，都需要两个人抬。抬棺的人，肩上会留下一道印。印满十三道，人就会被棺带走。'\n\n'我没有抬棺。'\n\n'你进了灵堂，就算抬了。'",
      "choices": [
        { "text": "跟沈舟回去", "next": "go_back" },
        { "text": "去旧水库看看", "next": "go_reservoir" }
      ]
    },
    "go_back": {
      "id": "go_back",
      "location": "village_street",
      "text": "我跟沈舟回到殡仪馆。路上很安静。车开到废弃客运站时，路边没有站人。\n\n回到殡仪馆，沈舟带我去了冷藏室。八个冷柜全部关闭。墙上的电子登记屏显示：在柜遗体：0。\n\n'八号柜里是什么？'\n\n'陈望川。'\n\n'他为什么在里面？'\n\n'因为他是第十三个。'\n\n沈舟走到八号柜前，把手放在柜门上：'他在等你。'\n\n'等我干什么？'\n\n'等你认他。'",
      "choices": [
        { "text": "查看账本", "next": "check_ledger" },
        { "text": "去值班室找罗启明", "next": "find_luo" }
      ]
    },
    "go_reservoir": {
      "id": "go_reservoir",
      "location": "reservoir",
      "text": "我和马成福去了旧水库。水库四周全是雾。远处的山、树和护栏全被雾吞掉，只剩岸边几束手电光来回晃动。\n\n马成福站在岸边，看着水面：'十五年前，就是这里。'\n\n'客车从哪掉下去的？'\n\n他指向远处：'那边。有个急转弯。下雨天路滑，车直接冲下去了。'\n\n'车上有多少人？'\n\n'十一个。但捞上来十二具。'\n\n'第十二具是谁？'\n\n马成福沉默了很久：'不知道。'\n\n【Hard模式：注意数字的差异，11个人，12具尸体】",
      "choices": [
        { "text": "继续追问", "next": "press_machengfu_more" },
        { "text": "回去找沈舟", "next": "go_back" }
      ]
    },
    "check_ledger": {
      "id": "check_ledger",
      "location": "refrigerator",
      "text": "我翻开账本。里面记录着殡仪馆十五年前的账目。大部分都是正常的接运记录。但翻到最后几页，出现了一份特殊的名单。\n\n名单上有十二个名字：刘庆山、何梅、张永华、赵国民、周德胜、李小娟……还有五个我不认识的名字。\n\n名单下方写着：借名者。\n\n每个名字后面都有一个日期。刘庆山：一九九八年七月十四日。何梅：一九九八年七月十五日。以此类推。\n\n最后一行写着：第十三名，尚缺。\n\n我翻到下一页。空白页上，用红笔写着一行字：借一名，活一人。还一名，开一棺。\n\n再翻一页。又是空白页。但我隐约看见上面有淡淡的字迹，像是被擦过。\n\n【QTE】长按屏幕！你必须在3秒内看清上面的字迹！",
      "qte": {
        "type": "hold",
        "time": 3000,
        "success": "read_hidden_text",
        "fail": "fail_read_text"
      }
    },
    "read_hidden_text": {
      "id": "read_hidden_text",
      "location": "refrigerator",
      "text": "我看清了上面的字迹：\n\n'陈望川。一九九八年七月十三日。借名：陈砚。'\n\n'条件：第十三个抬棺人。'\n\n'期限：十五年。'\n\n'后果：到期未还，借名者将永远留在棺里。'\n\n【关键信息获取：陈望川借名的条件和期限】",
      "items": ["ledger"],
      "choices": [
        { "text": "去旧殡仪馆看看", "next": "go_old_funeral_home" },
        { "text": "去找罗启明", "next": "find_luo" }
      ]
    },
    "fail_read_text": {
      "id": "fail_read_text",
      "location": "refrigerator",
      "text": "【QTE失败】你没有看清上面的字迹。时间不够了。\n\n【死亡】你浪费了生存机会。",
      "isEnd": true,
      "endType": "death",
      "endMessage": "死亡结局：QTE失败，浪费了生存机会。"
    },
    "find_luo": {
      "id": "find_luo",
      "location": "duty_room",
      "text": "我去值班室找罗启明。他不在。桌上放着一杯没喝完的茶，已经凉了。\n\n墙上的公告板上贴着一张旧照片。照片里有四个人：罗启明、马成福、一个穿灰夹克的男人，还有一个年轻女人。\n\n那个穿灰夹克的男人站在最左边，脸被划花了。\n\n照片背面写着：南桥事故善后小组。一九九八年七月十三日。\n\n我看着那个划花的脸，心里突然一紧。那张脸，我好像在哪里见过。\n\n就在这时，值班室的门被推开了。罗启明站在门口。\n\n'你来了。'",
      "choices": [
        { "text": "问他为什么", "next": "ask_luo_reason" },
        { "text": "跟他去旧殡仪馆", "next": "go_old_funeral_home" }
      ]
    },
    "press_machengfu_more": {
      "id": "press_machengfu_more",
      "location": "reservoir",
      "text": "'留下名字？什么意思？'\n\n'人死了，名字还在。但棺里的人需要名字才能出来。所以它们会借活人的名字。'\n\n'借了会怎么样？'\n\n'借了，活人就会慢慢忘记自己的名字。直到有一天，完全变成棺里的那个人。'\n\n'那我现在……'\n\n'你已经被借了。'\n\n马成福看着我：'你的名字是陈砚。但这个名字，原本是陈望川的。'",
      "choices": [
        { "text": "去旧殡仪馆", "next": "go_old_funeral_home" },
        { "text": "回去找沈舟", "next": "go_back" }
      ]
    },
    "ask_luo_reason": {
      "id": "ask_luo_reason",
      "location": "duty_room",
      "text": "'为什么我该去？'\n\n'因为那里有你父亲的东西。'\n\n'陈望川？'\n\n'是。'\n\n'他在旧殡仪馆里留下了什么？'\n\n'一样很重要的东西。'\n\n'什么？'\n\n罗启明看着我：'你的名字。'\n\n我心里一震。\n\n'我的名字在旧殡仪馆里？'\n\n'是。十五年前，你在那里写了他的名字。但他也留下了你的名字。'\n\n'什么意思？'\n\n'借一名，活一人。还一名，开一棺。'",
      "choices": [
        { "text": "跟他去旧殡仪馆", "next": "go_old_funeral_home" }
      ]
    },
    "go_old_funeral_home": {
      "id": "go_old_funeral_home",
      "location": "old_funeral_home",
      "text": "旧殡仪馆在县城东郊，已经废弃了十五年。\n\n大门紧锁。罗启明从口袋里拿出一把钥匙，打开了门。\n\n里面很暗，一股霉味扑面而来。院子里长满了杂草，几棵枯树在风中摇曳。\n\n正房的门开着。里面空荡荡的，只有几张旧桌子和椅子。墙上的石灰已经剥落，露出里面的砖墙。\n\n罗启明走到墙角，搬开一张旧桌子。墙上露出一个暗格。但暗格没有直接打开——上面出现了一个两格的密码槽。\n\n密码槽旁边刻着一行字：先父后子。\n\n罗启明拿出一块木牌。木牌正面写着'陈砚'，背面写着'父'。\n\n【解密-Hard】暗格需要按照正确顺序放入木牌的正反面。只有一次机会。",
      "choices": [
        { "text": "先放'父'面，再放'陈砚'面", "next": "dark_cell_correct_hard" },
        { "text": "先放'陈砚'面，再放'父'面", "next": "dark_cell_wrong_hard" },
        { "text": "直接放进去", "next": "dark_cell_wrong_hard" },
        { "text": "查看暗格周围（寻找线索）", "next": "check_hidden_compartment" }
      ]
    },
    "dark_cell_correct_hard": {
      "id": "dark_cell_correct_hard",
      "location": "old_funeral_home",
      "text": "顺序正确。暗格缓缓打开。\n\n罗启明从暗格里拿出一个木盒：'这是陈望川留下的。'\n\n我打开木盒。里面放着一张照片和一块木牌。\n\n照片上有两个人：一个年轻女人和一个七岁的男孩。男孩的脸很模糊，但我知道那是我。\n\n照片背面写着：陈砚。一九九八年七月十三日。\n\n木牌正面写着：陈砚。背面写着：父。",
      "items": ["wooden_tag"],
      "choices": [
        { "text": "问他为什么要还", "next": "ask_why_return" },
        { "text": "拒绝还名字", "next": "refuse_return" },
        { "text": "查看暗格深处（隐藏线索）", "next": "check_hidden_compartment" }
      ]
    },
    "dark_cell_wrong_hard": {
      "id": "dark_cell_wrong_hard",
      "location": "old_funeral_home",
      "text": "【Hard模式】顺序错误。暗格突然闭合，发出一声巨响。\n\n罗启明脸色大变：'你选错了。暗格永远关闭了。'\n\n墙上的石灰开始剥落，露出里面的白骨。\n\n【死亡】你选错了顺序，暗格永远关闭，被困在旧殡仪馆里。",
      "isEnd": true,
      "endType": "death",
      "endMessage": "死亡结局：解密失败，暗格永远关闭。"
    },
    "check_hidden_compartment": {
      "id": "check_hidden_compartment",
      "location": "old_funeral_home",
      "text": "我查看暗格深处。那里有一个小盒子，里面放着一把古铜钥匙。\n\n钥匙上刻着'0713'。\n\n'这是什么？'\n\n罗启明看了一眼：'我不知道。'\n\n但他的眼神告诉我，他知道。\n\n【隐藏线索获取：古铜钥匙】",
      "items": ["ancient_key"],
      "choices": [
        { "text": "问他为什么要还", "next": "ask_why_return" },
        { "text": "拒绝还名字", "next": "refuse_return" }
      ]
    },
    "ask_why_return": {
      "id": "ask_why_return",
      "location": "old_funeral_home",
      "text": "'为什么要还？'\n\n'因为他借了你的名字活下来。现在，他要还了。'\n\n'还了会怎么样？'\n\n'他会走。你也能拿回自己的名字。'\n\n'那我的肩上的印呢？'\n\n'会消失。'\n\n罗启明看着我：'但你要是不还，他就会一直跟着你。直到你变成他。'\n\n我沉默了很久。最后，我问：'怎么还？'\n\n'把木牌放回八号柜里。'\n\n'然后呢？'\n\n'他会出来。你要看着他走。'\n\n'要是他不走呢？'\n\n'那你就替他走。'",
      "choices": [
        { "text": "把木牌放回八号柜", "next": "return_wooden_tag" },
        { "text": "先回去找沈舟", "next": "go_back_to_shenzhou" }
      ]
    },
    "refuse_return": {
      "id": "refuse_return",
      "location": "old_funeral_home",
      "text": "'我不还。'\n\n罗启明愣住了。\n\n'为什么？'\n\n'因为这是我的名字。不是他的。'\n\n'但他借了你的名字活下来。你不还，他就走不了。'\n\n'那是他的事。'\n\n'你不怕他一直跟着你？'\n\n'不怕。'\n\n我握紧木牌，转身往外走。\n\n罗启明在我身后说：'你会后悔的。'\n\n我没有回头。\n\n走出旧殡仪馆，阳光照在脸上，很刺眼。\n\n我低头看了看右肩。那道黑色的印记旁边，又多了一道很浅的线。\n\n三道了。\n\n还差十道。\n\n【Hard模式：拒绝还名字会增加肩上的印】",
      "choices": [
        { "text": "回去找沈舟", "next": "go_back_to_shenzhou" },
        { "text": "去冷藏室找陈望川", "next": "find_chenwangchuan" }
      ]
    },
    "return_wooden_tag": {
      "id": "return_wooden_tag",
      "location": "refrigerator",
      "text": "我和罗启明回到殡仪馆。他带我去了冷藏室。\n\n八个冷柜全部关闭。墙上的电子登记屏显示：在柜遗体：0。\n\n我走到八号柜前。柜门紧闭。\n\n罗启明说：'把木牌放在柜门上。'\n\n我举起木牌，正要放上去，八号柜突然震动了一下。一股力量从里面推出来，我被撞得后退几步。\n\n柜门开了一条缝。一只苍白的手从里面伸出来，抓住了我的手腕。\n\n'陈砚。跟我走。'\n\n【QTE】快速点击屏幕！那只手正在把你拉向冷柜，你必须在被拉进去前挣脱！【Hard模式：时间缩短至2.5秒】",
      "qte": {
        "type": "click",
        "target": 5,
        "time": 2500,
        "success": "return_success",
        "fail": "return_fail"
      }
    },
    "go_back_to_shenzhou": {
      "id": "go_back_to_shenzhou",
      "location": "duty_room",
      "text": "我回到值班室。沈舟坐在桌前，手里拿着那本旧账本。\n\n'你去哪了？'\n\n'旧殡仪馆。'\n\n'找到什么了？'\n\n我把木牌放在桌上：'这个。'\n\n沈舟拿起木牌，看了看：'陈砚。父。'\n\n他抬头看我：'这是他留下的。'\n\n'嗯。'\n\n'你愿意还吗？'\n\n'我不知道。'\n\n'你要是不还，他就会一直跟着你。'\n\n'那要是还了呢？'\n\n'他会走。你也能拿回自己的名字。'\n\n沈舟把木牌放回桌上：'但你要想清楚。还了，你就再也见不到他了。'",
      "choices": [
        { "text": "问他第十三个是什么意思", "next": "ask_thirteenth_mean" },
        { "text": "把木牌放回八号柜", "next": "return_wooden_tag" }
      ]
    },
    "find_chenwangchuan": {
      "id": "find_chenwangchuan",
      "location": "refrigerator",
      "text": "我去冷藏室找陈望川。八个冷柜全部关闭。墙上的电子登记屏显示：在柜遗体：0。\n\n我走到八号柜前。柜门紧闭。但缝隙里透出一丝白色冷气。\n\n我把耳朵贴在柜门上。里面传来一阵很低的说话声。\n\n'你来了。'\n\n'嗯。'\n\n'你想清楚了吗？'\n\n'想清楚了。'\n\n'那你为什么不还？'\n\n'因为这是我的名字。'\n\n'不是。这是我的。'\n\n'你借的。'\n\n'借了就是我的。'\n\n我握紧拳头：'你借了我的名字，活了十五年。现在，该还了。'\n\n冷柜里安静了很久。最后，陈望川说：'你真像你母亲。'\n\n柜门突然打开了。陈望川站在里面，看着我。\n\n'既然你不愿意还，那我就自己来拿。'\n\n他伸出手，向我走来。\n\n【QTE】长按屏幕！你必须在他碰到你之前挡住他！【Hard模式：时间缩短至4秒】",
      "qte": {
        "type": "hold",
        "time": 4000,
        "success": "block_success",
        "fail": "block_fail"
      }
    },
    "return_success": {
      "id": "return_success",
      "location": "refrigerator",
      "text": "我用力挣脱。那只手松开了。柜门砰地关上。\n\n罗启明站在我身后：'你没事吧？'\n\n'没事。'\n\n'刚才是他。'\n\n'我知道。'\n\n'他想拉你进去。'\n\n'我知道。'\n\n我深吸一口气，重新举起木牌：'再来。'\n\n罗启明点头。\n\n我把木牌放在柜门上。木牌刚碰到柜门，柜门就缓缓打开了。\n\n陈望川站在里面，看着我。\n\n'你来了。'\n\n'嗯。'\n\n'你想清楚了？'\n\n'想清楚了。'\n\n'那你愿意还吗？'\n\n'愿意。'\n\n我把木牌递给他。他伸手接过。\n\n木牌在他手里慢慢消失。他的身体也开始变得透明。\n\n'谢谢你。'\n\n'你要走了？'\n\n'嗯。'\n\n'那我的名字呢？'\n\n'已经还给你了。'\n\n他看着我：'好好活着。'\n\n说完，他消失了。柜门缓缓关上。\n\n我低头看了看右肩。那三道黑色的印记，正在慢慢消失。\n\n罗启明松了一口气：'你做到了。'\n\n就在这时，墙上的电子登记屏突然闪了一下。数字从0变成了1。\n\n紧接着，又变成了2。3。4。5。6。7。8。9。10。11。12。\n\n最后停在：13。\n\n冷藏室里所有柜门同时打开。十二具尸体从里面走出来。\n\n刘庆山。何梅。张永华。赵国民。周德胜。李小娟。还有五个我不认识的人。\n\n他们站成一排，看着我。\n\n'还差一个。'他们同时说。",
      "choices": [
        { "text": "询问还差谁", "next": "ask_who_missing" },
        { "text": "转身离开", "next": "leave_now" }
      ]
    },
    "return_fail": {
      "id": "return_fail",
      "location": "refrigerator",
      "text": "【QTE失败】我没有挣脱。那只手把我拉进了冷柜。柜门在身后砰地关上。\n\n冷柜里很暗，很凉。陈望川站在我面前。\n\n'你还是来了。'\n\n'放开我。'\n\n'我不放。'\n\n他伸出手，摸了摸我的脸：'你是我的儿子。我等了你十五年。'\n\n【死亡】你被第十三个带走了。",
      "isEnd": true,
      "endType": "death",
      "endMessage": "死亡结局：QTE失败，被棺中之人带走。"
    },
    "ask_thirteenth_mean": {
      "id": "ask_thirteenth_mean",
      "location": "duty_room",
      "text": "'第十三个是什么意思？'\n\n'水库事故里，十二个人死了。还差一个。你来了，就齐了。'\n\n'齐了会怎么样？'\n\n'他们就能走了。'\n\n'走？走到哪？'\n\n'该去的地方。'\n\n沈舟看着我：'但你要是不走，他们就会一直跟着你。'\n\n'那我该怎么办？'\n\n'找到他们为什么不走的原因。'\n\n'什么原因？'\n\n'因为他们的名字被借了。'",
      "choices": [
        { "text": "去找最后一个借名者", "next": "find_last_borrower" },
        { "text": "把木牌放回八号柜", "next": "return_wooden_tag" }
      ]
    },
    "block_success": {
      "id": "block_success",
      "location": "refrigerator",
      "text": "我挡住了他。他的手碰到我的手，一股冰凉从指尖传上来。\n\n'你真的不愿意认我？'\n\n'不愿意。'\n\n'为什么？'\n\n'因为我不记得你。'\n\n陈望川沉默了很久。最后，他笑了：'你真像你母亲。'\n\n他后退几步，回到冷柜里：'既然你不愿意认我，那我就再等十五年。'\n\n柜门缓缓关上。\n\n我松了一口气。但右肩上的印记又多了一道。\n\n四道了。\n\n还差九道。\n\n【Hard模式：拒绝认他会增加肩上的印】",
      "choices": [
        { "text": "回去找沈舟", "next": "go_back_to_shenzhou" },
        { "text": "去找最后一个借名者", "next": "find_last_borrower" }
      ]
    },
    "block_fail": {
      "id": "block_fail",
      "location": "refrigerator",
      "text": "【QTE失败】我没有挡住他。他的手碰到我的脸，一股冰凉从指尖传上来。\n\n'你还是认了吧。'\n\n'我不认。'\n\n'不认也没用。'\n\n他的手慢慢收紧：'跟我走吧。'\n\n【死亡】你被第十三个带走了。",
      "isEnd": true,
      "endType": "death",
      "endMessage": "死亡结局：QTE失败，被棺中之人带走。"
    },
    "find_last_borrower": {
      "id": "find_last_borrower",
      "location": "duty_room",
      "text": "'最后一个借名者是谁？'\n\n沈舟翻开账本：'你看。'\n\n账本上的名单里，最后一个借名者的名字是空白的。\n\n'不知道。'\n\n'但我知道，他就在这附近。'\n\n'怎么找？'\n\n'去监控室看看。'\n\n我和沈舟去了监控室。十二个屏幕全部亮起。\n\n主屏显示的是殡仪馆后院。画面里，那辆遗体车正在自己启动。车灯亮起，照出后车厢里坐着七个人。\n\n它们转过头，看向镜头。\n\n画面下方缓缓浮出一行字：第十三个人，尚未归位。",
      "choices": [
        { "text": "跟沈舟去水库", "next": "go_reservoir_with_shenzhou" },
        { "text": "先回去找马成福", "next": "find_machengfu" }
      ]
    },
    "ask_who_missing": {
      "id": "ask_who_missing",
      "location": "refrigerator",
      "text": "'还差谁？'\n\n'陈望川。'\n\n'他不是已经走了吗？'\n\n'那是他的身体。他的影子还在。'\n\n'影子？'\n\n'嗯。你没有真正摆脱他。'\n\n十二具尸体同时指向我身后。我转头看——八号柜里，陈望川的影子正看着我。\n\n'他还在等你。'\n\n'等什么？'\n\n'等你认他。'\n\n'我不认。'\n\n'不认也没用。他会一直跟着你。'\n\n【本卷完】",
      "isEnd": true,
      "endType": "good",
      "endMessage": "第三章完成（Hard）：旧殡仪馆的秘密。"
    },
    "leave_now": {
      "id": "leave_now",
      "location": "refrigerator",
      "text": "我转身离开。但身后传来一阵脚步声。不是一个人，是很多人。\n\n我回头看。十二具尸体从棺材里走出来，跟在我身后。\n\n'别走。'它们同时说。\n\n我继续往前走。但每走一步，右肩上就传来一阵剧痛。像有一根看不见的木头压进了骨缝。\n\n第十道印。第十一道印。第十二道印。\n\n还差一道。\n\n我跑到客车旁。车门开着。我跳上去。\n\n但车座上，还坐着一个人。\n\n穿灰夹克。低着头。\n\n'你跑不掉的。'\n\n他抬起头。是陈望川。\n\n'跟我走吧。'\n\n【死亡】你跑不掉的。",
      "isEnd": true,
      "endType": "death",
      "endMessage": "死亡结局：试图逃跑。"
    },
    "go_reservoir_with_shenzhou": {
      "id": "go_reservoir_with_shenzhou",
      "location": "reservoir",
      "text": "我和沈舟去了旧水库。水库四周全是雾。远处的山、树和护栏全被雾吞掉，只剩岸边几束手电光来回晃动。\n\n沈舟提着铜灯走在前面。灯光照在水面上，映出一条黑色的路。\n\n'那是什么？'\n\n'棺路。'\n\n'它通向哪？'\n\n'棺里。'\n\n沈舟停下脚步：'你看。'\n\n水面上，那辆遗体车正停在路的尽头。后车厢里坐着七个人。\n\n它们面向前方，一动不动。\n\n'它们在等什么？'\n\n'等第十三个。'\n\n沈舟看向我：'你。'\n\n我心里一震。\n\n'我是第十三个？'\n\n'是。'\n\n'那我该怎么办？'\n\n'上去。'\n\n'上去？'\n\n'嗯。坐上那辆车。它们就会走了。'\n\n'那我呢？'\n\n'你也会走。'\n\n沈舟看着我：'这是命。'",
      "choices": [
        { "text": "上车", "next": "get_on_car" },
        { "text": "拒绝", "next": "refuse_to_go" }
      ]
    },
    "get_on_car": {
      "id": "get_on_car",
      "location": "reservoir",
      "text": "我走上车。后车厢里，七个人同时转头看向我。\n\n它们的眼睛没有瞳孔，只有一片灰白色。\n\n'你来了。'\n\n它们同时说。\n\n车门砰地关上。车开始移动。不是向前，而是向下。\n\n它缓缓沉入水中。\n\n【死亡】你坐上了那辆车。",
      "isEnd": true,
      "endType": "death",
      "endMessage": "死亡结局：坐上了不该坐的车。"
    },
    "refuse_to_go": {
      "id": "refuse_to_go",
      "location": "reservoir",
      "text": "'我不上。'\n\n沈舟看着我：'你不上，它们就会一直跟着你。'\n\n'那就让它们跟着。'\n\n'你会后悔的。'\n\n'我不会。'\n\n我转身离开。身后传来一阵脚步声。不是一个人，是很多人。\n\n我没有回头。继续往前走。\n\n【本卷完】",
      "isEnd": true,
      "endType": "good",
      "endMessage": "第三章完成（Hard）：旧殡仪馆的秘密。"
    },
    "find_machengfu": {
      "id": "find_machengfu",
      "location": "backyard",
      "text": "我去找马成福。他坐在后院的台阶上，手里拿着一瓶酒。\n\n'马叔，你怎么了？'\n\n他没有回答，只是喝了一口酒。\n\n'你肩上有几道印了？'\n\n我低头看了看右肩：'四道。'\n\n'还差九道。'\n\n他放下酒瓶：'你知道为什么会这样吗？'\n\n'因为我是第十三个。'\n\n'第十三个是什么意思？'\n\n'水库事故里，十二个人死了。还差一个。你来了，就齐了。'",
      "choices": [
        { "text": "跟马成福去水库", "next": "go_reservoir_with_shenzhou" },
        { "text": "先去找沈舟", "next": "go_back_to_shenzhou" }
      ]
    }
  }
}