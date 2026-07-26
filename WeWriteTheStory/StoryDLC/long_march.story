{
    "title": "长征",
    "subtitle": "二万五千里",
    "description": "第五次反围剿失败后，中央红军被迫进行战略转移。你将率领红军历经湘江血战、四渡赤水、飞夺泸定桥、翻越雪山、穿越草地，最终完成人类历史上最伟大的远征！",
    "author": "历史还原作品",
    "version": "1.0",
    "features": {
        "inventory": true,
        "map": true
    },
    "items": [
        { "id": "military_map", "name": "军用地图", "icon": "🗺️", "description": "标注着行军路线和敌军部署的地图" },
        { "id": "comrades", "name": "战友", "icon": "👥", "description": "与你并肩作战的红军战士" },
        { "id": "ration", "name": "口粮", "icon": "🍚", "description": "维持部队生存的粮食" },
        { "id": "weapon", "name": "武器", "icon": "🔫", "description": "战斗所需的武器装备" },
        { "id": "medical", "name": "药品", "icon": "💊", "description": "救治伤员的药品" },
        { "id": "faith", "name": "信仰", "icon": "🔥", "description": "支撑红军前进的革命信仰" }
    ],
    "map": {
        "title": "长征路线图",
        "locations": [
            { "id": "ruijin", "name": "瑞金", "description": "中央革命根据地，长征出发地" },
            { "id": "xiangjiang", "name": "湘江", "description": "红军突破第四道封锁线的血战之地" },
            { "id": "zunyi", "name": "遵义", "description": "召开遵义会议的历史名城" },
            { "id": "chishui", "name": "赤水河", "description": "四渡赤水的战场" },
            { "id": "jinshajiang", "name": "金沙江", "description": "红军巧渡金沙江的天险" },
            { "id": "daduhe", "name": "大渡河", "description": "强渡大渡河、飞夺泸定桥之地" },
            { "id": "jiashan", "name": "夹金山", "description": "红军翻越的第一座雪山" },
            { "id": "caodi", "name": "松潘草地", "description": "人迹罕至的沼泽草地" },
            { "id": "lazikou", "name": "腊子口", "description": "红军北上的最后一道天险" },
            { "id": "wuqi", "name": "吴起镇", "description": "中央红军与陕北红军会师之地" },
            { "id": "huining", "name": "会宁", "description": "三大主力红军胜利会师之地" }
        ],
        "startingLocation": "ruijin"
    },
    "nodes": {
        "start": {
            "location": "ruijin",
            "text": "1934年10月，江西瑞金。\n\n第五次反围剿失败，中央红军被迫进行战略转移。博古、李德等人的错误指挥导致红军遭受重大损失，苏区日益缩小。\n\n中共中央决定放弃中央苏区，率领红军主力8.6万余人向西突围，开始长征。\n\n你是一名红军指挥员，面临着艰难的抉择。",
            "actions": [
                { "type": "addItem", "itemId": "military_map" },
                { "type": "addItem", "itemId": "comrades" },
                { "type": "addItem", "itemId": "ration" },
                { "type": "addItem", "itemId": "weapon" },
                { "type": "addItem", "itemId": "medical" },
                { "type": "addItem", "itemId": "faith" }
            ],
            "choices": [
                { "text": "跟随大部队向西转移，突破封锁线", "next": "break_blockade" },
                { "text": "建议保存实力，打游击坚持斗争", "next": "guerrilla" },
                { "text": "要求召开会议，纠正错误指挥", "next": "demand_meeting" }
            ]
        },
        "break_blockade": {
            "location": "ruijin",
            "text": "你跟随大部队开始向西转移。红军连续突破国民党军三道封锁线，进入广西境内。\n\n但由于博古、李德坚持逃跑主义，把战略转移变成了大搬家，携带了大量笨重物资，严重影响了行军速度。\n\n前方就是湘江，国民党军已集结近30万兵力，布下第四道封锁线，企图将红军歼灭于湘江以东。",
            "choices": [
                { "text": "加速行军，抢在敌军合围前渡过湘江", "next": "speed_march" },
                { "text": "组织后卫部队阻击，掩护主力渡江", "next": "rearguard" },
                { "text": "改变路线，避开湘江天险", "next": "change_route" }
            ]
        },
        "guerrilla": {
            "text": "你建议保存实力打游击，但博古、李德拒绝了你的建议。他们坚持要进行大规模战略转移。\n\n你被迫跟随大部队出发，但由于意见分歧，你被调离了指挥岗位。\n\n在随后的湘江战役中，红军遭受惨重损失，你也在混乱中失踪...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "历史选择了长征，而非游击。你的建议不符合历史事实。",
            "choices": []
        },
        "demand_meeting": {
            "text": "你要求召开会议纠正错误指挥，但博古、李德认为这是扰乱军心。\n\n你被批评为\"右倾机会主义\"，被撤销职务。\n\n在随后的长征中，你只能作为普通战士参加战斗，无法发挥你的军事才能...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "历史证明，错误的指挥需要在适当的时机才能纠正。过早的挑战只会招致打压。",
            "choices": []
        },
        "speed_march": {
            "location": "xiangjiang",
            "text": "你命令部队加速行军，但由于携带物资过多，行军速度依然缓慢。\n\n国民党军迅速合围，湘江两岸展开了惨烈的血战。\n\n红五军团34师担任后卫，被敌军截断，6000余名官兵几乎全部阵亡，师长陈树湘重伤被俘后，用手从伤口处掏出肠子绞断，壮烈牺牲。\n\n中央红军虽然渡过湘江，但从8.6万人锐减至3万余人。",
            "choices": [
                { "text": "继续西进，向贵州前进", "next": "enter_guizhou" },
                { "text": "就地休整，补充兵力", "next": "rest_here" },
                { "text": "退回江西，重建根据地", "next": "return_jiangxi" }
            ]
        },
        "rearguard": {
            "location": "xiangjiang",
            "text": "你主动率领部队担任后卫，掩护主力渡江。\n\n战斗异常惨烈，你的部队伤亡惨重，但成功延缓了敌军的追击，为主力渡江争取了宝贵时间。\n\n你身负重伤，但幸运地被战友救起，渡过了湘江。\n\n中央红军虽然渡过湘江，但从8.6万人锐减至3万余人。",
            "choices": [
                { "text": "继续西进，向贵州前进", "next": "enter_guizhou" },
                { "text": "留在当地养伤，转入地下斗争", "next": "underground" }
            ]
        },
        "change_route": {
            "text": "你建议改变路线避开湘江，但博古、李德坚持原定计划。\n\n你的建议被否决，红军仍然按原计划向湘江前进。\n\n湘江战役依然发生，红军遭受惨重损失。你在战斗中牺牲...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "历史无法改变，湘江战役是必然的。你的建议虽然合理，但无法改变既定的历史进程。",
            "choices": []
        },
        "enter_guizhou": {
            "location": "zunyi",
            "text": "1935年1月，红军进入贵州，攻占遵义城。\n\n湘江战役的惨重损失，使广大红军指战员对博古、李德的错误指挥产生了强烈不满。在毛泽东、王稼祥、张闻天等人的推动下，中共中央决定召开政治局扩大会议。\n\n遵义会议召开，确立了毛泽东同志在党中央和红军的领导地位。这是中国革命史上的伟大转折点。",
            "choices": [
                { "text": "支持毛泽东的正确主张", "next": "support_mao" },
                { "text": "保持中立，观望局势", "next": "neutral" },
                { "text": "继续支持博古、李德", "next": "support_bogu" }
            ]
        },
        "rest_here": {
            "text": "你建议就地休整，但国民党军正在迅速合围。\n\n红军被迫继续前进，在混乱中你的部队被打散。\n\n你率领残部在湘桂边境打游击，但最终弹尽粮绝，壮烈牺牲...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "在敌军围追堵截下，原地休整等于坐以待毙。",
            "choices": []
        },
        "return_jiangxi": {
            "text": "你建议退回江西重建根据地，但此时江西已被国民党军占领，退回无异于自投罗网。\n\n你的建议被否决，红军继续西进。你因\"动摇军心\"被审查...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "历史证明，退回江西已经不可能，西进是唯一的出路。",
            "choices": []
        },
        "underground": {
            "text": "你留在当地养伤，转入地下斗争。\n\n虽然你活了下来，但错过了长征这段伟大的历史。\n\n几十年后，当你回忆起那段岁月，心中充满了遗憾...",
            "isEnd": true,
            "endType": "neutral",
            "endMessage": "你活了下来，但错过了最伟大的远征。",
            "choices": []
        },
        "support_mao": {
            "location": "chishui",
            "text": "你支持毛泽东的正确主张，成为他的坚定支持者。\n\n遵义会议后，毛泽东指挥中央红军展开了著名的\"四渡赤水\"战役。这是毛泽东军事生涯的\"得意之笔\"。\n\n红军在赤水河流域灵活机动，四次渡过赤水河，在40万敌军中穿插往来，创造了以弱胜强的奇迹。",
            "choices": [
                { "text": "执行四渡赤水的机动战术", "next": "four_crossings" },
                { "text": "建议直接北渡长江", "next": "direct_north" },
                { "text": "建议攻打贵阳", "next": "attack_guiyang" }
            ]
        },
        "neutral": {
            "text": "你保持中立，观望局势。\n\n遵义会议后，毛泽东开始指挥红军。但由于你之前的中立态度，你被调离了重要岗位。\n\n在四渡赤水的战斗中，你虽然参加了战斗，但未能发挥重要作用...",
            "isEnd": true,
            "endType": "neutral",
            "endMessage": "在历史的关键时刻，中立意味着错过机会。",
            "choices": []
        },
        "support_bogu": {
            "text": "你继续支持博古、李德的错误路线。\n\n遵义会议后，博古、李德被撤销领导职务。你也受到牵连，被调离指挥岗位。\n\n在随后的战斗中，你逐渐认识到自己的错误，但为时已晚...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "历史选择了正确的道路，坚持错误只会被历史淘汰。",
            "choices": []
        },
        "four_crossings": {
            "location": "chishui",
            "text": "你执行四渡赤水的机动战术，跟随红军在赤水河流域灵活穿插。\n\n一渡赤水，作势北渡长江却回师黔北；\n二渡赤水，5天之内取桐梓、夺娄山关、重占遵义城；\n三渡赤水，再入川南，调动敌军；\n四渡赤水，南渡乌江，兵锋直指贵阳。\n\n红军彻底摆脱了国民党军的围追堵截，取得了战略转移中具有决定意义的胜利！",
            "choices": [
                { "text": "继续西进，巧渡金沙江", "next": "cross_jinsha" },
                { "text": "在贵州建立根据地", "next": "guizhou_base" },
                { "text": "回师湖南", "next": "return_hunan" }
            ]
        },
        "direct_north": {
            "text": "你建议直接北渡长江，但毛泽东认为时机不成熟。\n\n如果强行北渡，红军将面临国民党军的重兵围堵。历史证明，四渡赤水是正确的选择。\n\n你的建议被否决，你只能服从命令...",
            "choices": [
                { "text": "服从命令，执行四渡赤水", "next": "four_crossings" },
                { "text": "坚持己见，被调离", "next": "insist" }
            ]
        },
        "attack_guiyang": {
            "text": "你建议攻打贵阳，这正是毛泽东的下一步计划！\n\n红军佯攻贵阳，迫使蒋介石急调滇军入黔。红军趁机进入云南，为巧渡金沙江创造了条件。\n\n你的建议与毛泽东不谋而合，你得到了重用！",
            "choices": [
                { "text": "继续西进，巧渡金沙江", "next": "cross_jinsha" }
            ]
        },
        "cross_jinsha": {
            "location": "jinshajiang",
            "text": "1935年5月，红军巧渡金沙江。\n\n红军夺取皎平渡，缴获渡船，在7天7夜内将全部兵力渡过金沙江。\n\n这一胜利，使红军彻底跳出了数十万敌军围追堵截的包围圈，取得了战略转移中具有决定意义的胜利！",
            "choices": [
                { "text": "继续北上，强渡大渡河", "next": "cross_dadu" },
                { "text": "在四川建立根据地", "next": "sichuan_base" },
                { "text": "南下云南", "next": "south_yunnan" }
            ]
        },
        "guizhou_base": {
            "text": "你建议在贵州建立根据地，但贵州贫瘠，且国民党军势力强大，难以立足。\n\n毛泽东坚持继续北上的战略方针。历史证明，北上抗日是正确的选择。\n\n你的建议被否决...",
            "choices": [
                { "text": "服从命令，继续北上", "next": "cross_jinsha" },
                { "text": "坚持己见，被调离", "next": "insist" }
            ]
        },
        "return_hunan": {
            "text": "你建议回师湖南，但湖南已被国民党军严密封锁，回师无异于自投罗网。\n\n你的建议被否决，红军继续西进...",
            "choices": [
                { "text": "服从命令，继续西进", "next": "cross_jinsha" },
                { "text": "坚持己见，被调离", "next": "insist" }
            ]
        },
        "insist": {
            "text": "你坚持己见，不服从命令。\n\n你被认为是\"违抗军令\"，被撤销职务。\n\n在随后的长征中，你只能作为普通战士参加战斗...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "在战争中，服从命令是军人的天职。",
            "choices": []
        },
        "cross_dadu": {
            "location": "daduhe",
            "text": "1935年5月，红军抵达大渡河。\n\n大渡河是天险，国民党军企图将红军歼灭于此，让红军成为\"石达开第二\"。\n\n红军先头部队强渡大渡河，十七勇士在枪林弹雨中以一条木船强行渡河，撕开了敌人的防线。\n\n随后，红军飞夺泸定桥，22名勇士冒着敌人密集火力，攀援13根悬空的铁索猛打猛冲，夺占了泸定桥！",
            "choices": [
                { "text": "继续北上，翻越夹金山", "next": "cross_jiashan" },
                { "text": "在大渡河建立根据地", "next": "dadu_base" },
                { "text": "返回金沙江", "next": "back_jinsha" }
            ]
        },
        "sichuan_base": {
            "text": "你建议在四川建立根据地，但此时红四方面军已经在川陕根据地。两大方面军需要会师，共同北上。\n\n毛泽东坚持北上抗日的战略方针。你的建议被否决...",
            "choices": [
                { "text": "服从命令，继续北上", "next": "cross_dadu" },
                { "text": "坚持己见，被调离", "next": "insist" }
            ]
        },
        "south_yunnan": {
            "text": "你建议南下云南，但云南并非红军的战略方向。北上抗日才是正确的选择。\n\n你的建议被否决，红军继续北上...",
            "choices": [
                { "text": "服从命令，继续北上", "next": "cross_dadu" },
                { "text": "坚持己见，被调离", "next": "insist" }
            ]
        },
        "cross_jiashan": {
            "location": "jiashan",
            "text": "1935年6月，红军开始翻越夹金山。\n\n夹金山海拔4950米，终年积雪，空气稀薄，气候恶劣。红军战士们穿着单衣，顶着风雪，艰难攀登。\n\n许多战士因为高原反应和严寒倒在了雪山上，但红军战士们互相搀扶，互相鼓励，终于翻越了这座雪山！\n\n红一、四方面军在懋功胜利会师！",
            "choices": [
                { "text": "继续北上，穿越草地", "next": "cross_caodi" },
                { "text": "在懋功休整", "next": "rest_maogong" },
                { "text": "支持张国焘南下", "next": "support_zhang" }
            ]
        },
        "dadu_base": {
            "text": "你建议在大渡河建立根据地，但大渡河流域狭窄，且国民党军正在合围。\n\n红军必须继续北上，与红四方面军会师。你的建议被否决...",
            "choices": [
                { "text": "服从命令，继续北上", "next": "cross_jiashan" },
                { "text": "坚持己见，被调离", "next": "insist" }
            ]
        },
        "back_jinsha": {
            "text": "你建议返回金沙江，但此时国民党军已经重新封锁了金沙江。\n\n返回无异于自投罗网。你的建议被否决...",
            "choices": [
                { "text": "服从命令，继续北上", "next": "cross_jiashan" },
                { "text": "坚持己见，被调离", "next": "insist" }
            ]
        },
        "cross_caodi": {
            "location": "caodi",
            "text": "1935年8月，红军开始穿越松潘草地。\n\n松潘草地是一片茫茫沼泽，人迹罕至，气候恶劣。红军战士们面临着饥饿、寒冷、疾病的三重考验。\n\n粮食耗尽了，战士们吃野菜、草根，甚至煮皮带充饥。许多战士因为饥饿和疾病倒在了草地上。\n\n但红军战士们凭着坚定的信仰和顽强的意志，终于走出了这片死亡之地！",
            "choices": [
                { "text": "继续北上，激战腊子口", "next": "battle_lazikou" },
                { "text": "在草地边缘休整", "next": "rest_caodi" },
                { "text": "返回南方", "next": "return_south" }
            ]
        },
        "rest_maogong": {
            "text": "你建议在懋功休整，但此时张国焘分裂主义倾向明显，红军必须尽快北上。\n\n毛泽东坚持北上抗日的战略方针。你的建议被否决...",
            "choices": [
                { "text": "服从命令，继续北上", "next": "cross_caodi" },
                { "text": "坚持己见，被调离", "next": "insist" }
            ]
        },
        "support_zhang": {
            "text": "你支持张国焘南下的主张，但这是分裂主义行为。\n\n毛泽东率领红一方面军继续北上，而张国焘率领红四方面军南下，给红军造成了巨大损失。\n\n你跟随张国焘南下，在战斗中牺牲...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "历史证明，北上抗日是正确的道路，南下分裂只会导致失败。",
            "choices": []
        },
        "battle_lazikou": {
            "location": "lazikou",
            "text": "1935年9月，红军抵达腊子口。\n\n腊子口是红军北上的最后一道天险，国民党军重兵把守，企图将红军歼灭于此。\n\n红军发起强攻，经过激烈战斗，终于攻克腊子口，打开了北上的通道！",
            "choices": [
                { "text": "继续北上，前往陕北", "next": "north_shaanxi" },
                { "text": "在甘南建立根据地", "next": "gannan_base" },
                { "text": "西进青海", "next": "west_qinghai" }
            ]
        },
        "rest_caodi": {
            "text": "你建议在草地边缘休整，但国民党军正在迅速合围。\n\n红军必须尽快北上，摆脱敌军。你的建议被否决...",
            "choices": [
                { "text": "服从命令，继续北上", "next": "battle_lazikou" },
                { "text": "坚持己见，被调离", "next": "insist" }
            ]
        },
        "return_south": {
            "text": "你建议返回南方，但南方已被国民党军严密封锁。\n\n北上抗日是唯一的出路。你的建议被否决...",
            "choices": [
                { "text": "服从命令，继续北上", "next": "battle_lazikou" },
                { "text": "坚持己见，被调离", "next": "insist" }
            ]
        },
        "north_shaanxi": {
            "location": "wuqi",
            "text": "1935年10月，中央红军抵达陕北吴起镇！\n\n中央红军与陕北红军胜利会师！\n\n中央红军长征历时一年，行程二万五千里，纵横十一个省，终于完成了伟大的战略转移！\n\n毛泽东写下了壮丽诗篇《七律·长征》：\n\n红军不怕远征难，万水千山只等闲。\n五岭逶迤腾细浪，乌蒙磅礴走泥丸。\n金沙水拍云崖暖，大渡桥横铁索寒。\n更喜岷山千里雪，三军过后尽开颜。",
            "choices": [
                { "text": "继续前进，迎接三大主力会师", "next": "huining_meeting" }
            ]
        },
        "gannan_base": {
            "text": "你建议在甘南建立根据地，但甘南地域狭小，且国民党军势力强大。\n\n陕北才是红军的最终落脚点。你的建议被否决...",
            "choices": [
                { "text": "服从命令，前往陕北", "next": "north_shaanxi" },
                { "text": "坚持己见，被调离", "next": "insist" }
            ]
        },
        "west_qinghai": {
            "text": "你建议西进青海，但青海地广人稀，且马步芳等军阀势力强大。\n\n北上陕北才是正确的选择。你的建议被否决...",
            "choices": [
                { "text": "服从命令，前往陕北", "next": "north_shaanxi" },
                { "text": "坚持己见，被调离", "next": "insist" }
            ]
        },
        "huining_meeting": {
            "location": "huining",
            "text": "1936年10月，红二、四方面军抵达甘肃会宁，与红一方面军胜利会师！\n\n三大主力红军胜利会师，标志着万里长征的胜利结束！\n\n长征的胜利，是中国革命史上的伟大奇迹。红军指战员们凭着坚定的信仰、顽强的意志和不怕牺牲的精神，完成了人类历史上最伟大的远征！\n\n长征的胜利，为中国革命保存了火种，为抗日战争和解放战争的胜利奠定了基础！\n\n你作为红军指挥员，亲历了这段伟大的历史，见证了中国革命从挫折走向胜利的伟大转折！",
            "isEnd": true,
            "endType": "true",
            "endMessage": "长征胜利！你完成了人类历史上最伟大的远征！",
            "choices": []
        }
    }
}