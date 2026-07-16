{
  "title": "盗棺笔记Ⅱ：第十三副肩（中上）[Hard]",
  "subtitle": "死人上车",
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
    "zhou_dean_info": false,
    "old_accident_info": false,
    "coffin_bar_count": 0,
    "has_met_shenzhou": false,
    "secret_clue_4": false,
    "secret_clue_5": false
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
    { "id": "secret_letter", "name": "神秘信件", "icon": "✉️", "description": "罗启明藏在值班室天花板里的信件，内容涉及十五年前的秘密交易。" }
  ],
  "map": {
    "title": "青山县殡仪馆 & 河西村",
    "locations": [
      { "id": "monitor_room", "name": "监控室", "description": "停尸楼监控中心，十二个摄像头画面。" },
      { "id": "duty_room", "name": "值班室", "description": "殡仪馆夜班值班室。" },
      { "id": "refrigerator", "name": "冷藏室", "description": "停尸楼一层最里面，两排冷柜。" },
      { "id": "backyard", "name": "后院", "description": "殡仪馆后院，停着遗体车。" },
      { "id": "zhou_house", "name": "周家老宅", "description": "河西村周德安的家，灵堂设在此处。" },
      { "id": "village_street", "name": "河西村街道", "description": "通往周家老宅的村路，两旁是老旧民房。" },
      { "id": "reservoir_road", "name": "水库老路", "description": "通往旧水库的废弃公路。" }
    ],
    "startingLocation": "monitor_room"
  },
  "start": "start",
  "nodes": {
    "start": {
      "id": "start",
      "location": "monitor_room",
      "text": "监控屏幕里，周德安站在黑棺旁，看向镜头。'陈砚。来送我上路。'\n\n画面猛地一闪。棺中尸体睁开了眼睛。\n\n我和马成福同时从椅子上站起来。主屏右下角突然弹出一行字：信号中断。\n\n画面恢复正常时，灵堂已经空了。棺外的周德安不见了，只留下那口黑棺独自摆在白布中央。\n\n马成福脸色苍白：'他要借名。'\n\n'什么意思？'\n\n'十五年前的事故，他是唯一活着的人。可他的名字早就被写进了棺里。他活了十五年，用的是别人的名字。现在那个人要收回去。'\n\n我想起监控里那个坐在八号柜里的男人。陈望川。\n\n【Hard模式提示：注意'借名'这个词，这是关键概念】",
      "choices": [
        { "text": "接电话", "next": "answer_phone" },
        { "text": "继续追问马成福", "next": "press_machengfu" },
        { "text": "查看监控室角落（隐藏线索）", "next": "check_corner" }
      ]
    },
    "check_corner": {
      "id": "check_corner",
      "location": "monitor_room",
      "text": "我查看监控室角落。那里有一个旧柜子，上面落满了灰尘。\n\n柜子锁着。【QTE】快速点击屏幕！你必须在2秒内找到钥匙！",
      "qte": {
        "type": "click",
        "target": 5,
        "time": 2000,
        "success": "find_cabinet_key",
        "fail": "fail_cabinet_key"
      }
    },
    "find_cabinet_key": {
      "id": "find_cabinet_key",
      "location": "monitor_room",
      "text": "我找到了钥匙。打开柜子，里面放着一盒录像带和一封信。\n\n录像带标签写着：南桥客运。一九九八年七月十三日。\n\n信上写着：\n\n'借一名，活一人。还一名，开一棺。\n\n第十三个人，尚未归位。\n\n陈望川，一九九八年七月十三日。'\n\n【隐藏线索获取：罗启明的秘密信件】",
      "items": ["secret_letter"],
      "choices": [
        { "text": "接电话", "next": "answer_phone" },
        { "text": "继续追问马成福", "next": "press_machengfu" }
      ]
    },
    "fail_cabinet_key": {
      "id": "fail_cabinet_key",
      "location": "monitor_room",
      "text": "【QTE失败】你没有找到钥匙。时间不够了。\n\n【死亡】你浪费了生存机会。",
      "isEnd": true,
      "endType": "death",
      "endMessage": "死亡结局：QTE失败，浪费了生存机会。"
    },
    "answer_phone": {
      "id": "answer_phone",
      "location": "monitor_room",
      "text": "我接起电话。对面是一个陌生男人的声音，很低，像从很远的地方传来：'车上几个人？'\n\n'什么车？'\n\n'殡仪馆的车。'\n\n'你是谁？'\n\n电话那头沉默了几秒。接着，我听见一阵铃声。叮。很轻，很脆。像铜铃被风吹动。\n\n'你们车上还差一个。'\n\n电话挂断。\n\n我放下听筒，看向马成福：'刚才那个声音——'\n\n他脸色大变：'别说。'\n\n'他问车上几个人。'\n\n'我知道。'\n\n'你认识他？'\n\n'那不是人。'\n\n马成福声音发颤：'十五年前，我和一个人一起抬过棺。那个人叫陈望川。抬完以后，他就不见了。后来我才知道，他早就死了。在水库事故里死的。'\n\n'他是第十三个？'\n\n'我不知道。我只知道，他死的时候，还差一个人没上车。'",
      "choices": [
        { "text": "查看旧报纸", "next": "check_newspaper" },
        { "text": "查看车载录像机", "next": "check_video" }
      ]
    },
    "press_machengfu": {
      "id": "press_machengfu",
      "location": "monitor_room",
      "text": "'第十三个是谁？'\n\n马成福避开我的目光。值班室的电话突然响了。\n\n我接起电话。对面是一个陌生男人的声音：'车上几个人？'\n\n'什么车？'\n\n'殡仪馆的车。'\n\n'你是谁？'\n\n电话那头沉默了几秒。接着，我听见一阵铃声。叮。很轻，很脆。\n\n'你们车上还差一个。'\n\n电话挂断。\n\n马成福脸色大变：'那是棺响。不是电话。'",
      "choices": [
        { "text": "查看旧报纸", "next": "check_newspaper" },
        { "text": "查看车载录像机", "next": "check_video" }
      ]
    },
    "check_newspaper": {
      "id": "check_newspaper",
      "location": "monitor_room",
      "text": "我翻出那张旧报纸。头版标题很醒目：南桥水库客车事故，十二人遇难。\n\n报道内容显示：十五年前，一辆南桥客运班车在雨夜坠入库区，车上乘客十二人，全部遇难。\n\n可马成福说，周德安是唯一活着的人。\n\n我仔细看报道里的遇难者名单。刘庆山。何梅。张永华。赵国民。周德胜。李小娟。还有五个名字。总共十一个。\n\n报道末尾写着：事故原因正在调查中，遇难者身份尚在核实。\n\n十一个名字。十二具尸体。还有一个是谁？\n\n我数了三遍。名单上确实只有十一个名字。\n\n【Hard模式：注意数字的差异，11个名字，12具尸体】",
      "items": ["newspaper"],
      "choices": [
        { "text": "去冷藏室查看八号柜", "next": "go_refrigerator" },
        { "text": "查看车载录像机", "next": "check_video" }
      ]
    },
    "check_video": {
      "id": "check_video",
      "location": "monitor_room",
      "text": "我打开车载录像机。磁带仓里卡着一盘黑色录像带，标签写着'南桥客运'。\n\n录像带开始播放。画面很模糊，像是从客车内部拍摄的。镜头对准前方，能看见雨夜的公路。\n\n车上坐满了人。我数了数，十一个。\n\n车行驶到一座旧收费亭前。栏杆升起，车开进去。收费员探出头：'车上几个人？'\n\n画面中，司机回头看了一眼：'十二个。'\n\n可车上明明只有十一个人。\n\n司机说完，画面开始剧烈晃动。客车冲出公路，一头扎进水库。\n\n录像带在坠水的瞬间中断。屏幕上只剩下一行字：第十三个人，尚未归位。\n\n【Hard模式：司机说车上有十二个人，但实际上只有十一个】",
      "items": ["video"],
      "choices": [
        { "text": "去冷藏室查看八号柜", "next": "go_refrigerator" },
        { "text": "等待罗启明到来", "next": "wait_luo" }
      ]
    },
    "go_refrigerator": {
      "id": "go_refrigerator",
      "location": "refrigerator",
      "text": "我回到冷藏室。八个冷柜全部关闭。墙上的电子登记屏显示：在柜遗体：0。\n\n我走到八号柜前。封条已经没有了。柜门是关着的，但没有上锁。\n\n我伸手去拉。柜门纹丝不动。\n\n马成福站在我身后：'别白费力气。它不想开，你拉不开。'\n\n'那它什么时候想开？'\n\n'等你认它。'\n\n'认什么？'\n\n'认棺。认名。认命。'\n\n他顿了顿，继续说：'十五年前，我和陈望川一起抬棺。那天夜里，也是这样的雨。他告诉我，棺里有十三个位子。十二个已经满了，还差一个。如果找不到那个人，所有上过肩的人，都要替他死。'\n\n'上过肩的人？'\n\n'抬棺的人。每抬一次，肩上就多一道印。印满十三道，人就会被棺带走。'",
      "choices": [
        { "text": "查看自己的肩膀", "next": "check_shoulder" },
        { "text": "询问马成福的肩膀", "next": "ask_machengfu_shoulder" }
      ]
    },
    "wait_luo": {
      "id": "wait_luo",
      "location": "monitor_room",
      "text": "我坐在监控室里等罗启明。时间一分一秒过去。墙上的电子钟显示凌晨三点四十七分。\n\n手机突然震动。是一条短信。没有号码，只有一行字：\n\n'别等了。他不会来。'\n\n我正要回复，监控屏幕突然全部亮起。画面不是殡仪馆，而是一条公路。\n\n那辆遗体车正行驶在通往河西村的路上。车后厢里坐着七个人——刘庆山、何梅、张永华、无名女尸、赵国民、周德胜、李小娟。\n\n他们面向前方，一动不动。\n\n车开到一座旧收费亭前。栏杆升起。车开进去。\n\n收费员探出头：'车上几个人？'\n\n画面中，司机回头看了一眼——那是马成福。他说：'七个。'\n\n可后厢里明明有七个人。加上司机和副驾驶，应该是九个。\n\n马成福少算了两个。\n\n收费员笑了：'还差六个。'\n\n车门自动打开。六个穿灰夹克的男人从路边走上车。他们长得一模一样。\n\n画面突然中断。\n\n【Hard模式：马成福少算了两个人】",
      "choices": [
        { "text": "立刻去找马成福", "next": "find_machengfu" },
        { "text": "打电话给马成福", "next": "call_machengfu" }
      ]
    },
    "check_shoulder": {
      "id": "check_shoulder",
      "location": "refrigerator",
      "text": "我脱下工作服。右肩上，那道棺杠压出来的痕迹还在。不是淤青，是一道黑色的印，从锁骨后方一直延伸到肩胛，像一根木头嵌进了肉里。\n\n更可怕的是，印记旁边还有一道很浅的线。那是第二道。\n\n我盯着那两道印，手指不由自主地摸上去。冰凉的触感从指尖传来。\n\n马成福在我身后说：'十五年前，我抬了一次棺。肩上就多了一道印。我以为只是累的。后来才知道，那是计数。'\n\n'计数？'\n\n'每抬一次，多一道。十三道满了，人就会被棺带走。'\n\n我回头看他：'你有几道？'\n\n他没有回答，只是掀起衣领。脖子上，我看见一道很深的疤痕，从锁骨一直延伸到下巴。\n\n'我已经抬了十二次。'\n\n'还差一次？'\n\n'不。还差一个人。'",
      "choices": [
        { "text": "询问那个人是谁", "next": "ask_who_missing" },
        { "text": "去找罗启明", "next": "find_luo" }
      ]
    },
    "ask_machengfu_shoulder": {
      "id": "ask_machengfu_shoulder",
      "location": "refrigerator",
      "text": "'你抬了几次？'\n\n马成福掀起衣领。脖子上，一道很深的疤痕从锁骨延伸到下巴。\n\n'十二次。'\n\n'还差一次？'\n\n'不。还差一个人。'\n\n'谁？'\n\n'你。'\n\n我愣住了。\n\n'你是第十三个。'\n\n他的声音很轻：'十五年前，陈望川说过，第十三个抬棺人会在水库事故十五年后出现。就是今年。'\n\n'为什么是我？'\n\n'因为你父亲。'\n\n'陈望川是我父亲？'\n\n马成福没有回答。冷藏室里突然响起一阵铃声。叮。很轻，很脆。\n\n声音从八号柜里传出来。",
      "choices": [
        { "text": "靠近八号柜细听", "next": "listen_eighth" },
        { "text": "后退躲开", "next": "recoil_from_eighth" }
      ]
    },
    "ask_who_missing": {
      "id": "ask_who_missing",
      "location": "refrigerator",
      "text": "'还差一个人？谁？'\n\n'你。'\n\n我愣住了。\n\n'你是第十三个。'\n\n'为什么是我？'\n\n'因为你父亲。'\n\n'陈望川是我父亲？'\n\n马成福没有回答。冷藏室里突然响起一阵铃声。叮。很轻，很脆。\n\n声音从八号柜里传出来。",
      "choices": [
        { "text": "靠近八号柜细听", "next": "listen_eighth" },
        { "text": "后退躲开", "next": "recoil_from_eighth" }
      ]
    },
    "find_luo": {
      "id": "find_luo",
      "location": "duty_room",
      "text": "我去值班室找罗启明。他不在。桌上放着一杯没喝完的茶，还冒着热气。\n\n墙上的公告板上贴着一张旧照片。照片里有四个人：罗启明、马成福、一个穿灰夹克的男人，还有一个年轻女人。\n\n那个穿灰夹克的男人站在最左边，脸被划花了。\n\n照片背面写着：南桥事故善后小组。一九九八年七月十三日。\n\n我看着那个划花的脸，心里突然一紧。那张脸，我好像在哪里见过。\n\n就在这时，值班室的门被推开了。一个男人站在门口。\n\n他穿着黑色风衣，手里提着一盏铜灯。脸上没有表情，只有一双眼睛特别亮。\n\n'你是谁？'\n\n'沈舟。'\n\n'来干什么？'\n\n'还账。'",
      "choices": [
        { "text": "询问沈舟的来意", "next": "ask_shenzhou" },
        { "text": "怀疑他的身份", "next": "doubt_shenzhou" }
      ]
    },
    "find_machengfu": {
      "id": "find_machengfu",
      "location": "backyard",
      "text": "我跑到后院。遗体车不在。\n\n地上有一串脚印，从车库一直延伸到门口。脚印是湿的，脚尖朝前，没有脚后跟。\n\n和后车厢里的一模一样。\n\n我顺着脚印追出去。门口的保安室里，保安正在打瞌睡。\n\n'王师傅，看见马成福了吗？'\n\n他迷迷糊糊地睁开眼：'老马？走了。开着车走的。'\n\n'什么时候？'\n\n'大概半小时前吧。他说有急事，要去河西村。'\n\n'河西村？'\n\n'嗯。说什么周家的人快不行了，要去接运。'\n\n我心里一沉。周德安。",
      "choices": [
        { "text": "开车去追马成福", "next": "chase_machengfu" },
        { "text": "打电话给马成福", "next": "call_machengfu" }
      ]
    },
    "call_machengfu": {
      "id": "call_machengfu",
      "location": "monitor_room",
      "text": "我拨打马成福的电话。响了很久才接。\n\n电话那头很吵，有雨声，有车声，还有……呼吸声。很多人的呼吸声。\n\n'马叔，你在哪？'\n\n'河西村。'\n\n'你一个人去的？'\n\n'嗯。'\n\n'车上还有谁？'\n\n电话那头沉默了几秒。'没人。'\n\n'监控里显示车上有七个人。'\n\n'你看错了。'\n\n'马叔，你听我说——'\n\n'别过来。'\n\n他打断我。声音很沉：'你来了，它们就知道车上还差几个人。'\n\n电话挂断。",
      "choices": [
        { "text": "开车去追马成福", "next": "chase_machengfu" },
        { "text": "去值班室找罗启明", "next": "find_luo" }
      ]
    },
    "listen_eighth": {
      "id": "listen_eighth",
      "location": "refrigerator",
      "text": "我走近八号柜。柜门紧闭，缝隙里透出一丝白色冷气。\n\n铃声又响了。叮。这次更清楚。\n\n我把耳朵贴在柜门上。里面传来一阵很低的说话声。不是一个人，是很多人。\n\n'还差一个。'\n\n'谁？'\n\n'陈砚。'\n\n'他还没来。'\n\n'来了。'\n\n'在哪？'\n\n'肩上。'\n\n说话声越来越轻，最后变成一阵叹息。\n\n我正想后退，柜门突然震动了一下。一股力量从里面推出来，我被撞得后退几步。\n\n柜门开了一条缝。一只苍白的手从里面伸出来，抓住了我的手腕。",
      "choices": [
        { "text": "用力挣脱", "next": "break_free" },
        { "text": "问它是谁", "next": "ask_who_hand" }
      ]
    },
    "recoil_from_eighth": {
      "id": "recoil_from_eighth",
      "location": "refrigerator",
      "text": "我后退几步。铃声越来越响。叮。叮。叮。\n\n八号柜的指示灯开始闪烁。绿色、红色、绿色、红色。\n\n柜门突然打开了。里面没有我的尸体，只有一团黑色的影子。影子慢慢凝聚成人形——一个穿灰夹克的男人。\n\n他站在冷柜里，看着我。脸上没有表情。\n\n'陈砚。'\n\n'你是谁？'\n\n'我是你父亲。'\n\n'陈望川？'\n\n他点头。\n\n'你不是死了吗？'\n\n'死了。但还没走。'\n\n'为什么？'\n\n'因为你还没有认我。'\n\n他伸出手：'过来。'\n\n我看着他的手。那只手很苍白，指节分明。掌心有一道疤。\n\n我见过这道疤。在我家里，父亲的遗物里，有一张照片。照片背面写着：陈望川。",
      "choices": [
        { "text": "走向他", "next": "walk_toward_chenwangchuan" },
        { "text": "拒绝", "next": "refuse_chenwangchuan" }
      ]
    },
    "break_free": {
      "id": "break_free",
      "location": "refrigerator",
      "text": "【QTE】长按屏幕！那只手正在把你拉向冷柜，你必须在被拉进去前挣脱！【Hard模式：时间缩短至3秒】",
      "qte": {
        "type": "hold",
        "time": 3000,
        "success": "break_success",
        "fail": "break_fail"
      }
    },
    "break_success": {
      "id": "break_success",
      "location": "refrigerator",
      "text": "我用力挣脱。那只手松开了。柜门砰地关上。\n\n马成福站在我身后，脸色惨白：'你不该挣脱的。'\n\n'为什么？'\n\n'它要认你，你不认，它就会一直跟着你。'\n\n'跟着又怎么样？'\n\n'跟着……直到你认为止。'\n\n他说完，转身往外走。我拉住他：'你去哪？'\n\n'河西村。'\n\n'你一个人去？'\n\n'我不去，它就会来找你。'\n\n'它是谁？'\n\n马成福回头看我：'第十三个。'",
      "choices": [
        { "text": "跟马成福一起去", "next": "go_with_machengfu" },
        { "text": "留在殡仪馆", "next": "stay_at_funeral_home" }
      ]
    },
    "break_fail": {
      "id": "break_fail",
      "location": "refrigerator",
      "text": "【QTE失败】我没有挣脱。那只手把我拉进了冷柜。柜门在身后砰地关上。\n\n冷柜里很暗，很凉。我感觉到身边躺着一个人。\n\n'别害怕。'他说，'我是来接你的。'\n\n我转头看他。他的脸很模糊，但我知道那是谁。\n\n陈望川。\n\n【死亡】你被第十三个带走了。",
      "isEnd": true,
      "endType": "death",
      "endMessage": "死亡结局：QTE失败，被棺中之人带走。"
    },
    "ask_who_hand": {
      "id": "ask_who_hand",
      "location": "refrigerator",
      "text": "'你是谁？'\n\n那只手没有回答。只是轻轻捏了捏我的手腕。\n\n'你要什么？'\n\n'名字。'\n\n'什么名字？'\n\n'陈砚。'\n\n'你要我的名字干什么？'\n\n'借。'\n\n'借我的名字？'\n\n'嗯。借一名，活一人。'\n\n我心里一惊。这句话，我好像在哪里听过。\n\n'你要借谁的命？'\n\n'我的。'\n\n'你不是已经死了吗？'\n\n'死了，但还没走。'\n\n'为什么？'\n\n'因为你还没有认我。'\n\n他松开手。柜门缓缓关上。",
      "choices": [
        { "text": "跟马成福去河西村", "next": "go_with_machengfu" },
        { "text": "留在殡仪馆", "next": "stay_at_funeral_home" }
      ]
    },
    "walk_toward_chenwangchuan": {
      "id": "walk_toward_chenwangchuan",
      "location": "refrigerator",
      "text": "我走向他。冷柜里很凉，但他的手很暖。\n\n'你真的是我父亲？'\n\n'是。'\n\n'为什么我从来没见过你？'\n\n'因为我一直在等。'\n\n'等什么？'\n\n'等你长大。等你足够强壮。等你能替我抬棺。'\n\n'抬棺？'\n\n'嗯。十三副棺，需要十三个人抬。十二个已经死了，还差一个。你来了，就齐了。'\n\n他的手慢慢收紧：'跟我走吧。'\n\n【死亡】你认了他，他带走了你。",
      "isEnd": true,
      "endType": "death",
      "endMessage": "死亡结局：承认了不该承认的人。"
    },
    "refuse_chenwangchuan": {
      "id": "refuse_chenwangchuan",
      "location": "refrigerator",
      "text": "'我不认。'\n\n陈望川愣住了。\n\n'你说什么？'\n\n'我说我不认你。'\n\n'为什么？'\n\n'因为我不记得你。我从小到大，只有母亲。没有父亲。'\n\n'那是因为她不让你记。'\n\n'那又怎么样？你死了十五年，现在才来找我。你凭什么让我认你？'\n\n陈望川沉默了很久。最后，他笑了。\n\n'你真像你母亲。'\n\n他转身走回冷柜深处。柜门缓缓关上。\n\n马成福站在我身后：'你不该这么说。'\n\n'为什么？'\n\n'他会来找你的。'\n\n'那就让他来。'",
      "choices": [
        { "text": "跟马成福去河西村", "next": "go_with_machengfu" },
        { "text": "留在殡仪馆", "next": "stay_at_funeral_home" }
      ]
    },
    "ask_shenzhou": {
      "id": "ask_shenzhou",
      "location": "duty_room",
      "text": "'还什么账？'\n\n沈舟走进来，把铜灯放在桌上。灯光很暗，照出他左手无名指上戴着一枚黑色玉戒。\n\n'殡仪馆的账。'\n\n'我不懂。'\n\n'十五年前，有人借了名字活下来。现在要还。'\n\n'谁借了名字？'\n\n'周德安。'\n\n'他怎么借的？'\n\n'他本来应该死在水库里。但他偷了一个名字，活了下来。'\n\n'谁的名字？'\n\n沈舟看着我：'你的。'\n\n我愣住了。\n\n'我的名字？'\n\n'陈砚。这个名字本来不是你的。是他的。'\n\n'谁的？'\n\n'第十三个。'",
      "choices": [
        { "text": "追问第十三个是谁", "next": "ask_thirteenth" },
        { "text": "询问沈舟的身份", "next": "ask_shenzhou_who" }
      ]
    },
    "doubt_shenzhou": {
      "id": "doubt_shenzhou",
      "location": "duty_room",
      "text": "'你怎么进来的？殡仪馆有门禁。'\n\n沈舟指了指自己的眼睛：'我看得见路。'\n\n'什么路？'\n\n'棺路。'\n\n他从口袋里拿出一枚铜铃。铃身有一道裂纹。\n\n'你认识这个？'\n\n我摇头。\n\n'陆沉的铃。'\n\n我心里一震。陆沉——那个传说中能听见棺中声音的人。\n\n'你认识陆沉？'\n\n'我是他徒弟。'\n\n'他在哪？'\n\n'在棺里。'\n\n沈舟把铃放回口袋：'他让我来还账。'\n\n'还什么账？'\n\n'十五年前，他借了一条路。现在要还。'",
      "choices": [
        { "text": "相信沈舟", "next": "trust_shenzhou" },
        { "text": "仍然怀疑", "next": "still_doubt" }
      ]
    },
    "go_with_machengfu": {
      "id": "go_with_machengfu",
      "location": "village_street",
      "text": "我跟着马成福去了河西村。雨已经停了，但路上很滑。\n\n车开到村口时，我看见路边站着一排人。七八个，有男有女。全部低着头。\n\n像在等车。\n\n我想起马成福说过的话：'路边看见人，别数。数清了，它们就知道车上还缺几个。'\n\n我没有数。\n\n车开到周家老宅门口。院门开着。里面灯火通明，哀乐声从灵堂里传出来。\n\n马成福停下车：'你留在车上。'\n\n'为什么？'\n\n'灵堂里有棺。你上去，就会被盯上。'\n\n'那你呢？'\n\n'我已经被盯上了。'",
      "choices": [
        { "text": "留在车上", "next": "stay_in_car" },
        { "text": "跟着马成福进去", "next": "enter_house" }
      ]
    },
    "stay_at_funeral_home": {
      "id": "stay_at_funeral_home",
      "location": "duty_room",
      "text": "我留在殡仪馆。马成福独自开车去了河西村。\n\n值班室里很安静。我坐在桌前，看着那张旧照片。照片背面的名字：陈望川。\n\n我拿出手机，想查一查这个人。可无论怎么搜，都没有结果。\n\n就在这时，桌上的铜灯突然亮了。我抬头看——一个穿黑色风衣的男人站在门口。\n\n'你是谁？'\n\n'沈舟。'\n\n'来干什么？'\n\n'还账。'\n\n他走进来，把铜灯放在桌上。灯光照出他左手无名指上的黑色玉戒。\n\n'你认识这枚戒指？'\n\n我摇头。\n\n'十五年前，一个叫陈望川的人，把它交给了我。'\n\n我的心猛地一跳。",
      "choices": [
        { "text": "询问戒指的来历", "next": "ask_ring" },
        { "text": "询问沈舟的身份", "next": "ask_shenzhou_who" }
      ]
    },
    "chase_machengfu": {
      "id": "chase_machengfu",
      "location": "reservoir_road",
      "text": "我开车去追马成福。路上很滑，雨虽然停了，但雾很大。\n\n车开到废弃客运站时，我看见路边站着一排人。七八个，有男有女。全部低着头。\n\n像在等车。\n\n我没有停车，直接开过去。后视镜里，那些人仍然站在原地。\n\n车开到一座旧收费亭前。栏杆升起。我没有停，直接冲过去。\n\n就在经过窗口的一瞬间，我听见有人敲了敲车窗。笃。笃。两声。\n\n一个男人贴着车窗问：'还有位置吗？'\n\n我没有回答。车继续往前开。",
      "choices": [
        { "text": "继续前往河西村", "next": "arrive_hexivillage" },
        { "text": "停车查看", "next": "stop_and_check" }
      ]
    },
    "ask_thirteenth": {
      "id": "ask_thirteenth",
      "location": "duty_room",
      "text": "'第十三个是谁？'\n\n'陈望川。'\n\n'他是我父亲？'\n\n'是。'\n\n'那为什么我的名字是他的？'\n\n'因为他借了你的名字活下来。'\n\n'我当时才七岁。他怎么借？'\n\n'你在旧殡仪馆里写了他的名字。'\n\n'我写的？'\n\n'嗯。你画了一张照片，在背面写了陈望川三个字。那个名字原本是要给第十三个空位的。你写了，他就借了。'",
      "choices": [
        { "text": "相信沈舟", "next": "trust_shenzhou" },
        { "text": "去找马成福", "next": "find_machengfu" }
      ]
    },
    "ask_shenzhou_who": {
      "id": "ask_shenzhou_who",
      "location": "duty_room",
      "text": "'你到底是谁？'\n\n沈舟从口袋里拿出一枚铜铃。铃身有一道裂纹。\n\n'你认识这个？'\n\n我摇头。\n\n'陆沉的铃。'\n\n'陆沉是谁？'\n\n'一个能听见棺中声音的人。'\n\n'他在哪？'\n\n'在棺里。'\n\n沈舟把铃放回口袋：'他让我来还账。'\n\n'还什么账？'\n\n'十五年前，他借了一条路。现在要还。'\n\n'什么路？'\n\n'棺路。'\n\n他看着我：'这条路能让人从棺里走出来。但走出来的人，必须留下一样东西。'\n\n'留下什么？'\n\n'名字。'",
      "choices": [
        { "text": "相信沈舟", "next": "trust_shenzhou" },
        { "text": "去找马成福", "next": "find_machengfu" }
      ]
    },
    "trust_shenzhou": {
      "id": "trust_shenzhou",
      "location": "duty_room",
      "text": "'你想让我怎么做？'\n\n'跟我去河西村。'\n\n'去干什么？'\n\n'还名。'\n\n'怎么还？'\n\n'找到借名的人，让他把名字还回来。'\n\n'周德安？'\n\n'不。周德安只是其中一个。还有一个人，藏得更深。'\n\n'谁？'\n\n沈舟看着我：'你父亲。'",
      "choices": [
        { "text": "跟沈舟去河西村", "next": "go_with_shenzhou" },
        { "text": "先去冷藏室查看", "next": "check_refrigerator_again" }
      ]
    },
    "still_doubt": {
      "id": "still_doubt",
      "location": "duty_room",
      "text": "'我凭什么相信你？'\n\n沈舟没有生气。他从口袋里拿出一张纸，放在桌上。\n\n纸上写着一行字：借一名，活一人。还一名，开一棺。\n\n我看着这行字，心里一震。这和冷柜里那只手说的一模一样。\n\n'你怎么知道这句话？'\n\n'陆沉告诉我的。'\n\n'他为什么要告诉你？'\n\n'因为他知道，十五年后，会有人需要这句话。'\n\n'谁？'\n\n'你。'\n\n沈舟看着我：'你是第十三个抬棺人。这是命。'",
      "choices": [
        { "text": "跟沈舟去河西村", "next": "go_with_shenzhou" },
        { "text": "先去冷藏室查看", "next": "check_refrigerator_again" }
      ]
    },
    "stay_in_car": {
      "id": "stay_in_car",
      "location": "village_street",
      "text": "我留在车上。马成福走进院子。\n\n灵堂里的哀乐声越来越响。我透过挡风玻璃看着里面。那些跪在棺材旁的人，仍然没有影子。\n\n就在这时，一个穿灰夹克的男人从灵堂里走出来。他站在门口，看向我的车。\n\n他的脸很模糊，但我知道那是谁。\n\n陈望川。\n\n他朝我招了招手。\n\n'陈砚。来。'\n\n我握紧方向盘。没有动。",
      "choices": [
        { "text": "下车去灵堂看看", "next": "enter_house" },
        { "text": "留在车上等待", "next": "wait_in_car" }
      ]
    },
    "enter_house": {
      "id": "enter_house",
      "location": "zhou_house",
      "text": "我走进周家老宅。院子里很安静，只有哀乐声从灵堂里传出来。\n\n灵堂里灯火通明。一口黑棺摆在中央，棺盖半开。周德安跪在棺材旁，低着头。\n\n他身后站着七个人——刘庆山、何梅、张永华、无名女尸、赵国民、周德胜、李小娟。\n\n他们的脸都是灰色的，眼睛没有瞳孔。\n\n我看见马成福站在灵堂一角，脸色惨白。他朝我摇了摇头，示意我离开。\n\n但已经晚了。周德安抬起头，看向我。\n\n'你来了。'\n\n'你知道我会来？'\n\n'十五年前就知道了。'\n\n他站起来，走到棺材旁：'你是第十三个。'",
      "choices": [
        { "text": "问他怎么还", "next": "ask_how_return" },
        { "text": "问他要还什么", "next": "ask_return_what" }
      ]
    },
    "ask_ring": {
      "id": "ask_ring",
      "location": "duty_room",
      "text": "'这枚戒指是陈望川的？'\n\n'是。'\n\n'他为什么交给你？'\n\n'因为他知道自己会死。他让我把戒指交给你。'\n\n'什么时候？'\n\n'十五年前。'\n\n'可我从来没见过你。'\n\n'因为你母亲不让我见。'\n\n'为什么？'\n\n'因为她怕你认他。'\n\n'认他会怎么样？'\n\n'认了，你就会变成第十三个。'\n\n沈舟看着我：'你已经变成第十三个了。'\n\n'什么？'\n\n'你的肩上，已经有一道印了。'",
      "choices": [
        { "text": "跟沈舟去河西村", "next": "go_with_shenzhou" },
        { "text": "先去冷藏室查看", "next": "check_refrigerator_again" }
      ]
    },
    "arrive_hexivillage": {
      "id": "arrive_hexivillage",
      "location": "village_street",
      "text": "我开到河西村。周家老宅门口停着马成福的遗体车。车是空的。\n\n院门开着。里面灯火通明，哀乐声从灵堂里传出来。\n\n我下车，走进院子。\n\n灵堂里，周德安跪在棺材旁。他身后站着七个人——刘庆山、何梅、张永华、无名女尸、赵国民、周德胜、李小娟。\n\n马成福站在灵堂一角，脸色惨白。\n\n周德安抬起头，看向我：'你来了。'",
      "choices": [
        { "text": "问他怎么还", "next": "ask_how_return" },
        { "text": "问他要还什么", "next": "ask_return_what" }
      ]
    },
    "stop_and_check": {
      "id": "stop_and_check",
      "location": "reservoir_road",
      "text": "我停车，下车查看。路边什么都没有。\n\n但地上有一串湿脚印。脚尖朝前，没有脚后跟。\n\n脚印从路边一直延伸到我的车旁。\n\n我回头看车里。副驾驶座上，坐着一个人。\n\n穿灰夹克。低着头。\n\n我猛地拉开车门。里面空空荡荡。\n\n只有一张纸落在座位上。上面写着：陈砚。来河西村。",
      "choices": [
        { "text": "走进周家老宅", "next": "enter_house" }
      ]
    },
    "go_with_shenzhou": {
      "id": "go_with_shenzhou",
      "location": "village_street",
      "text": "我跟着沈舟去了河西村。他提着铜灯走在前面，步伐很快。\n\n车开到村口时，沈舟突然停住了。\n\n'前面有人。'\n\n我看过去。路边站着一排人。七八个，有男有女。全部低着头。\n\n'别数。'沈舟说，'数了，它们就知道车上还缺几个。'\n\n我没有数。\n\n我们走到周家老宅门口。院门开着。里面灯火通明，哀乐声从灵堂里传出来。\n\n沈舟把铜灯递给我：'拿着。灯灭了，就往回跑。'\n\n我接过灯。灯很凉，但灯光很暖。",
      "choices": [
        { "text": "走进灵堂", "next": "enter_house" }
      ]
    },
    "check_refrigerator_again": {
      "id": "check_refrigerator_again",
      "location": "refrigerator",
      "text": "我先去冷藏室查看。八个冷柜全部关闭。墙上的电子登记屏显示：在柜遗体：0。\n\n我走到八号柜前。柜门紧闭。但缝隙里透出一丝白色冷气。\n\n我把耳朵贴在柜门上。里面传来一阵很低的说话声。\n\n'他来了。'\n\n'谁？'\n\n'陈砚。'\n\n'他认了吗？'\n\n'还没有。'\n\n'那怎么办？'\n\n'等。'\n\n我正想后退，柜门突然震动了一下。一股力量从里面推出来，我被撞得后退几步。\n\n柜门开了一条缝。一只苍白的手从里面伸出来，抓住了我的手腕。\n\n'陈砚。跟我走。'\n\n【QTE】快速点击屏幕！那只手正在把你拉向冷柜，你必须在被拉进去前挣脱！【Hard模式：时间缩短至2.5秒】",
      "qte": {
        "type": "click",
        "target": 5,
        "time": 2500,
        "success": "qte_escape_success",
        "fail": "qte_escape_fail"
      }
    },
    "qte_escape_success": {
      "id": "qte_escape_success",
      "location": "refrigerator",
      "text": "我用力挣脱。那只手松开了。柜门砰地关上。\n\n我喘着气，手心全是冷汗。\n\n沈舟站在门口：'走吧。去河西村。'",
      "choices": [
        { "text": "跟沈舟去河西村", "next": "go_with_shenzhou" }
      ]
    },
    "qte_escape_fail": {
      "id": "qte_escape_fail",
      "location": "refrigerator",
      "text": "【QTE失败】我没有挣脱。那只手把我拉进了冷柜。柜门在身后砰地关上。\n\n冷柜里很暗，很凉。我感觉到身边躺着一个人。\n\n'别害怕。'他说，'我是来接你的。'\n\n我转头看他。他的脸很模糊，但我知道那是谁。\n\n陈望川。\n\n【死亡】你被第十三个带走了。",
      "isEnd": true,
      "endType": "death",
      "endMessage": "死亡结局：QTE失败，被棺中之人带走。"
    },
    "wait_in_car": {
      "id": "wait_in_car",
      "location": "village_street",
      "text": "我留在车上等待。灵堂里的哀乐声越来越响。\n\n过了一会儿，一个穿黑色风衣的男人从灵堂里走出来。他手里提着一盏铜灯。\n\n'你是谁？'\n\n'沈舟。'\n\n'你怎么在这里？'\n\n'来还账。'\n\n他走到我的车旁：'你是陈砚？'\n\n'是。'\n\n'跟我进去。'\n\n'里面有什么？'\n\n'棺。'\n\n沈舟看着我：'你已经被盯上了。躲不开的。'",
      "choices": [
        { "text": "走进灵堂", "next": "enter_house" }
      ]
    },
    "ask_how_return": {
      "id": "ask_how_return",
      "location": "zhou_house",
      "text": "'你怎么还？'\n\n周德安指着棺材里的自己：'我要回到这里。'\n\n'回到棺材里？'\n\n'是。借了名字，就要还。还了，我就能走了。'\n\n'走？走到哪？'\n\n'该去的地方。'\n\n他看着我：'但我还需要一样东西。'\n\n'什么？'\n\n'一个抬棺的人。'\n\n'我？'\n\n'嗯。你是第十三个。'\n\n他身后的七个人同时转头看向我。他们的眼睛没有瞳孔，只有一片灰白色。\n\n就在这时，沈舟从灵堂门口走进来。他手里提着铜灯。\n\n'他不愿意。'\n\n周德安看向沈舟：'你是谁？'\n\n'还账的人。'",
      "choices": [
        { "text": "听沈舟的", "next": "listen_shenzhou" },
        { "text": "自己做决定", "next": "make_decision" }
      ]
    },
    "ask_return_what": {
      "id": "ask_return_what",
      "location": "zhou_house",
      "text": "'你要还什么？'\n\n周德安指着棺材里的自己：'还名字。'\n\n'谁的名字？'\n\n'陈砚。'\n\n我心里一震：'那是我的名字。'\n\n'不。那是他的。'\n\n他指向棺材里的尸体：'十五年前，他本该死在水库里。但他偷了你的名字，活了下来。'\n\n'我当时才七岁。他怎么偷？'\n\n'你在旧殡仪馆里写了他的名字。'\n\n我想起家里那张旧照片。照片右边的男人，脸被划花了。\n\n'我写的是陈望川，不是陈砚。'\n\n周德安笑了：'你写的是第十三个名字。陈砚、陈望川，都是一样的。'\n\n他身后的七个人同时转头看向我。\n\n就在这时，沈舟从灵堂门口走进来。他手里提着铜灯。\n\n'他说得不对。'",
      "choices": [
        { "text": "听沈舟的", "next": "listen_shenzhou" },
        { "text": "自己做决定", "next": "make_decision" }
      ]
    },
    "listen_shenzhou": {
      "id": "listen_shenzhou",
      "location": "zhou_house",
      "text": "'他说得不对。'沈舟走到我身边，'名字不是偷的，是借的。'\n\n'有什么区别？'\n\n'借的，还了就行。偷的，要拿命换。'\n\n周德安脸色一变：'你懂什么？'\n\n'我懂棺路。'\n\n沈舟举起铜灯，灯光照向棺材。棺材里的尸体突然睁开了眼睛。\n\n'你借了名字十五年。现在，该还了。'\n\n尸体从棺材里坐起来。它的脸和周德安一模一样，但左眼下没有黑痣。\n\n'周德安。'它说，'你借了我的名字，活了十五年。现在，该还给我了。'\n\n周德安后退几步：'我不还。'\n\n'由不得你。'\n\n尸体从棺材里走出来。七个人同时伸出手，抓住周德安。\n\n'你们干什么？'\n\n'帮他还。'\n\n周德安被七个人拖向棺材。他挣扎着，尖叫着。但没有人救他。\n\n沈舟看向我：'走吧。他的账，自己还。'\n\n'那我的名字呢？'\n\n'别急。还有一个人没还。'\n\n'谁？'\n\n'你父亲。'\n\n【本卷完】",
      "nextStory": "盗棺笔记Ⅱ：第十三副肩（中）[Hard]"
    },
    "make_decision": {
      "id": "make_decision",
      "location": "zhou_house",
      "text": "我看着周德安。他跪在地上，看着棺材里的自己。\n\n'你愿意帮我抬棺吗？'\n\n他的声音很轻，像在哀求。\n\n我想起母亲说过的话：'你父亲是个好人。他只是走错了路。'\n\n又想起马成福说的话：'你是第十三个。'\n\n我看着那些灰白色的眼睛，心里一阵发慌。\n\n就在这时，沈舟从灵堂门口走进来。他手里提着铜灯。\n\n'别答应他。'\n\n我转头看沈舟：'为什么？'\n\n'因为他要的不是抬棺的人。他要的是替死的人。'\n\n周德安脸色一变：'你胡说。'\n\n'我没有胡说。'\n\n沈舟举起铜灯，灯光照向棺材。棺材里的尸体突然睁开了眼睛。\n\n'你借了名字十五年。现在，该还了。'\n\n尸体从棺材里坐起来。它的脸和周德安一模一样，但左眼下没有黑痣。\n\n'周德安。'它说，'你借了我的名字，活了十五年。现在，该还给我了。'\n\n周德安后退几步：'我不还。'\n\n'由不得你。'\n\n尸体从棺材里走出来。七个人同时伸出手，抓住周德安。\n\n'你们干什么？'\n\n'帮他还。'\n\n周德安被七个人拖向棺材。他挣扎着，尖叫着。但没有人救他。\n\n沈舟看向我：'走吧。他的账，自己还。'\n\n'那我的名字呢？'\n\n'别急。还有一个人没还。'\n\n'谁？'\n\n'你父亲。'\n\n【本卷完】",
      "nextStory": "盗棺笔记Ⅱ：第十三副肩（中）[Hard]"
    }
  }
}