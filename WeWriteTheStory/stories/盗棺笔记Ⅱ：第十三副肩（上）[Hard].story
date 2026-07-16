{
  "title": "盗棺笔记Ⅱ：第十三副肩（上）[Hard]",
  "subtitle": "冷柜多尸",
  "description": "【警告】这是Hard难度模式。错误的选择将直接导致死亡。QTE失败将导致死亡。你只有3次生存机会。",
  "author": "Radiation Studio",
  "version": "1.0",
  "variables": {
    "has_seen_ghost": false,
    "has_taken_photo": false,
    "has_counted_cabinets": 0,
    "qte_passed": [],
    "mental_state": 100,
    "survival_points": 3,
    "secret_clue_1": false,
    "secret_clue_2": false,
    "secret_clue_3": false
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
    { "id": "secret_note", "name": "隐藏笔记", "icon": "📝", "description": "马成福藏在值班室抽屉里的笔记，记录着十五年前的秘密。" }
  ],
  "map": {
    "title": "青山县殡仪馆",
    "locations": [
      { "id": "duty_room", "name": "值班室", "description": "殡仪馆夜班值班室，我和马成福值守的地方。" },
      { "id": "backyard", "name": "后院", "description": "殡仪馆后院，停着遗体车，远处是停尸楼。" },
      { "id": "refrigerator", "name": "冷藏室", "description": "停尸楼一层最里面，两排冷柜，共八个位置。" },
      { "id": "monitor_room", "name": "监控室", "description": "停尸楼监控中心，十二个摄像头画面。" },
      { "id": "corridor", "name": "停尸楼走廊", "description": "连接各房间的走廊，感应灯惨白。" }
    ],
    "startingLocation": "duty_room"
  },
  "start": "start",
  "nodes": {
    "start": {
      "id": "start",
      "location": "duty_room",
      "text": "【警告】这是Hard难度模式。错误的选择将直接导致死亡。QTE失败将导致死亡。你只有3次生存机会。\n\n我第一次发现冷柜里多了一具尸体，是在二十二岁那年的七月。\n\n那天夜里，县城下了一场很大的雨。雨从傍晚一直下到凌晨，殡仪馆后山的排水沟全满了，黄泥水顺着坡往下冲，撞在停尸楼后墙上，发出一阵阵沉闷的响声。\n\n像有人在外面，用肩膀撞门。\n\n我叫陈砚。在青山县殡仪馆做遗体接运。\n\n凌晨十一点四十分，值班室的电话响了。县公安打来的——旧水库发现一具无名男尸，需要连夜接运。",
      "choices": [
        { "text": "叫醒马成福准备出发", "next": "wake_machengfu" },
        { "text": "先查看接运单信息", "next": "check_receipt" },
        { "text": "查看值班室抽屉（隐藏线索）", "next": "check_drawer" }
      ]
    },
    "check_drawer": {
      "id": "check_drawer",
      "location": "duty_room",
      "text": "我先查看值班室的抽屉。里面放着一些杂物：笔、本子、旧发票。\n\n最下面一层，有一个铁盒子。盒子上了锁。\n\n【QTE】快速点击屏幕！你必须在3秒内找到钥匙！",
      "qte": {
        "type": "click",
        "target": 5,
        "time": 3000,
        "success": "find_key",
        "fail": "fail_find_key"
      }
    },
    "find_key": {
      "id": "find_key",
      "location": "duty_room",
      "text": "我找到了钥匙。打开铁盒子，里面放着一本旧笔记。\n\n笔记上记录着十五年前的事。字迹很潦草，但我能看懂：\n\n'一九九八年七月十三日。南桥水库。客车坠库。十二人遇难。\n\n不对。是十三人。第十二具尸体没有名字。临时编号0713-12。\n\n我和陈望川一起抬的棺。棺尾没人。他说，还差一个。\n\n第十三个。'\n\n笔记最后一页写着：'不要数。数清了，它们就知道车上还缺几个。'\n\n我把笔记放回盒子，锁好。\n\n【隐藏线索获取：马成福的秘密笔记】",
      "items": ["secret_note"],
      "choices": [
        { "text": "叫醒马成福准备出发", "next": "wake_machengfu" },
        { "text": "先查看接运单信息", "next": "check_receipt" }
      ]
    },
    "fail_find_key": {
      "id": "fail_find_key",
      "location": "duty_room",
      "text": "【QTE失败】你没有找到钥匙。时间不够了。\n\n【死亡】你浪费了生存机会。",
      "isEnd": true,
      "endType": "death",
      "endMessage": "死亡结局：QTE失败，浪费了生存机会。"
    },
    "wake_machengfu": {
      "id": "wake_machengfu",
      "location": "duty_room",
      "text": "我推醒马成福。他五十多岁，在殡仪馆开了快二十年遗体车，耳朵有些背。\n\n'马叔，来活了。'\n\n他翻个身：'哪儿？'\n\n'旧水库。'\n\n他原本闭着的眼睛一下睁开：'哪个旧水库？'\n\n'南桥下面那个。'\n\n马成福没有立刻起床，脸色有些难看。'那地方不是封了吗？'\n\n【提示：如果你看过马成福的笔记，你知道他隐瞒了什么】",
      "choices": [
        { "text": "解释是雨水冲出来的", "next": "explain_body" },
        { "text": "问他为什么不愿去", "next": "ask_hesitate" },
        { "text": "直接问他笔记的事", "next": "ask_note" }
      ]
    },
    "ask_note": {
      "id": "ask_note",
      "location": "duty_room",
      "text": "'马叔，我看到了你的笔记。'\n\n马成福的脸一下白了：'你……'\n\n'第十三个是什么意思？'\n\n他沉默了很久。最后说：'十五年前，我和陈望川一起抬过棺。那天夜里，也是这样的雨。他告诉我，棺里有十三个位子。十二个已经满了，还差一个。如果找不到那个人，所有上过肩的人，都要替他死。'\n\n'上过肩的人？'\n\n'抬棺的人。每抬一次，肩上就多一道印。印满十三道，人就会被棺带走。'\n\n'你抬了几次？'\n\n'十二次。'\n\n'那我呢？'\n\n马成福看着我：'你是第十三个。'\n\n【关键信息获取：你是第十三个抬棺人】",
      "choices": [
        { "text": "准备出发", "next": "go_to_car" }
      ]
    },
    "check_receipt": {
      "id": "check_receipt",
      "location": "duty_room",
      "text": "我先查看了接运单。发现时间：二十三点十七分。地点：南桥旧水库东岸泄洪沟。男性，四十至五十岁，身份不明。\n\n手机震动，公安发来一张现场照片——雨太大，手电筒照出半截泡在泥水里的身体，死者仰躺着，身上穿一件旧式灰夹克，脸被水草遮住。\n\n不知是不是光线问题，我总觉得他的头偏向镜头这边。\n\n像隔着照片，在看拍照的人。\n\n【提示：注意照片中的细节】",
      "items": ["receipt"],
      "choices": [
        { "text": "叫醒马成福出发", "next": "wake_machengfu" }
      ]
    },
    "explain_body": {
      "id": "explain_body",
      "location": "duty_room",
      "text": "'雨太大，水位涨了，冲出来一具尸体。'\n\n马成福坐起来，摸过床头的烟，点了两次才点着。他抽了一口，忽然问：'尸体有名字吗？'\n\n我摇头：'没证件，身上也没有手机。公安说先送回来，明天做检查。'\n\n他夹着烟，半天没说话。",
      "choices": [
        { "text": "追问他怎么了", "next": "ask_hesitate" },
        { "text": "准备出发", "next": "go_to_car" }
      ]
    },
    "ask_hesitate": {
      "id": "ask_hesitate",
      "location": "duty_room",
      "text": "'怎么了？'\n\n马成福把烟按灭：'没什么。'\n\n他站起来穿鞋。'走吧。'\n\n我盯着他的背影，总觉得他藏着什么。",
      "choices": [
        { "text": "准备出发", "next": "go_to_car" }
      ]
    },
    "go_to_car": {
      "id": "go_to_car",
      "location": "backyard",
      "text": "遗体车停在接运楼后面。白色车身，蓝色反光条，后车厢里有一副固定担架。\n\n车开出去时，雨刮器已经调到最快，挡风玻璃上的水还是刮不干净。\n\n从殡仪馆到旧水库，正常只要二十分钟。可那晚我们走了将近四十分钟。\n\n雨太大，城南有两段路积水，马成福绕了老路。那条路从废弃客运站后面过去。",
      "choices": [
        { "text": "问马成福以前去过水库吗", "next": "ask_reservoir" },
        { "text": "观察窗外", "next": "observe_outside" }
      ]
    },
    "ask_reservoir": {
      "id": "ask_reservoir",
      "location": "backyard",
      "text": "'你以前去过那个水库？'\n\n他握着方向盘，眼睛一直盯着前面：'去过。'\n\n'接过人？'\n\n'嗯。'\n\n'什么时候？'\n\n他没有回答。车里只剩雨打车顶的声音。\n\n过了一会儿，他才低声说：'很多年前。'",
      "choices": [
        { "text": "继续追问", "next": "press_question" },
        { "text": "观察窗外", "next": "observe_outside" }
      ]
    },
    "press_question": {
      "id": "press_question",
      "location": "backyard",
      "text": "'很多年前是多久？'\n\n马成福没有说话。就在这时，车灯扫过废弃客运站——站牌还立在路边，雨棚下面站着一排人。\n\n七八个。有男有女。全部低着头。\n\n像在等车。\n\n我下意识回头看。车已经开过去了。后视镜里，雨棚下空空荡荡。一个人也没有。",
      "choices": [
        { "text": "告诉马成福刚才看见人了", "next": "tell_sight" },
        { "text": "假装没看见", "next": "ignore_sight" }
      ]
    },
    "observe_outside": {
      "id": "observe_outside",
      "location": "backyard",
      "text": "我看向窗外。车灯扫过废弃客运站时，我看见雨棚下面站着一排人。七八个，有男有女，全部低着头。\n\n像在等车。\n\n我下意识回头看。车已经开过去了。后视镜里，雨棚下空空荡荡。一个人也没有。",
      "choices": [
        { "text": "告诉马成福刚才看见人了", "next": "tell_sight" },
        { "text": "假装没看见", "next": "ignore_sight" }
      ]
    },
    "tell_sight": {
      "id": "tell_sight",
      "location": "backyard",
      "text": "'刚才那里有人。'\n\n马成福没有看后视镜：'没有。'\n\n'我看见了。'\n\n'雨大，看错了。'\n\n'七八个人，全站在站牌下面。'\n\n他握着方向盘的手顿了一下：'别数。'\n\n'什么？'\n\n'路边看见人，别数。'\n\n'为什么？'\n\n马成福看着前面，声音有些发沉：'数清了，它们就知道车上还缺几个。'\n\n【关键信息：不要数路边的人】",
      "choices": [
        { "text": "追问原因", "next": "ask_count_reason" },
        { "text": "不再说话", "next": "silent_ride" }
      ]
    },
    "ignore_sight": {
      "id": "ignore_sight",
      "location": "backyard",
      "text": "我没有告诉马成福。可心里总觉得不安。\n\n就在这时，后车厢传来一道轻响。咔哒。\n\n像安全带扣上了。\n\n我回头看了一眼。驾驶室和后车厢之间隔着一道玻璃，玻璃后面很暗，只能看见空担架的轮廓。\n\n【Hard模式：你没有及时发现异常，生存点-1】",
      "choices": [
        { "text": "问马成福后面是什么声音", "next": "ask_back_noise" },
        { "text": "假装没听见", "next": "silent_ride_death" }
      ]
    },
    "silent_ride_death": {
      "id": "silent_ride_death",
      "location": "backyard",
      "text": "我假装没听见。但后车厢里的声音越来越多。咔哒。咔哒。咔哒。\n\n七道安全带扣上的声音。\n\n车开到一座旧收费亭前。收费员探出头：'车上几个人？'\n\n马成福说：'两个。'\n\n'不对。车上有九个人。'\n\n收费员笑了：'还差四个。'\n\n【死亡】你没有及时发现异常，它们上了车。",
      "isEnd": true,
      "endType": "death",
      "endMessage": "死亡结局：忽视了危险信号。"
    },
    "ask_count_reason": {
      "id": "ask_count_reason",
      "location": "backyard",
      "text": "'你这话什么意思？车上缺几个？'\n\n马成福没有回答。后车厢又传来一声——咔哒。\n\n像第二条安全带扣上了。\n\n马成福的脸白了。\n\n前方出现一座旧收费亭。我怔了一下：'这里什么时候有收费站了？'\n\n马成福脸色瞬间变了。他猛地踩下刹车。",
      "choices": [
        { "text": "准备掉头", "next": "prepare_turn" },
        { "text": "观察收费亭", "next": "observe_toll" }
      ]
    },
    "ask_back_noise": {
      "id": "ask_back_noise",
      "location": "backyard",
      "text": "'后面什么响？'\n\n'担架扣。'\n\n'我们还没装人。'\n\n'路颠，震的。'\n\n马成福说得很快，快得像早就准备好这个答案。\n\n前方出现一座旧收费亭。我怔了一下：'这里什么时候有收费站了？'\n\n马成福脸色瞬间变了。他猛地踩下刹车。",
      "choices": [
        { "text": "准备掉头", "next": "prepare_turn" },
        { "text": "观察收费亭", "next": "observe_toll" }
      ]
    },
    "silent_ride": {
      "id": "silent_ride",
      "location": "backyard",
      "text": "我没有再说话。车内气氛越来越压抑。\n\n前方出现一座旧收费亭。只有一条通道，顶上的灯发着昏黄的光，栏杆横在路中央。亭子里坐着一个穿旧制服的人。\n\n我看了看导航。地图上什么都没有。这条路早就取消收费了。",
      "choices": [
        { "text": "准备掉头", "next": "prepare_turn" },
        { "text": "观察收费亭", "next": "observe_toll" }
      ]
    },
    "prepare_turn": {
      "id": "prepare_turn",
      "location": "backyard",
      "text": "'掉头。'马成福说。\n\n他挂倒挡。可车刚往后退半米，后车厢又响了一声。咔哒。\n\n像第三条安全带扣上了。\n\n马成福的脸白了。\n\n收费亭里的人缓缓抬起头。隔着雨幕，我看不清他的脸，只能看见他抬起一只手，朝我们招了招。\n\n栏杆自己升了起来。",
      "choices": [
        { "text": "冲过去", "next": "toll_qte_hard" },
        { "text": "按马成福说的闭眼", "next": "close_eyes" }
      ]
    },
    "observe_toll": {
      "id": "observe_toll",
      "location": "backyard",
      "text": "我仔细观察收费亭。亭子里的人影很模糊，看不清男女。\n\n收费亭里的扩音器忽然响了。电流声很重，里面传出一个沙哑的声音：'车上几个人？'\n\n我刚要回答，马成福一把抓住我的手腕，力气大得吓人：'别说。'\n\n扩音器又响了一次：'车上几个人？'\n\n雨声仿佛一下小了。整条路安静得只剩那道声音。",
      "choices": [
        { "text": "回答车上人数", "next": "answer_toll" },
        { "text": "听马成福的，不说话", "next": "silent_toll" }
      ]
    },
    "answer_toll": {
      "id": "answer_toll",
      "location": "backyard",
      "text": "'两个人。'\n\n话音刚落，后车厢里响起一连串咔哒声——第四声、第五声、第六声、第七声。\n\n七道安全带扣上的声音。\n\n收费亭里的人影笑了。'还差一个。'\n\n车窗外的雨突然变成黑色，像有什么东西从水里爬出来。\n\n【死亡】你数了人数，它们知道车上还缺几个。",
      "isEnd": true,
      "endType": "death",
      "endMessage": "死亡结局：不该回答的问题。"
    },
    "silent_toll": {
      "id": "silent_toll",
      "location": "backyard",
      "text": "我没有回答。\n\n马成福咬着牙，重新挂前进挡：'闭眼。'\n\n'过亭的时候，不管听见什么，都别睁眼。'\n\n他说完，一脚踩下油门。车冲了出去。",
      "choices": [
        { "text": "闭眼冲过去", "next": "close_eyes" },
        { "text": "睁眼看看", "next": "open_eyes_toll" }
      ]
    },
    "toll_qte_hard": {
      "id": "toll_qte_hard",
      "location": "backyard",
      "text": "【QTE】快速点击屏幕！车正在冲向收费亭，你必须在车撞到栏杆前完成五次点击！【Hard模式：时间缩短至2秒】",
      "qte": {
        "type": "click",
        "target": 5,
        "time": 2000,
        "success": "qte_success",
        "fail": "qte_fail_toll"
      }
    },
    "qte_success": {
      "id": "qte_success",
      "location": "backyard",
      "text": "车冲过了收费亭！就在经过窗口的一瞬间，我听见有人敲了敲副驾驶玻璃。笃。笃。两声。声音就在耳边。\n\n紧接着，一个男人贴着车窗，低声问：'还有位置吗？'\n\n我浑身一僵。不敢睁眼。\n\n几秒后，车外的声音消失了。马成福低喝：'现在睁眼。'\n\n我睁开眼。收费亭已经不见了。前方只剩一条被雨水冲得发亮的老路。",
      "choices": [
        { "text": "继续前往水库", "next": "arrive_reservoir" }
      ]
    },
    "qte_fail_toll": {
      "id": "qte_fail_toll",
      "location": "backyard",
      "text": "【QTE失败】车停在了栏杆前。收费亭里的人影走了出来。他的手臂很长，长得几乎要从窗口伸出来。\n\n'车上几个人？'\n\n他绕到车旁，打开了后车厢。里面传来七道呼吸声。\n\n【死亡】你没能冲过去，它们上了车。",
      "isEnd": true,
      "endType": "death",
      "endMessage": "死亡结局：QTE失败，被盯上了。"
    },
    "close_eyes": {
      "id": "close_eyes",
      "location": "backyard",
      "text": "我立刻闭上眼。\n\n车从收费亭旁驶过。就在经过窗口的一瞬间，我听见有人敲了敲副驾驶玻璃。笃。笃。两声。声音就在耳边。\n\n紧接着，一个男人贴着车窗，低声问：'还有位置吗？'\n\n我浑身一僵。不敢睁眼。\n\n几秒后，车外的声音消失了。马成福低喝：'现在睁眼。'\n\n我睁开眼。收费亭已经不见了。前方只剩一条被雨水冲得发亮的老路。\n\n我往后视镜看了一眼。路上什么都没有。可后车厢里，响起了第三道声音。咔哒。\n\n像又一条安全带扣上了。",
      "choices": [
        { "text": "继续前往水库", "next": "arrive_reservoir" }
      ]
    },
    "open_eyes_toll": {
      "id": "open_eyes_toll",
      "location": "backyard",
      "text": "我没有闭眼。车头快到栏杆下时，收费亭里突然亮起一阵白光——那光像手电筒直直照进眼睛，我下意识闭上了。\n\n【Hard模式：你没有闭眼，生存点-1】\n\n车从收费亭旁驶过。就在经过窗口的一瞬间，我听见有人敲了敲副驾驶玻璃。笃。笃。两声。声音就在耳边。\n\n紧接着，一个男人贴着车窗，低声问：'还有位置吗？'\n\n我浑身一僵。不敢睁眼。\n\n几秒后，车外的声音消失了。马成福低喝：'现在睁眼。'\n\n我睁开眼。收费亭已经不见了。前方只剩一条被雨水冲得发亮的老路。",
      "choices": [
        { "text": "继续前往水库", "next": "arrive_reservoir" }
      ]
    },
    "arrive_reservoir": {
      "id": "arrive_reservoir",
      "location": "backyard",
      "text": "旧水库边已经拉起了警戒带。两名民警和一个派出所辅警守在岸边。尸体被装进黑色尸袋，放在临时担架上。\n\n我们下车时，雨小了一些。水库四周全是雾。远处的山、树和护栏全被雾吞掉，只剩岸边几束手电光来回晃动。\n\n带队的是个姓梁的民警。他把手续递给我：'人是泄洪沟冲出来的，身上什么都没有。'\n\n我走到尸袋旁，拉开拉链。一股水腥味冒了出来。\n\n尸体是个中年男人，四十多岁，头发贴在额头上，脸色惨白，皮肤却没有明显肿胀。不像刚从水里捞出来，更像刚刚睡着。\n\n他穿着一件灰色夹克，样式很旧，拉链已经生锈。左边眉骨有一道浅疤。\n\n我看到那道疤时，心里莫名一紧。这张脸，我好像在哪里见过。",
      "choices": [
        { "text": "检查脚牌", "next": "check_foot_tag" },
        { "text": "问梁警官更多信息", "next": "ask_liang" }
      ]
    },
    "check_foot_tag": {
      "id": "check_foot_tag",
      "location": "backyard",
      "text": "我低头检查尸袋脚牌。姓名栏空白。编号是：0713。\n\n我念了一遍：'无名男尸，暂编号零七一三。'\n\n话刚说完，尸体的眼皮轻轻动了一下。\n\n我动作一顿。再仔细看时，他没有任何变化。我伸手碰了碰颈侧——冰凉，没有脉搏。\n\n'怎么了？'梁警官问。\n\n'没事。'\n\n我重新拉上尸袋。就在拉链合拢的最后一刻，尸体嘴唇似乎张了一下。里面没有声音，但我看清了他的口型。\n\n两个字：陈砚。\n\n【Hard模式警告：注意这个口型，这是关键线索】",
      "choices": [
        { "text": "问梁警官是否听见声音", "next": "ask_voice" },
        { "text": "赶紧装车离开", "next": "load_body" }
      ]
    },
    "ask_liang": {
      "id": "ask_liang",
      "location": "backyard",
      "text": "'初步死亡时间呢？'\n\n'法医还没正式看。不过尸体保存得很奇怪。'\n\n'怎么奇怪？'\n\n梁警官往尸袋看了一眼：'水库这几天水温不低，按理说泡成这样，人应该已经……算了，你们明天自己看。'\n\n他说到一半停住了。",
      "choices": [
        { "text": "检查脚牌", "next": "check_foot_tag" },
        { "text": "赶紧装车离开", "next": "load_body" }
      ]
    },
    "ask_voice": {
      "id": "ask_voice",
      "location": "backyard",
      "text": "'你们知道他是谁？'\n\n梁警官摇头：'不知道。'\n\n'有没有人听见他说话？'\n\n几个人都看向我。梁警官皱起眉：'死人怎么说话？'\n\n我没有回答。马成福走过来，一把拉上尸袋：'赶紧走。'\n\n他语气很差，像在生我的气。可我看见他拉拉链的手在抖。",
      "choices": [
        { "text": "装车离开", "next": "load_body" }
      ]
    },
    "load_body": {
      "id": "load_body",
      "location": "backyard",
      "text": "遗体抬上车后，担架锁扣'咔'的一声固定住。\n\n我站在后车厢门口，往里面看了一眼。车厢里只有一副担架，一具尸体，两排折叠座椅全部收起。根本没有安全带。\n\n我愣住了。'马叔，后面没有安全带。'\n\n他签字的动作停了。我看着他：'来的路上，响了三次。'\n\n雨落在车顶上，啪啪作响。马成福沉默几秒，低声说：'我没听见。'\n\n'不可能。'\n\n'我说没听见。'\n\n他把文件塞给我，转身上车。我站在原地没有动。\n\n就在我准备关门时，尸袋右侧的位置忽然陷下去了一块。像有人坐在了担架边。\n\n紧接着，黑暗里传来一声极轻的响动。咔哒。\n\n这一次，我听清楚了。不是安全带。是有人扣上了棺杠。",
      "choices": [
        { "text": "立刻关门离开", "next": "close_and_leave" },
        { "text": "拿手机拍照取证", "next": "take_photo" }
      ]
    },
    "close_and_leave": {
      "id": "close_and_leave",
      "location": "backyard",
      "text": "我立刻关门。回程没有再遇见收费亭。一路上，马成福没有说话，我也没有再回头。\n\n可后车厢一直有声音。先是衣服摩擦，接着是很轻的呼吸，然后是手指在金属地板上慢慢敲击。一下。两下。三下。\n\n我强迫自己不去数。可越不想数，声音越清楚。第四下。第五下。第六下。\n\n到第七下时，声音停了。\n\n我刚松一口气，后面忽然传来一道男人的声音，很轻，像隔着一层厚厚的水：'还差一个。'",
      "choices": [
        { "text": "问马成福什么意思", "next": "ask_missing" },
        { "text": "保持沉默", "next": "silent_return" }
      ]
    },
    "take_photo": {
      "id": "take_photo",
      "location": "backyard",
      "text": "我拿出手机，打开闪光灯准备拍照。灯光亮起的一瞬间，我看见车厢最里面站着一个穿灰夹克的男人。头低着，脸被阴影挡住。\n\n可现实里，那里明明什么都没有。\n\n我猛地抬头。车厢空空荡荡。再低头看手机——照片里的人也消失了。\n\n只剩一张空车厢的照片。\n\n【Hard模式：照片中隐藏着一个数字，仔细看】",
      "items": ["photo"],
      "choices": [
        { "text": "关门离开", "next": "close_and_leave" }
      ]
    },
    "ask_missing": {
      "id": "ask_missing",
      "location": "backyard",
      "text": "'他说还差一个，是什么意思？'\n\n'别问。'\n\n'后面除了尸体，还有什么？'\n\n'我让你别问！'马成福突然吼了一声。\n\n车身偏了一下，差点撞上护栏。他赶紧稳住方向。过了很久，他才低声说：'有些东西，你不问，它只是跟着。你一问，它就当你认了。'\n\n我脑子里闪过收费亭里那句话：车上几个人？\n\n我没有再出声。",
      "choices": [
        { "text": "继续沉默", "next": "silent_return" }
      ]
    },
    "silent_return": {
      "id": "silent_return",
      "location": "backyard",
      "text": "凌晨一点四十八分，遗体车回到殡仪馆。雨已经小了。\n\n后院没有人。停尸楼的感应灯一盏盏亮起，惨白的光照在积水里，像一排倒着燃烧的纸灯。\n\n我打开后车门。尸袋还在原位。担架旁边没有人。地板上却多了七个湿脚印。\n\n脚印从车厢最里面开始，一双接一双，全都朝着车门。只有脚尖，没有脚后跟。像七个人踮着脚，站在尸体两边。",
      "choices": [
        { "text": "拍照留证", "next": "photo_footprints" },
        { "text": "按马成福说的冲掉", "next": "wash_footprints" }
      ]
    },
    "photo_footprints": {
      "id": "photo_footprints",
      "name": "photo_footprints",
      "location": "backyard",
      "text": "'先拍照。'我拿出手机，对着脚印拍了一张。\n\n闪光灯亮起的一瞬间，手机屏幕里多了一个人。一个穿灰夹克的男人站在车厢最里面，头低着，脸被阴影挡住。\n\n可现实里，那里明明什么都没有。我猛地抬头。车厢空空荡荡。再低头看手机——照片里的人也消失了，只剩那七双湿脚印。\n\n我把照片放大。脚印旁边，有一行很淡的水痕，像有人用手指在地板上写了字。我看了很久，才认出来。写的是：别数。",
      "items": ["photo"],
      "choices": [
        { "text": "前往冷藏室", "next": "go_refrigerator" }
      ]
    },
    "wash_footprints": {
      "id": "wash_footprints",
      "location": "backyard",
      "text": "马成福看了一眼，脸色难看：'拿水冲掉。'\n\n【Hard模式：冲掉脚印会丢失关键线索，生存点-1】\n\n我冲掉了脚印。但那个水写的字'别数'，却像刻在了我脑子里。",
      "choices": [
        { "text": "前往冷藏室", "next": "go_refrigerator" }
      ]
    },
    "go_refrigerator": {
      "id": "go_refrigerator",
      "location": "refrigerator",
      "text": "冷藏室在停尸楼一层最里面。一共有两排冷柜，左边四个，右边四个，总共八个位置。但因为八号柜制冷系统坏了，已经停用半年，平时真正能用的只有七个。\n\n那晚回来前，七个冷柜里正好都有遗体。也就是说，新接回来的无名尸没有位置。",
      "choices": [
        { "text": "告诉马成福没有位置", "next": "no_space" },
        { "text": "先检查冷柜", "next": "check_cabinets" }
      ]
    },
    "no_space": {
      "id": "no_space",
      "location": "refrigerator",
      "text": "我把这件事告诉马成福。他站在冷藏室门口，盯着那两排柜门：'七个都满了？'\n\n'嗯。'\n\n'你确认过？'\n\n'晚班交接时确认的。'\n\n'数过几次？'\n\n我愣了一下：'两次。'\n\n马成福脸色一下变了：'别再数。'\n\n'什么意思？'\n\n'今晚别开柜门。'\n\n'可尸体不能一直放外面。'\n\n'就放临时床。'\n\n'馆里有规定——'\n\n'陈砚。'他打断我，'听我一次。'",
      "choices": [
        { "text": "坚持开柜检查", "next": "check_cabinets" },
        { "text": "听马成福的，放临时床", "next": "put_temp_bed" }
      ]
    },
    "check_cabinets": {
      "id": "check_cabinets",
      "location": "refrigerator",
      "text": "我走到一号柜前。柜门外插着遗体卡。\n\n一号，刘庆山。\n二号，何梅。\n三号，张永华。\n四号，无名女尸。\n五号，赵国民。\n六号，周德胜。\n七号，李小娟。\n\n七具。全部有登记。\n\n我没有打开柜门，只核对了卡片。'没问题。'\n\n我回头看马成福。他站在冷藏室门口，脸色灰白。'你数第三遍了。'\n\n就在这时，八号柜的封条'啪'地裂开。柜门自己弹出了一条缝。一股白色冷气从里面涌出来，带着很重的水腥味——和旧水库岸边一模一样。",
      "choices": [
        { "text": "拉开八号柜门", "next": "open_eighth" },
        { "text": "听马成福的，别动", "next": "dont_touch" }
      ]
    },
    "put_temp_bed": {
      "id": "put_temp_bed",
      "location": "refrigerator",
      "text": "我把无名尸放在临时停尸床上。马成福一直站在门口，没有进来。\n\n就在这时，八号柜发出一声轻响——咚。像有人在柜子深处，用指节敲了一下。\n\n我和马成福同时僵住。几秒后，又是一声。咚。这次更清楚。声音就是从八号柜里面传出来的。\n\n'里面有人？'\n\n'没有。'\n\n'你刚才也听见了。'\n\n马成福往后退了一步：'八号柜坏了半年。'\n\n'坏了不代表里面没人。'\n\n'里面是空的。'\n\n话刚说完，八号柜的指示灯亮了。绿色。代表制冷正常。",
      "choices": [
        { "text": "拉开八号柜门", "next": "open_eighth" },
        { "text": "听马成福的，别动", "next": "dont_touch" }
      ]
    },
    "open_eighth": {
      "id": "open_eighth",
      "location": "refrigerator",
      "text": "【Hard模式】我伸手去撕封条。马成福一把抓住我：'不能开。'\n\n'里面要是真有人呢？'\n\n'就是因为里面有人，才不能开。'\n\n我挣开他的手。封条裂开，柜门没有直接打开——上面出现了一个六位数密码锁。\n\n数字键在昏暗的灯光下泛着冷光。脚牌编号是0713，事故有十二具尸体。\n\n【解密-Hard】冷柜密码锁需要六位数密码。只有两次机会。",
      "choices": [
        { "text": "输入071312", "next": "password_correct_hard" },
        { "text": "输入071308", "next": "password_wrong_1_hard" },
        { "text": "输入199807", "next": "password_wrong_1_hard" },
        { "text": "输入120713", "next": "password_wrong_1_hard" }
      ]
    },
    "password_correct_hard": {
      "id": "password_correct_hard",
      "location": "refrigerator",
      "text": "密码正确。柜门缓缓打开。\n\n我看见八号柜里面，躺着一个人。不是刚才接回来的无名男尸。是我。\n\n我看见自己平躺在抽屉里，穿着工作服，脸色惨白，双手交叠放在腹部。脚踝上挂着一张白色脚牌。\n\n脚牌上写着：陈砚。\n\n我的脑子一下空了。那具尸体的眼睛忽然睁开，直直看着我。然后，它慢慢抬起右手，把食指放在唇边，做了一个噤声的动作。",
      "choices": [
        { "text": "后退躲开", "next": "recoil" },
        { "text": "伸手触碰那具尸体", "next": "touch_corpse" }
      ]
    },
    "password_wrong_1_hard": {
      "id": "password_wrong_1_hard",
      "location": "refrigerator",
      "text": "【Hard模式】密码错误。生存点-1。只剩一次机会。\n\n八号柜里传来一声闷响。柜门微微震动。\n\n【提示】脚牌编号+尸体数量。",
      "choices": [
        { "text": "重新输入密码", "next": "open_eighth" },
        { "text": "听马成福的，别动", "next": "dont_touch" }
      ]
    },
    "dont_touch": {
      "id": "dont_touch",
      "location": "refrigerator",
      "text": "我没有碰八号柜。但柜门上那张停用封条慢慢鼓了起来，像里面有人在呼吸。\n\n墙上的温度计从四度开始往下跳。三度。两度。一度。\n\n八号柜的指示灯突然变成红色。紧接着，一号柜亮了。二号柜。三号柜。一盏接一盏。最后，七个正常冷柜全部亮起红灯。\n\n墙上的电子登记屏闪了几下。原本显示'在柜遗体：7'。数字忽然变成了：8。接着又变成：9。屏幕卡住几秒，最后慢慢跳出一个新的数字。\n\n13。\n\n【Hard模式警告：13是关键数字】",
      "choices": [
        { "text": "拉开八号柜门", "next": "open_eighth" },
        { "text": "立刻离开冷藏室", "next": "leave_refrigerator" }
      ]
    },
    "recoil": {
      "id": "recoil",
      "location": "refrigerator",
      "text": "我后背撞上冷柜，金属门发出'砰'的一声。马成福冲过来，一把将八号柜推回去。柜门合拢，指示灯瞬间熄灭。\n\n冷藏室重新安静下来。我喘着气，手心全是冷汗：'你看见了吗？'\n\n马成福没有回答。\n\n'里面是我。'\n\n他仍然不说话。\n\n'你是不是早就知道？'\n\n马成福转身往外走。我抓住他的肩：'说清楚。'\n\n他停住。过了很久，才低声问我：'你刚才看见几具尸体？'",
      "choices": [
        { "text": "如实回答九具", "next": "say_nine" },
        { "text": "说没看清", "next": "say_not_sure" }
      ]
    },
    "touch_corpse": {
      "id": "touch_corpse",
      "location": "refrigerator",
      "text": "我伸手去碰那具尸体的脸。手指刚碰到皮肤，一股冰凉从指尖传上来。那具尸体突然抓住我的手腕，力气大得惊人。\n\n'陈砚。'它说，'你不该来的。'\n\n我想挣脱，却被它拉向冷柜。\n\n【死亡】你碰了不该碰的东西。",
      "isEnd": true,
      "endType": "death",
      "endMessage": "死亡结局：触碰了自己的尸体。"
    },
    "say_nine": {
      "id": "say_nine",
      "location": "refrigerator",
      "text": "'九个。七个正常冷柜，八号柜里一个我，外面临时床上还有一具无名男尸。总共九具。'\n\n我脑子里刚出现这个数字，冷藏室所有柜门同时响了一声。咔。像里面的人，一起翻了个身。\n\n马成福脸色彻底变了：'别说。'\n\n可已经晚了。八号柜的指示灯重新亮起。这一次，不是绿色。是红色。\n\n紧接着，一根黑色棺杠从八号柜里滑出来。没人抬，也没人推。落到地上时，发出一声沉闷的响。咚。\n\n整栋停尸楼的灯同时灭了。",
      "choices": [
        { "text": "等待应急灯亮起", "next": "wait_emergency" },
        { "text": "打开手机手电筒", "next": "use_flashlight" }
      ]
    },
    "say_not_sure": {
      "id": "say_not_sure",
      "location": "refrigerator",
      "text": "'没看清。'\n\n马成福松了一口气。但八号柜的指示灯还是亮了。红色。\n\n一根黑色棺杠从八号柜里滑出来。没人抬，也没人推。落到地上时，发出一声沉闷的响。咚。\n\n整栋停尸楼的灯同时灭了。",
      "choices": [
        { "text": "等待应急灯亮起", "next": "wait_emergency" },
        { "text": "打开手机手电筒", "next": "use_flashlight" }
      ]
    },
    "leave_refrigerator": {
      "id": "leave_refrigerator",
      "location": "corridor",
      "text": "我转身要走。身后传来一声闷响——八号柜的柜门被撞开了。\n\n我没有回头。但一股冰冷的手抓住了我的脚踝。\n\n'别走。'一个声音说，'你还没认我。'\n\n【死亡】你想逃，但它不会让你走。",
      "isEnd": true,
      "endType": "death",
      "endMessage": "死亡结局：试图逃避。"
    },
    "wait_emergency": {
      "id": "wait_emergency",
      "location": "refrigerator",
      "text": "黑暗中，我听见很多人一起吸了一口气。不是从冷柜里，是在我身后。\n\n我不敢回头。马成福也没有动。\n\n应急灯过了几秒才亮。昏暗的绿光下，那根黑色棺杠横在我们脚边。棺杠上没有编号，也没有符号，只有一片湿黑的木纹。\n\n我盯着它看了几秒。木纹开始缓慢变化，像有看不见的手，在里面一笔一画地写字。先是一横，再是一竖。水从刻痕里渗出来。\n\n第一个字慢慢成形：陈。\n\n第二个字也跟着浮现：砚。\n\n两个字很新，像刚刻上去。\n\n马成福看到名字后，连退了三步。他嘴里不停念着：'不对。不该是你。'",
      "choices": [
        { "text": "问马成福这是什么", "next": "ask_coffin_bar" },
        { "text": "赶紧离开", "next": "escape_now" }
      ]
    },
    "use_flashlight": {
      "id": "use_flashlight",
      "location": "refrigerator",
      "text": "我打开手机手电筒。光线照在那根黑色棺杠上——木纹里正浮现出两个字：陈砚。\n\n一股看不见的重量压上我的右肩。我膝盖一软，差点跪下。\n\n黑暗里，有人贴着我的耳朵说：'第十三副肩。找到了。'\n\n声音落下时，八号冷柜里传来一阵笑。笑声很轻，和我的声音一模一样。",
      "choices": [
        { "text": "问马成福这是什么", "next": "ask_coffin_bar" },
        { "text": "赶紧离开", "next": "escape_now" }
      ]
    },
    "ask_coffin_bar": {
      "id": "ask_coffin_bar",
      "location": "refrigerator",
      "text": "'这是什么？'\n\n马成福摇头：'棺杠。'\n\n'为什么写我的名字？'\n\n'我不知道。'\n\n'你认识这东西？'\n\n他没有回答。那根棺杠却忽然动了一下。一股看不见的重量压上我的右肩，我膝盖一软，差点跪下。\n\n黑暗里，有人贴着我的耳朵说：'第十三副肩。找到了。'",
      "choices": [
        { "text": "用力站稳", "next": "stay_standing" },
        { "text": "让马成福帮忙", "next": "ask_help" }
      ]
    },
    "escape_now": {
      "id": "escape_now",
      "location": "corridor",
      "text": "我转身往外跑。右肩上的重量越来越重，像那根棺杠虽然还在地上，影子却已经压在我肩上。\n\n我跑出冷藏室，跑到走廊尽头。身后的灯光一盏盏熄灭。\n\n停尸楼外面，那辆遗体车正在自己启动。车灯亮起，照出后车厢里坐着七个人。\n\n它们转过头，看向我。\n\n【死亡】你跑不掉的。",
      "isEnd": true,
      "endType": "death",
      "endMessage": "死亡结局：试图逃跑。"
    },
    "stay_standing": {
      "id": "stay_standing",
      "location": "refrigerator",
      "text": "我咬紧牙，撑住冷柜边缘。右肩上的重量越来越沉，像有一根看不见的木头压进了骨缝。每吸一口气，肩胛骨下方就传来一阵细密的摩擦声。吱呀。吱呀。像旧棺杠正在慢慢磨我的骨头。\n\n马成福站在三步外，脸上已经没有血色：'不该是你。'\n\n他又说了一遍。\n\n'那该是谁？'\n\n马成福没有回答。冷藏室里很安静。八个柜门全部紧闭。墙上的电子登记屏还停在那个数字上：13。",
      "choices": [
        { "text": "继续追问马成福", "next": "press_machengfu" },
        { "text": "去监控室查看录像", "next": "go_monitor" }
      ]
    },
    "ask_help": {
      "id": "ask_help",
      "location": "refrigerator",
      "text": "'马叔，帮我。'\n\n马成福摇头：'不能碰。'\n\n'那就让它一直压着我？'\n\n'棺杠落了名，谁碰谁上肩。'\n\n'现在上肩的是我。'\n\n'还没完全上。'\n\n他说完，目光落到我的右肩上。我顺着他的视线低头——工作服肩头不知什么时候湿了一块，湿痕是长条形，从锁骨后方一直压到肩胛，像真的有一根棺杠在那里。\n\n布料下面，皮肤隐隐发黑。",
      "choices": [
        { "text": "去监控室查看录像", "next": "go_monitor" },
        { "text": "打电话给罗启明", "next": "call_luo" }
      ]
    },
    "press_machengfu": {
      "id": "press_machengfu",
      "location": "refrigerator",
      "text": "'马叔，你今晚每句话都只说一半。旧水库你去过，废收费站你见过，连这根棺杠的规矩你都知道。你到底隐瞒了什么？'\n\n马成福避开我的目光：'先出去。'\n\n'把这东西留在这里？'\n\n'它已经认你了，留不留都一样。'\n\n我还想问，八号柜里面忽然响了一声。咚。\n\n我和马成福同时看过去。柜门没有开，里面却传来一道轻轻的抓挠声。指甲刮过金属内壁。沙。沙。沙。\n\n声音很慢。每刮一下，八号柜门上的红色指示灯就亮一次。",
      "choices": [
        { "text": "去监控室查看录像", "next": "go_monitor" },
        { "text": "打电话给罗启明", "next": "call_luo" }
      ]
    },
    "go_monitor": {
      "id": "go_monitor",
      "location": "monitor_room",
      "text": "我和马成福去了监控室。停尸楼共有十二个摄像头。\n\n我把时间调到凌晨一点四十八分。画面里，遗体车正常驶入后院。我从副驾驶下车，马成福从驾驶位下来。我们打开后门，把装着无名男尸的担架推出来。\n\n一切都和记忆中一样。可担架后面，还跟着七个人。\n\n他们排成一列，从车厢里缓缓走下。第一个是刘庆山，第二个何梅，第三个张永华，接着是四号柜的无名女尸、赵国民、周德胜、李小娟。\n\n七个人穿着入柜时的衣服，有的还裹着白布，有的脚上挂着脚牌。\n\n他们没有躺在冷柜里，而是早就坐在遗体车上，跟着我们从旧水库回来了。",
      "choices": [
        { "text": "继续查看后续录像", "next": "continue_monitor" },
        { "text": "打电话给罗启明", "next": "call_luo" }
      ]
    },
    "call_luo": {
      "id": "call_luo",
      "location": "refrigerator",
      "text": "我拿出手机，拨打馆长罗启明的电话。响了很久才接。罗启明的声音带着浓重睡意：'谁？'\n\n'罗馆长，是我。陈砚。'\n\n'几点了？'\n\n'出事了。'\n\n'什么事？'\n\n我把遗体车自行开走、冷柜遗体失踪的事情大致说了一遍。\n\n电话那头沉默了几秒：'你喝酒了？'\n\n'没有。'\n\n'七具遗体全没了？'\n\n'是。'\n\n'门锁呢？'\n\n'没坏。'\n\n'监控看了吗？'\n\n我顿了一下：还没有。\n\n'马上去监控室。别报警，也别联系家属。我现在过去。'\n\n'车上还有一具公安送来的无名尸。'\n\n'什么无名尸？'\n\n'旧水库打捞的。'\n\n电话里忽然安静下来。'谁让你们接的？'\n\n'公安。'\n\n'手续呢？'\n\n'在我这里。'\n\n罗启明明显松了口气：'把单子收好。你先去监控室。无论看到什么，都不要复制，不要发给别人。等我到。'",
      "choices": [
        { "text": "去监控室查看录像", "next": "go_monitor" }
      ]
    },
    "continue_monitor": {
      "id": "continue_monitor",
      "location": "monitor_room",
      "text": "我继续查看录像。在冷藏室画面里，我和马成福把无名男尸放在临时床上。七具遗体站在两排冷柜前，各自面对属于自己的柜门。\n\n随后，柜门一个个打开。不是他们进去，而是冷柜里面，各走出一个与他们一模一样的人。\n\n七个柜中人站在外面，七个从车上下来的遗体也站在外面。十四个死人，面对面，一模一样。\n\n我头皮一阵发麻。监控里的我正在核对遗体卡。'一号，刘庆山。'当我念出名字时，两个刘庆山同时转头看向我。接着，一个走进冷柜，另一个站在原地。\n\n直到七个名字全部念完。监控里，我身后正好站着七具遗体。\n\n可现实里的我没有回头。我毫无察觉地走向八号柜。",
      "choices": [
        { "text": "继续查看", "next": "monitor_more" },
        { "text": "等待罗启明到来", "next": "wait_luo" }
      ]
    },
    "monitor_more": {
      "id": "monitor_more",
      "location": "monitor_room",
      "text": "我继续查看。八号柜自行打开。里面没有我的尸体，只有一个穿灰夹克的男人——陈望川。他坐在抽屉里，眼睛一直看着我。\n\n而在我看见'自己尸体'的那一刻，他抬起右手，把食指放在嘴边。\n\n监控画面没有声音，但我知道他在说什么：不要认。\n\n陈望川从冷柜中走出来，经过我身边。我没有看见。随后，他走向临时床上的无名男尸。尸袋自动打开——里面空空荡荡，根本没有尸体。\n\n陈望川躺了进去。尸袋重新合上。\n\n也就是说，我们从旧水库接回来的尸袋里，可能从一开始就没有人。是八号柜里的陈望川，自己钻进去的。",
      "items": ["newspaper"],
      "choices": [
        { "text": "等待罗启明到来", "next": "wait_luo" }
      ]
    },
    "wait_luo": {
      "id": "wait_luo",
      "location": "monitor_room",
      "text": "我坐在监控室里，等待罗启明。手机在手里攥得发烫。\n\n墙上的十二个屏幕全部黑了。只有中间主屏重新亮起——画面不再是殡仪馆，而是一座灵堂。白布、纸人、香烛。灵堂中央放着一口黑棺。\n\n画面右上角显示的时间，是现在。凌晨三点十二分。\n\n这不是录像，是实时监控。\n\n主屏下方缓缓浮出一行地址：青山县，河西村，周家老宅。\n\n画面中，一个跪在棺材旁的老人慢慢抬起头。他头发花白，脸很瘦，左眼下有一颗很明显的黑痣。\n\n马成福倒吸了一口冷气：'周德安。'\n\n'谁？'\n\n'十五年前客车事故唯一活下来的人。'\n\n画面里的老人像是听见了我们的对话。他隔着监控，缓缓转头看向镜头。随后，他站了起来。\n\n灵堂里其他人仍然跪着，没有一个人看他。\n\n老人走到黑棺旁，双手扶住棺沿。我终于看清棺材里面躺着的人——也是周德安。\n\n棺外站着一个周德安，棺里躺着另一个周德安。两张脸一模一样。唯一不同的是，棺中尸体没有左眼下的黑痣。\n\n老人低头看着自己的尸体，嘴角慢慢露出一丝笑。\n\n监控屏幕里传出他的声音：'等了十五年。总算有人还记得第十三个。'\n\n他说完，抬头直直看向我。\n\n'陈砚。来送我上路。'\n\n画面猛地一闪。黑棺里的尸体睁开了眼睛。\n\n【本卷完】",
      "nextStory": "盗棺笔记Ⅱ：第十三副肩（中上）[Hard]"
    }
  }
}