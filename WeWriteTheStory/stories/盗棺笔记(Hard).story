{
  "title": "盗棺笔记(Hard)",
  "subtitle": "南岭棺道·无主家·原棺开眼·棺账终焚",
  "description": "【9.5难度】爷爷死后，棺材里传来敲击声。一个披蓑衣的老人告诉我：棺里不是爷爷，沈家欠下的棺债，该轮到我来还了。这一次，没有退路。每一步都是生死抉择，每一次QTE都是极限挑战，错误的选择将直接导致死亡。",
  "author": "Radiation Studio",
  "version": "3.0",
  "variables": {
    "has_blood_pouch": false,
    "has_copper_coin": false,
    "has_half_nail": false,
    "has_notebook": false,
    "has_bell": false,
    "has_red_pouch": false,
    "qte_skill": 0,
    "mental_state": 100,
    "correct_path": "",
    "passed_first_qte": false,
    "passed_bell_qte": false,
    "passed_coffin_qte": false,
    "passed_name_qte": false,
    "passed_account_qte": false,
    "passed_nail_qte": false,
    "coffin_counter": 0,
    "memory_check": 0,
    "survival_points": 3
  },
  "features": {
    "inventory": true,
    "map": true
  },
  "items": [
    { "id": "black_jade_ring", "name": "黑玉戒", "icon": "💍", "description": "爷爷生前从不离身的戒指。黑玉不亮，像一滴凝固的墨，靠近火光时会泛出一线暗红。" },
    { "id": "copper_coin", "name": "染血铜钱", "icon": "💰", "description": "蓑衣老人留下的铜钱，中间穿着红绳，边缘磨得发亮。抹上血后会微微发黑。" },
    { "id": "half_nail", "name": "半截棺钉", "icon": "📌", "description": "沈家神龛木匣里发现的半截棺钉，发黑发锈，像从棺材里硬拔出来的。" },
    { "id": "yellow_paper", "name": "三角黄纸", "icon": "📜", "description": "木匣里折成三角形的黄纸，一露面棺材里的东西就醒了。" },
    { "id": "red_pouch", "name": "红布包·鸡血", "icon": "🔴", "description": "厨房梁上挂着的红布袋，里面是一只小瓷瓶，瓶口用蜡封着，装着暗红色的液体。" },
    { "id": "zhen_guang_ling", "name": "镇棺铃", "icon": "🔔", "description": "爷爷留给孙子的铜铃。铜铃已经旧得发黑，铃口裂了一道缝。" },
    { "id": "notebook_fragment", "name": "残笔记", "icon": "📓", "description": "爷爷烧剩下的残页，焦黑卷边。写着：“南岭三十六坳，坳坳通阴。黑棺不可落地。见灯勿近，闻铃勿回。”" },
    { "id": "rong_amulet", "name": "红绳护身", "icon": "🧵", "description": "陆沉用指尖血抹过的红绳，缠在左腕上，能暂时压住棺名。" },
    { "id": "fu_guan_yin", "name": "扶棺印", "icon": "🖤", "description": "手腕上的黑纹，像一口小棺材。补名者的标记。" },
    { "id": "white_coffin_mirror", "name": "白棺镜", "icon": "🔮", "description": "无主家门口的白棺，棺底嵌着一面黑镜。" },
    { "id": "guan_zhang", "name": "棺账", "icon": "📜", "description": "比山还大的账册，记录着所有欠棺之名。" },
    { "id": "name_thread", "name": "名字线", "icon": "🧵", "description": "连接补名者与棺账的命线。" }
  ],
  "map": {
    "title": "南岭棺道·极难",
    "locations": [
      { "id": "shen_home", "name": "沈家堂屋", "description": "爷爷的棺材停在这里。生死抉择的起点。" },
      { "id": "tea_hill", "name": "废弃茶山", "description": "村后荒废多年的茶山。旧年间叫抬棺路。" },
      { "id": "tomb_road", "name": "棺道口", "description": "老林入口，歪斜石碑上刻着“棺道”二字。" },
      { "id": "old_huai_tree", "name": "老槐树空地", "description": "棺道入口前的空地。老槐树下摆着一口黑棺。" },
      { "id": "outer_road", "name": "棺道外道", "description": "山壁裂缝后的青砖甬道。两侧石壁嵌满小棺材。" },
      { "id": "three_forks", "name": "三岔路口", "description": "三条路：生路、死路、棺路。选错即死。" },
      { "id": "dead_road", "name": "死路", "description": "两侧墙壁缓缓合拢，头顶垂下白布条。" },
      { "id": "deng_temple", "name": "阴灯前", "description": "青铜古灯燃着幽蓝火焰。灯前站着沈江。" },
      { "id": "wu_zhu_jia", "name": "无主家", "description": "棺道尽头，阴灯后的石门。" },
      { "id": "stone_door", "name": "石门之外", "description": "无主家的入口。" },
      { "id": "white_coffin_room", "name": "白棺室", "description": "无主家入口处。一口白棺立于石阶尽头。" },
      { "id": "mirror_inside", "name": "镜中石道", "description": "穿过黑镜后的世界。脚下是账纸。" },
      { "id": "guan_zhang_hall", "name": "账册大殿", "description": "黑雾尽头，一本比山还高的账册矗立。" },
      { "id": "original_coffin", "name": "原棺之眼", "description": "无主家最深处。原棺像一道从死亡里照出的竖眼。" }
    ],
    "startingLocation": "shen_home"
  },
  "start": "start",
  "nodes": {
    "start": {
      "id": "start",
      "location": "shen_home",
      "text": "南岭连下了七天雨。\n\n爷爷死在第七天傍晚。他躺在堂屋正中的棺木里，身上盖着发黄的寿被，脸色青白，嘴角却像挂着一丝笑。\n\n下葬前一夜，雨更大了。堂屋里的白蜡烛忽明忽暗，纸钱灰在地上打旋。\n\n我跪得膝盖发麻，正要起身添灯油，忽然听见棺材里传来一声轻响——\n\n“咚。”\n\n【警告】这是9.5难度模式。错误的选择将直接导致死亡。QTE失败将导致死亡。你只有3次生存机会。",
      "choices": [
        { "text": "靠近棺材细听", "next": "listen_coffin" },
        { "text": "叫醒母亲和二叔", "next": "wake_family" },
        { "text": "假装没听见", "next": "death_ignore" }
      ]
    },
    "death_ignore": {
      "id": "death_ignore",
      "location": "shen_home",
      "text": "我告诉自己一定是听错了。雨声太大，竹叶噼啪作响，棺材里怎么可能有声音？\n\n可第二声紧跟着来了。\n\n“咚。”\n\n比第一声更重，更实。像有人在棺材内壁用指节敲门。\n\n我继续假装没听见。\n\n第三声。\n\n第四声。\n\n然后，棺盖猛地被推开。一只青黑色的手抓住了我的脖颈。\n\n“你不该假装没听见。”\n\n黑暗吞没了一切。\n\n【死亡】你选择了逃避，棺债找上了你。",
      "isEnd": true,
      "endType": "death",
      "endMessage": "死亡结局：逃避无法避免棺债。"
    },
    "wake_family": {
      "id": "wake_family",
      "location": "shen_home",
      "text": "我叫醒了母亲和二叔。母亲睡眼惺忪，二叔却像早就在等这一刻——他猛地睁开眼睛，死死盯向棺材。\n\n然后，棺材里又响了。\n\n“咚。咚。咚。”\n\n不急不慢，三声。像有人在里面用指节敲门。\n\n母亲跪在地上哭，说爷爷一辈子老实，从没害过人，求祖宗保佑。二叔却像疯了一样，抓起墙角的柴刀，狠狠劈向棺钉。",
      "choices": [
        { "text": "拦住二叔", "next": "stop_uncle" },
        { "text": "帮他撬棺", "next": "death_pry_coffin" }
      ]
    },
    "death_pry_coffin": {
      "id": "death_pry_coffin",
      "location": "shen_home",
      "text": "我帮二叔按住棺盖。柴刀落下，木屑飞溅，棺钉松了。\n\n二叔正要劈第三刀，棺盖突然自行弹开——\n\n里面涌出一股黑雾，裹着无数苍白的手。那些手抓住我们，将我们拖入棺中。\n\n“你们不该打开。”\n\n棺盖重重合上。\n\n【死亡】你打开了不该打开的棺材。",
      "isEnd": true,
      "endType": "death",
      "endMessage": "死亡结局：擅自开棺，被棺中邪祟拖入。"
    },
    "stop_uncle": {
      "id": "stop_uncle",
      "location": "shen_home",
      "text": "我冲过去抱住二叔的腰：“不能开！人已入殓，半夜开棺是犯忌！”\n\n二叔甩开我，喉咙里发出急促的“啊啊”声，脸涨得通红，拼命想说什么。\n\n可就在这时，棺材里的声音停了。\n\n门口传来了一个苍老的声音。\n\n“不能开。”",
      "choices": [
        { "text": "回头看向门口", "next": "old_man_arrives" }
      ]
    },
    "listen_coffin": {
      "id": "listen_coffin",
      "location": "shen_home",
      "text": "我屏住呼吸，耳朵贴近棺材。\n\n里面没有声音。\n\n可我刚要后退，棺材里突然传来一阵刺耳的抓挠声——\n\n不是敲。\n\n是抓。\n\n像有什么东西用指甲在棺材内壁拼命刮动。\n\n母亲尖叫一声，二叔抄起柴刀就冲了过来。\n\n就在这时，门口传来一个声音：“不能开。”",
      "choices": [
        { "text": "回头看向门口", "next": "old_man_arrives" }
      ]
    },
    "old_man_arrives": {
      "id": "old_man_arrives",
      "location": "shen_home",
      "text": "门口不知何时站着一个披蓑衣的老人。\n\n他身材干瘦，斗笠遮住大半张脸，只露出一截灰白胡子。雨水顺着蓑衣往下淌，滴在门槛上，却没有一点脚步声。\n\n他慢慢走进堂屋，身上带着一股潮湿的土腥味。从怀里摸出一枚铜钱，红绳穿着，边缘磨得发亮。\n\n二叔看见那枚铜钱，脸色大变，往后连退两步。\n\n老人看着他，叹了口气：“二十年了，你还是怕。”",
      "choices": [
        { "text": "问他是谁", "next": "ask_who" },
        { "text": "问他棺材里是什么", "next": "ask_coffin" }
      ]
    },
    "ask_who": {
      "id": "ask_who",
      "location": "shen_home",
      "text": "“你是谁？”我问。\n\n老人没有回答。他转头看向我，一只眼睛浑浊，一只眼睛清亮。清亮的那只盯着我时，我觉得自己像被什么东西从头到脚看穿了。\n\n“你就是沈老鬼的孙子？”\n\n我点了点头。\n\n他沉默片刻，低声道：“棺里不是你爹。”",
      "choices": [
        { "text": "“那里面是什么？”", "next": "ask_coffin" }
      ]
    },
    "ask_coffin": {
      "id": "ask_coffin",
      "location": "shen_home",
      "text": "“那里面是什么？”我听见自己的声音在发抖。\n\n老人把铜钱按在棺盖上。棺材里的抓挠声立刻停了。\n\n堂屋安静得只剩雨声。\n\n过了很久，他才说：“是一笔旧账。”\n\n话音刚落，棺盖猛地一震。四角白蜡烛同时熄灭。\n\n黑暗中，老人一把抓住我的手腕，力气大得像铁钳。\n\n“孩子，记住。今晚你看到的，不许告诉任何人。”\n\n“为什么？”\n\n“因为从今晚开始，沈家欠下的棺债，要轮到你来还了。”\n\n话音未落，堂屋深处传来“咔嘣”一声。\n\n棺材开了一条缝。\n\n一只青黑色的手，从缝里慢慢伸了出来。那只手的无名指上，戴着一枚黑玉戒指——\n\n那是爷爷生前从不离身的戒指。",
      "choices": [
        { "text": "盯着那只手", "next": "black_hand" },
        { "text": "后退", "next": "death_step_back" }
      ]
    },
    "death_step_back": {
      "id": "death_step_back",
      "location": "shen_home",
      "text": "我往后猛退一步，后背撞上供桌。碗盏叮当乱响，香灰洒了一地。\n\n可那只手没有停。它缓缓伸出，抓住了我的脚踝，将我拖向棺材。\n\n“你跑不掉的。”\n\n棺盖大开，黑雾涌出。\n\n【死亡】你选择了退缩，棺债追上了你。",
      "isEnd": true,
      "endType": "death",
      "endMessage": "死亡结局：面对棺债时退缩，被拖入棺中。"
    },
    "black_hand": {
      "id": "black_hand",
      "location": "shen_home",
      "text": "那只手伸出来的时候，我没有叫。\n\n不是不怕，是怕到了极点，喉咙像被一团湿泥堵住，半点声音都挤不出来。\n\n堂屋里漆黑一片，只有闪电掠过时才能照见那口棺材。\n\n棺盖开了一条窄缝，那只青黑色的手就搭在棺沿上。\n\n戒指戴在无名指上。黑玉不亮，像一滴凝固的墨。可我知道，靠近火光时，它里面会泛出一线暗红。",
      "choices": [
        { "text": "问老人这只手是谁的", "next": "ask_hand" },
        { "text": "看向二叔", "next": "look_uncle" }
      ]
    },
    "ask_hand": {
      "id": "ask_hand",
      "location": "shen_home",
      "text": "“这只手是谁的？”我声音发哑。\n\n老人没有回答。他盯着那只手，脸色前所未有的凝重。\n\n“它醒了。”他低声说。\n\n然后他转头冲我喊：“把鸡血拿来！厨房梁上挂着的红布袋！”\n\n我愣着没动。\n\n“快！”\n\n我这才反应过来，跌跌撞撞往厨房跑。",
      "choices": [
        { "text": "跑去厨房", "next": "get_blood" }
      ]
    },
    "look_uncle": {
      "id": "look_uncle",
      "location": "shen_home",
      "text": "我看向二叔。他死死盯着那只手，嘴唇抖得厉害，喉咙里发出像破风箱一样的声音。\n\n老人忽然低喝一声：“二哑，别看了！”\n\n二叔猛地回过神，一张脸已经惨白如纸。\n\n老人转头对我道：“去厨房，把梁上那只红布袋拿来——快！”",
      "choices": [
        { "text": "跑去厨房", "next": "get_blood" }
      ]
    },
    "get_blood": {
      "id": "get_blood",
      "location": "shen_home",
      "text": "我冲进厨房。\n\n厨房里冷得不像话。明明是夏初，灶台边却像进了腊月。\n\n梁上确实挂着一只红布袋。我踮脚取下来，里面是一只小瓷瓶，瓶口用蜡封着。\n\n我刚把瓷瓶握在手里，身后忽然响起一道声音——\n\n“阿舟。”\n\n那声音很轻，很哑。\n\n却是爷爷的声音。\n\n我整个人僵住了。",
      "choices": [
        { "text": "回头", "next": "death_grandpa_voice" },
        { "text": "不回头，冲出厨房", "next": "dont_look_back" }
      ]
    },
    "death_grandpa_voice": {
      "id": "death_grandpa_voice",
      "location": "shen_home",
      "text": "我转过身。\n\n厨房门外站着爷爷——可他的脸色是青的，眼睛全黑，没有眼白。\n\n“阿舟，别信他。”\n\n“阿舟，跟我走。”\n\n他伸出手，我不由自主地走向他——\n\n然后，他的手穿过我的胸膛。\n\n“你不该回头。”\n\n【死亡】你回头了，被棺影迷惑。",
      "isEnd": true,
      "endType": "death",
      "endMessage": "死亡结局：回头看了不该看的东西，被棺影吞噬。"
    },
    "dont_look_back": {
      "id": "dont_look_back",
      "location": "shen_home",
      "text": "我没有回头。\n\n爷爷生前说过：夜里听见死人叫名，第一声不能应，第二声不能回头，第三声若还听见，就要咬破舌尖往前跑。\n\n“阿舟。”\n\n第二声响起时，我攥紧瓷瓶，咬紧牙关。\n\n“阿舟。”\n\n第三声。\n\n我牙关一紧，狠狠咬破舌尖。疼得眼前一黑，血腥味在嘴里散开的瞬间，身后的声音戛然而止。",
      "choices": [
        { "text": "冲回堂屋", "next": "back_to_hall" }
      ]
    },
    "back_to_hall": {
      "id": "back_to_hall",
      "location": "shen_home",
      "text": "我冲回堂屋时，那只青黑色的手已经缩回了棺材。\n\n老人接过瓷瓶，咬开蜡封，把暗红色的液体泼在棺盖上。\n\n鸡血落到棺木表面，竟发出“滋滋”的轻响，像泼在烧红的铁上。\n\n棺材里随即传来一声闷吼——不像人，更像野兽被压在泥底，喉咙里挤出来的一口怨气。\n\n老人趁机用短刀挑起那半截棺钉，对准棺盖缝隙狠狠钉了下去。\n\n“砰！”第一下，棺材震动。\n\n“砰！”第二下，梁上灰尘落下。\n\n“砰！”第三下落下时，棺材终于安静了。",
      "actions": [
        { "type": "setVar", "name": "has_blood_pouch", "value": true },
        { "type": "setVar", "name": "has_half_nail", "value": true }
      ],
      "choices": [
        { "text": "问老人里面到底是什么", "next": "ask_truth" }
      ]
    },
    "ask_truth": {
      "id": "ask_truth",
      "location": "shen_home",
      "text": "“里面到底是什么？”我问。\n\n老人看了我一眼，没有立刻回答。他走到堂屋门口，摘下斗笠。\n\n我这才看清他的脸——左脸有一道很长的疤，从眉骨一直拖到下巴，像被什么尖锐的东西硬生生划开过。右耳后面有一块黑色刺青，是一个棺材形状，中间竖着三道细线。\n\n“我姓陆，叫陆沉。”他说，“你爷爷年轻时，和我一起走过棺道。”\n\n“棺道？”\n\n“活人走山路，死人走阴路。棺道，就是夹在两者中间的路。”",
      "choices": [
        { "text": "“爷爷还活着吗？”", "next": "is_grandpa_alive" },
        { "text": "“棺道在哪里？”", "next": "where_road" }
      ]
    },
    "is_grandpa_alive": {
      "id": "is_grandpa_alive",
      "location": "shen_home",
      "text": "“我爷爷……还活着吗？”\n\n陆沉沉默了很久。\n\n然后他说：“你爷爷没死。”\n\n我脑子里轰的一声。\n\n“那这口棺材里是谁？”\n\n“是替身。你爷爷真正的身子，被带回南岭了。”\n\n“谁带走的？”\n\n陆沉缓缓吐出两个字：\n\n“棺主。”",
      "choices": [
        { "text": "“我怎么才能找到他？”", "next": "find_grandpa" }
      ]
    },
    "find_grandpa": {
      "id": "find_grandpa",
      "location": "shen_home",
      "text": "“我怎么才能找到他？”\n\n陆沉看向屋外的雨。天边已经泛起一点灰白。\n\n“村后老林，有一条路叫棺道。你爷爷就在那里。”\n\n“棺道是什么？”\n\n“活人走山路，死人走阴路。棺道，就是夹在两者中间的路。”\n\n他话音刚落，棺材里忽然传来一个声音——\n\n“阿舟。”\n\n苍老、沙哑，却是爷爷的声音。\n\n这一次，声音不是从门外传来的。\n\n是从棺材里面。",
      "choices": [
        { "text": "“爷爷？”", "next": "death_call_grandpa" },
        { "text": "问陆沉怎么办", "next": "ask_road" }
      ]
    },
    "death_call_grandpa": {
      "id": "death_call_grandpa",
      "location": "shen_home",
      "text": "“爷爷？”我冲到棺材前。\n\n陆沉一把拉住我：“别应！”\n\n可已经晚了。我回应了那声呼唤。\n\n棺盖猛地推开，一股无形的力量将我吸入棺中。\n\n“你应了，就属于我了。”\n\n【死亡】你回应了棺中的呼唤，被棺主夺走了名字。",
      "isEnd": true,
      "endType": "death",
      "endMessage": "死亡结局：回应了棺中的呼唤，被夺走名字。"
    },
    "where_road": {
      "id": "where_road",
      "location": "shen_home",
      "text": "“棺道在哪里？”\n\n陆沉看向屋外的雨。天边已经泛起一点灰白。\n\n“村后老林。天亮前，我带你走一趟。”\n\n“这么急？”\n\n“因为天亮后，这口棺材就压不住了。”\n\n他话音刚落，棺材里忽然传来一个声音——\n\n“阿舟。”\n\n苍老、沙哑，却是爷爷的声音。",
      "choices": [
        { "text": "问陆沉怎么办", "next": "ask_road" }
      ]
    },
    "ask_road": {
      "id": "ask_road",
      "location": "shen_home",
      "text": "“怎么办？”我问陆沉。\n\n“带上你爷爷留给你的东西，跟我走。”\n\n我回头看了一眼堂屋。母亲坐在地上，抱着昏迷的二叔，眼神已经哭空了。那口棺材静静摆在堂屋中央，棺盖上压着铜钱和半截棺钉。\n\n我找出爷爷留下那本烧过一半的残笔记，塞进怀里。又解下腰间那枚铜铃——那是母亲刚才塞给我的。\n\n陆沉看见铜铃，眼神微变：“镇棺铃。你爷爷留给你的？”\n\n“嗯。”\n\n“有时候能救命，有时候会要命。”",
      "actions": [
        { "type": "setVar", "name": "has_notebook", "value": true },
        { "type": "setVar", "name": "has_bell", "value": true }
      ],
      "choices": [
        { "text": "跟着陆沉离开", "next": "leave_home" }
      ]
    },
    "leave_home": {
      "id": "leave_home",
      "location": "tea_hill",
      "text": "我们从后门离开沈家，沿着村后的泥路往山里走。雨水打在竹叶上，噼里啪啦像无数细小的脚步声。\n\n天边已有微光，可山里仍旧黑沉沉的，像一张张开的嘴。\n\n陆沉走在前面。他脚下极稳，泥路上几乎不留脚印。",
      "choices": [
        { "text": "继续走", "next": "tea_hill_deep" }
      ]
    },
    "tea_hill_deep": {
      "id": "tea_hill_deep",
      "location": "tea_hill",
      "text": "山路越走越窄。村后的竹林尽头，是一片荒废多年的茶山。茶树早没人打理，枝叶疯长，路被野草掩得只剩一条若有若无的黑线。\n\n陆沉说，这条路以前叫抬棺路。旧年间，南岭各村有人横死、客死、淹死，不能入祖坟，就从这条路抬进山里。\n\n走到茶山尽头时，天终于亮了。\n\n可山里没有鸟叫。雨也停了。\n\n四周静得不正常。",
      "choices": [
        { "text": "看向前方", "next": "tomb_road_enter" }
      ]
    },
    "tomb_road_enter": {
      "id": "tomb_road_enter",
      "location": "tomb_road",
      "text": "前方是一片老林。树木高大，枝叶交错，黑压压遮住天光。\n\n林子入口处立着一块歪斜的石碑，碑面长满青苔，只隐约能看见两个字——\n\n棺道。\n\n我刚想走近看清，腰间的铜铃忽然轻轻响了一声。\n\n叮。\n\n声音很轻，却在死寂的山林里传得很远。\n\n陆沉脸色骤变。\n\n下一刻，老林深处传来一阵回应——\n\n叮。叮。叮。\n\n一声接一声。像有很多铃铛藏在林子里，同时醒了过来。\n\n陆沉反手抽出短刀：“从现在起，不管听见什么，都不要回头。”",
      "choices": [
        { "text": "踏入棺道", "next": "enter_road" },
        { "text": "犹豫", "next": "death_hesitate" }
      ]
    },
    "death_hesitate": {
      "id": "death_hesitate",
      "location": "tomb_road",
      "text": "我站在石碑前，双腿像灌了铅。\n\n身后是沈家，身前是棺道。\n\n陆沉没有催我。他只是站在老林入口，等着我自己做决定。\n\n我犹豫了太久。\n\n就在这时，身后传来脚步声。不是陆沉的。\n\n我回头——\n\n一片黑雾涌来，将我吞没。\n\n“你犹豫了，所以你死了。”\n\n【死亡】你在棺道入口犹豫太久，被身后的东西拖走了。",
      "isEnd": true,
      "endType": "death",
      "endMessage": "死亡结局：犹豫太久，被棺道的东西拖入。"
    },
    "enter_road": {
      "id": "enter_road",
      "location": "tomb_road",
      "text": "踏进老林的那一刻，天光彻底暗了下来。\n\n明明外面是清晨，林子里却像还在半夜。树干上缠满藤蔓，藤蔓之间挂着褪色的红布条。\n\n走了没多久，我就发现不对劲——\n\n身后的脚步声变多了。\n\n一开始，只有我和陆沉两个人的脚步。\n\n后来变成了三个。\n\n再后来，像有一整队人跟在我们后面，脚步整齐、沉重，踩得泥水啪嗒作响。\n\n腰间的铜铃又响了。\n\n叮。\n\n这一次，铃声响起后，身后的队伍也停了。\n\n然后，一个熟悉的声音从我背后传来——\n\n“阿舟，扶爷爷一把。”",
      "choices": [
        { "text": "不回头，继续走", "next": "dont_look_road" },
        { "text": "回头", "next": "death_look_back" }
      ]
    },
    "death_look_back": {
      "id": "death_look_back",
      "location": "tomb_road",
      "text": "我忍不住回了头。\n\n身后什么都没有。没有队伍，没有抬棺人，只有一条被浓雾吞没的路。\n\n可就在我转回头的一瞬间，陆沉脸色变了——\n\n“你脸上有东西。”\n\n我抬手一摸，指尖触到一片冰凉。那是一张黄纸，上面写着三个字：\n\n沈长河。\n\n我的名字。\n\n然后，那张纸燃烧起来，我的脸也跟着燃烧——\n\n“你回头了，你就死了。”\n\n【死亡】你回头了，阴名贴附在了你的脸上。",
      "isEnd": true,
      "endType": "death",
      "endMessage": "死亡结局：回头看了不该看的东西，阴名贴将你标记。"
    },
    "dont_look_road": {
      "id": "dont_look_road",
      "location": "old_huai_tree",
      "text": "我咬牙不回头，跟着陆沉一直走到林子深处。\n\n前方忽然出现一片空地。空地中央有一棵巨大的老槐树，树干粗得三个人都抱不过来。\n\n槐树下面，摆着一口棺材。通体漆黑，没有棺架，就这么直接压在泥地上。\n\n棺材前跪着一个人。\n\n那人穿灰色寿衣，背对着我们，头低垂着，像在给棺材磕头。\n\n我正想问那是谁，陆沉猛地捂住我的嘴。\n\n“别出声。”\n\n我顺着他的目光看过去——\n\n跪着的那个人，右手无名指上戴着一枚黑玉戒。\n\n和爷爷那枚一模一样。",
      "choices": [
        { "text": "盯着他", "next": "shadow_grandpa" },
        { "text": "后退", "next": "death_step_back_tree" }
      ]
    },
    "death_step_back_tree": {
      "id": "death_step_back_tree",
      "location": "old_huai_tree",
      "text": "我往后退了一步，踩到一根枯枝。\n\n“啪。”\n\n那个和爷爷长得一模一样的东西，耳朵微微动了一下。\n\n然后他站了起来。动作很慢，膝盖和腰背都不太会弯，骨头发出细密的脆响。\n\n他朝我们走来。\n\n“阿舟，别听他的。爷爷没死，爷爷只是被他们困住了。”\n\n我被他的声音迷惑，停下了脚步——\n\n他伸出手，抓住了我的肩膀。\n\n“跟爷爷走吧。”\n\n黑雾从他身体里涌出，将我包围。\n\n【死亡】你被棺影迷惑，跟着它走了。",
      "isEnd": true,
      "endType": "death",
      "endMessage": "死亡结局：被棺影的声音迷惑，陷入幻境。"
    },
    "shadow_grandpa": {
      "id": "shadow_grandpa",
      "location": "old_huai_tree",
      "text": "那个“爷爷”已经走到老槐树边，离我们只剩十来步。\n\n陆沉抬手将三枚铜钱甩了出去。\n\n铜钱打在他胸口，猛地冒起三道黑烟。\n\n那张爷爷的脸像水面倒影一样晃动起来——有那么一刹那，我看见那张脸下面藏着另一张脸。\n\n没有五官。\n\n只有一层湿漉漉的黑皮。\n\n“走！”陆沉拽着我绕过老槐树，冲向后面的山壁。\n\n山壁上有一道裂缝，被藤蔓挡住。可我们还没跑到，那口黑棺突然横着滑了过来。\n\n棺身贴着泥地，发出令人牙酸的摩擦声，硬生生挡住了裂缝。\n\n身后，“爷爷”又站了起来。",
      "choices": [
        { "text": "摇镇棺铃", "next": "ring_bell" },
        { "text": "冲过去推开黑棺", "next": "push_coffin" }
      ]
    },
    "push_coffin": {
      "id": "push_coffin",
      "location": "old_huai_tree",
      "text": "我冲向黑棺，双手抵住棺身。\n\n棺木冰冷刺骨，像一块千年寒铁。但我必须推开它！裂缝就在后面，不推开黑棺我们就死定了！\n\n身后传来那个“爷爷”的笑声。\n\n“阿舟，你推不动的。那是你爷爷背了二十年的债。”\n\n我咬紧牙关，用尽全身力气往前推——！",
      "qte": {
        "type": "click",
        "title": "推开黑棺",
        "description": "【极限挑战】棺木重逾千斤！必须在3秒内点击30次才能推开！失败即死！",
        "buttonText": "用力推开",
        "requiredClicks": 30,
        "timeLimit": 3000,
        "success": "push_success",
        "fail": "death_push_fail"
      }
    },
    "death_push_fail": {
      "id": "death_push_fail",
      "location": "old_huai_tree",
      "text": "我用尽了力气，黑棺却纹丝不动！\n\n身后那个“爷爷”已经走到了我面前，他那双全黑的眼睛死死盯着我。\n\n“阿舟，放弃吧……”\n\n他伸出手，抓住了我的脖颈。\n\n“跟爷爷走吧……”\n\n【死亡】你没能推开黑棺，被棺影抓住了。",
      "isEnd": true,
      "endType": "death",
      "endMessage": "死亡结局：QTE失败，未能推开黑棺。"
    },
    "push_success": {
      "id": "push_success",
      "location": "old_huai_tree",
      "text": "我咬紧牙关，一次又一次地猛推——！\n\n黑棺终于动了！它缓缓向旁边挪开，山壁上的裂缝露了出来！\n\n“进去！”陆沉抓住我冲进裂缝。\n\n身后传来那个“爷爷”愤怒的嘶吼——但我们已经冲了进去。",
      "actions": [
        { "type": "setVar", "name": "passed_coffin_qte", "value": true },
        { "type": "addVar", "name": "qte_skill", "value": 10 }
      ],
      "choices": [
        { "text": "冲进裂缝深处", "next": "outer_road" }
      ]
    },
    "ring_bell": {
      "id": "ring_bell",
      "name": "ring_bell",
      "location": "old_huai_tree",
      "text": "我伸手解下腰间的镇棺铃。\n\n铜铃握在掌心，裂口冰凉，却沉得像一块铁。\n\n陆沉说：“对着棺头摇三下。只能三下。快！”\n\n身后那个“爷爷”已经逼近了——我必须按顺序摇响铃铛！",
      "qte": {
        "type": "sequence",
        "title": "摇响镇棺铃",
        "description": "【极限挑战】按顺序按Z-X-Z！必须在2.5秒内完成！错误或超时即死！",
        "keys": ["Z", "X", "Z"],
        "timeLimit": 2500,
        "success": "ring_success",
        "fail": "death_ring_fail"
      }
    },
    "death_ring_fail": {
      "id": "death_ring_fail",
      "location": "old_huai_tree",
      "text": "我慌乱中摇错了顺序——铜铃发出刺耳的颤音！\n\n黑棺不仅没有后退，反而猛地向前滑了一步！\n\n身后那个“爷爷”发出一阵诡异的笑声：“阿舟，你的心乱了……”\n\n他伸出手，穿透了我的胸膛。\n\n“跟爷爷走吧……”\n\n【死亡】你摇错了铃铛的顺序，镇棺铃反噬了你。",
      "isEnd": true,
      "endType": "death",
      "endMessage": "死亡结局：QTE失败，镇棺铃反噬。"
    },
    "ring_success": {
      "id": "ring_success",
      "location": "old_huai_tree",
      "text": "叮——！\n\n第一声响起时，林子里的风停了。黑棺微微一震。\n\n叮——！\n\n第二声响起时，老槐树上的红布条全部竖了起来，像一条条被吊死的舌头。黑棺往后退了半尺。\n\n身后传来母亲的哭喊声：“阿舟，救我！”\n\n我咬紧牙关，继续摇铃——\n\n叮——！\n\n铜铃裂口处渗出一丝血。不是我的血，是铃里流出来的血。\n\n黑棺剧烈震动，棺身底下传来一阵沉闷的喘息声。\n\n然后它缓缓往旁边挪开。\n\n山壁上的裂缝露了出来。",
      "actions": [
        { "type": "setVar", "name": "passed_bell_qte", "value": true },
        { "type": "addVar", "name": "qte_skill", "value": 10 }
      ],
      "choices": [
        { "text": "冲进裂缝深处", "next": "outer_road" }
      ]
    },
    "outer_road": {
      "id": "outer_road",
      "location": "outer_road",
      "text": "我们在狭窄的山缝里穿行。身后的笑声被石壁一点一点隔开，却没有消失。\n\n走了约莫一盏茶时间，前面终于宽敞了一些。\n\n陆沉点燃一根火折子。\n\n微弱的火光亮起，我才看清我们所在的地方——\n\n这里不是天然山洞。\n\n脚下铺着青砖，两侧石壁上雕着一排排小棺材。每一口只有巴掌大，密密麻麻嵌在墙里，像无数闭着的眼睛。\n\n“这就是棺道？”\n\n陆沉点头：“只是外道。”",
      "choices": [
        { "text": "低头躲避", "next": "look_coffin_names" },
        { "text": "盯着棺材", "next": "death_stare_coffin" }
      ]
    },
    "death_stare_coffin": {
      "id": "death_stare_coffin",
      "location": "outer_road",
      "text": "我盯着那些小棺材看。\n\n忽然，其中一口棺材的盖子动了一下。\n\n然后是第二口。第三口。\n\n所有小棺材的盖子都开始打开，露出里面漆黑的空洞。\n\n从空洞里伸出无数苍白的手指，抓住了我的脚踝。\n\n“你看了不该看的东西。”\n\n【死亡】你盯着棺材看太久，被里面的东西抓住了。",
      "isEnd": true,
      "endType": "death",
      "endMessage": "死亡结局：盯着棺材看太久，被棺中邪祟抓住。"
    },
    "look_coffin_names": {
      "id": "look_coffin_names",
      "location": "outer_road",
      "text": "黑棺从洞口升出来后，并没有停下。它被那八只苍白的手托着，从我们面前缓缓经过。\n\n棺身上刻着密密麻麻的名字。\n\n我本不该看。\n\n可火光一晃，我看见了三个字——\n\n沈长河。\n\n爷爷的名字。刻在棺身最末端。\n\n而在沈长河下面，还有一个刚刚刻上去的新名字——\n\n沈舟。\n\n我全身血液都冷了。",
      "choices": [
        { "text": "问陆沉怎么办", "next": "name_on_coffin" }
      ]
    },
    "name_on_coffin": {
      "id": "name_on_coffin",
      "location": "outer_road",
      "text": "“我名字在上面。”我听见自己的声音在发抖。\n\n陆沉脸色难看：“棺道认名。活人看见自己的名字上棺，等棺落地，就算被点了阴册。”\n\n“怎么救？”\n\n“替名。”他咬破指尖，在红绳上抹了一道血，绕住我的左腕。\n\n黑棺上的“沈舟”两个字微微晃了一下。\n\n可下一秒，棺材里传来一声轻笑——\n\n“陆沉，二十年了，你还只会这点把戏。”\n\n陆沉整个人僵住了。\n\n“棺主。”",
      "choices": [
        { "text": "问棺主是谁", "next": "ask_owner" },
        { "text": "看铜铃上的字", "next": "look_bell_writing" }
      ]
    },
    "ask_owner": {
      "id": "ask_owner",
      "location": "outer_road",
      "text": "“棺主是什么？”\n\n陆沉没有回答。可棺材里的声音替他说了——\n\n“沈舟，你不是想找你爷爷吗？他就在下面。只要你替这口棺走完一程，我就让你见他。”\n\n我肩膀猛地一沉。\n\n不是错觉。\n\n真有什么东西压在我肩上——起初像一块湿布，可很快越来越沉，沉得我膝盖发软。",
      "choices": [
        { "text": "看铜铃上的字", "next": "look_bell_writing" },
        { "text": "咬牙硬撑", "next": "death_bear_weight" }
      ]
    },
    "death_bear_weight": {
      "id": "death_bear_weight",
      "location": "outer_road",
      "text": "我咬紧牙关硬撑。那股重量压在骨头上、魂魄上、名字上——\n\n我耳边甚至听见了木头摩擦肩骨的声音。\n\n吱呀。吱呀。\n\n像真有一根无形的棺杠压在我身上。\n\n陆沉把红绳缠到棺身上用力一拉——可只晃了一下，便重新稳住。\n\n“刻得太深了。”陆沉脸色铁青。\n\n我撑不住了，跪倒在地。\n\n黑棺缓缓落下，压在了我的身上。\n\n“你不够格。”\n\n【死亡】你没有找到正确的方法，被棺名压垮了。",
      "isEnd": true,
      "endType": "death",
      "endMessage": "死亡结局：没能找到解名的方法，被棺名压垮。"
    },
    "look_bell_writing": {
      "id": "look_bell_writing",
      "location": "outer_road",
      "text": "腰间镇棺铃忽然动了一下。没有响，只是微微发热。\n\n我低头看去，铜铃裂口处原本渗出的血已经凝住，凝成一道细小的红线，顺着铃身慢慢浮现出一行极小的字。\n\n陆沉一眼扫过，脸色微变：“这是沈长河留下的铃文。”\n\n“写的什么？”\n\n“活人不上棺，死人不留名。”\n\n我忽然明白了。我的名字刻在棺上，是要把我当死人收进阴册。既然“死人不留名”，那我的名字就不能留在棺上。\n\n我举起短刀，对准其中一口小棺材上的名字，狠狠划了下去——\n\n周满仓。\n\n刀尖落下的一瞬间，墙里的小棺材猛地震动起来，里面传来指甲抓木的声音。",
      "actions": [
        { "type": "setVar", "name": "passed_name_qte", "value": true }
      ],
      "choices": [
        { "text": "跟着陆沉跑", "next": "run_to_forks" }
      ]
    },
    "run_to_forks": {
      "id": "run_to_forks",
      "location": "three_forks",
      "text": "我们在狭窄的棺道里狂奔。身后白气贴地滑行，速度极快，像无数死人从墙壁里爬出来追我们。\n\n跑出十几丈后，前方忽然出现三条岔路。\n\n每条岔路口都立着一块石碑——\n\n左边：生路。入者不生。\n\n中间：死路。入者不死。\n\n右边：棺路。入者无名。\n\n我喘得胸口发疼：“走哪条？”\n\n陆沉没有立刻回答。他盯着三块石牌，脸色阴沉得像要滴出水。",
      "choices": [
        { "text": "走生路", "next": "death_wrong_path_1" },
        { "text": "走死路", "next": "dead_road" },
        { "text": "走棺路", "next": "death_wrong_path_2" }
      ]
    },
    "death_wrong_path_1": {
      "id": "death_wrong_path_1",
      "location": "three_forks",
      "text": "我选择了左边的生路。\n\n“入者不生”——我以为这是反话。\n\n可踏入那条路的瞬间，两侧墙壁开始合拢。\n\n白布条从天而降，缠住了我的脖颈。\n\n“你选错了。生路是死路。”\n\n【死亡】你选错了路，生路才是真正的死路。",
      "isEnd": true,
      "endType": "death",
      "endMessage": "死亡结局：选错了路，生路是陷阱。"
    },
    "death_wrong_path_2": {
      "id": "death_wrong_path_2",
      "location": "three_forks",
      "text": "我选择了右边的棺路。\n\n“入者无名”——我以为这意味着自由。\n\n可踏入那条路的瞬间，我感觉自己的名字正在被剥离。\n\n“沈舟……沈……”\n\n我的意识开始模糊，身体变得透明。\n\n“你入了棺路，就不再是你了。”\n\n【死亡】你选错了路，棺路将你吞噬。",
      "isEnd": true,
      "endType": "death",
      "endMessage": "死亡结局：选错了路，棺路将你无名化。"
    },
    "dead_road": {
      "id": "dead_road",
      "location": "dead_road",
      "text": "我们刚冲进去，身后的白气便猛地停在路口——那些模糊的人脸在岔道外徘徊，却不敢进来。\n\n可还没等我松口气，我忽然发现前面的路在变窄。\n\n两侧墙壁正在缓缓向中间合拢。\n\n“跑！”\n\n我们在不断合拢的死路里拼命往前冲。头顶垂下许多白布条，上面写满黑字——全是人的生辰八字。\n\n我脚下突然踩空，整个人往前扑倒。\n\n手掌按到一块松动的青砖——\n\n“咔。”\n\n机关声响起。\n\n两侧墙壁停住了。\n\n可前方传来一阵锁链拖动的声音。黑暗里，有什么东西被慢慢放了下来。\n\n陆沉举起火折子。\n\n火光照亮前方时，我看见一排棺材从头顶垂下——\n\n一共七口。\n\n每一口棺材下面都吊着一根铁链。铁链末端，拴着一具尸体。\n\n最中间那具尸体，背对着我们。右手无名指上，戴着一枚黑玉戒。",
      "choices": [
        { "text": "“爷爷！”", "next": "grandpa_hanging" }
      ]
    },
    "grandpa_hanging": {
      "id": "grandpa_hanging",
      "location": "dead_road",
      "text": "“爷爷！”我冲过去。\n\n陆沉死死拉住我：“别过去！”\n\n“那是我爷爷！”\n\n“我知道。可他现在的状态，不一定是活人。”\n\n我愣在原地。\n\n爷爷没有回头。他只是低低叹了一声。\n\n“阿舟，你不该来。”\n\n陆沉握紧短刀：“沈长河，你早知道我会带他进来？”\n\n“不是我知道——是棺道知道。”",
      "choices": [
        { "text": "“空棺？”", "next": "empty_coffin" },
        { "text": "“那原棺呢？”", "next": "where_original" }
      ]
    },
    "empty_coffin": {
      "id": "empty_coffin",
      "location": "dead_road",
      "text": "“空棺？”陆沉的声音冷得像冰。\n\n“空棺。”爷爷一字一句道，“没有尸，没有骨，没有陪葬。可有名字——我的名字。”\n\n“你们十二个人进南岭，是被一封信引去的。那封信没有署名，只写着一句话——南岭原棺现，沈家债可平。”\n\n“你们找到了那口棺？”\n\n“找到了。一口倒悬黑棺，吊在墓室最高处，棺口朝下。那一晚，棺里有人喊我的名字——一声接一声。”",
      "choices": [
        { "text": "“怎么救你和大伯？”", "next": "how_to_save" }
      ]
    },
    "where_original": {
      "id": "where_original",
      "location": "dead_road",
      "text": "“原棺在哪里？”\n\n“在内道尽头的无主家里。要找原棺，必须过三道关——死路七棺、阴灯照名、无主家开门。”\n\n我死死记住。\n\n“你怎么办？”我问爷爷。\n\n他看着我，露出一点很浅的笑——那笑终于像回了从前。\n\n“爷爷老了，走不动了。”\n\n“七棺吊尸，不是吊住我，是吊住我的名。我的名若离开这里，你的名就会补上来。”",
      "choices": [
        { "text": "“怎么救你和大伯？”", "next": "how_to_save" }
      ]
    },
    "how_to_save": {
      "id": "how_to_save",
      "location": "dead_road",
      "text": "“怎么救你和大伯？”\n\n爷爷没有回答。他只说：“要找原棺，必须过三道关。死路七棺、阴灯照名、无主家开门——记住，见灯勿近，闻铃勿回，棺落不可扶。”\n\n“阿舟，爷爷老了，走不动了。”\n\n最左边那口棺材裂开了。\n\n陆沉猛地拉住我：“走！”\n\n爷爷厉声道：“走！”\n\n我最后看见的，是他背对着我，像小时候每一次送我出门那样，摆了摆手。\n\n“别回头。”",
      "choices": [
        { "text": "继续跑", "next": "deng_temple" }
      ]
    },
    "deng_temple": {
      "id": "deng_temple",
      "location": "deng_temple",
      "text": "我们冲过死路尽头，被陆沉拽进了一条更深的石阶。\n\n石阶尽头亮着一点幽蓝的火——像一只睁开的眼睛。\n\n陆沉停下脚步。\n\n我顺着他目光看去——石阶下方，有一盏青铜古灯。\n\n灯前站着一个人。\n\n身形高瘦，肩上扛着一根黑色棺杠，背对着我们。\n\n他听见脚步声，慢慢转过头来。\n\n那张脸和父亲有七分相似，却更冷，也更瘦。\n\n“你就是沈舟？”\n\n陆沉低声道：“他是你大伯，沈江。”",
      "choices": [
        { "text": "“大伯？”", "next": "meet_jiang" }
      ]
    },
    "meet_jiang": {
      "id": "meet_jiang",
      "location": "deng_temple",
      "text": "沈江看着我，肩上的棺杠渗出血来。\n\n“你爹当年求我留下。”他的声音很淡，“他说沈家总得有人回去传香火。我是长子，所以我留下了。”\n\n“二十年来，我一直在替沈家抬棺。”\n\n我喉咙发紧：“我……能做什么？”\n\n“你已经在做了。”他看向身后的黑暗，“你过了死路，到了阴灯前。无主家就在灯后面——但你得过第三关。”\n\n“阴灯照名。”\n\n“活人照灯，灯灭人亡。所以不能让它照出活人名——得照棺名。”",
      "choices": [
        { "text": "补位抬棺", "next": "lift_coffin" }
      ]
    },
    "lift_coffin": {
      "id": "lift_coffin",
      "location": "deng_temple",
      "text": "我走到沈江身边，伸手抓住那根黑色棺杠。\n\n冰冷刺骨的触感瞬间传遍全身。\n\n“记住，九步。一步都不能错。一步都不能停。”\n\n沈江的声音从头顶传来：“开始！”\n\n我深吸一口气，踏上第一步——\n\n青铜灯的火焰猛地一跳，幽蓝色的光芒扫过我的脸！\n\n我咬紧牙关，继续往前走——！",
      "qte": {
        "type": "click",
        "title": "抬棺过灯",
        "description": "【极限挑战】阴灯正在照你的名字！必须在4秒内点击25次才能走完九步！失败即被照名！",
        "buttonText": "快步前行",
        "requiredClicks": 25,
        "timeLimit": 4000,
        "success": "lift_success",
        "fail": "death_lift_fail"
      }
    },
    "death_lift_fail": {
      "id": "death_lift_fail",
      "location": "deng_temple",
      "text": "我走得太慢了——\n\n青铜灯的光芒扫过我的脸，我感觉自己的名字正在被从身体里抽离。\n\n“沈舟……”\n\n我的意识开始模糊。\n\n“你太慢了。”\n\n青铜灯的火焰暴涨，将我吞噬。\n\n【死亡】你走得太慢，被阴灯照出了名字。",
      "isEnd": true,
      "endType": "death",
      "endMessage": "死亡结局：QTE失败，被阴灯照名。"
    },
    "lift_success": {
      "id": "lift_success",
      "location": "deng_temple",
      "text": "我咬紧牙关，一步一步往前冲——！\n\n九步！终于走完了九步！\n\n青铜灯的火焰在我身后熄灭，化作一缕青烟。\n\n沈江松了一口气：“你过了第三关。”\n\n他指向身后的石门：“无主家就在里面。但进去之后，就没有回头路了。”",
      "actions": [
        { "type": "addVar", "name": "qte_skill", "value": 10 }
      ],
      "choices": [
        { "text": "踏入石门", "next": "stone_door" }
      ]
    },
    "stone_door": {
      "id": "stone_door",
      "location": "stone_door",
      "text": "石门裂开的那一瞬间，我听见的不是风声。\n\n是“呼吸”。\n\n像一座埋在山体深处的巨大活物，在沉睡多年后，缓缓睁开了口。\n\n青铜灯在门前晃了一下，火焰突然缩成豆点。所有脚步声、呼吸声、衣料摩擦声，全都被压进石壁深处。\n\n只剩下门后那片黑暗在动。\n\n沈江站在我左侧，肩上的棺杠已经重新扣紧。陆沉在右侧，短刀没有收回。\n\n我站在中间。\n\n陆沉低声说：“从现在开始，别在心里想任何名字。”",
      "choices": [
        { "text": "踏入门缝", "next": "enter_door" },
        { "text": "问沈江无主家是什么", "next": "death_ask_wuzhu" }
      ]
    },
    "death_ask_wuzhu": {
      "id": "death_ask_wuzhu",
      "location": "stone_door",
      "text": "“无主家到底是什么？”我问沈江。\n\n他没有回头，声音很沉：“是棺道的心脏。所有欠棺的名字，最终都会流到这里。”\n\n就在这时，门内的黑暗像是回应这句话，微微波动了一下。\n\n下一秒，一个声音从里面传出来——很轻，像贴着骨头说的：\n\n“沈舟，你在想爷爷。”\n\n我后背瞬间发凉。\n\n黑暗伸出一只手，抓住了我的脚踝。\n\n“你不该想名字。”\n\n【死亡】你在无主家门前想了名字，被棺主抓住了。",
      "isEnd": true,
      "endType": "death",
      "endMessage": "死亡结局：在无主家门前想了名字，被棺主抓住。"
    },
    "enter_door": {
      "id": "enter_door",
      "location": "white_coffin_room",
      "text": "我们踏进门缝。\n\n脚落地的一瞬间，我感觉整个人像踩进了一口沉睡的深井。\n\n声音消失。光也消失。\n\n青铜灯的火被隔绝在外，连最后一点幽蓝都被黑暗吞掉。\n\n然后，我听见了第二个声音——不是棺主。\n\n是很多人。低声交谈。\n\n像在很远的地方开会，又像在我耳朵里。\n\n“来了一个新的名字。”\n\n“沈家的。”\n\n“可以补位。”",
      "choices": [
        { "text": "走近白棺", "next": "white_coffin_mirror" },
        { "text": "观察白棺上的痕迹", "next": "observe_coffin" }
      ]
    },
    "observe_coffin": {
      "id": "observe_coffin",
      "location": "white_coffin_room",
      "text": "我仔细看那口白棺。\n\n棺身上没有刻字，没有花纹，连一条划痕都没有。可它的表面泛着一层极淡的油光——像被无数双手摸过。\n\n沈江说：“每一代补名者，都会摸过这口棺。”\n\n“然后呢？”\n\n“然后他们就不想摸第二次了。”\n\n我还没来得及问为什么，棺盖忽然“咔”的一声——自己滑开了一道缝。",
      "choices": [
        { "text": "看向棺内", "next": "white_coffin_mirror" }
      ]
    },
    "white_coffin_mirror": {
      "id": "white_coffin_mirror",
      "location": "white_coffin_room",
      "text": "棺盖滑开的那一刻，我看见里面什么都没有。\n\n只有一面镜子。\n\n一面竖在棺底的黑镜。\n\n镜面映出我们三个人的影子。\n\n可其中一个影子，没有动。\n\n沈江皱眉：“不对。”\n\n陆沉已经举刀：“退！”\n\n可已经晚了。\n\n镜子里的“我”，慢慢抬起头。它看着我，嘴角一点点裂开。\n\n然后，它替我说了一句话——\n\n“我知道你在找什么。”",
      "choices": [
        { "text": "问镜中影子是谁", "next": "who_are_you" },
        { "text": "后退", "next": "death_step_back_mirror" },
        { "text": "伸手触碰镜面", "next": "touch_mirror" }
      ]
    },
    "death_step_back_mirror": {
      "id": "death_step_back_mirror",
      "location": "white_coffin_room",
      "text": "我往后退了一步。\n\n可那面镜子像认定了我——镜面忽然裂开一条细缝，一只手从里面伸了出来。\n\n干净、苍白，指节修长。\n\n无名指上戴着一枚黑玉戒。\n\n那只手抓住了我的影子，用力一拽——我整个人猛地向前一沉，像被什么东西从身体里抽走了一半。\n\n“你不该后退。”\n\n我被拖入镜中，永远消失了。\n\n【死亡】你在镜面前后退，被镜中邪祟拖入。",
      "isEnd": true,
      "endType": "death",
      "endMessage": "死亡结局：在镜面前后退，被镜中邪祟拖入。"
    },
    "who_are_you": {
      "id": "who_are_you",
      "location": "white_coffin_room",
      "text": "“你到底是谁？”我对着镜子问。\n\n镜中的“我”笑了一下。\n\n“我已经回答你了。”\n\n“我是上一任补名者。”\n\n“你未来的某一种结局。”\n\n我脑子一片混乱。\n\n沈江忽然一步踏前，棺杠横在镜前：“别让它说完。”\n\n陆沉低吼：“它已经开始写你了！”",
      "choices": [
        { "text": "触碰镜面", "next": "touch_mirror" }
      ]
    },
    "touch_mirror": {
      "id": "touch_mirror",
      "location": "white_coffin_room",
      "text": "我伸出手，指尖触到镜面。\n\n镜面像水面一样泛起波纹。那一瞬间，镜中的“我”贴近了，隔着玻璃与我对视。\n\n“你终于来了。”它说。\n\n“我已经等了你二十年。”\n\n它抬手，轻轻敲了一下镜子。\n\n整面黑镜瞬间碎裂——但没有碎片飞溅，所有碎块都向内聚拢，形成一条通往深处的路。",
      "choices": [
        { "text": "看向前方的路", "next": "mirror_inside" }
      ]
    },
    "mirror_inside": {
      "id": "mirror_inside",
      "location": "mirror_inside",
      "text": "我不是被拖进去的。\n\n更准确地说，是“被替换进去的”。\n\n当那只黑玉戒的手抓住我的影子时，我感觉身体像被从中间轻轻撕开——一半留在现实，一半跌进镜面。\n\n再睁眼时，我站在一条石道上。\n\n石道两侧没有墙，只有无尽的黑雾。雾里漂浮着无数半透明的字，像纸灰，又像被烧毁的族谱残页。\n\n我低头。\n\n脚下不是路——是一页巨大的“账纸”。\n\n上面密密麻麻写着名字。",
      "choices": [
        { "text": "往前走", "next": "walk_forward" },
        { "text": "查看脚下账纸上的名字", "next": "read_account" }
      ]
    },
    "read_account": {
      "id": "read_account",
      "location": "mirror_inside",
      "text": "我蹲下，仔细看脚下那些名字。\n\n它们像活物一样微微起伏。有的名字已经发黑，有的还在泛红，像刚写上去不久。\n\n我看到了周满仓——他已经被划掉了。\n\n看到李三娘——她的名字旁边有一行小字：“欠棺半程，已偿。”\n\n而在最下方那片空白区域，我的名字正在缓慢成形。\n\n“沈。”\n\n“舟。”\n\n一笔一划，像有人在用我的命当墨。",
      "choices": [
        { "text": "往前走", "next": "walk_forward" }
      ]
    },
    "walk_forward": {
      "id": "walk_forward",
      "location": "guan_zhang_hall",
      "text": "我沿着石道往前走。\n\n走了不知道多久——在这里，时间像被压扁了。\n\n黑雾中，缓缓浮现出一张巨大的纸影。\n\n那不是纸。\n\n是一本账册。\n\n一本比山还高的账册。\n\n每一页都写满名字，每一页都在翻动时震动整条石道。\n\n而在账册的最中心，有一根黑色的“钉”——钉住了所有名字。\n\n我还没来得及反应，身后传来脚步声。\n\n很慢，很稳。\n\n我回头。\n\n看见了“我自己”。",
      "choices": [
        { "text": "“你是谁？”", "next": "past_self_talk" },
        { "text": "“你想让我做什么？”", "next": "past_self_talk" }
      ]
    },
    "past_self_talk": {
      "id": "past_self_talk",
      "location": "guan_zhang_hall",
      "text": "“你是谁？”我后退一步。\n\n他笑了。\n\n“你已经叫过我了。”\n\n我一愣。\n\n“你以为那是棺主在用你？错了。是你在替我说话。”\n\n“你到底是什么东西？”\n\n他没有回答。只是伸手，轻轻按在我的胸口。\n\n那一瞬间，我看见一条线——从我身体里延伸出去，连接到那本巨大的账册上。\n\n“你是补名者。我是被补掉的上一代。”",
      "choices": [
        { "text": "“我怎么才能不变成你？”", "next": "how_to_avoid" },
        { "text": "看向账册", "next": "look_account" }
      ]
    },
    "how_to_avoid": {
      "id": "how_to_avoid",
      "location": "guan_zhang_hall",
      "text": "“我怎么才能不变成你？”\n\n他看着我，眼神里有一种说不清的东西。\n\n“补名有两种方式。”\n\n“第一种——你走完棺道，成为新账主。”\n\n“第二种——你被写完。名字写满，就不是人了——会变成棺。”",
      "choices": [
        { "text": "冲向裂缝", "next": "run_to_crack" },
        { "text": "看向账册", "next": "look_account" }
      ]
    },
    "run_to_crack": {
      "id": "run_to_crack",
      "location": "guan_zhang_hall",
      "text": "我冲向那条裂缝。\n\n可跑出三步，脚下账纸忽然收紧——像一只巨大的手掌攥住了我的脚踝。\n\n“别急着走。”身后那个“我”轻轻说，“你还没看完。”\n\n他指向账册。\n\n我的名字，已经快写完了。\n\n“沈舟”两个字，只剩最后一笔。",
      "choices": [
        { "text": "抓住那根写字的线", "next": "grab_thread" },
        { "text": "用力挣脱", "next": "death_break_free" }
      ]
    },
    "death_break_free": {
      "id": "death_break_free",
      "location": "guan_zhang_hall",
      "text": "我用尽全力挣脱脚下的束缚。\n\n可越挣扎，账纸缠得越紧。那些名字像活过来一样，顺着我的脚踝往上爬——沈长河、陆沉、周满仓……\n\n每一个名字都在发力，像在把我往账册深处拖。\n\n“别挣扎了。”那个“我”轻轻说，“你越动，被写进去得越快。”\n\n我低头——我的名字只剩最后一笔了。\n\n那一笔落下，我被彻底写进了账册。\n\n【死亡】你选择了挣扎，被账册吞噬。",
      "isEnd": true,
      "endType": "death",
      "endMessage": "死亡结局：选择挣扎，被账册吞噬。"
    },
    "look_account": {
      "id": "look_account",
      "location": "guan_zhang_hall",
      "text": "我抬头看向那本比山还高的账册。\n\n它在翻动。每一页都写满名字，每一页都在呼吸。\n\n而在最中央那一页，我的名字正在成形。\n\n沈。\n\n舟。\n\n两笔已完，最后一笔正在落下。",
      "choices": [
        { "text": "抓住那根写字的线", "next": "grab_thread" }
      ]
    },
    "grab_thread": {
      "id": "grab_thread",
      "location": "guan_zhang_hall",
      "text": "我看见了那根线。\n\n连接着我胸口和账册的那条“名字线”。它很细，像一根浸了墨的丝线。\n\n但我能感觉到它——它在跳动。\n\n最后一笔即将落下。\n\n我必须抓住这根线，用力拽断它！这是我唯一的机会！",
      "qte": {
        "type": "click",
        "title": "抓住名字线",
        "description": "【极限挑战】抓住那根名字线！必须在3秒内点击35次才能拽断！失败即被写进账册！",
        "buttonText": "用力拽断",
        "requiredClicks": 35,
        "timeLimit": 3000,
        "success": "grab_success",
        "fail": "death_grab_fail"
      }
    },
    "death_grab_fail": {
      "id": "death_grab_fail",
      "location": "guan_zhang_hall",
      "text": "我没能抓住那根线！\n\n它从指尖滑走——最后一笔落下。\n\n“沈舟”两个字，完整写在了账册上。\n\n黑雾瞬间收紧，我感觉自己正在被写进账册里——\n\n“你终究还是被写了。”\n\n那个“另一个我”看着我，嘴角带着一丝怜悯。\n\n【死亡】你没能拽断名字线，被写进了账册。",
      "isEnd": true,
      "endType": "death",
      "endMessage": "死亡结局：QTE失败，被写进账册。"
    },
    "grab_success": {
      "id": "grab_success",
      "location": "guan_zhang_hall",
      "text": "我抓住了那根线！\n\n它不是线。是命。\n\n我用力一扯——！\n\n整条账册，第一次停住。\n\n黑雾剧烈震动。那个“另一个我”脸色微变：“你做什么？”\n\n我看着他，第一次清楚地说出一句话：\n\n“既然是补名——那我也可以改名。”\n\n我猛地一拉——！\n\n整条名字线，被我硬生生拽偏了一寸。\n\n“沈舟”两个字，发生了第一次错位。",
      "actions": [
        { "type": "setVar", "name": "passed_account_qte", "value": true },
        { "type": "addVar", "name": "qte_skill", "value": 10 }
      ],
      "choices": [
        { "text": "踏入真正的无主家", "next": "original_coffin_eye" }
      ]
    },
    "original_coffin_eye": {
      "id": "original_coffin_eye",
      "location": "original_coffin",
      "text": "石门彻底裂开。\n\n我看见了“看见”的声音——不是听觉，是意识被强行翻开。\n\n无主家露出了真正的样子。\n\n没有山。没有墓。没有路。\n\n只有一片巨大的“空”。\n\n空到黑暗都不完整。\n\n而最中央，是一口棺。\n\n一口“没有形状”的棺。\n\n它像是被世界遗忘后自己长出来的阴影。",
      "choices": [
        { "text": "接受身份，成为新账主", "next": "ending_account_master" },
        { "text": "拒绝补名，强行撕裂账册", "next": "ending_tear" },
        { "text": "问那个“未长成的我”为什么在这里", "next": "ending_ask_past" },
        { "text": "烧掉棺账，终结一切", "next": "burn_account_final" }
      ]
    },
    "burn_account_final": {
      "id": "burn_account_final",
      "location": "original_coffin",
      "text": "“我不接。”\n\n我抬头看向原棺竖眼。\n\n“入册可以烧，合名可以断。”\n\n“你养了我的名字二十年，不是为了让我做棺主——是为了等我亲手烧了你。”\n\n原棺中，那个命影第一次真正笑了。\n\n他抬手指向原棺最深处：“棺账在那里。烧账，要先拔账芯。”",
      "choices": [
        { "text": "拔钉烧账", "next": "burn_lu_chen" }
      ]
    },
    "burn_lu_chen": {
      "id": "burn_lu_chen",
      "location": "original_coffin",
      "text": "陆沉忽然笑了一声，那笑声很轻，却带着一种说不出的疲惫。\n\n他从怀里掏出那枚染血铜钱——铜钱已经裂开，红绳只剩半截。\n\n“沈舟，记住。人这一辈子，总要有一笔账，是自己亲手结的。”\n\n他将铜钱按进自己眉心那道旧疤。\n\n他脸上的疤一点一点裂开，裂缝里没有血，只有幽蓝色的火。\n\n沈江脸色骤变：“陆沉！”",
      "choices": [
        { "text": "冲进棺眼拔钉", "next": "burn_pull_nail" }
      ]
    },
    "burn_pull_nail": {
      "id": "burn_pull_nail",
      "location": "original_coffin",
      "text": "无数名字开始燃烧。不是纸燃的声音——是命被解开的声音。\n\n周满仓。李三娘。陈狗子。赵老七。何半瞎。那些曾经在棺道里索债的死人，此刻不再伸手。\n\n沈江咬牙冲上去，用断棺杠顶住原棺边缘：“沈舟，进去拿账芯！”\n\n我冲进棺眼。蓝火烧在身侧，像无数亡魂伸出来的手，推着我往前。\n\n黑色账册就在原棺最深处。我必须抓住账芯黑钉，用力拔出来！",
      "qte": {
        "type": "hold",
        "title": "拔出账芯黑钉",
        "description": "【极限挑战】抓住账芯黑钉！必须按住5秒才能拔出！松手即失败！无数名字会钻进你的身体！",
        "buttonText": "用力拔出",
        "holdDuration": 5000,
        "timeLimit": 7000,
        "success": "pull_nail_success",
        "fail": "death_pull_nail_fail"
      }
    },
    "death_pull_nail_fail": {
      "id": "death_pull_nail_fail",
      "location": "original_coffin",
      "text": "我抓不住了——手一松，黑钉重新钉回账册！\n\n无数名字瞬间反噬，我被一股力量弹开，重重撞在棺壁上！\n\n“沈舟！”陆沉怒吼一声，他的身体已经被蓝火吞没大半！\n\n但已经太晚了。\n\n原棺的竖眼闭合，将我永远困在了里面。\n\n【死亡】你没能拔出账芯黑钉，被原棺吞噬。",
      "isEnd": true,
      "endType": "death",
      "endMessage": "死亡结局：QTE失败，被原棺吞噬。"
    },
    "pull_nail_success": {
      "id": "pull_nail_success",
      "location": "original_coffin",
      "text": "我伸手抓住账芯黑钉——！\n\n黑钉猛地刺入掌心，疼得我几乎跪下。无数名字顺着伤口钻进我身体里，哭喊、怨恨、求救、诅咒，像潮水一样冲进脑子。\n\n棺主的声音在我耳边低吼：“你敢烧账，沈长河也会散！”\n\n我咬紧牙关，没有松手——！\n\n黑钉终于被我拔了出来！\n\n整本棺账瞬间翻开。最后一页上，“沈舟”两个字燃起蓝火。\n\n黑河尽头，爷爷出现了。",
      "actions": [
        { "type": "setVar", "name": "passed_nail_qte", "value": true },
        { "type": "addVar", "name": "qte_skill", "value": 10 }
      ],
      "choices": [
        { "text": "听爷爷说完", "next": "burn_grandpa_farewell" }
      ]
    },
    "burn_grandpa_farewell": {
      "id": "burn_grandpa_farewell",
      "location": "original_coffin",
      "text": "“爷爷，我带你走。”\n\n爷爷摇头：“爷爷走不了了。”\n\n我攥紧拳头：“那我烧了它。”\n\n爷爷点头：“烧了它。沈家人不欠棺材。”\n\n我看着他——他还是那个站在堂屋门口抽旱烟的老人，脾气硬，话不多，却总是在风雨来之前，把门闩插好。\n\n“爷爷……”\n\n他抬手，像小时候那样摸了摸我的头。可他的手穿过了我。\n\n“回家。”",
      "choices": [
        { "text": "被沈江拖出棺眼", "next": "burn_fire_ends" }
      ]
    },
    "burn_fire_ends": {
      "id": "burn_fire_ends",
      "location": "original_coffin",
      "text": "一只手抓住了我的衣领。是沈江——他满身是血，几乎站不稳，却硬生生把我从棺眼里拖了出去。\n\n陆沉已经看不见了。只剩那只镇棺铃，悬在蓝火中央，铃身裂成两半。\n\n铃声最后响了一次。\n\n叮。\n\n这一声后，整条棺道安静了。\n\n所有抬棺声、敲棺声、哭声、笑声，全都消失。\n\n沈江背起我，朝来路狂奔。\n\n无主家在身后塌陷，原棺沉入黑暗。最后一刻，我回头看见爷爷站在火光里，朝我摆了摆手。\n\n他还是说：“别回头。”",
      "choices": [
        { "text": "回家", "next": "ending_return_home" }
      ]
    },
    "ending_return_home": {
      "id": "ending_return_home",
      "location": "shen_home",
      "text": "三天后，我们把堂屋里的那口棺材抬到山脚下烧了。\n\n棺材烧到一半，里面没有尸体，也没有替身——只有一枚裂开的黑玉戒。\n\n戒指在火里碎成两半。\n\n二叔说，那天夜里，他梦见爷爷、大伯，还有一个脸上带疤的男人，三个人抬着一口空棺往山外走。走到天亮时，棺材散了，人也散了。\n\n从那以后，沈家再也没有听见过棺声。\n\n南岭的雨季还是很长。竹林还是会在夜里呜呜作响。村里人仍旧绕开那条废弃的抬棺路。\n\n只有我知道——棺道已经没了。\n\n至少，沈家的那条棺道没了。\n\n后来我整理爷爷留下的旧物，在床底找到一页没有烧尽的残纸，纸上只有一行字：\n\n“活人走活路，死人归死人。”\n\n我把那页纸烧在了爷爷坟前。火很干净，没有黑烟。\n\n那天傍晚，我下山时，忽然听见身后传来一声很轻的铃响。\n\n叮。\n\n我停了一下。\n\n没有回头。\n\n风从山里吹出来，带着泥土和竹叶的味道。像有人在远处笑了一声，又像什么都没有发生。\n\n我继续往前走。\n\n山路尽头，天光正亮。\n\n而这一次，我知道——前面没有棺材在等我。\n\n只有回家的路。",
      "isEnd": true,
      "endType": "true",
      "endMessage": "【通关！】棺账终焚，沈家债清。陆沉散于火光，爷爷归于山野。而你，终于可以回家了。恭喜你完成9.5难度挑战！"
    },
    "ending_account_master": {
      "id": "ending_account_master",
      "location": "original_coffin",
      "text": "我站在原棺前，看着那个“未长成的我”。\n\n他没有催我。只是等着。\n\n我伸手，握住了原棺边缘。\n\n那一瞬间，所有名字都安静了。\n\n我听见自己的声音说：“我接。”\n\n原棺的眼缓缓闭合。地面的名字停止倒流，开始重新排列——以我为中心。\n\n我成为了新账主。",
      "isEnd": true,
      "endType": "true",
      "endMessage": "你接过了棺账，成为了新的账主。沈家的债，在你这里结束。"
    },
    "ending_tear": {
      "id": "ending_tear",
      "location": "original_coffin",
      "text": "我没有接受。\n\n我伸手，抓住了那条名字线——那条连接着我的命、连接着沈家所有名字的线。\n\n我用力一扯。\n\n整本棺账被我从中间撕裂。\n\n名字如灰烬般飞散，原棺发出刺耳的崩裂声。\n\n那个“未长成的我”在消散前说了一句话：\n\n“你拆掉了自己的根。”\n\n我回他：“那我重新长。”",
      "isEnd": true,
      "endType": "victory",
      "endMessage": "你撕碎了棺账，也撕碎了沈家三代人的债。你自由了。"
    },
    "ending_ask_past": {
      "id": "ending_ask_past",
      "location": "original_coffin",
      "text": "我看着那个“未长成的我”，问：“你在这里多久了？”\n\n他沉默了一会儿。\n\n“比你想象的要久。”\n\n“你后悔吗？”\n\n他笑了。“我后悔的不是进来——而是没有问过自己，值不值得。”\n\n我看着他，忽然明白了。\n\n他不是我的未来。\n\n他是我的一个选择。\n\n“走吧。”他说，“你还有机会。”\n\n我转身，走向裂缝。",
      "isEnd": true,
      "endType": "good",
      "endMessage": "你选择了活完整。那个未长成的你，在账册里替你记住了所有路。"
    }
  }
}