{
    "id": "magic_library",
    "title": "魔法图书馆",
    "description": "在无尽的书架之间寻找失落的知识",
    "version": "1.0",
    "features": { "inventory": true },
    "items": [
        { "id": "ancient_key", "name": "古老钥匙", "icon": "🔑", "description": "一把散发着魔法光芒的古老钥匙" },
        { "id": "spell_book", "name": "咒语书", "icon": "📖", "description": "记载着强大咒语的魔法书" },
        { "id": "moonstone", "name": "月光石", "icon": "💎", "description": "蕴含月光力量的神秘宝石" }
    ],
    "start": "entrance",
    "nodes": {
        "entrance": {
            "text": "你站在一座宏伟的图书馆门前。门楣上刻着一行古老的符文：'知识是力量，力量是责任。' 两扇巨大的木门紧闭着，但你隐约听到里面传来翻书的声音。",
            "choices": [
                { "text": "推门而入", "next": "main_hall" },
                { "text": "仔细观察符文", "next": "runes" },
                { "text": "在门前等待", "next": "wait" }
            ]
        },
        "runes": {
            "text": "你认真研究门楣上的符文。突然，一道光芒闪过，符文组成了一句话：'只有真心寻求知识的人才能进入。' 与此同时，你注意到门边有一个钥匙孔。",
            "choices": [
                { "text": "寻找钥匙", "next": "search_key" },
                { "text": "直接推门", "next": "main_hall" }
            ]
        },
        "search_key": {
            "text": "你在门周围搜索，在一块松动的石头后面找到了一把古老的钥匙。钥匙上刻着精美的花纹，散发着微弱的魔法光芒。",
            "choices": [
                { "text": "用钥匙开门", "next": "main_hall", "actions": [{ "type": "addItem", "itemId": "ancient_key" }] },
                { "text": "继续观察", "next": "runes" }
            ]
        },
        "wait": {
            "text": "你在门前等待了片刻。一位身穿长袍的老者从阴影中走出，他的眼睛闪烁着智慧的光芒。'欢迎来到知识的殿堂，'他说，'我是这座图书馆的守护者。'",
            "choices": [
                { "text": "跟随老者进入", "next": "main_hall" },
                { "text": "询问图书馆的秘密", "next": "secret" }
            ]
        },
        "secret": {
            "text": "老者微微一笑：'这座图书馆收藏着世间所有的知识，但并非所有知识都适合所有人。有些书籍会选择读者，有些读者会被书籍选择。'他递给你一本古老的书。",
            "choices": [
                { "text": "接过书本", "next": "main_hall", "actions": [{ "type": "addItem", "itemId": "spell_book" }] },
                { "text": "婉言谢绝", "next": "main_hall" }
            ]
        },
        "main_hall": {
            "text": "你进入了图书馆的主厅。无数书架直插云霄，空气中弥漫着纸张和墨水的气息。一条环形走廊环绕着大厅，通向不同的区域。",
            "choices": [
                { "text": "前往魔法书籍区", "next": "magic_section" },
                { "text": "前往历史记载区", "next": "history_section" },
                { "text": "前往禁书区", "next": "forbidden_section" },
                { "text": "询问管理员", "next": "librarian" }
            ]
        },
        "magic_section": {
            "text": "魔法书籍区充满了闪烁的光芒。书籍悬浮在空中，自动翻页。你注意到一本特别古老的书，它的封面上画着一颗月亮。",
            "choices": [
                { "text": "阅读那本古老的书", "next": "moon_book" },
                { "text": "浏览其他书籍", "next": "browse_magic" },
                { "text": "返回主厅", "next": "main_hall" }
            ]
        },
        "moon_book": {
            "text": "你打开了那本书。书页上记载着关于月光魔法的秘密。书中提到，要掌握月光魔法，需要一颗月光石作为媒介。",
            "choices": [
                { "text": "寻找月光石", "next": "search_moonstone", "actions": [{ "type": "addItem", "itemId": "spell_book" }] },
                { "text": "继续阅读", "next": "read_more" }
            ]
        },
        "read_more": {
            "text": "书中还记载着一个预言：当月亮最圆的时候，图书馆的最深处会出现一条通往月光神殿的通道。但这条通道只对拥有月光石的人开放。",
            "choices": [
                { "text": "寻找月光石", "next": "search_moonstone" },
                { "text": "返回主厅", "next": "main_hall" }
            ]
        },
        "browse_magic": {
            "text": "你浏览着各种魔法书籍。突然，一本书从书架上掉下来，正好落在你面前。书名是《初学者的咒语指南》。",
            "choices": [
                { "text": "捡起书", "next": "main_hall", "actions": [{ "type": "addItem", "itemId": "spell_book" }] },
                { "text": "放回书架", "next": "magic_section" }
            ]
        },
        "history_section": {
            "text": "历史记载区显得格外安静。书籍按照年代排列，从最古老的卷轴到最新的编年史。你看到一本封面上写着'失落的王国'的书。",
            "choices": [
                { "text": "阅读失落王国的历史", "next": "lost_kingdom" },
                { "text": "继续探索", "next": "explore_history" },
                { "text": "返回主厅", "next": "main_hall" }
            ]
        },
        "lost_kingdom": {
            "text": "书中记载着一个曾经繁荣的魔法王国。这个王国拥有强大的魔法力量，但在一场灾难中消失了。有人说它沉入了海底，有人说它进入了另一个维度。",
            "choices": [
                { "text": "寻找更多线索", "next": "explore_history" },
                { "text": "前往禁书区寻找答案", "next": "forbidden_section" },
                { "text": "返回主厅", "next": "main_hall" }
            ]
        },
        "explore_history": {
            "text": "你在历史区继续探索，发现了一张古老的地图。地图上标记着一个位置，旁边写着'月光神殿'。",
            "choices": [
                { "text": "记住地图位置", "next": "main_hall" },
                { "text": "根据地图寻找", "next": "search_moonstone" }
            ]
        },
        "forbidden_section": {
            "text": "禁书区被一层魔法屏障保护着。屏障上闪烁着警告符文。你注意到屏障旁边有一个钥匙孔，形状和你找到的古老钥匙完全吻合。",
            "choices": [
                { "text": "用古老钥匙开门", "next": "enter_forbidden", "condition": { "hasItem": "ancient_key" } },
                { "text": "尝试强行突破", "next": "barrier_fail" },
                { "text": "返回主厅", "next": "main_hall" }
            ]
        },
        "barrier_fail": {
            "text": "你尝试突破魔法屏障，但屏障的力量太过强大。一道电击将你击退，你感到一阵眩晕。",
            "choices": [
                { "text": "休息片刻", "next": "main_hall" },
                { "text": "继续尝试", "next": "barrier_fail" }
            ]
        },
        "enter_forbidden": {
            "text": "你用古老钥匙打开了禁书区的门。里面的书籍散发着危险的气息。在最深处，你看到一个发光的宝石悬浮在空中。",
            "choices": [
                { "text": "取走宝石", "next": "got_moonstone", "actions": [{ "type": "addItem", "itemId": "moonstone" }] },
                { "text": "谨慎观察", "next": "observe_gem" }
            ]
        },
        "observe_gem": {
            "text": "你仔细观察那个宝石。它散发着柔和的月光，似乎在等待有缘人。宝石周围的书籍突然翻开，显示出相同的文字：'选择是知识的开始。'",
            "choices": [
                { "text": "取走宝石", "next": "got_moonstone", "actions": [{ "type": "addItem", "itemId": "moonstone" }] },
                { "text": "离开禁书区", "next": "main_hall" }
            ]
        },
        "got_moonstone": {
            "text": "当你触碰月光石的瞬间，一道光芒笼罩了你。你感觉自己与月亮建立了某种联系，获得了强大的力量。",
            "choices": [
                { "text": "前往月光神殿", "next": "moon_temple" },
                { "text": "继续探索图书馆", "next": "main_hall" }
            ]
        },
        "search_moonstone": {
            "text": "你开始在图书馆中寻找月光石。经过一番搜索，你在一个隐蔽的角落发现了一个发光的箱子。",
            "choices": [
                { "text": "打开箱子", "next": "found_moonstone", "actions": [{ "type": "addItem", "itemId": "moonstone" }] },
                { "text": "小心检查", "next": "check_box" }
            ]
        },
        "check_box": {
            "text": "你仔细检查箱子，发现上面有魔法陷阱。但你手中的咒语书似乎能破解这个陷阱。",
            "choices": [
                { "text": "用咒语书破解陷阱", "next": "found_moonstone", "condition": { "hasItem": "spell_book" }, "actions": [{ "type": "addItem", "itemId": "moonstone" }] },
                { "text": "直接打开", "next": "trap_trigger" },
                { "text": "离开", "next": "main_hall" }
            ]
        },
        "trap_trigger": {
            "text": "你直接打开箱子，触发了魔法陷阱。一阵强光闪过，你发现自己回到了图书馆入口。",
            "choices": [
                { "text": "重新进入", "next": "main_hall" },
                { "text": "寻找其他方法", "next": "librarian" }
            ]
        },
        "found_moonstone": {
            "text": "你打开箱子，里面放着一颗美丽的月光石。宝石散发着柔和的光芒，让你感到平静。",
            "choices": [
                { "text": "前往月光神殿", "next": "moon_temple" },
                { "text": "返回主厅", "next": "main_hall" }
            ]
        },
        "librarian": {
            "text": "你找到了图书馆的管理员。她是一位年轻的女子，但眼中透着超越年龄的智慧。'欢迎来到知识的殿堂，'她说，'你在寻找什么？'",
            "choices": [
                { "text": "询问月光石", "next": "ask_moonstone" },
                { "text": "询问图书馆的秘密", "next": "ask_secret" },
                { "text": "询问如何离开", "next": "ask_exit" }
            ]
        },
        "ask_moonstone": {
            "text": "管理员微微一笑：'月光石是图书馆最珍贵的宝藏之一。它隐藏在禁书区，但只有真心寻求知识的人才能找到它。'",
            "choices": [
                { "text": "前往禁书区", "next": "forbidden_section" },
                { "text": "询问更多", "next": "ask_more" }
            ]
        },
        "ask_more": {
            "text": "管理员继续说：'月光石不仅是一块宝石，它还是通往月光神殿的钥匙。在月光神殿中，你将获得真正的智慧。'",
            "choices": [
                { "text": "前往禁书区", "next": "forbidden_section" },
                { "text": "返回主厅", "next": "main_hall" }
            ]
        },
        "ask_secret": {
            "text": "管理员神秘地笑了：'这座图书馆是活的。它会根据读者的意愿变化。有些人在这里找到了答案，有些人找到了问题。'",
            "choices": [
                { "text": "思考这句话", "next": "main_hall" },
                { "text": "继续探索", "next": "magic_section" }
            ]
        },
        "ask_exit": {
            "text": "管理员指向一扇门：'那扇门通往外面的世界。但我建议你在离开前，先找到你真正想要的东西。'",
            "choices": [
                { "text": "离开图书馆", "next": "ending_leave" },
                { "text": "继续探索", "next": "main_hall" }
            ]
        },
        "moon_temple": {
            "text": "你手中的月光石开始发光，引导你来到图书馆最深处的一面墙壁前。墙壁缓缓打开，露出一条通往月光神殿的通道。",
            "choices": [
                { "text": "进入神殿", "next": "temple_entrance" },
                { "text": "犹豫", "next": "hesitate" }
            ]
        },
        "hesitate": {
            "text": "你犹豫了一下。月光石似乎感受到了你的犹豫，发出温暖的光芒，似乎在鼓励你前进。",
            "choices": [
                { "text": "鼓起勇气进入", "next": "temple_entrance" },
                { "text": "返回", "next": "main_hall" }
            ]
        },
        "temple_entrance": {
            "text": "你进入了月光神殿。神殿内部由月光构成，墙壁上刻着古老的符文。神殿中央有一个祭坛，祭坛上放着一本发光的书。",
            "choices": [
                { "text": "阅读祭坛上的书", "next": "read_divine_book" },
                { "text": "观察神殿", "next": "explore_temple" },
                { "text": "触摸符文", "next": "touch_runes" }
            ]
        },
        "read_divine_book": {
            "text": "你翻开祭坛上的书。书页上的文字似乎活了过来，飞入你的脑海。你获得了关于宇宙的终极知识，感受到了前所未有的智慧。",
            "choices": [
                { "text": "接受智慧", "next": "true_ending" },
                { "text": "拒绝（保留自我）", "next": "ending_wisdom" }
            ]
        },
        "explore_temple": {
            "text": "你在神殿中探索，发现了许多记载着古老知识的壁画。这些知识涵盖了魔法、历史、哲学等各个领域。",
            "choices": [
                { "text": "继续探索", "next": "read_divine_book" },
                { "text": "返回图书馆", "next": "main_hall" }
            ]
        },
        "touch_runes": {
            "text": "你触摸墙壁上的符文。符文开始发光，你感到自己与神殿融为一体。一种超越时间和空间的感觉涌上心头。",
            "choices": [
                { "text": "沉浸其中", "next": "true_ending" },
                { "text": "保持清醒", "next": "ending_aware" }
            ]
        },
        "ending_leave": {
            "text": "你离开了图书馆。虽然你没有找到传说中的月光石，但你带走了一本珍贵的咒语书。也许有一天，你会再次回到这里。",
            "isEnd": true,
            "endType": "neutral"
        },
        "ending_wisdom": {
            "text": "你拒绝了终极智慧，选择保留自己的个性和经历。月光神殿认可了你的选择，将你送回了图书馆。你虽然没有获得全知，但获得了最重要的东西——自我。",
            "isEnd": true,
            "endType": "good"
        },
        "ending_aware": {
            "text": "你在与神殿融合的瞬间保持了清醒。这种体验让你获得了前所未有的洞察力，但你依然是你自己。你成为了一个既拥有神殿力量又保持自我的人。",
            "isEnd": true,
            "endType": "victory"
        },
        "true_ending": {
            "text": "✨ 你接受了月光神殿的智慧，与宇宙融为一体。你不再是一个个体，而是成为了知识本身的一部分。月光石成为了你永恒的光芒，照亮了所有寻求知识的人。你，成为了新的知识守护者。",
            "isEnd": true,
            "endType": "true"
        }
    }
}