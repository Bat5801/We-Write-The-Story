{
    "title": "钢铁战线",
    "subtitle": "决战淮海",
    "description": "1948年，淮海战役爆发。你作为解放军指挥员，将面对国民党军的重兵集团。这是一场决定中国命运的决战，每一个决策都至关重要！",
    "author": "历史还原作品",
    "version": "1.0",
    "features": {
        "inventory": true,
        "map": true
    },
    "items": [
        { "id": "battle_plan", "name": "作战计划", "icon": "📋", "description": "详细的作战部署计划" },
        { "id": "artillery", "name": "火炮", "icon": "💣", "description": "强大的火力支援" },
        { "id": "infantry", "name": "步兵", "icon": "⚔️", "description": "英勇的步兵部队" },
        { "id": "intelligence", "name": "情报", "icon": "🕵️", "description": "关于敌军部署的情报" },
        { "id": "supply", "name": "补给", "icon": "🚚", "description": "维持部队作战的物资" },
        { "id": "courage", "name": "勇气", "icon": "🔥", "description": "战胜一切困难的勇气" }
    ],
    "map": {
        "title": "淮海战场地图",
        "locations": [
            { "id": "xuzhou", "name": "徐州", "description": "国民党军徐州剿总所在地" },
            { "id": "huangmei", "name": "黄百韬兵团", "description": "被包围的黄百韬第七兵团" },
            { "id": "huangwei", "name": "黄维兵团", "description": "增援的黄维第十二兵团" },
            { "id": "duyuanyuan", "name": "杜聿明集团", "description": "徐州国民党军主力" },
            { "id": "bijia", "name": "碾庄圩", "description": "黄百韬兵团被围之地" },
            { "id": "dawu", "name": "双堆集", "description": "黄维兵团被围之地" },
            { "id": "chenguanzhuang", "name": "陈官庄", "description": "杜聿明集团被围之地" }
        ],
        "startingLocation": "xuzhou"
    },
    "nodes": {
        "start": {
            "location": "xuzhou",
            "text": "1948年11月，淮海战役爆发。\n\n国民党军在徐州地区集结了80万兵力，企图与解放军决战。解放军华东野战军和中原野战军共60万人参战。\n\n这是一场力量悬殊的决战，但解放军有着坚定的信念和灵活的战术。\n\n你是一名解放军指挥员，面临着艰难的抉择。",
            "actions": [
                { "type": "addItem", "itemId": "battle_plan" },
                { "type": "addItem", "itemId": "artillery" },
                { "type": "addItem", "itemId": "infantry" },
                { "type": "addItem", "itemId": "intelligence" },
                { "type": "addItem", "itemId": "supply" },
                { "type": "addItem", "itemId": "courage" }
            ],
            "choices": [
                { "text": "先打黄百韬兵团，切断徐州退路", "next": "attack_huangbaitao" },
                { "text": "先打邱清泉兵团，直取徐州", "next": "attack_qiuqingquan" },
                { "text": "先打黄维兵团，阻止增援", "next": "attack_huangwei" }
            ]
        },
        "attack_huangbaitao": {
            "location": "huangmei",
            "text": "你决定先打黄百韬第七兵团。这是淮海战役的关键第一步！\n\n黄百韬兵团有10万余人，正在向徐州收缩。你必须在他到达徐州之前将其包围！\n\n华东野战军迅速出击，在碾庄圩地区将黄百韬兵团包围！",
            "choices": [
                { "text": "迅速进攻，尽快歼灭黄百韬", "next": "quick_attack" },
                { "text": "稳步推进，巩固包围圈", "next": "steady_advance" },
                { "text": "围而不打，吸引援军", "next": "besiege_wait" }
            ]
        },
        "attack_qiuqingquan": {
            "text": "你建议先打邱清泉兵团，但这是错误的决策！\n\n邱清泉兵团是国民党军主力，战斗力强，且距离徐州近，可以得到支援。\n\n如果先打邱清泉，黄百韬和黄维兵团会趁机增援，解放军将陷入腹背受敌的困境。\n\n你的建议被否决，你只能服从命令...",
            "choices": [
                { "text": "服从命令，先打黄百韬", "next": "attack_huangbaitao" },
                { "text": "坚持己见，被调离", "next": "insist_error" }
            ]
        },
        "attack_huangwei": {
            "text": "你建议先打黄维兵团，但黄维兵团此时还在河南，尚未进入战场。\n\n如果过早暴露目标，黄维兵团可能会停止前进或撤回。\n\n正确的策略是先打黄百韬，吸引黄维增援，然后再围歼黄维。\n\n你的建议被否决...",
            "choices": [
                { "text": "服从命令，先打黄百韬", "next": "attack_huangbaitao" },
                { "text": "坚持己见，被调离", "next": "insist_error" }
            ]
        },
        "quick_attack": {
            "location": "bijia",
            "text": "你下令迅速进攻，但黄百韬兵团依托碾庄圩的坚固工事顽强抵抗。\n\n解放军进攻受阻，伤亡较大。你意识到需要调整战术。",
            "choices": [
                { "text": "调整战术，采用\"土工作业\"逼近", "next": "trench_warfare" },
                { "text": "继续强攻", "next": "continue_attack" },
                { "text": "请求增援", "next": "request_reinforce" }
            ]
        },
        "steady_advance": {
            "location": "bijia",
            "text": "你下令稳步推进，巩固包围圈。这是正确的选择！\n\n解放军一边加强包围，一边进行土工作业，逐步逼近敌军阵地。\n\n黄百韬兵团的处境越来越困难，粮草弹药逐渐耗尽。",
            "choices": [
                { "text": "发起总攻，歼灭黄百韬", "next": "final_attack" },
                { "text": "继续围困，等待时机", "next": "continue_besiege" }
            ]
        },
        "besiege_wait": {
            "text": "你下令围而不打，但这给了黄百韬喘息的机会。\n\n国民党军邱清泉、李弥兵团正在全力增援，如果围而不打，增援部队可能会突破防线。\n\n你必须尽快发起进攻！",
            "choices": [
                { "text": "立即发起进攻", "next": "quick_attack" },
                { "text": "继续等待", "next": "wait_disaster" }
            ]
        },
        "insist_error": {
            "text": "你坚持错误的决策，不服从命令。\n\n你被认为是\"违抗军令\"，被撤销职务。\n\n在随后的战斗中，你只能作为普通战士参加战斗...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "在战争中，正确的战略决策至关重要。坚持错误只会导致失败。",
            "choices": []
        },
        "trench_warfare": {
            "location": "bijia",
            "text": "你调整战术，采用\"土工作业\"逼近敌军阵地。\n\n解放军战士们冒着枪林弹雨，挖掘交通壕，一步步逼近敌军碉堡。\n\n这种战术虽然缓慢，但非常有效。黄百韬兵团的防线逐渐崩溃！",
            "choices": [
                { "text": "发起总攻，歼灭黄百韬", "next": "final_attack" },
                { "text": "继续土工作业", "next": "continue_trench" }
            ]
        },
        "continue_attack": {
            "text": "你继续强攻，但敌军工事坚固，解放军伤亡惨重。\n\n如果你继续强攻，部队将遭受更大损失。你必须调整战术！",
            "choices": [
                { "text": "调整战术，采用土工作业", "next": "trench_warfare" },
                { "text": "继续强攻", "next": "attack_disaster" }
            ]
        },
        "request_reinforce": {
            "text": "你请求增援，但前线兵力已经吃紧，没有多余兵力可以增援。\n\n你必须依靠现有兵力解决战斗！",
            "choices": [
                { "text": "调整战术，采用土工作业", "next": "trench_warfare" },
                { "text": "继续进攻", "next": "continue_attack" }
            ]
        },
        "final_attack": {
            "location": "bijia",
            "text": "1948年11月22日，你下令发起总攻！\n\n解放军全线出击，黄百韬兵团全线崩溃！\n\n黄百韬在突围中被击毙，第七兵团10万余人被全歼！\n\n淮海战役第一阶段胜利结束！",
            "choices": [
                { "text": "准备围歼黄维兵团", "next": "prepare_huangwei" },
                { "text": "休整部队", "next": "rest_troops" },
                { "text": "追击杜聿明集团", "next": "pursue_du" }
            ]
        },
        "continue_besiege": {
            "text": "你继续围困，但国民党军增援部队正在逼近。\n\n如果不尽快歼灭黄百韬，增援部队可能会突破防线，导致战役失败！\n\n你必须立即发起进攻！",
            "choices": [
                { "text": "立即发起进攻", "next": "final_attack" },
                { "text": "继续等待", "next": "wait_disaster" }
            ]
        },
        "continue_trench": {
            "text": "你继续土工作业，但时间紧迫。\n\n国民党军增援部队正在逼近，你必须尽快结束战斗！",
            "choices": [
                { "text": "发起总攻", "next": "final_attack" },
                { "text": "继续土工作业", "next": "trench_disaster" }
            ]
        },
        "wait_disaster": {
            "text": "你继续等待，但国民党军增援部队突破了防线！\n\n黄百韬兵团趁机突围，战役陷入被动！\n\n你因指挥失误被追究责任...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "在战争中，犹豫不决只会导致失败。",
            "choices": []
        },
        "attack_disaster": {
            "text": "你继续强攻，但部队伤亡惨重，进攻受阻。\n\n国民党军增援部队趁机突破防线，黄百韬兵团突围！\n\n战役陷入被动，你因指挥失误被追究责任...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "在战争中，蛮干只会导致失败。",
            "choices": []
        },
        "trench_disaster": {
            "text": "你继续土工作业，但国民党军增援部队已经突破防线！\n\n黄百韬兵团趁机突围，战役陷入被动！\n\n你因指挥失误被追究责任...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "在战争中，必须把握时机，不能过于保守。",
            "choices": []
        },
        "prepare_huangwei": {
            "location": "huangwei",
            "text": "黄百韬兵团被歼灭后，黄维第十二兵团正在向徐州增援。\n\n你必须在黄维到达徐州之前将其包围！\n\n中原野战军迅速出击，在双堆集地区将黄维兵团包围！",
            "choices": [
                { "text": "迅速进攻，歼灭黄维", "next": "attack_huangwei_direct" },
                { "text": "稳步推进，巩固包围", "next": "steady_huangwei" },
                { "text": "围而不打，吸引杜聿明", "next": "besiege_huangwei" }
            ]
        },
        "rest_troops": {
            "text": "你建议休整部队，但黄维兵团正在迅速前进，如果不立即出击，黄维将与杜聿明会合，增加围歼难度。\n\n你必须立即行动！",
            "choices": [
                { "text": "立即出击，包围黄维", "next": "prepare_huangwei" },
                { "text": "坚持休整", "next": "rest_disaster" }
            ]
        },
        "pursue_du": {
            "text": "你建议追击杜聿明集团，但此时黄维兵团威胁更大。\n\n如果先追击杜聿明，黄维兵团可能会与杜聿明会合，增加围歼难度。\n\n正确的策略是先围歼黄维，再对付杜聿明。\n\n你的建议被否决...",
            "choices": [
                { "text": "服从命令，围歼黄维", "next": "prepare_huangwei" },
                { "text": "坚持追击", "next": "pursue_disaster" }
            ]
        },
        "attack_huangwei_direct": {
            "location": "dawu",
            "text": "你下令迅速进攻，但黄维兵团依托双堆集的坚固工事顽强抵抗。\n\n黄维兵团装备精良，战斗力强，解放军进攻受阻。你意识到需要调整战术。",
            "choices": [
                { "text": "调整战术，采用\"近迫作业\"", "next": "close_assault" },
                { "text": "继续强攻", "next": "huangwei_attack_disaster" },
                { "text": "请求增援", "next": "huangwei_request" }
            ]
        },
        "steady_huangwei": {
            "location": "dawu",
            "text": "你下令稳步推进，巩固包围。这是正确的选择！\n\n解放军一边加强包围，一边进行近迫作业，逐步逼近敌军阵地。\n\n黄维兵团的处境越来越困难，粮草弹药逐渐耗尽。",
            "choices": [
                { "text": "发起总攻，歼灭黄维", "next": "huangwei_final" },
                { "text": "继续围困", "next": "huangwei_besiege" }
            ]
        },
        "besiege_huangwei": {
            "location": "dawu",
            "text": "你下令围而不打，等待杜聿明集团出动。\n\n这是正确的策略！杜聿明集团果然出动救援黄维，结果被解放军包围在陈官庄地区！\n\n现在，黄维兵团和杜聿明集团都被包围了！",
            "choices": [
                { "text": "先打黄维，再打杜聿明", "next": "huangwei_first" },
                { "text": "同时进攻", "next": "simultaneous_attack" },
                { "text": "先打杜聿明", "next": "du_first" }
            ]
        },
        "rest_disaster": {
            "text": "你坚持休整，但黄维兵团已经与杜聿明集团会合！\n\n国民党军兵力大增，围歼难度大大增加！\n\n你因指挥失误被追究责任...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "在战争中，错失战机只会导致失败。",
            "choices": []
        },
        "pursue_disaster": {
            "text": "你坚持追击杜聿明，但黄维兵团趁机与杜聿明会合！\n\n国民党军兵力大增，围歼难度大大增加！\n\n你因指挥失误被追究责任...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "在战争中，主次不分只会导致失败。",
            "choices": []
        },
        "close_assault": {
            "location": "dawu",
            "text": "你调整战术，采用\"近迫作业\"逼近敌军阵地。\n\n解放军战士们冒着枪林弹雨，挖掘交通壕，一步步逼近敌军碉堡。\n\n这种战术虽然缓慢，但非常有效。黄维兵团的防线逐渐崩溃！",
            "choices": [
                { "text": "发起总攻，歼灭黄维", "next": "huangwei_final" },
                { "text": "继续近迫作业", "next": "continue_close" }
            ]
        },
        "huangwei_attack_disaster": {
            "text": "你继续强攻，但部队伤亡惨重，进攻受阻。\n\n黄维兵团趁机突围，战役陷入被动！\n\n你因指挥失误被追究责任...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "在战争中，蛮干只会导致失败。",
            "choices": []
        },
        "huangwei_request": {
            "text": "你请求增援，但前线兵力已经吃紧，没有多余兵力可以增援。\n\n你必须依靠现有兵力解决战斗！",
            "choices": [
                { "text": "调整战术，采用近迫作业", "next": "close_assault" },
                { "text": "继续进攻", "next": "huangwei_attack_disaster" }
            ]
        },
        "huangwei_final": {
            "location": "dawu",
            "text": "1948年12月15日，你下令发起总攻！\n\n解放军全线出击，黄维兵团全线崩溃！\n\n黄维被俘，第十二兵团12万余人被全歼！\n\n淮海战役第二阶段胜利结束！",
            "choices": [
                { "text": "准备围歼杜聿明集团", "next": "prepare_du" },
                { "text": "休整部队", "next": "rest_after_huangwei" },
                { "text": "追击残敌", "next": "pursue_remaining" }
            ]
        },
        "huangwei_besiege": {
            "text": "你继续围困，但杜聿明集团已经出动救援！\n\n如果不尽快歼灭黄维，杜聿明集团可能会突破防线！\n\n你必须立即发起进攻！",
            "choices": [
                { "text": "立即发起进攻", "next": "huangwei_final" },
                { "text": "继续等待", "next": "huangwei_wait_disaster" }
            ]
        },
        "huangwei_first": {
            "text": "你决定先打黄维，再打杜聿明。这是正确的策略！\n\n黄维兵团被歼灭后，杜聿明集团陷入孤立无援的境地！",
            "choices": [
                { "text": "发起总攻，歼灭黄维", "next": "huangwei_final" }
            ]
        },
        "simultaneous_attack": {
            "text": "你决定同时进攻黄维和杜聿明，但这会分散兵力。\n\n解放军兵力有限，同时进攻两个重兵集团会导致进攻乏力，可能让两个集团都逃脱！\n\n你的建议被否决...",
            "choices": [
                { "text": "服从命令，先打黄维", "next": "huangwei_first" },
                { "text": "坚持同时进攻", "next": "simul_disaster" }
            ]
        },
        "du_first": {
            "text": "你决定先打杜聿明，但杜聿明集团兵力雄厚，且距离徐州近，可以得到支援。\n\n如果先打杜聿明，黄维兵团可能会趁机突围！\n\n正确的策略是先打黄维，再打杜聿明。\n\n你的建议被否决...",
            "choices": [
                { "text": "服从命令，先打黄维", "next": "huangwei_first" },
                { "text": "坚持先打杜聿明", "next": "du_first_disaster" }
            ]
        },
        "continue_close": {
            "text": "你继续近迫作业，但时间紧迫。\n\n杜聿明集团正在出动救援，你必须尽快结束战斗！",
            "choices": [
                { "text": "发起总攻", "next": "huangwei_final" },
                { "text": "继续近迫作业", "next": "close_disaster" }
            ]
        },
        "huangwei_wait_disaster": {
            "text": "你继续等待，但杜聿明集团突破了防线！\n\n黄维兵团趁机突围，战役陷入被动！\n\n你因指挥失误被追究责任...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "在战争中，犹豫不决只会导致失败。",
            "choices": []
        },
        "simul_disaster": {
            "text": "你坚持同时进攻，但兵力分散，进攻乏力。\n\n黄维和杜聿明都趁机突围，战役陷入被动！\n\n你因指挥失误被追究责任...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "在战争中，分散兵力只会导致失败。",
            "choices": []
        },
        "du_first_disaster": {
            "text": "你坚持先打杜聿明，但黄维兵团趁机突围！\n\n黄维兵团与其他国民党军会合，增加了围歼难度！\n\n你因指挥失误被追究责任...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "在战争中，主次不分只会导致失败。",
            "choices": []
        },
        "close_disaster": {
            "text": "你继续近迫作业，但杜聿明集团已经突破防线！\n\n黄维兵团趁机突围，战役陷入被动！\n\n你因指挥失误被追究责任...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "在战争中，必须把握时机，不能过于保守。",
            "choices": []
        },
        "prepare_du": {
            "location": "duyuanyuan",
            "text": "黄维兵团被歼灭后，杜聿明集团30万人被包围在陈官庄地区！\n\n杜聿明集团是国民党军主力，包括邱清泉、李弥、孙元良三个兵团。\n\n你面临着最后的决战！",
            "choices": [
                { "text": "发起总攻，歼灭杜聿明", "next": "du_final" },
                { "text": "围而不打，等待时机", "next": "du_besiege" },
                { "text": "劝降杜聿明", "next": "du_surrender" }
            ]
        },
        "rest_after_huangwei": {
            "text": "你建议休整部队，但杜聿明集团正在策划突围！\n\n如果不立即行动，杜聿明可能会突围成功！\n\n你必须立即行动！",
            "choices": [
                { "text": "立即准备围歼杜聿明", "next": "prepare_du" },
                { "text": "坚持休整", "next": "rest_du_disaster" }
            ]
        },
        "pursue_remaining": {
            "text": "你建议追击残敌，但杜聿明集团是更大的威胁。\n\n如果先追击残敌，杜聿明集团可能会趁机突围！\n\n正确的策略是先围歼杜聿明集团。\n\n你的建议被否决...",
            "choices": [
                { "text": "服从命令，围歼杜聿明", "next": "prepare_du" },
                { "text": "坚持追击", "next": "pursue_remaining_disaster" }
            ]
        },
        "du_final": {
            "location": "chenguanzhuang",
            "text": "1949年1月6日，你下令发起总攻！\n\n解放军全线出击，杜聿明集团全线崩溃！\n\n经过4天激战，杜聿明被俘，邱清泉被击毙，孙元良率残部突围失败！\n\n杜聿明集团30万人被全歼！\n\n淮海战役胜利结束！",
            "isEnd": true,
            "endType": "true",
            "endMessage": "淮海战役胜利！你完成了中国革命史上最伟大的决战！",
            "choices": []
        },
        "du_besiege": {
            "text": "你下令围而不打，但杜聿明集团正在策划突围！\n\n如果不尽快发起进攻，杜聿明可能会突围成功！\n\n你必须立即行动！",
            "choices": [
                { "text": "立即发起总攻", "next": "du_final" },
                { "text": "继续等待", "next": "du_wait_disaster" }
            ]
        },
        "du_surrender": {
            "text": "你建议劝降杜聿明，但杜聿明拒绝投降，决心顽抗到底！\n\n你必须用武力解决！",
            "choices": [
                { "text": "发起总攻", "next": "du_final" },
                { "text": "继续劝降", "next": "surrender_disaster" }
            ]
        },
        "rest_du_disaster": {
            "text": "你坚持休整，但杜聿明集团趁机突围！\n\n虽然解放军全力追击，但仍有部分残敌逃脱！\n\n你因指挥失误被追究责任...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "在战争中，错失战机只会导致失败。",
            "choices": []
        },
        "pursue_remaining_disaster": {
            "text": "你坚持追击残敌，但杜聿明集团趁机突围！\n\n虽然解放军全力追击，但仍有部分残敌逃脱！\n\n你因指挥失误被追究责任...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "在战争中，主次不分只会导致失败。",
            "choices": []
        },
        "du_wait_disaster": {
            "text": "你继续等待，但杜聿明集团突破了防线！\n\n虽然解放军全力追击，但仍有部分残敌逃脱！\n\n你因指挥失误被追究责任...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "在战争中，犹豫不决只会导致失败。",
            "choices": []
        },
        "surrender_disaster": {
            "text": "你继续劝降，但杜聿明集团趁机突围！\n\n虽然解放军全力追击，但仍有部分残敌逃脱！\n\n你因指挥失误被追究责任...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "在战争中，对敌人抱有幻想只会导致失败。",
            "choices": []
        }
    }
}