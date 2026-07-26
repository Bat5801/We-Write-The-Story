{
    "title": "神秘森林",
    "description": "一个关于勇气与选择的故事",
    "version": "1.0",
    "start": "entrance",
    "nodes": {
        "entrance": {
            "text": "你站在一片神秘森林的入口。树木高耸入云，阳光几乎无法穿透茂密的枝叶。一条小路蜿蜒向深处延伸。",
            "choices": [
                { "text": "进入森林", "next": "deep_forest" },
                { "text": "在入口等待", "next": "wait" },
                { "text": "转身离开", "next": "leave" }
            ]
        },
        "deep_forest": {
            "text": "你沿着小路深入森林。四周越来越安静，只有你的脚步声和偶尔传来的鸟鸣。前方出现了一个岔路口。",
            "choices": [
                { "text": "走左边的小径", "next": "left_path" },
                { "text": "走右边的小径", "next": "right_path" },
                { "text": "继续走中间的大路", "next": "middle_path" }
            ]
        },
        "wait": {
            "text": "你在入口等待了一会儿。一只松鼠从树上跳下，嘴里叼着一枚闪闪发光的宝石。它把宝石放在你面前，然后跑开了。",
            "choices": [
                { "text": "捡起宝石进入森林", "next": "with_gem" },
                { "text": "不理会宝石离开", "next": "leave" }
            ]
        },
        "leave": {
            "text": "你转身离开了森林。也许下次，你会有勇气踏入这片神秘之地。",
            "isEnd": true,
            "endType": "neutral"
        },
        "left_path": {
            "text": "左边的小径通向一片花海。花朵散发着迷人的香气，但你注意到有些花瓣上有奇怪的纹路。",
            "choices": [
                { "text": "仔细观察花朵", "next": "flower_secret" },
                { "text": "穿过花海继续前进", "next": "mysterious_clearing" }
            ]
        },
        "right_path": {
            "text": "右边的小径越来越窄，最终到达了一个古老的树洞。树洞里似乎有什么东西在发光，但你也感觉到了一丝危险的气息。",
            "choices": [
                { "text": "伸手进去探索", "next": "treasure" },
                { "text": "用树枝试探", "next": "snake_attack" },
                { "text": "谨慎地离开", "next": "deep_forest" }
            ]
        },
        "middle_path": {
            "text": "大路一直延伸，最终来到了一座古老的石碑前。石碑上刻着：'勇者无惧，智者无敌。'",
            "choices": [
                { "text": "触摸石碑", "next": "trial" },
                { "text": "绕过石碑", "next": "mysterious_clearing" }
            ]
        },
        "with_gem": {
            "text": "你握着宝石进入森林。宝石发出温暖的光芒，照亮了前方的道路。你感到一种莫名的力量。",
            "choices": [
                { "text": "跟随宝石的指引", "next": "temple" },
                { "text": "随意探索", "next": "deep_forest" }
            ]
        },
        "flower_secret": {
            "text": "你仔细观察花朵，发现纹路组成了一句话：'真爱是唯一的钥匙。' 一朵花突然绽放，露出里面的一把金色钥匙。",
            "choices": [
                { "text": "拿起钥匙", "next": "with_key" },
                { "text": "继续前进", "next": "mysterious_clearing" }
            ]
        },
        "treasure": {
            "text": "你伸手进树洞，摸到了一个盒子。打开后，里面是一本古老的书。书的封面上写着：'森林的秘密'。",
            "choices": [
                { "text": "阅读这本书", "next": "read_book" },
                { "text": "带走书继续探索", "next": "with_book" }
            ]
        },
        "trial": {
            "text": "当你触摸石碑时，一道光芒笼罩了你。你面前出现了三个幻影：代表勇气的狮子、代表智慧的猫头鹰、代表爱的鸽子。",
            "choices": [
                { "text": "选择狮子", "next": "courage_path" },
                { "text": "选择猫头鹰", "next": "wisdom_path" },
                { "text": "选择鸽子", "next": "love_path" }
            ]
        },
        "mysterious_clearing": {
            "text": "你来到了一片神秘的空地。空地中央有一座祭坛，祭坛上放着一个发光的水晶球。",
            "choices": [
                { "text": "触碰水晶球", "next": "vision" },
                { "text": "观察四周", "next": "surroundings" }
            ]
        },
        "temple": {
            "text": "宝石的光芒指引你来到了一座隐藏的神庙。神庙的大门上有一个宝石形状的凹槽。",
            "choices": [
                { "text": "将宝石放入凹槽", "next": "victory" },
                { "text": "寻找其他入口", "next": "explore_temple" }
            ]
        },
        "with_key": {
            "text": "你握着金色钥匙继续前进。前方出现了一扇锁住的门，钥匙正好能打开它。",
            "choices": [
                { "text": "用钥匙开门", "next": "treasure_room" },
                { "text": "继续寻找其他线索", "next": "mysterious_clearing" }
            ]
        },
        "read_book": {
            "text": "你开始阅读这本书。书中记载了森林的起源和一个隐藏的宝藏。原来，这片森林是一位古老法师创造的试炼之地。",
            "choices": [
                { "text": "按照书中的指引寻找宝藏", "next": "follow_guide" },
                { "text": "记住内容继续探索", "next": "mysterious_clearing" }
            ]
        },
        "with_book": {
            "text": "你带着书继续探索。书中的内容似乎在指引着你前进的方向。",
            "choices": [
                { "text": "跟随书中的指引", "next": "follow_guide" },
                { "text": "自己探索", "next": "deep_forest" }
            ]
        },
        "courage_path": {
            "text": "你选择了勇气。狮子发出一声怒吼，化为一道金光融入你的身体。你感到前所未有的力量。",
            "choices": [
                { "text": "充满勇气地前进", "next": "brave_advance" }
            ]
        },
        "wisdom_path": {
            "text": "你选择了智慧。猫头鹰眨了眨眼，化为一道蓝光融入你的身体。你的思绪变得清晰无比。",
            "choices": [
                { "text": "运用智慧解决谜题", "next": "wise_solution" }
            ]
        },
        "love_path": {
            "text": "你选择了爱。鸽子发出一声轻鸣，化为一道粉光融入你的身体。你的心中充满了温暖。",
            "choices": [
                { "text": "用爱感化一切", "next": "love_conquer" }
            ]
        },
        "vision": {
            "text": "水晶球展现出一幅景象：森林的中心有一座神庙，神庙中封印着一件神器。只有真正的勇者才能得到它。",
            "choices": [
                { "text": "前往神庙", "next": "temple" },
                { "text": "思考这个幻象", "next": "mysterious_clearing" }
            ]
        },
        "surroundings": {
            "text": "你仔细观察四周，发现地面上有一些脚印。这些脚印看起来像是人类留下的，但方向不一。",
            "choices": [
                { "text": "跟随最清晰的脚印", "next": "follow_footprints" },
                { "text": "继续探索", "next": "deep_forest" }
            ]
        },
        "explore_temple": {
            "text": "你绕到神庙后面，发现了一条秘密通道。通道虽然狭窄，但足以让你通过。",
            "choices": [
                { "text": "进入秘密通道", "next": "secret_way" },
                { "text": "返回尝试其他方法", "next": "temple" }
            ]
        },
        "treasure_room": {
            "text": "门打开了，里面是一间堆满宝藏的房间。金币、宝石、古老的艺术品应有尽有。但最引人注目的是房间中央的一把圣剑。",
            "choices": [
                { "text": "拿起圣剑", "next": "victory" },
                { "text": "只拿走一些金币", "next": "rich_ending" }
            ]
        },
        "follow_guide": {
            "text": "你按照书中的指引前进。书中的地图准确无误，你很快找到了通往神庙的捷径。",
            "choices": [
                { "text": "进入神庙", "next": "temple" }
            ]
        },
        "brave_advance": {
            "text": "凭借勇气，你克服了重重困难，最终来到了神庙门前。你的勇气已经证明了你是真正的勇者。",
            "choices": [
                { "text": "进入神庙", "next": "temple" }
            ]
        },
        "wise_solution": {
            "text": "运用智慧，你解开了森林中所有的谜题，找到了通往神庙的正确道路。智慧指引着你前进。",
            "choices": [
                { "text": "进入神庙", "next": "temple" }
            ]
        },
        "love_conquer": {
            "text": "你的爱感化了森林中所有的生灵，它们为你指引了通往神庙的道路。爱，是最强大的力量。",
            "choices": [
                { "text": "进入神庙", "next": "temple" }
            ]
        },
        "follow_footprints": {
            "text": "你跟随脚印前进，最终来到了神庙。看来有人也曾经来过这里。",
            "choices": [
                { "text": "进入神庙", "next": "temple" }
            ]
        },
        "secret_way": {
            "text": "秘密通道通向神庙内部。你发现自己站在一个宏伟的大厅里，大厅中央有一个发光的祭坛。祭坛后面还有一扇神秘的门。",
            "choices": [
                { "text": "走向祭坛", "next": "victory" },
                { "text": "探索神秘的门", "next": "true_ending_path" }
            ]
        },
        "snake_attack": {
            "text": "你用树枝试探树洞。突然，一条巨大的毒蛇从树洞中窜出，向你扑来！你来不及躲闪...",
            "isEnd": true,
            "endType": "death"
        },
        "true_ending_path": {
            "text": "你推开神秘的门，发现了一个隐藏的房间。房间里放着一本古老的魔法书和一面镜子。镜子中，你看到了自己成为森林守护者后的样子。",
            "choices": [
                { "text": "阅读魔法书", "next": "true_ending" },
                { "text": "只拿镜子离开", "next": "bad_ending" }
            ]
        },
        "bad_ending": {
            "text": "你拿走了镜子，却没有学习魔法书里的知识。离开森林后，镜子逐渐失去了光芒，你的冒险也随之褪色...",
            "isEnd": true,
            "endType": "bad"
        },
        "true_ending": {
            "text": "✨ 你阅读了魔法书，获得了森林的传承。镜子中，你看到了自己与森林融为一体的景象。你不仅成为了守护者，更成为了森林的一部分。这才是真正的结局！",
            "isEnd": true,
            "endType": "true"
        },
        "rich_ending": {
            "text": "你带走了一些金币，离开了森林。虽然你没有找到神器，但你也收获颇丰。",
            "isEnd": true,
            "endType": "neutral"
        },
        "victory": {
            "text": "🎉 恭喜你！你成功通过了森林的试炼，获得了传说中的神器。森林的秘密已经揭晓，而你，成为了新的守护者。",
            "isEnd": true,
            "endType": "victory"
        }
    }
}