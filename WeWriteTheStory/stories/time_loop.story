{
    "id": "time_loop",
    "title": "时空迷宫",
    "description": "在无尽的时间循环中寻找逃脱的方法",
    "version": "1.0",
    "features": { "inventory": true },
    "items": [
        { "id": "time_crystal", "name": "时间水晶", "icon": "🔮", "description": "能操控时间的神秘水晶" },
        { "id": "loop_key", "name": "循环之钥", "icon": "🔑", "description": "打破时间循环的钥匙" },
        { "id": "memory_orb", "name": "记忆宝珠", "icon": "💫", "description": "保存记忆的魔法宝珠" },
        { "id": "future_scroll", "name": "未来卷轴", "icon": "📜", "description": "预见未来的神秘卷轴" }
    ],
    "start": "wake_up",
    "nodes": {
        "wake_up": {
            "text": "你醒来了。阳光透过窗户洒进来，一切看起来都很正常。但你有一种奇怪的感觉——这一天似乎已经发生过了。",
            "choices": [
                { "text": "起床探索", "next": "morning" },
                { "text": "继续睡觉", "next": "sleep_again" },
                { "text": "检查日期", "next": "check_date" }
            ]
        },
        "sleep_again": {
            "text": "你决定继续睡觉。但当你再次醒来时，发现还是同一天。",
            "choices": [
                { "text": "接受现实", "next": "morning" },
                { "text": "尝试再次入睡", "next": "sleep_again" }
            ]
        },
        "check_date": {
            "text": "你查看日历，日期显示的是'永恒之日'。你意识到自己陷入了一个时间循环。",
            "choices": [
                { "text": "寻找打破循环的方法", "next": "search_loop" },
                { "text": "接受循环", "next": "accept_loop" }
            ]
        },
        "morning": {
            "text": "你起床后，按照平时的习惯开始一天。但你注意到一些细节与记忆中的不同——桌子上多了一本书。",
            "choices": [
                { "text": "阅读那本书", "next": "read_book" },
                { "text": "忽略它", "next": "normal_day" },
                { "text": "检查书的来源", "next": "check_book" }
            ]
        },
        "read_book": {
            "text": "你翻开那本书。书名是《时间循环指南》。书中写道：'如果你正在阅读这本书，说明你已经意识到了时间循环。要打破循环，你需要找到循环之钥。'",
            "choices": [
                { "text": "寻找循环之钥", "next": "search_key" },
                { "text": "继续阅读", "next": "read_more" },
                { "text": "忽略这本书", "next": "normal_day" }
            ]
        },
        "read_more": {
            "text": "书中继续写道：'循环之钥藏在时空迷宫的最深处。迷宫中有三个试炼：过去、现在和未来。只有通过所有试炼，才能找到钥匙。'",
            "choices": [
                { "text": "前往时空迷宫", "next": "maze_entrance" },
                { "text": "先收集装备", "next": "collect_items" },
                { "text": "继续阅读", "next": "read_secrets" }
            ]
        },
        "read_secrets": {
            "text": "书中还记载着一些关于时间循环的秘密：'每次循环都会带来微小的变化。如果你能记住这些变化，就能找到规律。'",
            "choices": [
                { "text": "记住这个提示", "next": "maze_entrance", "actions": [{ "type": "addItem", "itemId": "memory_orb" }] },
                { "text": "前往迷宫", "next": "maze_entrance" }
            ]
        },
        "check_book": {
            "text": "你检查那本书的来源。书的最后一页写着：'这是给你的提示。去找时间水晶，它能帮助你。'",
            "choices": [
                { "text": "寻找时间水晶", "next": "find_crystal" },
                { "text": "前往迷宫", "next": "maze_entrance" }
            ]
        },
        "normal_day": {
            "text": "你决定忽略异常，按平常的方式度过一天。但到了晚上，当你入睡后，第二天醒来，发现又是同一天。",
            "choices": [
                { "text": "接受循环", "next": "accept_loop" },
                { "text": "寻找打破循环的方法", "next": "search_loop" }
            ]
        },
        "search_loop": {
            "text": "你开始寻找打破时间循环的方法。你记得书中提到过循环之钥，但你不知道它在哪里。",
            "choices": [
                { "text": "寻找那本书", "next": "find_book" },
                { "text": "询问他人", "next": "ask_people" },
                { "text": "探索周围", "next": "explore_area" }
            ]
        },
        "accept_loop": {
            "text": "你决定接受时间循环。既然每天都是一样的，你可以做任何想做的事情，不用担心后果。",
            "choices": [
                { "text": "尽情享受", "next": "enjoy_loop" },
                { "text": "学习新技能", "next": "learn_skills" },
                { "text": "改变主意，寻找出路", "next": "search_loop" }
            ]
        },
        "find_book": {
            "text": "你寻找那本书，但它已经消失了。取而代之的是一张纸条，上面写着：'去时空迷宫，那里有你想要的答案。'",
            "choices": [
                { "text": "前往时空迷宫", "next": "maze_entrance" },
                { "text": "寻找更多线索", "next": "explore_area" }
            ]
        },
        "ask_people": {
            "text": "你询问周围的人是否注意到时间循环，但他们似乎都没有察觉。只有一位神秘的老人说：'我注意到了。但要打破循环，你需要自己去寻找答案。'",
            "choices": [
                { "text": "询问老人更多", "next": "ask_old_man" },
                { "text": "前往迷宫", "next": "maze_entrance" }
            ]
        },
        "ask_old_man": {
            "text": "老人递给你一颗发光的水晶。'这是时间水晶，'他说，'它能帮助你在迷宫中找到方向。但要小心，迷宫中的时间是混乱的。'",
            "choices": [
                { "text": "收下水晶", "next": "got_crystal", "actions": [{ "type": "addItem", "itemId": "time_crystal" }] },
                { "text": "婉言谢绝", "next": "maze_entrance" }
            ]
        },
        "explore_area": {
            "text": "你在周围探索，发现了一个隐藏的入口。入口处刻着古老的符文，似乎通往另一个世界。",
            "choices": [
                { "text": "进入入口", "next": "maze_entrance" },
                { "text": "继续探索", "next": "explore_more" }
            ]
        },
        "explore_more": {
            "text": "你继续探索，发现了更多关于时间循环的线索。最终，你找到了时空迷宫的入口。",
            "choices": [
                { "text": "进入迷宫", "next": "maze_entrance" },
                { "text": "返回准备", "next": "collect_items" }
            ]
        },
        "enjoy_loop": {
            "text": "你尽情享受时间循环带来的自由。你尝试了各种以前不敢做的事情，度过了无数个相同但又不同的日子。",
            "choices": [
                { "text": "继续享受", "next": "enjoy_loop" },
                { "text": "厌倦了，寻找出路", "next": "search_loop" }
            ]
        },
        "learn_skills": {
            "text": "你利用时间循环学习各种技能。由于每天都可以从头开始，你掌握了许多以前想学但没有时间学的东西。",
            "choices": [
                { "text": "继续学习", "next": "learn_skills" },
                { "text": "用学到的技能寻找出路", "next": "search_loop" }
            ]
        },
        "collect_items": {
            "text": "你开始收集可能有用的物品。你找到了记忆宝珠和未来卷轴。",
            "choices": [
                { "text": "前往迷宫", "next": "maze_entrance", "actions": [{ "type": "addItem", "itemId": "memory_orb" }, { "type": "addItem", "itemId": "future_scroll" }] },
                { "text": "继续收集", "next": "collect_more" }
            ]
        },
        "collect_more": {
            "text": "你继续收集，最终找到了时间水晶。",
            "choices": [
                { "text": "前往迷宫", "next": "maze_entrance", "actions": [{ "type": "addItem", "itemId": "time_crystal" }] },
                { "text": "检查物品", "next": "check_items" }
            ]
        },
        "check_items": {
            "text": "你检查收集到的物品。记忆宝珠可以保存你的记忆，时间水晶可以操控时间，未来卷轴可以预见未来。",
            "choices": [
                { "text": "前往迷宫", "next": "maze_entrance" },
                { "text": "研究物品", "next": "study_items" }
            ]
        },
        "study_items": {
            "text": "你研究这些物品的用法。时间水晶可以让你暂停时间，记忆宝珠可以让你在循环中保留记忆，未来卷轴可以让你看到不同的未来。",
            "choices": [
                { "text": "前往迷宫", "next": "maze_entrance" },
                { "text": "测试物品", "next": "test_items" }
            ]
        },
        "test_items": {
            "text": "你测试了这些物品的效果。时间水晶确实能暂停时间，记忆宝珠能保留记忆，未来卷轴能预见未来。",
            "choices": [
                { "text": "前往迷宫", "next": "maze_entrance" },
                { "text": "准备更充分", "next": "maze_entrance" }
            ]
        },
        "find_crystal": {
            "text": "你开始寻找时间水晶。经过一番搜索，你在一个古老的祭坛上找到了它。",
            "choices": [
                { "text": "拿走水晶", "next": "got_crystal", "actions": [{ "type": "addItem", "itemId": "time_crystal" }] },
                { "text": "谨慎检查", "next": "check_crystal" }
            ]
        },
        "check_crystal": {
            "text": "你仔细检查时间水晶。它散发着柔和的光芒，似乎在等待有缘人。",
            "choices": [
                { "text": "拿走水晶", "next": "got_crystal", "actions": [{ "type": "addItem", "itemId": "time_crystal" }] },
                { "text": "离开", "next": "maze_entrance" }
            ]
        },
        "got_crystal": {
            "text": "你拿到了时间水晶。水晶温暖而充满力量。",
            "choices": [
                { "text": "前往时空迷宫", "next": "maze_entrance" },
                { "text": "返回准备", "next": "collect_items" }
            ]
        },
        "search_key": {
            "text": "你开始寻找循环之钥。根据书中的指引，你来到了时空迷宫的入口。",
            "choices": [
                { "text": "进入迷宫", "next": "maze_entrance" },
                { "text": "准备装备", "next": "collect_items" }
            ]
        },
        "maze_entrance": {
            "text": "你来到了时空迷宫的入口。迷宫由无数闪烁的光线组成，看起来既美丽又危险。入口处有三个拱门，分别通往过去、现在和未来。",
            "choices": [
                { "text": "进入过去之门", "next": "past_trial" },
                { "text": "进入现在之门", "next": "present_trial" },
                { "text": "进入未来之门", "next": "future_trial" },
                { "text": "使用时间水晶", "next": "use_crystal", "condition": { "hasItem": "time_crystal" } }
            ]
        },
        "use_crystal": {
            "text": "你使用时间水晶，看到了迷宫的全貌。你发现三个试炼可以按任意顺序完成，但每个试炼都有不同的挑战。",
            "choices": [
                { "text": "先去过去", "next": "past_trial" },
                { "text": "先去现在", "next": "present_trial" },
                { "text": "先去未来", "next": "future_trial" }
            ]
        },
        "past_trial": {
            "text": "你进入了过去之门。眼前的景象变成了你的童年。你看到了小时候的自己，正在做一个重要的决定。",
            "choices": [
                { "text": "改变过去", "next": "change_past" },
                { "text": "观察而不干预", "next": "observe_past" },
                { "text": "返回", "next": "maze_entrance" }
            ]
        },
        "change_past": {
            "text": "你试图改变过去。但当你做出改变时，你感到一阵眩晕，发现自己回到了迷宫入口。时间水晶发出警告：'改变过去可能会导致时间线崩溃。'",
            "choices": [
                { "text": "重新尝试", "next": "past_trial" },
                { "text": "观察而不干预", "next": "observe_past" },
                { "text": "前往其他试炼", "next": "present_trial" }
            ]
        },
        "observe_past": {
            "text": "你选择观察而不干预。你看到了过去的自己做出的决定，理解了当时的心情和动机。这个试炼教会了你接纳过去。",
            "choices": [
                { "text": "完成试炼", "next": "past_completed" },
                { "text": "继续观察", "next": "observe_more" }
            ]
        },
        "observe_more": {
            "text": "你继续观察过去的记忆，逐渐理解了自己的成长历程。",
            "choices": [
                { "text": "完成试炼", "next": "past_completed" },
                { "text": "返回", "next": "maze_entrance" }
            ]
        },
        "past_completed": {
            "text": "过去试炼完成！你获得了一颗记忆宝珠作为奖励。",
            "choices": [
                { "text": "前往现在试炼", "next": "present_trial", "actions": [{ "type": "addItem", "itemId": "memory_orb" }] },
                { "text": "前往未来试炼", "next": "future_trial", "actions": [{ "type": "addItem", "itemId": "memory_orb" }] },
                { "text": "返回入口", "next": "maze_entrance", "actions": [{ "type": "addItem", "itemId": "memory_orb" }] }
            ]
        },
        "present_trial": {
            "text": "你进入了现在之门。眼前是一面巨大的镜子，镜子中映照出的是现在的你。镜子旁边有一个问题：'你是谁？'",
            "choices": [
                { "text": "回答真实的自己", "next": "answer_true" },
                { "text": "回答理想的自己", "next": "answer_ideal" },
                { "text": "回答别人眼中的自己", "next": "answer_others" },
                { "text": "使用记忆宝珠", "next": "use_orb", "condition": { "hasItem": "memory_orb" } }
            ]
        },
        "answer_true": {
            "text": "你诚实地回答了关于自己的问题。镜子中的你微笑着点头，一道光芒融入你的身体。这个试炼教会了你接纳现在的自己。",
            "choices": [
                { "text": "完成试炼", "next": "present_completed" },
                { "text": "继续思考", "next": "think_more" }
            ]
        },
        "answer_ideal": {
            "text": "你描述了理想中的自己。镜子中的你摇了摇头：'那不是真正的你。'",
            "choices": [
                { "text": "重新回答", "next": "present_trial" },
                { "text": "回答真实的自己", "next": "answer_true" }
            ]
        },
        "answer_others": {
            "text": "你描述了别人眼中的自己。镜子中的你皱了皱眉：'那是别人的看法，不是你的真实。'",
            "choices": [
                { "text": "重新回答", "next": "present_trial" },
                { "text": "回答真实的自己", "next": "answer_true" }
            ]
        },
        "use_orb": {
            "text": "你使用记忆宝珠，回顾了自己的一生。你明白了自己是谁，以及想要成为什么样的人。",
            "choices": [
                { "text": "回答真实的自己", "next": "answer_true" },
                { "text": "完成试炼", "next": "present_completed" }
            ]
        },
        "think_more": {
            "text": "你继续思考关于自己的问题，逐渐找到了答案。",
            "choices": [
                { "text": "完成试炼", "next": "present_completed" },
                { "text": "返回", "next": "maze_entrance" }
            ]
        },
        "present_completed": {
            "text": "现在试炼完成！你获得了时间水晶作为奖励。",
            "choices": [
                { "text": "前往过去试炼", "next": "past_trial", "actions": [{ "type": "addItem", "itemId": "time_crystal" }] },
                { "text": "前往未来试炼", "next": "future_trial", "actions": [{ "type": "addItem", "itemId": "time_crystal" }] },
                { "text": "返回入口", "next": "maze_entrance", "actions": [{ "type": "addItem", "itemId": "time_crystal" }] }
            ]
        },
        "future_trial": {
            "text": "你进入了未来之门。眼前出现了三条不同的道路，分别通向不同的未来。",
            "choices": [
                { "text": "选择第一条路", "next": "future_path1" },
                { "text": "选择第二条路", "next": "future_path2" },
                { "text": "选择第三条路", "next": "future_path3" },
                { "text": "使用未来卷轴", "next": "use_scroll", "condition": { "hasItem": "future_scroll" } }
            ]
        },
        "use_scroll": {
            "text": "你使用未来卷轴，看到了三条道路的结果。第一条路通向成功但孤独的未来，第二条路通向平凡但幸福的未来，第三条路通向冒险但危险的未来。",
            "choices": [
                { "text": "选择第一条路", "next": "future_path1" },
                { "text": "选择第二条路", "next": "future_path2" },
                { "text": "选择第三条路", "next": "future_path3" }
            ]
        },
        "future_path1": {
            "text": "你选择了第一条路。你看到了一个成功但孤独的未来——你拥有了一切，却失去了最重要的东西。",
            "choices": [
                { "text": "接受这个未来", "next": "future_accept1" },
                { "text": "尝试改变", "next": "future_change" },
                { "text": "返回选择其他道路", "next": "future_trial" }
            ]
        },
        "future_accept1": {
            "text": "你接受了这个未来。试炼教会了你成功并不等于幸福。",
            "choices": [
                { "text": "完成试炼", "next": "future_completed" }
            ]
        },
        "future_path2": {
            "text": "你选择了第二条路。你看到了一个平凡但幸福的未来——你没有大富大贵，但拥有温暖的家庭和真挚的友谊。",
            "choices": [
                { "text": "接受这个未来", "next": "future_accept2" },
                { "text": "尝试改变", "next": "future_change" },
                { "text": "返回选择其他道路", "next": "future_trial" }
            ]
        },
        "future_accept2": {
            "text": "你接受了这个未来。试炼教会了你幸福比成功更重要。",
            "choices": [
                { "text": "完成试炼", "next": "future_completed" }
            ]
        },
        "future_path3": {
            "text": "你选择了第三条路。你看到了一个充满冒险但危险的未来——你经历了无数挑战，虽然险象环生，但也收获了成长和智慧。",
            "choices": [
                { "text": "接受这个未来", "next": "future_accept3" },
                { "text": "尝试改变", "next": "future_change" },
                { "text": "返回选择其他道路", "next": "future_trial" }
            ]
        },
        "future_accept3": {
            "text": "你接受了这个未来。试炼教会了你成长需要勇气和冒险。",
            "choices": [
                { "text": "完成试炼", "next": "future_completed" }
            ]
        },
        "future_change": {
            "text": "你试图改变未来，但未来是不确定的。你意识到，真正的未来是由现在的选择决定的。",
            "choices": [
                { "text": "完成试炼", "next": "future_completed" },
                { "text": "返回选择", "next": "future_trial" }
            ]
        },
        "future_completed": {
            "text": "未来试炼完成！你获得了循环之钥作为奖励。",
            "choices": [
                { "text": "前往迷宫深处", "next": "maze_core", "actions": [{ "type": "addItem", "itemId": "loop_key" }] },
                { "text": "返回入口", "next": "maze_entrance", "actions": [{ "type": "addItem", "itemId": "loop_key" }] }
            ]
        },
        "maze_core": {
            "text": "你来到了迷宫的最深处。这里有一个巨大的装置，上面有三个插槽，分别对应过去、现在和未来。装置旁边放着循环之钥。",
            "choices": [
                { "text": "插入循环之钥", "next": "insert_key", "condition": { "hasItem": "loop_key" } },
                { "text": "检查装置", "next": "check_device" },
                { "text": "使用时间水晶", "next": "use_crystal_final", "condition": { "hasItem": "time_crystal" } }
            ]
        },
        "check_device": {
            "text": "你仔细检查装置。它似乎是一个时间控制器，需要循环之钥才能激活。",
            "choices": [
                { "text": "寻找循环之钥", "next": "maze_entrance" },
                { "text": "尝试其他方法", "next": "try_other" }
            ]
        },
        "use_crystal_final": {
            "text": "你使用时间水晶，看到了时间循环的真相。这个循环是由一个强大的魔法创造的，目的是让被困的人学会接纳自己。",
            "choices": [
                { "text": "插入循环之钥", "next": "insert_key", "condition": { "hasItem": "loop_key" } },
                { "text": "理解真相", "next": "understand_truth" }
            ]
        },
        "try_other": {
            "text": "你尝试用其他物品激活装置，但都没有效果。",
            "choices": [
                { "text": "寻找循环之钥", "next": "maze_entrance" },
                { "text": "返回", "next": "maze_entrance" }
            ]
        },
        "understand_truth": {
            "text": "你理解了时间循环的真相。这个循环不是惩罚，而是一个学习和成长的机会。",
            "choices": [
                { "text": "插入循环之钥", "next": "insert_key", "condition": { "hasItem": "loop_key" } },
                { "text": "感谢循环", "next": "thank_loop" }
            ]
        },
        "thank_loop": {
            "text": "你感谢时间循环给了你成长的机会。你的真诚感动了时间本身，循环之钥自动出现在你面前。",
            "choices": [
                { "text": "插入循环之钥", "next": "insert_key", "actions": [{ "type": "addItem", "itemId": "loop_key" }] }
            ]
        },
        "insert_key": {
            "text": "你插入了循环之钥。装置开始运转，时间的束缚逐渐消散。你感到一阵轻松，终于摆脱了时间循环。",
            "choices": [
                { "text": "迎接新的一天", "next": "true_ending" },
                { "text": "回顾经历", "next": "ending_reflect" }
            ]
        },
        "ending_reflect": {
            "text": "你回顾了在时间循环中的经历。虽然每一天都是重复的，但你学到了很多东西——接纳过去、活在当下、拥抱未来。",
            "choices": [
                { "text": "迎接新的一天", "next": "true_ending" }
            ]
        },
        "true_ending": {
            "text": "⏳ 你终于打破了时间循环！当你再次醒来时，日期终于改变了。窗外是全新的一天，阳光明媚，充满希望。你不再是被困在循环中的人，而是一个真正自由的人。从今天开始，每一天都是新的开始。",
            "isEnd": true,
            "endType": "true"
        }
    }
}