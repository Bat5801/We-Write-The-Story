{
    "title": "三体·第一部",
    "subtitle": "地球往事",
    "description": "人类文明与三体文明的初次接触，一段改变人类命运的故事...",
    "author": "三体粉丝作品",
    "version": "1.0",
    "features": {
        "inventory": true,
        "map": true
    },
    "items": [
        { "id": "redshore_key", "name": "红岸基地钥匙", "icon": "🔑", "description": "通往红岸基地的钥匙" },
        { "id": "message_recorder", "name": "信息记录器", "icon": "📻", "description": "记录三体信息的设备" },
        { "id": "three_body_game", "name": "三体游戏", "icon": "🎮", "description": "三体组织开发的虚拟现实游戏" },
        { "id": "dark_forest_note", "name": "黑暗森林笔记", "icon": "📝", "description": "叶文洁留下的笔记" }
    ],
    "map": {
        "title": "三体世界地图",
        "locations": [
            { "id": "redshore_base", "name": "红岸基地", "description": "位于大兴安岭的秘密科研基地" },
            { "id": "outer_space", "name": "三体监听站", "description": "三体文明的监听站" },
            { "id": "three_body_planet", "name": "三体星球", "description": "距离地球4.2光年的三体文明母星" },
            { "id": "eto_meeting", "name": "三体组织聚会", "description": "地球三体组织的秘密聚会地点" },
            { "id": "great_wall", "name": "长城", "description": "汪淼第一次接触三体游戏的地方" },
            { "id": "panama_canals", "name": "巴拿马运河", "description": "古筝行动发生地" }
        ],
        "startingLocation": "redshore_base"
    },
    "nodes": {
        "start": {
            "location": "redshore_base",
            "text": "1969年，大兴安岭。\n\n你是叶文洁，一名被下放到偏远地区的物理学家。命运将你带到了一个名为\"红岸基地\"的秘密科研设施。\n\n这里是中国最大的射电望远镜所在地，表面上是用于监测敌方导弹，实际上有着更神秘的使命——寻找外星文明。\n\n基地政委雷志成交给你一项任务：调试和改进信号发射系统。",
            "choices": [
                { "text": "接受任务，认真调试设备", "next": "accept_mission" },
                { "text": "询问任务的真正目的", "next": "ask_purpose" },
                { "text": "拒绝任务，保持沉默", "next": "refuse_mission" }
            ]
        },
        "accept_mission": {
            "location": "redshore_base",
            "text": "你接受了任务。在接下来的几年里，你全身心投入到工作中，逐渐掌握了红岸基地的核心技术。\n\n1971年，你发现了一个惊人的事实：红岸基地的天线不仅可以接收信号，还可以向宇宙发送信号！\n\n一个念头在你心中升起——如果向宇宙发送信号，会发生什么？",
            "choices": [
                { "text": "立即向宇宙发送信号", "next": "send_signal" },
                { "text": "先研究一段时间再决定", "next": "study_signal" },
                { "text": "将这个发现报告给上级", "next": "report_discovery" }
            ]
        },
        "ask_purpose": {
            "location": "redshore_base",
            "text": "\"这个任务的真正目的是什么？\"你问道。\n\n雷志成微微一笑：\"叶同志，有些事情不该问的就不要问。做好你的本职工作。\"\n\n你感到一丝不安，但还是接受了任务。在工作中，你逐渐发现了红岸基地的秘密...",
            "choices": [
                { "text": "继续工作，暗中调查", "next": "investigate_secretly" },
                { "text": "放弃调查，专心工作", "next": "accept_mission" }
            ]
        },
        "refuse_mission": {
            "location": "redshore_base",
            "text": "你拒绝了任务。雷志成的脸色变得阴沉：\"叶文洁同志，你的态度很有问题。\"\n\n你被关了禁闭。在禁闭室里，你思考着自己的命运。这个时代，拒绝任务意味着什么？\n\n几天后，雷志成再次找到你：\"给你最后一次机会。\"",
            "choices": [
                { "text": "接受任务", "next": "accept_mission" },
                { "text": "坚持拒绝", "next": "persist_refuse" }
            ]
        },
        "persist_refuse": {
            "text": "你坚持拒绝。雷志成冷笑着离开。\n\n你的命运变得更加坎坷。你被送到更远的地方劳改，再也没有接触红岸基地的机会。\n\n几十年后，你在新闻上看到：中国成功发现了外星文明信号...\n\n你错过了改变人类命运的机会。",
            "isEnd": true,
            "endType": "neutral",
            "endMessage": "一个人的命运，有时只是一念之差。",
            "choices": []
        },
        "investigate_secretly": {
            "location": "redshore_base",
            "text": "你在工作中暗中调查，发现了红岸基地的真正使命——寻找外星文明。\n\n一天深夜，你独自一人来到发射台。巨大的天线指向天空，仿佛在等待着什么。\n\n你知道，只要按下那个按钮，人类的命运就会彻底改变。",
            "choices": [
                { "text": "按下按钮，发送信号", "next": "send_signal" },
                { "text": "离开发射台", "next": "leave_redshore" }
            ]
        },
        "study_signal": {
            "location": "redshore_base",
            "text": "你花了几年时间研究信号发射技术。在这段时间里，你经历了许多事情——父亲被批斗致死，母亲与你划清界限，妹妹在武斗中身亡。\n\n这个世界让你感到失望。人类的自私、愚昧和暴力让你对文明失去了信心。\n\n也许，引入一个更高级的文明，是拯救人类的唯一途径。",
            "choices": [
                { "text": "发送信号，召唤外星文明", "next": "send_signal" },
                { "text": "放弃这个想法，继续平静生活", "next": "leave_redshore" }
            ]
        },
        "report_discovery": {
            "location": "redshore_base",
            "text": "你将发现报告给了雷志成。他对你的表现很满意，但告诉你：\"这件事必须保密。\"\n\n几年后，你在一次事故中\"意外\"身亡。你的发现被封存，直到几十年后才被重新提起...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "有些秘密，知道的人都活不长。",
            "choices": []
        },
        "send_signal": {
            "location": "redshore_base",
            "text": "1971年秋天，你站在红岸基地的发射台前。\n\n\"这个世界已经无可救药了，\"你想着，\"也许只有更高级的文明才能拯救人类。\"\n\n你深吸一口气，按下了发射按钮。\n\n一道强大的电磁波射向宇宙深处，带着人类文明的坐标和问候。\n\n你不知道的是，在4.2光年之外，有一个文明正在等待着这个信号...",
            "actions": [{ "type": "addItem", "itemId": "redshore_key" }],
            "choices": [
                { "text": "等待回应", "next": "wait_response" },
                { "text": "离开红岸基地", "next": "leave_redshore" }
            ]
        },
        "wait_response": {
            "location": "redshore_base",
            "text": "你在红岸基地等待了四年。\n\n1975年，你收到了来自宇宙深处的回应！\n\n信号解码后，你看到了一行文字：\n\n\"不要回答！不要回答！不要回答！\"\n\n\"我们的文明正在逃亡，舰队已经出发。回答会暴露你们的坐标，我们的舰队将改变航向。\"\n\n\"这个宇宙的黑暗超出你的想象...\"\n\n你感到一阵寒意，但更多的是兴奋。你终于找到了外星文明！",
            "actions": [{ "type": "addItem", "itemId": "message_recorder" }],
            "choices": [
                { "text": "回复三体文明", "next": "reply_signal" },
                { "text": "不回复，隐瞒这个发现", "next": "hide_discovery" },
                { "text": "报告给上级", "next": "report_aliens" }
            ]
        },
        "leave_redshore": {
            "text": "你离开了红岸基地。几十年后，你在电视上看到新闻：\n\n\"我国天文学家发现疑似外星文明信号...\"\n\n你知道那是什么，但你选择保持沉默。\n\n人类的命运，终究掌握在自己手中。",
            "isEnd": true,
            "endType": "neutral",
            "endMessage": "有些选择，会改变整个文明的命运。",
            "choices": []
        },
        "reply_signal": {
            "location": "redshore_base",
            "text": "你没有听从警告。你认为，只有引入更高级的文明，才能拯救堕落的人类。\n\n你回复道：\n\n\"这里是地球。我们的文明正在衰落，需要你们的帮助。\"\n\n信号发送出去了。你知道，三体舰队正在改变航向，向着地球驶来。\n\n距离他们到达，还有400年。在这段时间里，人类必须做好准备。",
            "choices": [
                { "text": "开始组建三体组织", "next": "form_eto" },
                { "text": "等待三体舰队到来", "next": "wait_fleet" }
            ]
        },
        "hide_discovery": {
            "location": "redshore_base",
            "text": "你决定隐瞒这个发现。但这个秘密像一块石头压在你的心上。\n\n几年后，你遇到了伊文斯——一个继承了巨额遗产的美国人，他同样对人类文明感到失望。\n\n你将三体的秘密告诉了他。",
            "choices": [
                { "text": "与伊文斯合作", "next": "form_eto" },
                { "text": "警告伊文斯不要干预", "next": "warn_evans" }
            ]
        },
        "report_aliens": {
            "location": "redshore_base",
            "text": "你将发现报告给了上级。消息很快传到了最高层。\n\n政府决定封锁消息，并开始秘密研究应对方案。\n\n你被任命为外星事务专员，负责与三体文明的沟通。\n\n几十年后，人类建立了强大的太空防御体系，准备迎接三体舰队的到来...",
            "isEnd": true,
            "endType": "true",
            "endMessage": "人类提前准备，也许能改变命运。",
            "choices": []
        },
        "form_eto": {
            "location": "eto_meeting",
            "text": "你和伊文斯共同创建了\"地球三体组织\"（ETO）。\n\nETO迅速发展壮大，成员包括科学家、政治家、富豪等各界精英。他们都对人类文明感到失望，希望三体文明能够降临，拯救或毁灭这个堕落的世界。\n\nETO分为两派：\n- 拯救派：希望三体文明帮助人类进步\n- 降临派：希望三体文明彻底毁灭人类\n\n伊文斯成为降临派领袖，而你被尊为\"统帅\"。",
            "choices": [
                { "text": "支持拯救派", "next": "support_salvation" },
                { "text": "支持降临派", "next": "support_arrival" },
                { "text": "保持中立，观察局势", "next": "stay_neutral" }
            ]
        },
        "wait_fleet": {
            "location": "three_body_planet",
            "text": "你等待着三体舰队的到来。在这400年间，人类社会发生了巨大的变化。\n\n科技飞速发展，但人性的弱点依然存在。战争、贪婪、自私...人类似乎没有任何改变。\n\n2187年，三体舰队抵达太阳系外围。\n\n人类的末日，终于到来了...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "没有准备的文明，只能等待毁灭。",
            "choices": []
        },
        "warn_evans": {
            "text": "\"不要干预这件事，\"你警告伊文斯，\"这关系到整个人类的命运。\"\n\n但伊文斯已经下定决心。他秘密组建了三体组织，开始与三体文明沟通。\n\n你试图阻止他，但为时已晚。三体组织已经发展壮大，成为一股不可忽视的力量...",
            "choices": [
                { "text": "加入三体组织，试图引导他们", "next": "join_eto_guide" },
                { "text": "向政府揭发三体组织", "next": "expose_eto" }
            ]
        },
        "support_salvation": {
            "location": "eto_meeting",
            "text": "你支持拯救派，希望三体文明能够帮助人类进步。\n\n但降临派越来越激进，他们甚至计划破坏人类的科技发展。\n\n伊文斯掌握着与三体文明沟通的\"第二红岸基地\"——一艘名为\"审判日号\"的巨轮。\n\n你必须做出选择：是继续支持拯救派，还是采取行动阻止降临派？",
            "choices": [
                { "text": "与伊文斯对质", "next": "confront_evans" },
                { "text": "暗中收集降临派的证据", "next": "gather_evidence" },
                { "text": "离开三体组织", "next": "leave_eto" }
            ]
        },
        "support_arrival": {
            "location": "eto_meeting",
            "text": "你支持降临派，认为人类已经无可救药，只有三体文明才能带来新生。\n\n你帮助伊文斯破坏人类的科技发展，散布三体文明的恐惧。\n\n但随着时间推移，你开始怀疑：三体文明真的会带来更好的世界吗？\n\n他们的舰队正在接近，而你开始感到一丝不安...",
            "choices": [
                { "text": "继续支持降临派", "next": "continue_arrival" },
                { "text": "重新考虑立场", "next": "reconsider_position" }
            ]
        },
        "stay_neutral": {
            "location": "eto_meeting",
            "text": "你保持中立，观察着局势的发展。\n\n拯救派和降临派之间的矛盾越来越尖锐。你知道，一场内战在所难免。\n\n就在这时，一名叫汪淼的科学家被三体组织选中，进入了\"三体\"虚拟现实游戏...",
            "choices": [
                { "text": "关注汪淼的动向", "next": "watch_wangmiao" },
                { "text": "采取行动，结束两派争斗", "next": "end_conflict" }
            ]
        },
        "join_eto_guide": {
            "location": "eto_meeting",
            "text": "你加入了三体组织，试图引导他们走向正确的方向。\n\n你被尊为\"统帅\"，但你知道自己的责任重大。你必须在三体文明和人类文明之间找到平衡点。\n\n一名叫汪淼的科学家被选中，进入了\"三体\"游戏...",
            "choices": [
                { "text": "关注汪淼", "next": "watch_wangmiao" },
                { "text": "开始制定应对计划", "next": "make_plan" }
            ]
        },
        "expose_eto": {
            "text": "你向政府揭发了三体组织。\n\n政府立即展开行动，逮捕了伊文斯和许多三体组织成员。\n\n但三体组织已经渗透到社会的各个层面，彻底清除他们并非易事。\n\n更重要的是，三体舰队已经出发，400年后将抵达地球。\n\n人类必须在这段时间内做好准备...",
            "isEnd": true,
            "endType": "true",
            "endMessage": "提前揭露真相，人类有了更多时间准备。",
            "choices": []
        },
        "confront_evans": {
            "location": "eto_meeting",
            "text": "\"伊文斯，你太过分了！\"你质问道，\"降临派的行为已经超出了底线！\"\n\n伊文斯冷笑着：\"统帅，人类已经无可救药。只有毁灭，才能带来新生。\"\n\n你们之间的矛盾彻底爆发。三体组织分裂了...",
            "choices": [
                { "text": "带领拯救派离开", "next": "salvation_split" },
                { "text": "试图说服伊文斯", "next": "persuade_evans" }
            ]
        },
        "gather_evidence": {
            "location": "eto_meeting",
            "text": "你暗中收集降临派的证据。你发现，伊文斯不仅计划破坏人类科技，还准备在三体舰队到达前发动一场全球性的灾难。\n\n你知道必须采取行动了。",
            "choices": [
                { "text": "向政府透露情报", "next": "inform_government" },
                { "text": "发动拯救派政变", "next": "salvation_coup" }
            ]
        },
        "leave_eto": {
            "text": "你离开了三体组织。\n\n几十年后，你在新闻上看到：\n\n\"特大新闻！三体组织被破获，审判日号被摧毁！\"\n\n你知道，人类终于开始反击了。\n\n但你也知道，真正的挑战还在后面——400年后，三体舰队将抵达太阳系...",
            "isEnd": true,
            "endType": "neutral",
            "endMessage": "离开是一种选择，但命运依然相连。",
            "choices": []
        },
        "continue_arrival": {
            "location": "eto_meeting",
            "text": "你继续支持降临派。\n\n伊文斯对你的忠诚很满意，将\"审判日号\"的指挥权交给了你。\n\n你指挥着这艘巨轮，在世界各地执行降临派的计划。\n\n但你心中的不安越来越强烈...三体文明真的会如我们所愿吗？",
            "choices": [
                { "text": "继续执行任务", "next": "execute_mission" },
                { "text": "背叛降临派", "next": "betray_arrival" }
            ]
        },
        "reconsider_position": {
            "location": "eto_meeting",
            "text": "你开始重新考虑自己的立场。\n\n人类确实有很多缺点，但也有值得拯救的地方。艺术、科学、爱...这些都是三体文明可能没有的东西。\n\n你决定暗中帮助人类，同时不被降临派发现。",
            "choices": [
                { "text": "向人类透露三体的情报", "next": "leak_info" },
                { "text": "继续潜伏，等待时机", "next": "wait_opportunity" }
            ]
        },
        "watch_wangmiao": {
            "location": "great_wall",
            "text": "你关注着汪淼的动向。\n\n他是一名纳米科学家，被三体组织选中进入\"三体\"游戏。通过游戏，他逐渐了解了三体文明的真相。\n\n但汪淼同时也被警方注意到了。刑警史强找到了他，希望他能协助调查三体组织。\n\n汪淼面临着艰难的选择...",
            "choices": [
                { "text": "与汪淼接触", "next": "contact_wangmiao" },
                { "text": "暗中帮助汪淼", "next": "help_wangmiao" },
                { "text": "监视汪淼", "next": "monitor_wangmiao" }
            ]
        },
        "end_conflict": {
            "location": "eto_meeting",
            "text": "你决定采取行动，结束两派的争斗。\n\n你召集了所有三体组织成员，宣布：\"我们不能再内斗了。无论是拯救派还是降临派，我们的目标都是迎接三体文明。\"\n\n你的话暂时平息了争端，但你知道，这只是暂时的...",
            "choices": [
                { "text": "继续维持和平", "next": "maintain_peace" },
                { "text": "寻找永久解决方案", "next": "find_solution" }
            ]
        },
        "make_plan": {
            "text": "你开始制定应对计划。\n\n你知道，三体舰队400年后才会到达，但三体文明已经通过\"智子\"锁死了人类的基础科学。\n\n你必须找到一条突破智子封锁的道路，否则人类永远无法与三体文明抗衡。\n\n几十年后，你提出了一个大胆的计划——面壁计划...",
            "isEnd": true,
            "endType": "true",
            "endMessage": "提前准备，也许能改变命运。",
            "choices": []
        },
        "salvation_split": {
            "text": "你带领拯救派离开了三体组织。\n\n你们成立了一个新的组织，致力于帮助人类应对三体危机。\n\n虽然力量薄弱，但你们相信，人类有能力自救。\n\n三体舰队还在400光年之外，人类还有时间...",
            "isEnd": true,
            "endType": "neutral",
            "endMessage": "分裂不是结束，而是新的开始。",
            "choices": []
        },
        "persuade_evans": {
            "location": "eto_meeting",
            "text": "\"伊文斯，人类还有希望，\"你说道，\"我们可以引导他们改变。\"\n\n伊文斯摇了摇头：\"统帅，你太天真了。人类的本性是不会改变的。\"\n\n就在这时，审判日号突然遭到了袭击——这是人类的\"古筝行动\"！\n\n巨轮被纳米丝线切割成碎片，伊文斯和所有船员都葬身大海。",
            "choices": [
                { "text": "趁机逃离", "next": "escape_action" },
                { "text": "接受被捕", "next": "accept_arrest" }
            ]
        },
        "inform_government": {
            "text": "你向政府透露了降临派的情报。\n\n政府立即制定了\"古筝行动\"，派出特种部队袭击审判日号。\n\n伊文斯和降临派的核心成员被一网打尽。\n\n但你知道，这只是开始。三体舰队还在赶来的路上，人类必须做好准备...",
            "isEnd": true,
            "endType": "true",
            "endMessage": "及时的情报，改变了人类的命运。",
            "choices": []
        },
        "salvation_coup": {
            "location": "eto_meeting",
            "text": "你发动了拯救派政变，控制了三体组织。\n\n伊文斯被逮捕，降临派被清除。\n\n你成为了三体组织的唯一领袖，带领组织转向帮助人类应对三体危机。\n\n但三体文明对此有何反应，你不得而知...",
            "isEnd": true,
            "endType": "neutral",
            "endMessage": "权力的更迭，带来了新的希望。",
            "choices": []
        },
        "execute_mission": {
            "location": "panama_canals",
            "text": "你指挥审判日号执行任务。\n\n但你没有想到，人类已经发现了你们的计划。\n\n\"古筝行动\"启动了。纳米丝线横跨巴拿马运河，审判日号毫无察觉地驶了进去...\n\n巨轮被切割成碎片，你和所有船员都葬身大海。",
            "isEnd": true,
            "endType": "death",
            "endMessage": "背叛者的结局，早已注定。",
            "choices": []
        },
        "betray_arrival": {
            "text": "你背叛了降临派，向人类透露了审判日号的位置和三体组织的计划。\n\n人类制定了\"古筝行动\"，成功摧毁了审判日号。\n\n你成为了英雄，但也成为了三体组织的叛徒。\n\n三体文明会如何对待你？你不知道，但你知道自己做了正确的选择。",
            "isEnd": true,
            "endType": "true",
            "endMessage": "背叛需要勇气，但有时候背叛是正确的选择。",
            "choices": []
        },
        "leak_info": {
            "text": "你向人类透露了三体的情报。\n\n人类得知了三体舰队的存在和智子的封锁。虽然震惊，但他们开始积极准备。\n\n你成为了双面间谍，在三体组织和人类之间游走。\n\n你的命运，将在黑暗森林中揭晓...",
            "isEnd": true,
            "endType": "neutral",
            "endMessage": "在两个文明之间，你选择了第三条道路。",
            "choices": []
        },
        "wait_opportunity": {
            "text": "你继续潜伏，等待时机。\n\n几十年后，三体舰队即将到达。人类已经建立了太空舰队，准备迎战。\n\n你知道，真正的考验即将到来。你必须在关键时刻做出选择...",
            "isEnd": true,
            "endType": "neutral",
            "endMessage": "等待是漫长的，但时机终将到来。",
            "choices": []
        },
        "contact_wangmiao": {
            "location": "great_wall",
            "text": "你与汪淼接触，告诉他三体组织的真相。\n\n汪淼感到震惊，但也意识到了问题的严重性。他决定帮助人类，同时继续在三体组织中卧底。\n\n你们成为了秘密盟友，共同对抗三体文明的威胁。",
            "choices": [
                { "text": "继续合作", "next": "continue_cooperation" },
                { "text": "制定计划", "next": "make_plan" }
            ]
        },
        "help_wangmiao": {
            "text": "你暗中帮助汪淼，向他提供三体组织的情报。\n\n汪淼利用这些情报，帮助警方破获了三体组织的多个据点。\n\n虽然你因此暴露了身份，但你知道自己做了正确的事情。\n\n人类终于开始反击了...",
            "isEnd": true,
            "endType": "true",
            "endMessage": "暗中的帮助，有时比正面的战斗更重要。",
            "choices": []
        },
        "monitor_wangmiao": {
            "text": "你监视着汪淼，发现他与警方接触频繁。\n\n你向伊文斯报告了这个情况，但伊文斯并不在意：\"让他们去查吧，反正他们什么也做不了。\"\n\n你感到一丝不安，但还是继续执行任务。\n\n直到\"古筝行动\"的那一天...",
            "choices": [
                { "text": "提前警告伊文斯", "next": "warn_evans_action" },
                { "text": "保持沉默", "next": "silent_action" }
            ]
        },
        "maintain_peace": {
            "text": "你努力维持三体组织的和平，但这只是表面的平静。\n\n内部的矛盾依然存在，随时可能爆发。\n\n你知道，真正的和平需要更根本的解决方案。但在那之前，你只能尽力维持现状...",
            "isEnd": true,
            "endType": "neutral",
            "endMessage": "和平是脆弱的，但值得守护。",
            "choices": []
        },
        "find_solution": {
            "text": "你开始寻找永久解决方案。\n\n你意识到，拯救派和降临派的目标其实是一致的——都是为了迎接三体文明。\n\n你提出了一个新的理念：与其争论，不如共同为人类准备迎接三体文明的到来。\n\n这个理念得到了许多人的支持，但也有人反对...",
            "isEnd": true,
            "endType": "neutral",
            "endMessage": "新的理念，也许能带来新的希望。",
            "choices": []
        },
        "continue_cooperation": {
            "text": "你和汪淼继续合作，共同对抗三体文明。\n\n在你们的努力下，人类逐渐了解了三体文明的真相，并开始制定应对方案。\n\n虽然前路依然艰难，但你们相信，人类有能力战胜一切困难。",
            "isEnd": true,
            "endType": "true",
            "endMessage": "合作是人类最强大的武器。",
            "choices": []
        },
        "escape_action": {
            "text": "你趁机逃离了现场。\n\n虽然侥幸逃脱，但你知道自己已经无法回到三体组织了。\n\n你隐姓埋名，开始了新的生活。\n\n几十年后，你在新闻上看到人类舰队与三体舰队的决战...",
            "isEnd": true,
            "endType": "neutral",
            "endMessage": "逃离不是懦弱，而是生存的智慧。",
            "choices": []
        },
        "accept_arrest": {
            "text": "你接受了被捕的命运。\n\n在审讯中，你透露了三体文明的所有情报。\n\n人类终于了解了真相，开始积极准备应对三体危机。\n\n虽然你将面临漫长的监禁，但你知道自己为人类做出了贡献。",
            "isEnd": true,
            "endType": "true",
            "endMessage": "牺牲有时是必要的，但也是光荣的。",
            "choices": []
        },
        "warn_evans_action": {
            "text": "你提前警告了伊文斯。\n\n伊文斯立即下令审判日号撤离，但为时已晚。纳米丝线已经布置完毕，审判日号无处可逃。\n\n你和伊文斯一起葬身大海。\n\n也许，你们的选择从一开始就是错误的...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "忠诚有时会带来毁灭。",
            "choices": []
        },
        "silent_action": {
            "text": "你保持沉默，看着审判日号被摧毁。\n\n伊文斯和降临派的核心成员都死了，你成为了唯一的幸存者。\n\n警方找到了你，你选择坦白一切。\n\n人类终于了解了三体文明的真相，开始了漫长的准备...",
            "isEnd": true,
            "endType": "true",
            "endMessage": "沉默有时是最好的选择。",
            "choices": []
        }
    }
}