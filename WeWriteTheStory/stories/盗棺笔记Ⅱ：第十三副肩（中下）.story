{
  "title": "盗棺笔记Ⅱ：第十三副肩（中下）",
  "subtitle": "棺杠压肩",
  "description": "棺杠压在肩上，每一步都像踩在刀尖上。",
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
    "has_learned_borrow_name": true,
    "has_burnt_ledger": false,
    "chenwangchuan_info": true,
    "coffin_bar_on_shoulder": false,
    "has_entered_coffin_road": false,
    "has_seen_water_bus": false
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
    { "id": "black_line", "name": "黑线", "icon": "🖇️", "description": "黑衣男人扔给沈舟的一截黑线，线结和他们之前用的一样。" }
  ],
  "map": {
    "title": "青山县殡仪馆 & 旧水库 & 棺路",
    "locations": [
      { "id": "reservoir", "name": "旧水库", "description": "南桥水库，十五年前客车事故发生地。" },
      { "id": "coffin_road", "name": "棺路", "description": "水库底下的黑色道路，连接生者与死者的世界。" },
      { "refrigerator": "冷藏室", "description": "停尸楼一层最里面，两排冷柜。" },
      { "duty_room": "值班室", "description": "殡仪馆夜班值班室。" },
      { "backyard": "后院", "description": "殡仪馆后院，停着遗体车。" },
      { "water_bus": "水中客车", "description": "十五年前坠库的客车，如今在棺路上行驶。" }
    ],
    "startingLocation": "reservoir"
  },
  "start": "start",
  "nodes": {
    "start": {
      "id": "start",
      "location": "reservoir",
      "text": "我看着那辆遗体车。车后厢里，七个人同时转头看向我。\n\n它们的眼睛没有瞳孔，只有一片灰白色。\n\n'你愿意吗？'\n\n沈舟的声音在耳边响起。\n\n我沉默了很久。最后，我问：'有没有别的办法？'\n\n沈舟摇头：'没有。'\n\n'那我要是不上呢？'\n\n'它们就会一直跟着你。直到你上去为止。'\n\n我看着那辆遗体车。车后厢里，七个人站了起来。它们一步步走向我。\n\n每走一步，地上就留下一个湿脚印。脚尖朝前，没有脚后跟。\n\n就在它们快要走到我面前时，水面上突然出现了一条黑色的路。\n\n路从水库中央一直延伸到岸边。路上停着一辆客车。\n\n那辆客车很旧，车身布满锈迹。车窗上蒙着一层白雾。\n\n车身上写着：南桥客运。",
      "choices": [
        { "text": "走上棺路", "next": "walk_coffin_road" },
        { "text": "不上车，转身就跑", "next": "run_away" }
      ]
    },
    "walk_coffin_road": {
      "id": "walk_coffin_road",
      "location": "coffin_road",
      "text": "我走上棺路。路面很软，像踩在棉花上。每走一步，脚下就传来一阵冰凉。\n\n沈舟跟在我身后。他提着铜灯，灯光照在路面上，映出我们的影子。\n\n但我总觉得哪里不对劲。我们只有两个人，可影子有三个。\n\n第三个影子走在最前面，肩上压着一根黑色棺杠。\n\n我没有回头。继续往前走。\n\n客车停在路的尽头。车门开着。里面很暗，一股水腥味扑面而来。\n\n我走上车。车厢里坐着七个人——刘庆山、何梅、张永华、无名女尸、赵国民、周德胜、李小娟。\n\n它们面向前方，一动不动。\n\n车座上还留着七个空位。\n\n我找了一个空位坐下。就在我坐下的瞬间，车门砰地关上了。\n\n客车开始移动。不是向前，而是向下。\n\n它缓缓沉入水中。\n\n窗外，水面越来越近。最后，整个世界都变成了黑色。",
      "choices": [
        { "text": "保持冷静", "next": "stay_calm" },
        { "text": "试图打开车门", "next": "try_open_door" }
      ]
    },
    "run_away": {
      "id": "run_away",
      "location": "reservoir",
      "text": "我转身就跑。身后传来一阵脚步声。不是一个人，是很多人。\n\n我跑到岸边，跳进车里。发动引擎，一脚踩下油门。\n\n车冲出去。后视镜里，那七个人站在岸边，看着我。\n\n它们没有追。只是站在原地，一动不动。\n\n但就在我以为自己安全了的时候，车后座突然传来一声轻响。咔哒。\n\n像安全带扣上了。\n\n我回头看。后座上，坐着一个人。\n\n穿灰夹克。低着头。\n\n我猛地刹车。车停在路边。\n\n那个人抬起头。是陈望川。\n\n'你跑不掉的。'\n\n他伸出手，向我走来。\n\n【死亡】你跑不掉的。",
      "isEnd": true,
      "endType": "death",
      "endMessage": "死亡结局：试图逃跑。"
    },
    "stay_calm": {
      "id": "stay_calm",
      "location": "water_bus",
      "text": "我保持冷静。客车沉入水中后，车厢里并没有进水。\n\n窗外，黑色的水在流动。偶尔能看见一些模糊的影子从车旁游过。\n\n七个人仍然面向前方，一动不动。\n\n过了一会儿，客车停了。车门开了。\n\n外面是一条黑色的路。路的两旁，排列着十二口棺材。\n\n每口棺材前都站着一个人。它们面向棺材，一动不动。\n\n沈舟从车后走过来：'这就是棺路。'\n\n'它们在干什么？'\n\n'等名字。'\n\n'什么名字？'\n\n'你父亲借走的名字。'\n\n他指向最前面的一口棺材：'那是陈望川的棺。'\n\n我看向那口棺材。棺盖半开。里面躺着一个人——也是陈望川。\n\n但这个陈望川的脸是模糊的。\n\n'他为什么在这里？'\n\n'因为他借了你的名字，活了下来。但他的棺还在这里等着他。'\n\n'那我该怎么办？'\n\n'走到他的棺前。把木牌放进去。'\n\n'然后呢？'\n\n'他会走。你也能拿回自己的名字。'\n\n沈舟看着我：'但你要记住，走到棺前的每一步，都会压在你的肩上。'\n\n'什么意思？'\n\n'棺杠压肩。每走一步，肩上就多一道印。印满十三道，你就会被棺带走。'\n\n我低头看了看右肩。那四道黑色的印记还在。\n\n'我现在有四道。再走九步，就满了。'\n\n'嗯。'\n\n'那我要是不走呢？'\n\n'它们就会一直跟着你。直到你走为止。'\n\n我深吸一口气，站起来：'走吧。'",
      "choices": [
        { "text": "走向陈望川的棺", "next": "walk_to_coffin" },
        { "text": "先和七个人说话", "next": "talk_to_seven" }
      ]
    },
    "try_open_door": {
      "id": "try_open_door",
      "location": "water_bus",
      "text": "我试图打开车门。但车门纹丝不动。\n\n【QTE】长按屏幕！你必须在车完全沉入水中前打开车门！",
      "qte": {
        "type": "hold",
        "time": 5000,
        "success": "door_success",
        "fail": "door_fail"
      }
    },
    "door_success": {
      "id": "door_success",
      "location": "water_bus",
      "text": "我打开了车门。一股黑色的水涌进来。\n\n我跳出去。但外面不是水库，而是一条黑色的路。\n\n路的两旁，排列着十二口棺材。\n\n每口棺材前都站着一个人。它们面向棺材，一动不动。\n\n沈舟从车后走过来：'你不该跳出来的。'\n\n'为什么？'\n\n'因为你现在在棺路上。出去容易，回来难。'\n\n他指向最前面的一口棺材：'那是陈望川的棺。'\n\n我看向那口棺材。棺盖半开。里面躺着一个人——也是陈望川。\n\n'你必须走到他的棺前。把木牌放进去。'\n\n'然后呢？'\n\n'他会走。你也能拿回自己的名字。'\n\n'但我要是不走呢？'\n\n'它们就会一直跟着你。直到你走为止。'\n\n我深吸一口气，站起来：'走吧。'",
      "choices": [
        { "text": "走向陈望川的棺", "next": "walk_to_coffin" },
        { "text": "先和七个人说话", "next": "talk_to_seven" }
      ]
    },
    "door_fail": {
      "id": "door_fail",
      "location": "water_bus",
      "text": "我没有打开车门。车完全沉入水中。\n\n黑色的水涌进车厢。七个人仍然面向前方，一动不动。\n\n水没过我的膝盖。没过我的腰。没过我的胸口。\n\n最后，整个世界都变成了黑色。\n\n【死亡】你被水淹没了。",
      "isEnd": true,
      "endType": "death",
      "endMessage": "死亡结局：被棺路之水淹没。"
    },
    "walk_to_coffin": {
      "id": "walk_to_coffin",
      "location": "coffin_road",
      "text": "我走向陈望川的棺。但走到一半，地面突然裂开，露出十三个深坑。每个坑前都立着一块石碑，刻着数字1到13。\n\n【解密】棺路有十三个位置。十二具尸体已经归位，还差第十三个。你应该站在哪个位置？",
      "choices": [
        { "text": "站在第13个位置", "next": "coffin_road_correct" },
        { "text": "站在第12个位置", "next": "coffin_road_wrong_1" },
        { "text": "站在第1个位置", "next": "coffin_road_wrong_2" },
        { "text": "站在第7个位置", "next": "coffin_road_wrong_3" }
      ]
    },
    "coffin_road_correct": {
      "id": "coffin_road_correct",
      "location": "coffin_road",
      "text": "位置正确。地面重新合拢。\n\n我继续走向陈望川的棺。每走一步，右肩上就传来一阵剧痛。像有一根看不见的木头压进了骨缝。\n\n第一道印。第二道印。第三道印。第四道印。第五道印。第六道印。第七道印。第八道印。第九道印。\n\n九道了。\n\n还差四道。\n\n我走到棺前。棺盖半开。里面躺着陈望川。他的脸很模糊，但我知道那是谁。\n\n'你来了。'\n\n'嗯。'\n\n'你愿意还吗？'\n\n'愿意。'\n\n我举起木牌，正要放进去，陈望川突然坐了起来。\n\n'等等。'\n\n'怎么了？'\n\n'你真的愿意还？'\n\n'嗯。'\n\n'那你为什么要哭？'\n\n我愣了一下。我没有哭。但脸上确实有泪水。\n\n'我不知道。'\n\n陈望川看着我：'你是舍不得我。'\n\n'我不认识你。'\n\n'但我认识你。'\n\n他伸出手，摸了摸我的脸：'你是我的儿子。我等了你十五年。'\n\n我握紧木牌：'我不是你的儿子。'\n\n'你是。'\n\n他的手慢慢收紧：'跟我走吧。'\n\n【QTE】快速点击屏幕！你必须在他碰到你之前把木牌放进棺材！",
      "qte": {
        "type": "click",
        "target": 7,
        "time": 5000,
        "success": "put_tag_success",
        "fail": "put_tag_fail"
      }
    },
    "coffin_road_wrong_1": {
      "id": "coffin_road_wrong_1",
      "location": "coffin_road",
      "text": "位置错误。第12个位置已经有主人了。地面突然塌陷，你掉进了深坑里。\n\n第十二具尸体转过头，看着你。\n\n'这是我的位置。'它说，'你不该来。'\n\n【死亡】你站错了位置，被第十二具尸体拖入深坑。",
      "isEnd": true,
      "endType": "death",
      "endMessage": "死亡结局：解密失败，位置错误。"
    },
    "coffin_road_wrong_2": {
      "id": "coffin_road_wrong_2",
      "location": "coffin_road",
      "text": "位置错误。第1个位置已经有主人了。地面突然塌陷，你掉进了深坑里。\n\n第一具尸体转过头，看着你。\n\n'这是我的位置。'它说，'你不该来。'\n\n【死亡】你站错了位置，被第一具尸体拖入深坑。",
      "isEnd": true,
      "endType": "death",
      "endMessage": "死亡结局：解密失败，位置错误。"
    },
    "coffin_road_wrong_3": {
      "id": "coffin_road_wrong_3",
      "location": "coffin_road",
      "text": "位置错误。第7个位置已经有主人了。地面突然塌陷，你掉进了深坑里。\n\n第七具尸体转过头，看着你。\n\n'这是我的位置。'它说，'你不该来。'\n\n【死亡】你站错了位置，被第七具尸体拖入深坑。",
      "isEnd": true,
      "endType": "death",
      "endMessage": "死亡结局：解密失败，位置错误。"
    },
    "talk_to_seven": {
      "id": "talk_to_seven",
      "location": "coffin_road",
      "text": "我走向那七个人。它们仍然面向前方，一动不动。\n\n'你们是谁？'\n\n没有人回答。\n\n'你们为什么在这里？'\n\n还是没有人回答。\n\n我走到刘庆山面前。他的脸是灰色的，眼睛没有瞳孔。\n\n'刘庆山。'\n\n他没有反应。\n\n'你借了谁的名字？'\n\n他仍然没有反应。\n\n就在这时，他身后的棺材突然震动了一下。棺盖慢慢打开。\n\n里面躺着另一个刘庆山。但这个刘庆山的脸是完整的。\n\n'刘庆山。'棺中的刘庆山说，'你借了我的名字，活了十五年。现在，该还给我了。'\n\n站着的刘庆山缓缓转头看向棺中的自己。他的眼睛里，第一次出现了瞳孔。\n\n'我……我不是故意的。'\n\n'我知道。'\n\n棺中的刘庆山伸出手：'来吧。回到这里。'\n\n站着的刘庆山走进棺材。棺盖缓缓合上。\n\n其他六个人同时转头看向自己的棺材。它们走进棺材，棺盖一个个合上。\n\n只剩下我和沈舟。还有最前面那口陈望川的棺。\n\n沈舟看向我：'现在，该你了。'",
      "choices": [
        { "text": "走向陈望川的棺", "next": "walk_to_coffin" },
        { "text": "转身离开", "next": "leave_coffin_road" }
      ]
    },
    "put_tag_success": {
      "id": "put_tag_success",
      "location": "coffin_road",
      "text": "我把木牌放进棺材。木牌刚碰到棺材，陈望川的身体就开始变得透明。\n\n'谢谢你。'\n\n'你要走了？'\n\n'嗯。'\n\n'那我的名字呢？'\n\n'已经还给你了。'\n\n他看着我：'好好活着。'\n\n说完，他消失了。棺盖缓缓合上。\n\n我低头看了看右肩。那九道黑色的印记，正在慢慢消失。\n\n沈舟松了一口气：'你做到了。'\n\n就在这时，路两旁的棺材同时打开。十二具尸体从里面走出来。\n\n它们站成一排，看着我。\n\n'还差一个。'它们同时说。\n\n我心里一震：'什么意思？'\n\n'第十三个人，尚未归位。'\n\n它们指向我身后。我转头看——那辆客车里，还坐着一个人。\n\n穿灰夹克。低着头。\n\n'那是谁？'\n\n'陈望川。'\n\n'他不是已经走了吗？'\n\n'那是他的影子。'\n\n沈舟看着我：'影子还在。你还没有真正摆脱他。'",
      "choices": [
        { "text": "走向影子", "next": "walk_to_shadow" },
        { "text": "转身离开", "next": "leave_coffin_road" }
      ]
    },
    "put_tag_fail": {
      "id": "put_tag_fail",
      "location": "coffin_road",
      "text": "我没有把木牌放进棺材。陈望川抓住了我的手腕。\n\n'你还是不愿意认我？'\n\n'不愿意。'\n\n'为什么？'\n\n'因为我不记得你。'\n\n陈望川沉默了很久。最后，他笑了：'你真像你母亲。'\n\n他的手慢慢收紧：'跟我走吧。'\n\n【死亡】你被第十三个带走了。",
      "isEnd": true,
      "endType": "death",
      "endMessage": "死亡结局：被棺中之人带走。"
    },
    "leave_coffin_road": {
      "id": "leave_coffin_road",
      "location": "coffin_road",
      "text": "我转身离开。但身后传来一阵脚步声。不是一个人，是很多人。\n\n我回头看。十二具尸体从棺材里走出来，跟在我身后。\n\n'别走。'它们同时说。\n\n我继续往前走。但每走一步，右肩上就传来一阵剧痛。像有一根看不见的木头压进了骨缝。\n\n第十道印。第十一道印。第十二道印。\n\n还差一道。\n\n我跑到客车旁。车门开着。我跳上去。\n\n但车座上，还坐着一个人。\n\n穿灰夹克。低着头。\n\n'你跑不掉的。'\n\n他抬起头。是陈望川。\n\n'跟我走吧。'\n\n【死亡】你跑不掉的。",
      "isEnd": true,
      "endType": "death",
      "endMessage": "死亡结局：试图逃跑。"
    },
    "walk_to_shadow": {
      "id": "walk_to_shadow",
      "location": "water_bus",
      "text": "我走向影子。它坐在客车最后一排，低着头。\n\n我走到它面前：'你是谁？'\n\n它抬起头。脸是黑色的，没有五官。\n\n'我是你的影子。'\n\n'什么意思？'\n\n'你不认他，他就会变成你的影子。'\n\n'那我该怎么办？'\n\n'认他。'\n\n'我不认。'\n\n影子笑了：'你会认的。'\n\n它伸出手，抓住了我的脚踝。\n\n一股力量从它手里传上来，我被拉向地面。\n\n【QTE】快速点击屏幕！你必须在被拉进影子里前挣脱！",
      "qte": {
        "type": "click",
        "target": 7,
        "time": 5000,
        "success": "shadow_success",
        "fail": "shadow_fail"
      }
    },
    "shadow_success": {
      "id": "shadow_success",
      "location": "water_bus",
      "text": "我用力挣脱。影子松开了手。\n\n我站起来，后退几步。\n\n影子看着我：'你真的不愿意认他？'\n\n'不愿意。'\n\n'那我就一直跟着你。'\n\n'随便。'\n\n我转身往外走。影子没有追。\n\n沈舟站在车门口：'你做到了。'\n\n'什么？'\n\n'你没有认他。'\n\n'那又怎么样？'\n\n'那他就不能带走你。'\n\n沈舟看着我：'但他会一直跟着你。直到你认他为止。'\n\n'那我就永远不认。'\n\n'你会认的。'\n\n'为什么？'\n\n'因为他是你父亲。'\n\n我沉默了很久。最后，我问：'他为什么要借我的名字？'\n\n'因为他想活。'\n\n'为什么想活？'\n\n'因为他有未完成的事。'\n\n'什么事？'\n\n'找第十三个。'\n\n沈舟看着我：'你就是第十三个。'\n\n我心里一震：'那我该怎么办？'\n\n'回去。回到殡仪馆。那里有答案。'\n\n他转身往外走：'走吧。'\n\n【本卷完】",
      "nextStory": "盗棺笔记Ⅱ：第十三副肩（下）"
    },
    "shadow_fail": {
      "id": "shadow_fail",
      "location": "water_bus",
      "text": "我没有挣脱。影子把我拉进了它的身体里。\n\n黑暗中，我感觉到身边躺着一个人。\n\n'别害怕。'他说，'我是来接你的。'\n\n我转头看他。他的脸很模糊，但我知道那是谁。\n\n陈望川。\n\n'你是我父亲？'\n\n'是。'\n\n'那为什么要抓我？'\n\n'因为你是第十三个。'\n\n他伸出手，摸了摸我的脸。\n\n'跟我走吧。'\n\n【死亡】你被第十三个带走了。",
      "isEnd": true,
      "endType": "death",
      "endMessage": "死亡结局：被棺中之人带走。"
    }
  }
}