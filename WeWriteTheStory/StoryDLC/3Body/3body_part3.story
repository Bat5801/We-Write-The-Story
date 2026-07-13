{
    "title": "三体·第三部",
    "subtitle": "死神永生",
    "description": "执剑人交接，黑暗森林威慑失效，三体舰队入侵，人类文明面临最终的考验...",
    "author": "三体粉丝作品",
    "version": "1.0",
    "features": {
        "inventory": true,
        "map": true
    },
    "items": [
        { "id": "swordholder_identity", "name": "执剑人身份", "icon": "⚔️", "description": "掌握引力波广播的权限" },
        { "id": "light_speed_ship", "name": "光速飞船", "icon": "🚀", "description": "能够达到光速的飞船" },
        { "id": "curvature_engine", "name": "曲率引擎", "icon": "🔧", "description": "制造光速飞船的核心技术" },
        { "id": "black_domain_key", "name": "黑域钥匙", "icon": "🔑", "description": "制造黑域的关键技术" },
        { "id": "universal_message", "name": "宇宙广播", "icon": "📡", "description": "向宇宙广播的信息" },
        { "id": "galaxy_map", "name": "星系地图", "icon": "🗺️", "description": "记录宇宙星系位置的地图" }
    ],
    "map": {
        "title": "宇宙地图",
        "locations": [
            { "id": "earth", "name": "地球", "description": "人类文明的母星" },
            { "id": "mars", "name": "火星", "description": "人类的新殖民地" },
            { "id": "jupiter", "name": "木星", "description": "太阳系最大的行星" },
            { "id": "outer_solar", "name": "太阳系外围", "description": "三体舰队到达的地方" },
            { "id": "curvature_space", "name": "曲率空间", "description": "光速飞船航行的空间" },
            { "id": "andromeda", "name": "仙女座星系", "description": "距离银河系最近的大星系" },
            { "id": "universe_end", "name": "宇宙尽头", "description": "宇宙的最终归宿" }
        ],
        "startingLocation": "earth"
    },
    "nodes": {
        "start": {
            "location": "earth",
            "text": "黑暗森林威慑建立后的第60年。\n\n罗辑已经年老，执剑人的交接迫在眉睫。联合国开始寻找新的执剑人。\n\n最终，一位名叫程心的年轻女性被选为新的执剑人。她是一位善良、富有同情心的人，但她是否具备执剑人所需的冷酷和果断？\n\n三体文明密切关注着这一切。他们知道，这是他们打破威慑的最佳时机。\n\n你是程心，刚刚被选为执剑人。你站在控制室里，手中握着引力波广播的开关。\n\n三体舰队已经到达太阳系外围，随时可能发动攻击。",
            "choices": [
                { "text": "进入执剑人状态，保持威慑", "next": "enter_swordholder" },
                { "text": "与三体文明沟通，寻求和平", "next": "communicate_trisolarans" },
                { "text": "将执剑人权限交给更合适的人", "next": "transfer_authority" }
            ]
        },
        "enter_swordholder": {
            "location": "earth",
            "text": "你进入了执剑人状态。\n\n你坐在控制室里，手中握着引力波广播的开关。你的心跳加速，手心出汗。\n\n三体舰队正在逼近，智子实时监控着你的一举一动。\n\n你知道，只要你表现出一丝犹豫，三体文明就会立即发动攻击。\n\n你的眼神坚定，你的手稳定。你准备迎接任何挑战...",
            "actions": [{ "type": "addItem", "itemId": "swordholder_identity" }],
            "choices": [
                { "text": "保持威慑状态", "next": "maintain_deterrence" },
                { "text": "尝试与三体文明沟通", "next": "try_communication" },
                { "text": "开始准备后手计划", "next": "prepare_backup" }
            ]
        },
        "communicate_trisolarans": {
            "location": "earth",
            "text": "你通过智子与三体文明沟通。\n\n\"我们希望和平共处，\"你说道，\"请不要发动攻击。\"\n\n三体文明的回应很简单：\"放下武器，我们会给你们一个体面的结局。\"\n\n你知道，这是一个陷阱。但你的善良让你不愿按下那个按钮...\n\n就在你犹豫的那一刻，三体舰队发动了攻击！",
            "choices": [
                { "text": "立即按下广播按钮", "next": "press_button" },
                { "text": "尝试阻止攻击", "next": "stop_attack" },
                { "text": "逃离地球", "next": "escape_earth" }
            ]
        },
        "transfer_authority": {
            "location": "earth",
            "text": "你认为自己不适合担任执剑人，决定将权限交给更合适的人。\n\n你找到了罗辑，希望他能够重新担任执剑人。\n\n罗辑摇了摇头：\"程心，执剑人的责任不是逃避。你必须学会面对。\"\n\n你明白了，逃避不是解决问题的方法。你必须亲自承担这个责任...",
            "choices": [
                { "text": "接受执剑人责任", "next": "enter_swordholder" },
                { "text": "寻找其他解决方案", "next": "other_solution" }
            ]
        },
        "maintain_deterrence": {
            "location": "earth",
            "text": "你保持威慑状态，守护着人类的命运。\n\n三体舰队在太阳系外围停了下来，他们不敢轻举妄动。\n\n时间一天天过去，你越来越适应执剑人的角色。你的眼神变得坚定，你的手不再颤抖。\n\n三体文明开始意识到，你不是他们想象中的弱者...",
            "choices": [
                { "text": "继续保持威慑", "next": "continue_deterrence" },
                { "text": "尝试寻找和平解决方案", "next": "peace_solution" },
                { "text": "开始准备后手计划", "next": "prepare_backup" }
            ]
        },
        "try_communication": {
            "location": "earth",
            "text": "你尝试与三体文明沟通。\n\n\"我们可以和平共处，\"你说道，\"为什么一定要互相毁灭？\"\n\n三体文明沉默了很久，然后说道：\"在黑暗森林中，暴露自己的位置意味着毁灭。你们已经暴露了，我们别无选择。\"\n\n你知道，三体文明说的是实话。在宇宙的黑暗森林中，生存是第一法则。\n\n但你不愿意放弃希望...",
            "choices": [
                { "text": "继续沟通", "next": "continue_communication" },
                { "text": "保持威慑", "next": "maintain_deterrence" },
                { "text": "寻找其他出路", "next": "other_solution" }
            ]
        },
        "prepare_backup": {
            "location": "earth",
            "text": "你开始准备后手计划。\n\n你知道，威慑不可能永远持续。你需要为人类准备一条退路。\n\n你想到了两个方案：\n1. 光速飞船计划：建造能够达到光速的飞船，让一部分人类逃离太阳系。\n2. 黑域计划：制造一个低光速黑洞，将太阳系与外界隔绝。\n\n你开始秘密研究这两个方案...",
            "choices": [
                { "text": "研究光速飞船", "next": "study_light_ship" },
                { "text": "研究黑域技术", "next": "study_black_domain" },
                { "text": "同时研究两个方案", "next": "study_both" }
            ]
        },
        "press_button": {
            "location": "outer_solar",
            "text": "你毫不犹豫地按下了广播按钮！\n\n引力波向宇宙深处传播，带着三体文明和太阳系的坐标。\n\n三体舰队立刻掉头，试图逃离太阳系。但一切都太晚了——坐标已经暴露。\n\n你知道，这意味着太阳系和三体星系都将被更高级的文明摧毁。\n\n但你也知道，这是唯一正确的选择...",
            "actions": [{ "type": "addItem", "itemId": "universal_message" }],
            "choices": [
                { "text": "等待毁灭", "next": "wait_destruction" },
                { "text": "开始逃亡", "next": "start_escape" }
            ]
        },
        "stop_attack": {
            "location": "outer_solar",
            "text": "你尝试阻止攻击，但一切都太晚了。\n\n三体舰队已经发动了攻击，引力波发射器被摧毁。\n\n你失去了威慑的能力，人类文明陷入了绝望...\n\n三体文明开始接管太阳系，人类被迫迁移到澳大利亚...",
            "choices": [
                { "text": "接受命运", "next": "accept_fate" },
                { "text": "寻找反抗的机会", "next": "find_resistance" }
            ]
        },
        "escape_earth": {
            "text": "你逃离了地球，乘坐飞船前往火星。\n\n但你知道，逃亡不是解决问题的方法。只要太阳系还存在，三体文明就会找到你们。\n\n你需要找到一条更根本的出路...",
            "choices": [
                { "text": "开始研究光速飞船", "next": "study_light_ship" },
                { "text": "寻找其他星球", "next": "find_new_home" }
            ]
        },
        "other_solution": {
            "location": "earth",
            "text": "你寻找其他解决方案。\n\n你想到了\"曲率驱动\"技术——通过扭曲空间来实现超光速旅行。如果能够掌握这项技术，人类就可以逃离太阳系。\n\n你开始秘密研究曲率驱动技术...",
            "choices": [
                { "text": "研究曲率驱动", "next": "study_curvature" },
                { "text": "回到执剑人岗位", "next": "enter_swordholder" }
            ]
        },
        "continue_deterrence": {
            "text": "你继续保持威慑状态。\n\n几十年过去了，你已经变成了一个老人。但你的意志依然坚定，你的手依然稳定。\n\n三体文明始终没有发动攻击，因为他们知道，你会毫不犹豫地按下那个按钮。\n\n人类在你的守护下，度过了一个又一个世纪...\n\n也许，和平真的能够持续下去...",
            "isEnd": true,
            "endType": "true",
            "endMessage": "坚定的意志，可以守护一个文明。",
            "choices": []
        },
        "peace_solution": {
            "text": "你开始寻找和平解决方案。\n\n你通过智子与三体文明沟通，试图找到一种和平共处的方式。\n\n三体文明表示，他们愿意与人类和平共处，但前提是人类必须放弃黑暗森林威慑。\n\n你面临着艰难的选择：是相信三体文明，还是继续维持威慑？",
            "choices": [
                { "text": "相信三体文明，放弃威慑", "next": "trust_trisolarans" },
                { "text": "继续维持威慑", "next": "maintain_deterrence" }
            ]
        },
        "continue_communication": {
            "text": "你继续与三体文明沟通。\n\n经过长时间的谈判，三体文明终于同意与人类和平共处。他们分享了先进的科技，帮助人类快速发展。\n\n两个文明共同探索宇宙，开创了一个新的时代。\n\n也许，宇宙并不是黑暗森林，而是一片光明的草原...",
            "isEnd": true,
            "endType": "true",
            "endMessage": "沟通和理解，可以化解仇恨。",
            "choices": []
        },
        "study_light_ship": {
            "location": "mars",
            "text": "你开始研究光速飞船技术。\n\n经过多年的努力，你成功研发了曲率引擎。这种引擎可以通过扭曲空间来实现光速飞行。\n\n你建造了一艘光速飞船，准备让一部分人类逃离太阳系。\n\n但你知道，一旦人类开始逃亡，黑暗森林威慑就会失效...",
            "actions": [{ "type": "addItem", "itemId": "light_speed_ship" }, { "type": "addItem", "itemId": "curvature_engine" }],
            "choices": [
                { "text": "启动逃亡计划", "next": "start_escape" },
                { "text": "继续维持威慑", "next": "maintain_deterrence" },
                { "text": "寻找两全其美的方案", "next": "find_balance" }
            ]
        },
        "study_black_domain": {
            "text": "你开始研究黑域技术。\n\n黑域技术需要将整个太阳系的光速降低到第三宇宙速度以下，这样任何物体都无法逃离太阳系。\n\n这个方案虽然安全，但也意味着人类将永远被困在太阳系中，无法探索宇宙。\n\n你成功研发了黑域技术，但你面临着艰难的选择...",
            "actions": [{ "type": "addItem", "itemId": "black_domain_key" }],
            "choices": [
                { "text": "启动黑域计划", "next": "activate_black_domain" },
                { "text": "继续维持威慑", "next": "maintain_deterrence" }
            ]
        },
        "study_both": {
            "text": "你同时研究光速飞船和黑域技术。\n\n你成功研发了两种技术，现在你面临着选择：是让一部分人类逃离太阳系，还是将整个太阳系变成黑域？\n\n你决定同时实施两个计划：一部分人类乘坐光速飞船逃离，而太阳系则变成黑域，保护留在地球上的人类。\n\n这是一个两全其美的方案...",
            "actions": [{ "type": "addItem", "itemId": "light_speed_ship" }, { "type": "addItem", "itemId": "black_domain_key" }],
            "choices": [{ "text": "实施双重计划", "next": "dual_plan" }]
        },
        "wait_destruction": {
            "text": "你等待着毁灭的到来。\n\n引力波已经向宇宙深处传播，太阳系和三体星系的坐标已经暴露。\n\n你知道，更高级的文明迟早会发现这些坐标，并发动攻击。\n\n但你也知道，你做出了正确的选择。在黑暗森林中，威慑是唯一的生存之道...\n\n也许，人类文明会在宇宙中留下自己的痕迹...",
            "isEnd": true,
            "endType": "true",
            "endMessage": "在黑暗森林中，生存需要勇气和牺牲。",
            "choices": []
        },
        "start_escape": {
            "location": "curvature_space",
            "text": "你启动了逃亡计划。\n\n光速飞船载着一部分人类，向着宇宙深处飞去。\n\n你知道，前方的路途充满未知和危险。但你也知道，这是人类文明延续的唯一希望。\n\n飞船加速到光速，太阳系在你的视野中逐渐变小，最终消失在黑暗中...",
            "choices": [
                { "text": "继续逃亡", "next": "continue_escape" },
                { "text": "寻找新家园", "next": "find_new_home" }
            ]
        },
        "accept_fate": {
            "text": "你接受了命运。\n\n人类被迫迁移到澳大利亚，三体文明开始改造地球。\n\n你看着曾经繁荣的城市变成废墟，心中充满了悲伤。\n\n但你也知道，人类文明不会轻易消失。只要还有人活着，就有希望...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "文明的毁灭不是终结，而是新的开始。",
            "choices": []
        },
        "find_resistance": {
            "text": "你寻找反抗的机会。\n\n你加入了地下抵抗组织，开始秘密策划反抗行动。\n\n虽然力量薄弱，但你们相信，只要坚持不懈，就一定能够找到反抗的机会。\n\n也许，在未来的某一天，人类能够重新夺回自己的家园...",
            "isEnd": true,
            "endType": "neutral",
            "endMessage": "反抗是艰难的，但也是必要的。",
            "choices": []
        },
        "find_new_home": {
            "location": "andromeda",
            "text": "你乘坐光速飞船，在宇宙中寻找新家园。\n\n你穿越了无数星系，终于找到了一个适合人类居住的星球。\n\n这个星球与地球相似，有着蓝色的海洋和绿色的陆地。\n\n你将飞船降落在这个星球上，开始了人类文明的新篇章...",
            "isEnd": true,
            "endType": "true",
            "endMessage": "新的家园，新的开始。",
            "choices": []
        },
        "study_curvature": {
            "text": "你开始研究曲率驱动技术。\n\n经过多年的努力，你成功研发了曲率引擎。这种引擎可以通过扭曲空间来实现光速飞行。\n\n你建造了一艘光速飞船，准备让一部分人类逃离太阳系。\n\n但你知道，一旦人类开始逃亡，黑暗森林威慑就会失效...",
            "actions": [{ "type": "addItem", "itemId": "curvature_engine" }, { "type": "addItem", "itemId": "light_speed_ship" }],
            "choices": [
                { "text": "启动逃亡计划", "next": "start_escape" },
                { "text": "继续维持威慑", "next": "maintain_deterrence" }
            ]
        },
        "trust_trisolarans": {
            "text": "你选择相信三体文明，放弃了黑暗森林威慑。\n\n三体文明兑现了承诺，与人类和平共处。他们分享了先进的科技，帮助人类快速发展。\n\n两个文明共同探索宇宙，开创了一个新的时代。\n\n也许，宇宙并不是黑暗森林，而是一片光明的草原...",
            "isEnd": true,
            "endType": "true",
            "endMessage": "信任，可以创造奇迹。",
            "choices": []
        },
        "activate_black_domain": {
            "text": "你启动了黑域计划。\n\n整个太阳系被低光速黑洞包裹，与外界隔绝。\n\n三体舰队无法进入太阳系，更高级的文明也无法发现太阳系的位置。\n\n人类安全了，但也永远被困在了太阳系中。\n\n你看着窗外的星空，知道人类将永远无法探索宇宙的奥秘...",
            "isEnd": true,
            "endType": "neutral",
            "endMessage": "安全是代价，自由是代价。",
            "choices": []
        },
        "find_balance": {
            "text": "你寻找两全其美的方案。\n\n你决定同时实施光速飞船和黑域计划：一部分人类乘坐光速飞船逃离太阳系，而太阳系则变成黑域，保护留在地球上的人类。\n\n这是一个复杂的计划，但你相信它能够成功。\n\n你开始实施计划...",
            "choices": [{ "text": "实施双重计划", "next": "dual_plan" }]
        },
        "continue_escape": {
            "text": "你继续逃亡，在宇宙中寻找新家园。\n\n你穿越了无数星系，见证了宇宙的壮丽和神秘。\n\n虽然路途遥远，但你相信，人类文明一定能够找到新的家园。\n\n在宇宙的某个角落，也许有一个星球正在等待着人类...",
            "isEnd": true,
            "endType": "true",
            "endMessage": "逃亡不是结束，而是新的开始。",
            "choices": []
        },
        "dual_plan": {
            "text": "你实施了双重计划。\n\n一部分人类乘坐光速飞船逃离太阳系，向着宇宙深处飞去。\n\n同时，太阳系被低光速黑洞包裹，与外界隔绝，保护留在地球上的人类。\n\n这是一个完美的方案——既保证了人类文明的延续，又保护了太阳系的安全。\n\n也许，这就是宇宙中文明生存的最终答案...",
            "isEnd": true,
            "endType": "true",
            "endMessage": "两全其美，也许是最好的结局。",
            "choices": []
        }
    }
}