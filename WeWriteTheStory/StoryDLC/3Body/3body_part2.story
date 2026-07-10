{
    "title": "三体·第二部",
    "subtitle": "黑暗森林",
    "description": "面壁计划启动，四个面壁者各自制定计划对抗三体文明，而宇宙的黑暗森林法则即将揭晓...",
    "author": "三体粉丝作品",
    "version": "1.0",
    "features": {
        "inventory": true,
        "map": true
    },
    "items": [
        { "id": "wallfacer_identity", "name": "面壁者身份", "icon": "🎭", "description": "被联合国任命为面壁者" },
        { "id": "dark_forest_book", "name": "黑暗森林笔记", "icon": "📖", "description": "记录黑暗森林法则的笔记" },
        { "id": "swordholder_authority", "name": "执剑人权限", "icon": "⚔️", "description": "掌握引力波广播的权限" },
        { "id": "stellar_chip", "name": "恒星芯片", "icon": "💎", "description": "可以引爆恒星的芯片" },
        { "id": "hibernation_pod", "name": "冬眠舱", "icon": "❄️", "description": "可以进行冬眠的设备" }
    ],
    "map": {
        "title": "面壁计划地图",
        "locations": [
            { "id": "un_meeting", "name": "联合国大会", "description": "面壁计划启动的地方" },
            { "id": "strategic_hq", "name": "战略总部", "description": "面壁者制定计划的地方" },
            { "id": "space_battle", "name": "太空战场", "description": "人类舰队与三体探测器的战场" },
            { "id": "dark_forest", "name": "黑暗森林", "description": "宇宙的黑暗森林" },
            { "id": "swordholder_room", "name": "执剑人房间", "description": "掌握引力波广播的控制室" },
            { "id": "proxima_centauri", "name": "比邻星", "description": "三体文明的母星" }
        ],
        "startingLocation": "un_meeting"
    },
    "nodes": {
        "start": {
            "location": "un_meeting",
            "text": "三体危机爆发后的第20年。\n\n联合国召开特别大会，宣布启动\"面壁计划\"。由于三体文明的思维透明，他们无法理解人类的战略欺骗，因此面壁者成为人类对抗三体文明的唯一希望。\n\n四位面壁者被选中：\n1. 弗里德里克·泰勒 - 美国前国防部长\n2. 曼努尔·雷迪亚兹 - 委内瑞拉前总统\n3. 比尔·希恩斯 - 英国科学家\n4. 罗辑 - 中国天文学家\n\n你是罗辑，一位普通的大学教授，从未想过自己会成为面壁者。",
            "choices": [
                { "text": "接受面壁者身份，开始制定计划", "next": "accept_wallfacer" },
                { "text": "拒绝面壁者身份", "next": "refuse_wallfacer" },
                { "text": "假装接受，实则暗中调查", "next": "fake_accept" }
            ]
        },
        "accept_wallfacer": {
            "location": "strategic_hq",
            "text": "你接受了面壁者身份。作为面壁者，你拥有无限的资源和权力，可以做任何事情而不需要解释原因。\n\n但你很快意识到，成为面壁者意味着孤独——没有人能理解你的真实意图，包括你的\"破壁人\"。\n\n三体组织为每个面壁者安排了一个\"破壁人\"，他们的任务是揭露面壁者的真实计划。",
            "actions": [{ "type": "addItem", "itemId": "wallfacer_identity" }],
            "choices": [
                { "text": "开始思考对抗三体的策略", "next": "think_strategy" },
                { "text": "利用面壁者权力享受生活", "next": "enjoy_life" },
                { "text": "与其他面壁者交流", "next": "communicate_wallfacers" }
            ]
        },
        "refuse_wallfacer": {
            "location": "un_meeting",
            "text": "\"我拒绝！\"你大声说道，\"我只是一个普通的学者，没有能力担任如此重要的角色。\"\n\n但面壁计划的规则是：一旦被选中，必须接受。这是为了防止面壁者假装拒绝来隐藏真实意图。\n\n你被强制任命为面壁者，开始了孤独的旅程...",
            "choices": [
                { "text": "无奈接受，开始工作", "next": "accept_wallfacer" },
                { "text": "消极怠工，等待被替换", "next": "passive_resistance" }
            ]
        },
        "fake_accept": {
            "location": "strategic_hq",
            "text": "你假装接受了面壁者身份，但实际上你打算暗中调查三体文明的真相。\n\n你利用面壁者的资源，开始研究三体文明的弱点。你发现，三体文明虽然科技先进，但他们也有致命的弱点...",
            "choices": [
                { "text": "深入研究三体文明", "next": "study_trisolarans" },
                { "text": "寻找三体文明的弱点", "next": "find_weakness" }
            ]
        },
        "passive_resistance": {
            "text": "你消极怠工，拒绝制定任何计划。\n\n联合国多次催促，但你始终无动于衷。他们开始怀疑你是否真的在隐藏什么计划。\n\n几年后，其他三位面壁者的计划相继被破壁人揭露。人类陷入了绝望...",
            "choices": [
                { "text": "继续消极抵抗", "next": "continue_passive" },
                { "text": "开始认真制定计划", "next": "think_strategy" }
            ]
        },
        "continue_passive": {
            "text": "你继续消极抵抗。\n\n三体舰队越来越近，人类舰队虽然数量庞大，但在三体探测器\"水滴\"面前不堪一击。\n\n当水滴摧毁人类舰队的那一刻，你终于意识到：消极抵抗只会带来毁灭。\n\n但一切都太晚了...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "消极抵抗，最终只会带来毁灭。",
            "choices": []
        },
        "think_strategy": {
            "location": "strategic_hq",
            "text": "你开始思考对抗三体文明的策略。\n\n三体文明已经通过智子锁死了人类的基础科学，传统的科技发展已经不可能。\n\n你想到了叶文洁曾经提到的\"宇宙社会学\"——也许，宇宙的黑暗森林法则才是对抗三体文明的关键。\n\n黑暗森林法则：\n1. 生存是文明的第一需要\n2. 文明不断增长和扩张，但宇宙中的物质总量保持不变\n3. 猜疑链和技术爆炸",
            "choices": [
                { "text": "深入研究黑暗森林法则", "next": "study_dark_forest" },
                { "text": "利用黑暗森林法则制定威慑计划", "next": "deterrence_plan" },
                { "text": "寻找其他解决方案", "next": "other_solution" }
            ]
        },
        "enjoy_life": {
            "location": "strategic_hq",
            "text": "你决定利用面壁者的权力享受生活。\n\n你建造了一座豪华的庄园，娶了美丽的妻子，生了可爱的孩子。你忘记了三体危机，忘记了面壁者的责任。\n\n但好景不长。三体组织的破壁人找到了你，开始揭露你的\"计划\"...",
            "choices": [
                { "text": "继续享受生活，不管破壁人", "next": "ignore_breaker" },
                { "text": "开始认真制定计划", "next": "think_strategy" }
            ]
        },
        "communicate_wallfacers": {
            "location": "strategic_hq",
            "text": "你与其他三位面壁者交流。\n\n泰勒提出了\"量子幽灵舰队\"计划，试图用自杀式攻击对抗三体舰队。\n雷迪亚兹计划在水星上引爆氢弹，制造太阳系的\"死亡摇篮\"。\n希恩斯计划用\"思想钢印\"改造人类的思想，让人类变得更加理性。\n\n但你知道，这些计划都有致命的缺陷...",
            "choices": [
                { "text": "分析其他面壁者的计划", "next": "analyze_plans" },
                { "text": "保持独立思考", "next": "independent_thinking" }
            ]
        },
        "study_trisolarans": {
            "location": "strategic_hq",
            "text": "你深入研究三体文明。\n\n你发现，三体文明虽然科技先进，但他们有一个致命的弱点：他们的思维是透明的，无法隐藏自己的意图。\n\n这意味着，他们无法理解人类的战略欺骗。这也是面壁计划能够成立的基础。\n\n但仅仅依靠战略欺骗是不够的，你需要找到更根本的解决方案。",
            "choices": [
                { "text": "继续研究三体文明", "next": "continue_study" },
                { "text": "开始制定计划", "next": "think_strategy" }
            ]
        },
        "find_weakness": {
            "location": "strategic_hq",
            "text": "你寻找三体文明的弱点。\n\n你发现，三体文明虽然能够进行星际旅行，但他们的母星只有一个。如果能够威胁到他们的母星，也许就能迫使他们放弃入侵。\n\n但如何威胁三体母星呢？你需要一种能够跨越4.2光年的武器...",
            "choices": [
                { "text": "研究引力波广播", "next": "study_gravity_wave" },
                { "text": "研究恒星引爆", "next": "study_stellar_detonation" }
            ]
        },
        "study_dark_forest": {
            "location": "dark_forest",
            "text": "你深入研究黑暗森林法则。\n\n你意识到，如果能够向宇宙广播三体文明的坐标，其他更高级的文明就会发现他们，并将他们消灭。\n\n这就是\"黑暗森林威慑\"——用同归于尽的威胁，迫使三体文明放弃入侵。\n\n但这个计划有一个致命的缺陷：广播坐标意味着地球的位置也会暴露...",
            "actions": [{ "type": "addItem", "itemId": "dark_forest_book" }],
            "choices": [
                { "text": "制定黑暗森林威慑计划", "next": "deterrence_plan" },
                { "text": "寻找更安全的方案", "next": "safe_solution" }
            ]
        },
        "deterrence_plan": {
            "location": "strategic_hq",
            "text": "你制定了黑暗森林威慑计划。\n\n你计划在太阳系周围部署大量的引力波发射器，一旦三体文明发动攻击，你就会向宇宙广播三体文明的坐标。\n\n这个计划被称为\"执剑人\"计划——执剑人掌握着引力波广播的开关，决定着两个文明的命运。\n\n你成为了第一任执剑人。",
            "actions": [{ "type": "addItem", "itemId": "swordholder_authority" }],
            "choices": [
                { "text": "进入执剑人状态", "next": "become_swordholder" },
                { "text": "培养继任者", "next": "train_successor" },
                { "text": "寻找替代方案", "next": "alternative_plan" }
            ]
        },
        "other_solution": {
            "location": "strategic_hq",
            "text": "你寻找其他解决方案。\n\n你想到了\"逃亡主义\"——让一部分人类逃离太阳系，延续人类文明。但这个方案被联合国否决了，因为它意味着放弃大多数人类。\n\n你又想到了\"黑域计划\"——制造一个低光速黑洞，将太阳系与外界隔绝。但这个方案需要的技术远超人类当前的水平...",
            "choices": [
                { "text": "继续研究黑域计划", "next": "study_black_domain" },
                { "text": "回到黑暗森林威慑", "next": "deterrence_plan" }
            ]
        },
        "ignore_breaker": {
            "text": "你继续享受生活，无视破壁人的威胁。\n\n破壁人向全世界揭露你的\"计划\"：你根本没有制定任何计划，只是在享受生活。\n\n人类对你感到失望，但三体文明却对你产生了兴趣。他们认为，你可能是一个比其他面壁者更危险的对手...",
            "choices": [
                { "text": "继续享受生活", "next": "continue_enjoy" },
                { "text": "开始制定计划", "next": "think_strategy" }
            ]
        },
        "continue_enjoy": {
            "text": "你继续享受生活，直到三体舰队到达。\n\n水滴摧毁了人类舰队，三体文明开始入侵太阳系。\n\n你失去了一切——你的庄园、你的家人、你的生活。\n\n在最后一刻，你终于意识到：逃避是没有用的。\n\n但一切都太晚了...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "逃避不能解决问题，只会让问题变得更糟。",
            "choices": []
        },
        "analyze_plans": {
            "location": "strategic_hq",
            "text": "你分析其他面壁者的计划。\n\n泰勒的\"量子幽灵舰队\"计划被破壁人揭露——他计划让人类舰队自杀，变成量子幽灵来对抗三体舰队。\n雷迪亚兹的计划被揭露——他计划在水星引爆氢弹，让太阳系变成无法逃脱的\"死亡摇篮\"。\n希恩斯的计划被揭露——他用\"思想钢印\"让人类变得\"必胜主义\"，但实际上他偷偷加入了\"失败主义\"的思想。\n\n三位面壁者的计划都失败了。现在，所有人的希望都寄托在你身上...",
            "choices": [
                { "text": "制定自己的计划", "next": "think_strategy" },
                { "text": "借鉴其他面壁者的经验", "next": "learn_from_others" }
            ]
        },
        "independent_thinking": {
            "text": "你保持独立思考，不被其他面壁者的计划影响。\n\n你意识到，所有传统的对抗方式都无法战胜三体文明。你需要一种全新的思路——一种基于宇宙社会学的思路。\n\n黑暗森林法则，也许是人类唯一的希望...",
            "choices": [
                { "text": "研究黑暗森林法则", "next": "study_dark_forest" },
                { "text": "制定计划", "next": "think_strategy" }
            ]
        },
        "continue_study": {
            "text": "你继续研究三体文明。\n\n你发现了更多关于三体文明的秘密：他们的社会结构、科技水平、甚至他们的弱点。\n\n但你也意识到，仅仅了解三体文明是不够的。你需要一种能够威胁到他们的力量...",
            "choices": [
                { "text": "开始制定计划", "next": "think_strategy" },
                { "text": "寻找威胁三体的方法", "next": "find_threat_method" }
            ]
        },
        "study_gravity_wave": {
            "location": "strategic_hq",
            "text": "你研究引力波广播技术。\n\n引力波可以跨越星际距离传播，而且无法被拦截。如果能够用引力波广播三体文明的坐标，就能引来更高级文明的打击。\n\n你成功研发了引力波发射器，并在太阳系周围部署了大量发射器。\n\n现在，你只需要按下按钮...",
            "actions": [{ "type": "addItem", "itemId": "swordholder_authority" }],
            "choices": [
                { "text": "成为执剑人", "next": "become_swordholder" },
                { "text": "寻找其他方案", "next": "other_solution" }
            ]
        },
        "study_stellar_detonation": {
            "location": "strategic_hq",
            "text": "你研究恒星引爆技术。\n\n如果能够引爆一颗恒星，产生的能量足以摧毁整个星系。你计划在三体星系附近引爆一颗恒星，威胁三体文明。\n\n但这个计划有一个问题：你需要将引爆装置送到三体星系，这需要几百年的时间...",
            "actions": [{ "type": "addItem", "itemId": "stellar_chip" }],
            "choices": [
                { "text": "继续研究恒星引爆", "next": "continue_stellar" },
                { "text": "转向引力波广播", "next": "study_gravity_wave" }
            ]
        },
        "safe_solution": {
            "location": "strategic_hq",
            "text": "你寻找更安全的方案。\n\n你想到了\"黑域计划\"——制造一个低光速黑洞，将太阳系与外界隔绝。这样，三体文明无法进入太阳系，而太阳系的位置也不会暴露给其他文明。\n\n但这个方案需要的技术远超人类当前的水平，而且一旦实施，人类将永远被困在太阳系中...",
            "choices": [
                { "text": "开始研究黑域技术", "next": "study_black_domain" },
                { "text": "回到黑暗森林威慑", "next": "deterrence_plan" }
            ]
        },
        "become_swordholder": {
            "location": "swordholder_room",
            "text": "你成为了执剑人，进入了执剑人状态。\n\n你独自一人坐在控制室里，手中握着引力波广播的开关。你的一举一动都关系到两个文明的命运。\n\n三体文明知道你的存在，他们不敢轻举妄动。只要你还活着，只要你还掌握着引力波广播的开关，他们就不敢发动攻击。\n\n你成为了人类的守护神，但也是人类最大的威胁...",
            "choices": [
                { "text": "保持执剑人状态", "next": "maintain_swordholder" },
                { "text": "培养继任者", "next": "train_successor" },
                { "text": "寻找替代方案", "next": "alternative_plan" }
            ]
        },
        "train_successor": {
            "location": "strategic_hq",
            "text": "你开始培养继任者。\n\n执剑人的责任太过重大，你知道自己无法永远承担这个责任。你需要找到一个合适的继任者，一个能够在关键时刻做出正确选择的人。\n\n你考察了许多候选人，但始终没有找到满意的。\n\n也许，执剑人的责任注定要由你承担...",
            "choices": [
                { "text": "继续寻找继任者", "next": "continue_search" },
                { "text": "亲自担任执剑人", "next": "become_swordholder" }
            ]
        },
        "alternative_plan": {
            "location": "strategic_hq",
            "text": "你寻找替代方案。\n\n你想到了\"光速飞船计划\"——建造能够达到光速的飞船，让一部分人类逃离太阳系。但这个计划与黑暗森林威慑存在矛盾：如果人类能够逃离，威慑就会失效。\n\n你陷入了两难的境地...",
            "choices": [
                { "text": "继续研究光速飞船", "next": "study_light_ship" },
                { "text": "维持黑暗森林威慑", "next": "maintain_deterrence" }
            ]
        },
        "study_black_domain": {
            "text": "你开始研究黑域技术。\n\n黑域技术需要将整个太阳系的光速降低到第三宇宙速度以下，这样任何物体都无法逃离太阳系。\n\n这个方案虽然安全，但也意味着人类将永远被困在太阳系中，无法探索宇宙。\n\n而且，黑域技术的实现需要的能量远超人类当前的能力...",
            "isEnd": true,
            "endType": "neutral",
            "endMessage": "黑域是安全的，但也是牢笼。",
            "choices": []
        },
        "learn_from_others": {
            "text": "你借鉴其他面壁者的经验。\n\n从泰勒身上，你学到了\"自杀式攻击\"的勇气。\n从雷迪亚兹身上，你学到了\"同归于尽\"的决心。\n从希恩斯身上，你学到了\"思想控制\"的危险。\n\n但你知道，你需要一种全新的思路——一种能够真正威胁三体文明的思路。\n\n黑暗森林法则，也许是唯一的答案...",
            "choices": [
                { "text": "研究黑暗森林法则", "next": "study_dark_forest" },
                { "text": "制定计划", "next": "think_strategy" }
            ]
        },
        "find_threat_method": {
            "text": "你寻找威胁三体文明的方法。\n\n你想到了多种方案，但都有致命的缺陷。直到你想到了黑暗森林法则——向宇宙广播三体文明的坐标。\n\n这是一种同归于尽的威胁，但也许是唯一有效的威胁。\n\n你开始制定计划...",
            "choices": [{ "text": "制定黑暗森林威慑计划", "next": "deterrence_plan" }]
        },
        "continue_stellar": {
            "text": "你继续研究恒星引爆技术。\n\n你成功研发了可以引爆恒星的芯片，但将芯片送到三体星系需要几百年的时间。\n\n在这段时间里，三体舰队已经到达了太阳系。\n\n你的计划来不及实施了...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "计划赶不上变化，有时候需要更直接的方案。",
            "choices": []
        },
        "maintain_swordholder": {
            "location": "swordholder_room",
            "text": "你保持执剑人状态，守护着人类的命运。\n\n几十年过去了，你已经变成了一个老人。但你的眼神依然坚定，你的手依然稳定。\n\n三体文明始终没有发动攻击，因为他们知道，你会毫不犹豫地按下那个按钮。\n\n人类在你的守护下，度过了几十年的和平...",
            "choices": [
                { "text": "继续守护", "next": "continue_guard" },
                { "text": "寻找和平解决方案", "next": "peace_solution" }
            ]
        },
        "continue_search": {
            "text": "你继续寻找继任者，但始终没有找到合适的人选。\n\n执剑人的责任太过重大，需要一种特殊的性格——冷静、果断、毫不留情。\n\n也许，这个责任注定要由你承担。也许，你就是唯一能够胜任这个角色的人...",
            "choices": [{ "text": "亲自担任执剑人", "next": "become_swordholder" }]
        },
        "study_light_ship": {
            "text": "你开始研究光速飞船技术。\n\n光速飞船可以让人类逃离太阳系，延续人类文明。但这个计划与黑暗森林威慑存在矛盾：如果人类能够逃离，威慑就会失效。\n\n你陷入了两难的境地。最终，你决定秘密研究光速飞船，同时维持黑暗森林威慑...",
            "isEnd": true,
            "endType": "neutral",
            "endMessage": "秘密计划，也许能为人类留下一线生机。",
            "choices": []
        },
        "maintain_deterrence": {
            "text": "你决定维持黑暗森林威慑。\n\n虽然这个方案有风险，但它是目前最有效的方案。你继续担任执剑人，守护着人类的命运。\n\n三体文明始终没有发动攻击，人类在你的守护下继续发展。\n\n也许，和平真的能够持续下去...",
            "isEnd": true,
            "endType": "neutral",
            "endMessage": "威慑是脆弱的，但也是必要的。",
            "choices": []
        },
        "continue_guard": {
            "text": "你继续守护着人类的命运。\n\n时间一天天过去，你越来越老，但你的意志依然坚定。\n\n三体文明始终没有发动攻击，因为他们知道，你会毫不犹豫地按下那个按钮。\n\n在你的守护下，人类度过了一个又一个世纪...",
            "isEnd": true,
            "endType": "true",
            "endMessage": "坚定的意志，可以守护一个文明。",
            "choices": []
        },
        "peace_solution": {
            "text": "你开始寻找和平解决方案。\n\n你通过智子与三体文明沟通，试图找到一种和平共处的方式。\n\n三体文明表示，他们愿意与人类和平共处，但前提是人类必须放弃黑暗森林威慑。\n\n你面临着艰难的选择：是相信三体文明，还是继续维持威慑？",
            "choices": [
                { "text": "相信三体文明，放弃威慑", "next": "trust_trisolarans" },
                { "text": "继续维持威慑", "next": "maintain_swordholder" }
            ]
        },
        "trust_trisolarans": {
            "text": "你选择相信三体文明，放弃了黑暗森林威慑。\n\n三体文明兑现了承诺，与人类和平共处。他们分享了先进的科技，帮助人类快速发展。\n\n两个文明共同探索宇宙，开创了一个新的时代。\n\n也许，宇宙并不是黑暗森林，而是一片光明的草原...",
            "isEnd": true,
            "endType": "true",
            "endMessage": "信任，可以创造奇迹。",
            "choices": []
        }
    }
}