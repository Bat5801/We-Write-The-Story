{
    "title": "夺命鳌太线",
    "subtitle": "鳌山-太白山穿越",
    "description": "你踏上了中国最危险的户外线路之一——鳌太线。高海拔、恶劣气候、复杂地形，每一步都是生死考验。能否活着走出这片无人区？",
    "version": "1.0",
    "start": "start_camp",
    "variables": {
        "body_temp": 36.5,
        "stamina": 100,
        "hunger": 100,
        "thirst": 100,
        "temperature": 5,
        "wind_level": 3,
        "visibility": 10,
        "altitude": 2800,
        "warmth": 80,
        "weight": 15,
        "protection": 70,
        "light_range": 10,
        "day_time": 8,
        "is_night": false,
        "weather": "sunny",
        "has_tent": true,
        "has_sleeping_bag": true,
        "has_gas_stove": true,
        "has_water_filter": true,
        "has_first_aid": true,
        "saved_hiker": false,
        "emergency_used": false,
        "tent_damaged": false,
        "trekking_pole_broken": false,
        "high_altitude_sickness": 0
    },
    "features": {
        "inventory": true,
        "map": true
    },
    "items": [
        { "id": "tent", "name": "帐篷", "icon": "⛺", "description": "防风保暖帐篷" },
        { "id": "sleeping_bag", "name": "睡袋", "icon": "🛌", "description": "-20度羽绒睡袋" },
        { "id": "gas_stove", "name": "气炉", "icon": "🔥", "description": "高山气炉" },
        { "id": "water_filter", "name": "滤水器", "icon": "💧", "description": "户外滤水器" },
        { "id": "first_aid", "name": "急救包", "icon": "🩹", "description": "应急医疗用品" },
        { "id": "water_bottle", "name": "水壶", "icon": "🥤", "description": "1L容量水壶" },
        { "id": "energy_bar", "name": "能量棒", "icon": "🍫", "description": "高热量能量棒" },
        { "id": "extra_clothes", "name": "保暖衣物", "icon": "🧥", "description": "冲锋衣和抓绒" },
        { "id": "headlamp", "name": "头灯", "icon": "🔦", "description": "强光LED头灯" }
    ],
    "map": {
        "title": "鳌太线地图",
        "startingLocation": "start_camp",
        "locations": [
            { "id": "start_camp", "name": "塘口村营地", "description": "海拔2800米，穿越起点" },
            { "id": "navigation_frame", "name": "导航架", "description": "海拔3475米，标志性地标" },
            { "id": "pyramid", "name": "金字塔", "description": "海拔3500米，陡峭石海区域" },
            { "id": "medicine_temple", "name": "药王庙", "description": "海拔3350米，废弃庙宇" },
            { "id": "ice_crack", "name": "冰裂缝区域", "description": "危险冰川地带" },
            { "id": "shelter", "name": "紧急避难所", "description": "隐藏的高山草甸避难处" },
            { "id": "storm_zone", "name": "暴风雪区域", "description": "常年大风的垭口地带" },
            { "id": "white_pond", "name": "白起庙", "description": "海拔3400米，水源点" },
            { "id": "safety_exit", "name": "安全出口", "description": "太白山景区出口" }
        ]
    },
    "nodes": {
        "start_camp": {
            "text": "凌晨五点，你站在塘口村营地。背包里装着所有装备，总重15公斤。远处的鳌山在晨光中若隐若现。向导告诉你，这条线路每年都有人永远留在山上。",
            "location": "start_camp",
            "choices": [
                { "text": "检查装备后出发", "next": "morning_start", "actions": [{"type": "add", "name": "stamina", "value": -5}, {"type": "addItem", "itemId": "tent"}, {"type": "addItem", "itemId": "sleeping_bag"}, {"type": "addItem", "itemId": "gas_stove"}, {"type": "addItem", "itemId": "water_filter"}, {"type": "addItem", "itemId": "first_aid"}, {"type": "addItem", "itemId": "water_bottle"}, {"type": "addItem", "itemId": "energy_bar"}, {"type": "addItem", "itemId": "extra_clothes"}, {"type": "addItem", "itemId": "headlamp"}] },
                { "text": "多睡一会儿，等天气稳定", "next": "late_start", "actions": [{"type": "add", "name": "stamina", "value": 10}, {"type": "add", "name": "thirst", "value": -10}, {"type": "add", "name": "hunger", "value": -15}, {"type": "addItem", "itemId": "tent"}, {"type": "addItem", "itemId": "sleeping_bag"}, {"type": "addItem", "itemId": "gas_stove"}, {"type": "addItem", "itemId": "water_filter"}, {"type": "addItem", "itemId": "first_aid"}, {"type": "addItem", "itemId": "water_bottle"}, {"type": "addItem", "itemId": "energy_bar"}, {"type": "addItem", "itemId": "extra_clothes"}, {"type": "addItem", "itemId": "headlamp"}] }
            ]
        },
        "morning_start": {
            "text": "你仔细检查了所有装备：帐篷、睡袋、气炉、滤水器、急救包，一应俱全。清晨的空气清冷，温度5度，风力3级。你踏上了通往鳌山的路。",
            "location": "start_camp",
            "actions": [{"type": "add", "name": "stamina", "value": -10}],
            "choices": [
                { "text": "沿着主路前进", "next": "main_path" },
                { "text": "尝试左侧的捷径", "next": "shortcut_start" }
            ]
        },
        "late_start": {
            "text": "你睡到七点才起床。阳光已经照满营地，温度升到了8度。虽然休息好了，但你注意到远处山头上已经出现了云层。",
            "location": "start_camp",
            "choices": [
                { "text": "立刻出发追赶进度", "next": "main_path" },
                { "text": "再等等看天气", "next": "weather_wait" }
            ]
        },
        "weather_wait": {
            "text": "半小时后，云层越来越厚，风向也变了。一场风暴正在酝酿。",
            "location": "start_camp",
            "actions": [{"type": "set", "name": "weather", "value": "cloudy"}, {"type": "add", "name": "wind_level", "value": 2}, {"type": "add", "name": "temperature", "value": -3}],
            "choices": [
                { "text": "冒风雨出发", "next": "storm_start" },
                { "text": "取消穿越，返回村庄", "next": "give_up" }
            ]
        },
        "give_up": {
            "text": "你选择了安全。鳌太线的残酷在于，有时放弃也是一种胜利。",
            "isEnd": true,
            "endType": "neutral",
            "endMessage": "你选择了安全，放弃了这次穿越。"
        },
        "storm_start": {
            "text": "雨点开始落下，风力增强到5级。能见度迅速下降到5米。你在泥泞中艰难前行，每一步都比平时更消耗体力。",
            "location": "start_camp",
            "actions": [{"type": "add", "name": "stamina", "value": -20}, {"type": "add", "name": "body_temp", "value": -0.5}, {"type": "add", "name": "visibility", "value": -5}, {"type": "set", "name": "weather", "value": "rain"}],
            "choices": [
                { "text": "坚持前进", "next": "main_path_storm" },
                { "text": "寻找临时避雨点", "next": "find_shelter" }
            ]
        },
        "find_shelter": {
            "text": "你找到了一块巨大的岩石，可以暂时避雨。雨水顺着岩石边缘流下，形成一道水帘。你在这里等待了大约一个小时。",
            "actions": [{"type": "add", "name": "stamina", "value": 10}, {"type": "add", "name": "hunger", "value": -10}, {"type": "add", "name": "thirst", "value": -15}],
            "choices": [
                { "text": "雨停了，继续前进", "next": "main_path" },
                { "text": "天气转晴，但时间已经过了中午", "next": "afternoon_start" }
            ]
        },
        "afternoon_start": {
            "text": "下午一点，阳光重新出现，但温度已经降到了2度。你已经落后了计划时间，必须加快脚步。",
            "location": "start_camp",
            "actions": [{"type": "set", "name": "day_time", "value": 13}, {"type": "add", "name": "temperature", "value": -3}],
            "choices": [
                { "text": "加速前进", "next": "main_path_hurry" },
                { "text": "保持正常速度", "next": "main_path" }
            ]
        },
        "main_path": {
            "text": "你沿着成熟的驴友路线前进。路面上布满了前人留下的标记。海拔逐渐升高，你开始感到呼吸有些急促。",
            "location": "start_camp",
            "actions": [{"type": "add", "name": "altitude", "value": 200}, {"type": "add", "name": "stamina", "value": -15}, {"type": "add", "name": "thirst", "value": -10}],
            "choices": [
                { "text": "继续攀登", "next": "towards_navigation" },
                { "text": "停下来喝水休息", "next": "rest_stop" }
            ]
        },
        "main_path_storm": {
            "text": "在暴风雨中行走极其艰难。雨水打湿了你的衣服，寒意开始侵入身体。",
            "actions": [{"type": "add", "name": "stamina", "value": -25}, {"type": "add", "name": "body_temp", "value": -1}, {"type": "add", "name": "warmth", "value": -15}, {"type": "add", "name": "altitude", "value": 100}],
            "choices": [
                { "text": "咬牙坚持", "next": "towards_navigation_storm" },
                { "text": "穿上备用衣物", "next": "put_extra_clothes" }
            ]
        },
        "put_extra_clothes": {
            "text": "你从背包里拿出备用的冲锋衣和抓绒穿上。虽然动作有些笨拙，但身体立刻感到暖和了一些。",
            "actions": [{"type": "add", "name": "warmth", "value": 20}, {"type": "add", "name": "body_temp", "value": 0.5}, {"type": "add", "name": "stamina", "value": -10}],
            "choices": [
                { "text": "继续前进", "next": "towards_navigation_storm" }
            ]
        },
        "main_path_hurry": {
            "text": "你加快了脚步，试图弥补失去的时间。但高海拔地区快速行走消耗的体力远超你的预期。",
            "actions": [{"type": "add", "name": "stamina", "value": -30}, {"type": "add", "name": "altitude", "value": 300}, {"type": "add", "name": "thirst", "value": -20}, {"type": "add", "name": "high_altitude_sickness", "value": 1}],
            "choices": [
                { "text": "继续加速", "next": "towards_navigation" },
                { "text": "感觉不对劲，放慢速度", "next": "rest_urgent" }
            ]
        },
        "rest_urgent": {
            "text": "你感到头晕恶心，这是高反的前兆。你立刻停下脚步，深呼吸，慢慢喝水。",
            "actions": [{"type": "add", "name": "stamina", "value": 5}, {"type": "add", "name": "thirst", "value": -5}, {"type": "add", "name": "high_altitude_sickness", "value": -1}],
            "choices": [
                { "text": "感觉好多了，继续前进", "next": "towards_navigation" },
                { "text": "情况没有好转，考虑下撤", "next": "descent_option" }
            ]
        },
        "descent_option": {
            "text": "高反症状持续。你面临一个艰难的选择：继续前进可能有生命危险，但下撤意味着放弃这次穿越。",
            "choices": [
                { "text": "继续坚持，可能只是轻微反应", "next": "towards_navigation" },
                { "text": "安全第一，从左侧路线下撤", "next": "descent_path" },
                { "text": "尝试最短的下撤路线", "next": "dangerous_descent" }
            ]
        },
        "dangerous_descent": {
            "text": "你选择了最短的下撤路线，但这条路线几乎没有路。陡峭的山坡上覆盖着碎石，一脚踩空就可能滑落。",
            "qte": {
                "type": "sequence",
                "title": "危险下撤",
                "description": "你需要保持平衡！按顺序按下方向键：上、下、左、右",
                "sequence": ["↑", "↓", "←", "→"],
                "timeLimit": 4000,
                "success": "descent_success",
                "fail": "fall_death"
            }
        },
        "fall_death": {
            "text": "你脚下一滑，失去了平衡。身体在碎石间翻滚，最终跌落悬崖...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "你在危险的下撤路线上失足坠落。"
        },
        "descent_success": {
            "text": "你成功稳住了身体，安全抵达了山下的村庄。虽然放弃了穿越，但至少保住了性命。",
            "isEnd": true,
            "endType": "good",
            "endMessage": "你安全下撤到村庄，虽然未能完成穿越，但活下来就是胜利。"
        },
        "descent_path": {
            "text": "你沿着左侧的常规下撤路线返回。这条路线虽然长，但相对安全。四个小时后，你回到了塘口村。",
            "isEnd": true,
            "endType": "neutral",
            "endMessage": "你选择安全下撤，回到了起点。"
        },
        "shortcut_start": {
            "text": "你决定走左侧的捷径。这条路看起来更近，但植被茂密，没有明显的路径。",
            "location": "start_camp",
            "actions": [{"type": "add", "name": "stamina", "value": -20}, {"type": "add", "name": "protection", "value": -5}],
            "choices": [
                { "text": "继续探索", "next": "shortcut_jungle" },
                { "text": "这条路太危险，返回主路", "next": "main_path" }
            ]
        },
        "shortcut_jungle": {
            "text": "灌木丛越来越密，你不得不拨开树枝前进。突然，你听到前方有奇怪的声音。",
            "actions": [{"type": "add", "name": "stamina", "value": -15}, {"type": "add", "name": "protection", "value": -10}],
            "choices": [
                { "text": "上前查看", "next": "find_hiker" },
                { "text": "绕开继续前进", "next": "shortcut_continue" }
            ]
        },
        "find_hiker": {
            "text": "你发现一个躺在地上的人。他看起来已经昏迷，旁边散落着背包和水袋。这是一个迷路的驴友！",
            "actions": [{"type": "set", "name": "saved_hiker", "value": true}],
            "choices": [
                { "text": "使用急救包救治", "next": "treat_hiker" },
                { "text": "叫醒他并提供水和食物", "next": "help_hiker_basic" },
                { "text": "情况不明，继续前进", "next": "leave_hiker" }
            ]
        },
        "treat_hiker": {
            "text": "你打开急救包，检查了他的状况。体温偏低，有轻度失温症状。你给他盖上保温毯，喂了温水和能量棒。",
            "actions": [{"type": "add", "name": "stamina", "value": -20}, {"type": "add", "name": "hunger", "value": -10}, {"type": "add", "name": "thirst", "value": -15}],
            "choices": [
                { "text": "他醒了，你们一起前进", "next": "hiker_join" },
                { "text": "让他自己回去，你继续穿越", "next": "hiker_return" }
            ]
        },
        "help_hiker_basic": {
            "text": "你轻轻摇晃他，他慢慢睁开了眼睛。'谢谢...我迷路了...'他虚弱地说。你给了他一些水和食物。",
            "actions": [{"type": "add", "name": "stamina", "value": -10}, {"type": "add", "name": "hunger", "value": -5}, {"type": "add", "name": "thirst", "value": -10}],
            "choices": [
                { "text": "带他一起走", "next": "hiker_join" },
                { "text": "告诉他回去的路", "next": "hiker_return" }
            ]
        },
        "leave_hiker": {
            "text": "你犹豫了一下，但最终选择继续前进。那个人的命运未知，但你知道在这种环境下，多一个人就多一份负担。",
            "actions": [{"type": "add", "name": "stamina", "value": -5}],
            "choices": [
                { "text": "继续前进", "next": "shortcut_continue" }
            ]
        },
        "hiker_join": {
            "text": "这位驴友叫小王，他已经在山上迷路两天了。他表示愿意跟你一起穿越，并且熟悉后半段路线。你们结伴继续前进。",
            "actions": [{"type": "add", "name": "stamina", "value": 5}],
            "choices": [
                { "text": "继续前往导航架", "next": "towards_navigation" }
            ]
        },
        "hiker_return": {
            "text": "你告诉小王回去的路线，他感谢后慢慢离开了。你继续独自前进，但心里总觉得有些不安。",
            "actions": [{"type": "add", "name": "stamina", "value": -5}],
            "choices": [
                { "text": "继续前进", "next": "shortcut_continue" }
            ]
        },
        "shortcut_continue": {
            "text": "你终于走出了灌木丛，发现自己站在一个小山坡上。前方就是导航架！这条捷径确实省了不少时间。",
            "actions": [{"type": "add", "name": "altitude", "value": 400}, {"type": "add", "name": "stamina", "value": -15}],
            "choices": [
                { "text": "前往导航架", "next": "navigation_frame_arrive" }
            ]
        },
        "rest_stop": {
            "text": "你找了一块平整的石头坐下，喝了口水，吃了一根能量棒。体力慢慢恢复。",
            "actions": [{"type": "add", "name": "stamina", "value": 20}, {"type": "add", "name": "hunger", "value": -10}, {"type": "add", "name": "thirst", "value": -20}],
            "choices": [
                { "text": "继续前进", "next": "towards_navigation" }
            ]
        },
        "towards_navigation": {
            "text": "海拔已经超过3000米，空气越来越稀薄。你的呼吸变得沉重，但导航架已经隐约可见。",
            "location": "navigation_frame",
            "actions": [{"type": "add", "name": "altitude", "value": 475}, {"type": "add", "name": "stamina", "value": -25}, {"type": "add", "name": "thirst", "value": -15}, {"type": "add", "name": "high_altitude_sickness", "value": 1}],
            "choices": [
                { "text": "抵达导航架", "next": "navigation_frame_arrive" },
                { "text": "感觉高反严重，休息一下", "next": "navigation_rest" }
            ]
        },
        "towards_navigation_storm": {
            "text": "暴风雨中，你几乎看不清前方。但导航架的轮廓在闪电中偶尔显现。",
            "actions": [{"type": "add", "name": "altitude", "value": 475}, {"type": "add", "name": "stamina", "value": -30}, {"type": "add", "name": "body_temp", "value": -1.5}, {"type": "add", "name": "visibility", "value": -3}],
            "choices": [
                { "text": "继续前进", "next": "navigation_frame_arrive" }
            ]
        },
        "navigation_rest": {
            "text": "你靠在一块石头上，深呼吸。头晕和恶心感慢慢减轻。高海拔地区，休息是最好的良药。",
            "actions": [{"type": "add", "name": "stamina", "value": 10}, {"type": "add", "name": "high_altitude_sickness", "value": -1}, {"type": "add", "name": "hunger", "value": -5}],
            "choices": [
                { "text": "继续前进", "next": "navigation_frame_arrive" }
            ]
        },
        "navigation_frame_arrive": {
            "text": "你终于抵达了导航架！这是鳌太线上最著名的地标之一，海拔3475米。铁制的三脚架在风中发出嗡嗡的声音。",
            "location": "navigation_frame",
            "actions": [{"type": "add", "name": "stamina", "value": 10}],
            "choices": [
                { "text": "拍照留念后继续前进", "next": "towards_pyramid" },
                { "text": "在这里扎营休息", "next": "camp_at_navigation" },
                { "text": "检查一下天气情况", "next": "check_weather" }
            ]
        },
        "check_weather": {
            "text": "你用手机查看了天气预报：未来几小时有暴风雪预警。",
            "actions": [{"type": "set", "name": "weather", "value": "storm_warning"}, {"type": "add", "name": "wind_level", "value": 3}],
            "choices": [
                { "text": "尽快前进，在风暴到来前通过危险区域", "next": "towards_pyramid_hurry" },
                { "text": "在这里扎营躲避风暴", "next": "camp_at_navigation_storm" },
                { "text": "考虑下撤", "next": "descent_option" }
            ]
        },
        "camp_at_navigation": {
            "text": "你决定在这里扎营。搭好帐篷后，你煮了一锅热汤，身体慢慢暖和起来。太阳开始西沉，夜晚即将来临。",
            "actions": [{"type": "add", "name": "stamina", "value": 30}, {"type": "add", "name": "body_temp", "value": 1}, {"type": "add", "name": "hunger", "value": -20}, {"type": "add", "name": "thirst", "value": -10}, {"type": "set", "name": "is_night", "value": true}, {"type": "set", "name": "day_time", "value": 20}, {"type": "add", "name": "temperature", "value": -10}],
            "choices": [
                { "text": "好好休息，明天一早出发", "next": "navigation_night" },
                { "text": "趁着月光继续前进", "next": "night_march" }
            ]
        },
        "camp_at_navigation_storm": {
            "text": "你赶紧搭好帐篷。刚钻进睡袋，暴风雪就来了。狂风呼啸，帐篷在风中剧烈摇晃。",
            "actions": [{"type": "add", "name": "stamina", "value": 20}, {"type": "set", "name": "weather", "value": "storm"}, {"type": "add", "name": "wind_level", "value": 5}, {"type": "set", "name": "is_night", "value": true}, {"type": "add", "name": "temperature", "value": -15}],
            "choices": [
                { "text": "在帐篷里等待风暴过去", "next": "wait_out_storm" },
                { "text": "帐篷好像撑不住了，加固一下", "next": "reinforce_tent" }
            ]
        },
        "reinforce_tent": {
            "text": "你冒着风雪走出帐篷，用登山杖和石头加固了帐杆。狂风差点把你吹倒，但你勉强完成了加固。",
            "qte": {
                "type": "hold",
                "title": "加固帐篷",
                "description": "按住按钮固定帐杆！",
                "holdDuration": 3000,
                "timeLimit": 5000,
                "buttonText": "加固！",
                "success": "tent_reinforced",
                "fail": "tent_damaged"
            }
        },
        "tent_reinforced": {
            "text": "你成功加固了帐篷。虽然仍然在风中摇晃，但已经安全多了。你回到睡袋里，听着外面的暴风雪。",
            "actions": [{"type": "add", "name": "stamina", "value": -10}, {"type": "add", "name": "body_temp", "value": -0.5}],
            "choices": [
                { "text": "等待风暴过去", "next": "wait_out_storm" }
            ]
        },
        "tent_damaged": {
            "text": "一阵狂风来袭，你没来得及固定好帐杆。帐篷被吹翻，帐杆断裂。你的装备散落在风雪中。",
            "actions": [{"type": "set", "name": "tent_damaged", "value": true}, {"type": "add", "name": "body_temp", "value": -2}, {"type": "add", "name": "stamina", "value": -20}],
            "choices": [
                { "text": "抢救装备", "next": "rescue_gear" },
                { "text": "放弃装备，寻找遮蔽", "next": "find_shelter_storm" }
            ]
        },
        "rescue_gear": {
            "text": "你在暴风雪中拼命抢救装备。睡袋保住了，但气炉和滤水器不见了。",
            "actions": [{"type": "set", "name": "has_gas_stove", "value": false}, {"type": "set", "name": "has_water_filter", "value": false}, {"type": "add", "name": "body_temp", "value": -1.5}, {"type": "add", "name": "stamina", "value": -15}],
            "choices": [
                { "text": "钻进睡袋等待", "next": "wait_out_storm" }
            ]
        },
        "find_shelter_storm": {
            "text": "你放弃了装备，在暴风雪中寻找遮蔽。幸运的是，你发现了一个天然的山洞。",
            "actions": [{"type": "set", "name": "has_tent", "value": false}, {"type": "add", "name": "body_temp", "value": -1}, {"type": "add", "name": "stamina", "value": -25}],
            "choices": [
                { "text": "在山洞里等待", "next": "wait_out_storm" }
            ]
        },
        "wait_out_storm": {
            "text": "暴风雪持续了整整一夜。第二天清晨，天空终于放晴。但温度已经降到了零下15度。",
            "actions": [{"type": "set", "name": "weather", "value": "sunny"}, {"type": "set", "name": "is_night", "value": false}, {"type": "set", "name": "day_time", "value": 7}, {"type": "add", "name": "temperature", "value": -5}, {"type": "add", "name": "hunger", "value": -25}, {"type": "add", "name": "thirst", "value": -20}],
            "choices": [
                { "text": "继续前进", "next": "towards_pyramid" },
                { "text": "先补充体力", "next": "morning_prep" }
            ]
        },
        "morning_prep": {
            "text": "你吃了一些能量棒，喝了水，让身体慢慢恢复。太阳升起后，温度开始回升。",
            "actions": [{"type": "add", "name": "stamina", "value": 15}, {"type": "add", "name": "hunger", "value": -10}, {"type": "add", "name": "thirst", "value": -15}, {"type": "add", "name": "temperature", "value": 5}],
            "choices": [
                { "text": "继续前进", "next": "towards_pyramid" }
            ]
        },
        "navigation_night": {
            "text": "夜晚降临，温度骤降至零下10度。你在睡袋里睡得很安稳。第二天清晨，阳光洒满山头。",
            "actions": [{"type": "set", "name": "is_night", "value": false}, {"type": "set", "name": "day_time", "value": 6}, {"type": "add", "name": "temperature", "value": 3}, {"type": "add", "name": "stamina", "value": 25}, {"type": "add", "name": "hunger", "value": -20}, {"type": "add", "name": "thirst", "value": -15}],
            "choices": [
                { "text": "出发前往金字塔", "next": "towards_pyramid" }
            ]
        },
        "night_march": {
            "text": "你打开头灯，趁着月光继续前进。夜晚的鳌太线格外寂静，只有你的脚步声和风声。",
            "actions": [{"type": "set", "name": "is_night", "value": true}, {"type": "add", "name": "temperature", "value": -12}, {"type": "add", "name": "stamina", "value": -30}, {"type": "add", "name": "visibility", "value": -5}],
            "choices": [
                { "text": "继续前进", "next": "towards_pyramid_night" },
                { "text": "太危险了，返回导航架扎营", "next": "camp_at_navigation" }
            ]
        },
        "towards_pyramid_night": {
            "text": "头灯的光束只能照亮前方几米。你必须格外小心，脚下是陡峭的碎石坡。",
            "qte": {
                "type": "click",
                "title": "夜间行军",
                "description": "小心脚下！快速点击按钮保持平衡",
                "requiredClicks": 15,
                "timeLimit": 5000,
                "buttonText": "保持平衡！",
                "success": "pyramid_arrive_night",
                "fail": "night_fall"
            }
        },
        "night_fall": {
            "text": "你一脚踩空，身体顺着碎石坡滚了下去。头灯脱手飞出，黑暗瞬间吞噬了你...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "你在夜间行军时失足坠落。"
        },
        "pyramid_arrive_night": {
            "text": "你成功抵达了金字塔脚下。虽然精疲力竭，但终于安全了。你在这里搭起帐篷，准备休息。",
            "location": "pyramid",
            "actions": [{"type": "add", "name": "stamina", "value": 10}, {"type": "add", "name": "body_temp", "value": -1}],
            "choices": [
                { "text": "休息一晚", "next": "pyramid_night" }
            ]
        },
        "towards_pyramid": {
            "text": "从导航架到金字塔是一段艰难的路程。眼前是大片的石海，巨大的花岗岩块堆积如山，每一步都需要格外小心。",
            "location": "pyramid",
            "actions": [{"type": "add", "name": "stamina", "value": -30}, {"type": "add", "name": "altitude", "value": 25}, {"type": "add", "name": "protection", "value": -10}],
            "choices": [
                { "text": "直接穿越石海", "next": "rock_sea_cross" },
                { "text": "沿着石海边缘绕行", "next": "rock_sea_edge" }
            ]
        },
        "towards_pyramid_hurry": {
            "text": "风暴即将来临，你必须尽快通过这段危险区域。石海在你脚下延伸，时间紧迫。",
            "actions": [{"type": "add", "name": "stamina", "value": -40}, {"type": "add", "name": "protection", "value": -15}],
            "choices": [
                { "text": "快速穿越", "next": "rock_sea_cross_hurry" }
            ]
        },
        "rock_sea_cross": {
            "text": "你踏入了石海。巨大的岩石表面覆盖着一层薄冰，非常湿滑。每一步都需要试探和确认。",
            "qte": {
                "type": "sequence",
                "title": "穿越石海",
                "description": "踩着岩石前进！按顺序点击：A、B、A、B、A",
                "sequence": ["A", "B", "A", "B", "A"],
                "timeLimit": 5000,
                "success": "pyramid_arrive",
                "fail": "rock_sea_fall"
            }
        },
        "rock_sea_cross_hurry": {
            "text": "你加快脚步穿越石海，但匆忙中更容易出错。",
            "qte": {
                "type": "sequence",
                "title": "快速穿越石海",
                "description": "必须在风暴到来前通过！按顺序点击：A、B、X、A、B、X",
                "sequence": ["A", "B", "X", "A", "B", "X"],
                "timeLimit": 4000,
                "success": "pyramid_arrive",
                "fail": "rock_sea_fall_storm"
            }
        },
        "rock_sea_edge": {
            "text": "你沿着石海边缘走，虽然路更长，但相对安全。脚下是茂密的高山草甸，不时有野花绽放。",
            "actions": [{"type": "add", "name": "stamina", "value": -25}, {"type": "add", "name": "hunger", "value": -10}, {"type": "add", "name": "thirst", "value": -10}],
            "choices": [
                { "text": "继续前进", "next": "pyramid_arrive" }
            ]
        },
        "rock_sea_fall": {
            "text": "你踩在一块松动的岩石上，身体失去平衡。虽然抓住了旁边的岩石，但脚踝严重扭伤。",
            "actions": [{"type": "set", "name": "trekking_pole_broken", "value": true}, {"type": "add", "name": "stamina", "value": -30}, {"type": "add", "name": "protection", "value": -20}],
            "choices": [
                { "text": "用急救包处理", "next": "treat_ankle" },
                { "text": "尝试继续前进", "next": "pyramid_arrive_hurt" }
            ]
        },
        "rock_sea_fall_storm": {
            "text": "你失足滑落，身体在岩石间翻滚。暴风雪同时袭来，你失去了意识...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "你在暴风雪中从石海坠落。"
        },
        "treat_ankle": {
            "text": "你用急救包给自己的脚踝做了简单包扎。虽然仍有疼痛，但至少可以继续行走了。",
            "actions": [{"type": "add", "name": "stamina", "value": 5}, {"type": "add", "name": "protection", "value": 10}],
            "choices": [
                { "text": "继续前进", "next": "pyramid_arrive_hurt" }
            ]
        },
        "pyramid_arrive": {
            "text": "你终于登上了金字塔！海拔3500米，这是鳌太线上的最高点之一。四周是一望无际的石海，景色壮丽而残酷。",
            "location": "pyramid",
            "actions": [{"type": "add", "name": "stamina", "value": 15}],
            "choices": [
                { "text": "继续前往药王庙", "next": "towards_medicine_temple" },
                { "text": "在这里休息", "next": "pyramid_rest" },
                { "text": "探索一下周边", "next": "pyramid_explore" }
            ]
        },
        "pyramid_arrive_hurt": {
            "text": "你一瘸一拐地登上了金字塔。脚踝的疼痛让你每一步都很艰难。",
            "location": "pyramid",
            "actions": [{"type": "add", "name": "stamina", "value": -10}],
            "choices": [
                { "text": "继续前进", "next": "towards_medicine_temple_hurt" },
                { "text": "在这里休息", "next": "pyramid_rest" }
            ]
        },
        "pyramid_rest": {
            "text": "你找了一块背风的岩石坐下，吃了些东西补充体力。远处的云层看起来有些不安分。",
            "actions": [{"type": "add", "name": "stamina", "value": 20}, {"type": "add", "name": "hunger", "value": -15}, {"type": "add", "name": "thirst", "value": -15}],
            "choices": [
                { "text": "继续前进", "next": "towards_medicine_temple" }
            ]
        },
        "pyramid_explore": {
            "text": "你在金字塔周围探索，发现了一个隐藏的洞穴入口。洞口被碎石半掩着。",
            "choices": [
                { "text": "进入洞穴看看", "next": "hidden_cave" },
                { "text": "继续前进", "next": "towards_medicine_temple" }
            ]
        },
        "hidden_cave": {
            "text": "你推开碎石，进入了洞穴。里面比外面暖和得多，而且你发现了一些前人留下的物资：一些能量棒和水！",
            "actions": [{"type": "add", "name": "stamina", "value": 10}, {"type": "add", "name": "hunger", "value": 20}, {"type": "add", "name": "thirst", "value": 20}],
            "choices": [
                { "text": "拿走物资继续前进", "next": "towards_medicine_temple" },
                { "text": "在这里休息", "next": "cave_rest" }
            ]
        },
        "cave_rest": {
            "text": "你在洞穴里休息了一会儿。这里简直是一个天然的避难所。",
            "actions": [{"type": "add", "name": "stamina", "value": 30}, {"type": "add", "name": "body_temp", "value": 1}],
            "choices": [
                { "text": "继续前进", "next": "towards_medicine_temple" }
            ]
        },
        "pyramid_night": {
            "text": "夜晚的金字塔格外寒冷。你在帐篷里度过了一个漫长的夜晚。第二天一早，你继续出发。",
            "actions": [{"type": "set", "name": "is_night", "value": false}, {"type": "set", "name": "day_time", "value": 6}, {"type": "add", "name": "stamina", "value": 20}, {"type": "add", "name": "hunger", "value": -20}, {"type": "add", "name": "thirst", "value": -15}],
            "choices": [
                { "text": "前往药王庙", "next": "towards_medicine_temple" }
            ]
        },
        "towards_medicine_temple": {
            "text": "从金字塔下来，海拔逐渐下降。你穿过一片高山草甸，远处可以看到药王庙的轮廓。",
            "location": "medicine_temple",
            "actions": [{"type": "add", "name": "stamina", "value": -20}, {"type": "add", "name": "altitude", "value": -150}, {"type": "add", "name": "temperature", "value": 3}],
            "choices": [
                { "text": "前往药王庙", "next": "medicine_temple_arrive" },
                { "text": "经过白起庙取水", "next": "white_pond_stop" }
            ]
        },
        "towards_medicine_temple_hurt": {
            "text": "受伤的脚踝让这段路变得格外艰难。每走一步都伴随着剧痛。",
            "actions": [{"type": "add", "name": "stamina", "value": -35}, {"type": "add", "name": "altitude", "value": -150}],
            "choices": [
                { "text": "坚持前进", "next": "medicine_temple_arrive_hurt" }
            ]
        },
        "white_pond_stop": {
            "text": "你来到了白起庙，这里有一处水源。清澈的泉水从岩石间流出。",
            "location": "white_pond",
            "actions": [{"type": "add", "name": "thirst", "value": 40}, {"type": "add", "name": "stamina", "value": -5}],
            "choices": [
                { "text": "装满水继续前进", "next": "medicine_temple_arrive" },
                { "text": "在这里休息一下", "next": "white_pond_rest" }
            ]
        },
        "white_pond_rest": {
            "text": "你在水边坐下，喝了个够，还吃了些东西。身体感觉好多了。",
            "actions": [{"type": "add", "name": "stamina", "value": 15}, {"type": "add", "name": "hunger", "value": -10}, {"type": "add", "name": "thirst", "value": -15}],
            "choices": [
                { "text": "继续前进", "next": "medicine_temple_arrive" }
            ]
        },
        "medicine_temple_arrive": {
            "text": "你抵达了药王庙。这座废弃的庙宇只剩下断壁残垣，但仍然可以提供一些遮蔽。你在这里遇到了其他几位驴友，大家互相交流了路况信息。",
            "location": "medicine_temple",
            "actions": [{"type": "add", "name": "stamina", "value": 10}],
            "choices": [
                { "text": "继续前往冰裂缝区域", "next": "towards_ice_crack" },
                { "text": "在这里扎营休息", "next": "medicine_temple_camp" },
                { "text": "从这里下撤", "next": "medicine_temple_descent" }
            ]
        },
        "medicine_temple_arrive_hurt": {
            "text": "你终于到达了药王庙。脚踝的疼痛已经让你几乎无法继续行走。",
            "location": "medicine_temple",
            "choices": [
                { "text": "在这里休息治疗", "next": "medicine_temple_treat" },
                { "text": "继续前进", "next": "towards_ice_crack_hurt" },
                { "text": "从这里下撤", "next": "medicine_temple_descent" }
            ]
        },
        "medicine_temple_treat": {
            "text": "你在药王庙休息了一天，用急救包对脚踝进行了更细致的处理。疼痛减轻了不少，但仍然无法快速行走。",
            "actions": [{"type": "add", "name": "stamina", "value": 25}, {"type": "add", "name": "hunger", "value": -30}, {"type": "add", "name": "thirst", "value": -25}, {"type": "set", "name": "day_time", "value": 10}],
            "choices": [
                { "text": "继续前进", "next": "towards_ice_crack_slow" },
                { "text": "从这里下撤", "next": "medicine_temple_descent" }
            ]
        },
        "medicine_temple_camp": {
            "text": "你在药王庙附近搭起帐篷。夕阳西下，远处的雪山被染成了金色。这是穿越以来最美的一刻。",
            "actions": [{"type": "add", "name": "stamina", "value": 30}, {"type": "add", "name": "hunger", "value": -20}, {"type": "add", "name": "thirst", "value": -15}, {"type": "set", "name": "is_night", "value": true}, {"type": "set", "name": "day_time", "value": 19}],
            "choices": [
                { "text": "休息一晚", "next": "medicine_temple_night" }
            ]
        },
        "medicine_temple_descent": {
            "text": "你决定从药王庙下撤。这条路虽然漫长，但相对安全。几个小时后，你看到了太白山景区的游客。",
            "isEnd": true,
            "endType": "good",
            "endMessage": "你从药王庙安全下撤，成功完成了部分穿越。"
        },
        "medicine_temple_night": {
            "text": "一夜好眠。第二天清晨，你精神饱满地继续出发。",
            "actions": [{"type": "set", "name": "is_night", "value": false}, {"type": "set", "name": "day_time", "value": 6}, {"type": "add", "name": "stamina", "value": 25}, {"type": "add", "name": "hunger", "value": -20}, {"type": "add", "name": "thirst", "value": -15}],
            "choices": [
                { "text": "前往冰裂缝区域", "next": "towards_ice_crack" }
            ]
        },
        "towards_ice_crack": {
            "text": "离开药王庙后，你进入了一片冰川区域。巨大的冰块在阳光下闪闪发光，但下面隐藏着致命的冰裂缝。",
            "location": "ice_crack",
            "actions": [{"type": "add", "name": "stamina", "value": -25}, {"type": "add", "name": "temperature", "value": -5}, {"type": "add", "name": "altitude", "value": 50}],
            "choices": [
                { "text": "小心穿越", "next": "ice_crack_cross" },
                { "text": "沿着冰川边缘走", "next": "ice_crack_edge" },
                { "text": "寻找绕行路线", "next": "ice_crack_route" }
            ]
        },
        "towards_ice_crack_hurt": {
            "text": "受伤的脚踝让你在冰面上更加危险。每一步都必须格外小心。",
            "actions": [{"type": "add", "name": "stamina", "value": -40}, {"type": "add", "name": "temperature", "value": -5}],
            "choices": [
                { "text": "小心穿越", "next": "ice_crack_cross_hurt" }
            ]
        },
        "towards_ice_crack_slow": {
            "text": "你缓慢但稳定地前进。虽然速度慢，但安全第一。",
            "actions": [{"type": "add", "name": "stamina", "value": -20}, {"type": "add", "name": "temperature", "value": -5}],
            "choices": [
                { "text": "小心穿越", "next": "ice_crack_cross" }
            ]
        },
        "ice_crack_cross": {
            "text": "你踏上了冰川。冰面光滑，下面是深不见底的裂缝。你必须小心地寻找安全的落脚点。",
            "qte": {
                "type": "sequence",
                "title": "穿越冰川",
                "description": "避开冰裂缝！按顺序点击：上、上、下、左、右、上",
                "sequence": ["↑", "↑", "↓", "←", "→", "↑"],
                "timeLimit": 6000,
                "success": "ice_crack_success",
                "fail": "ice_crack_fall"
            }
        },
        "ice_crack_cross_hurt": {
            "text": "受伤的脚踝让你在冰面上很难保持平衡。",
            "qte": {
                "type": "sequence",
                "title": "穿越冰川（受伤）",
                "description": "受伤状态下更难保持平衡！按顺序点击：上、下、上、左、右、上、下",
                "sequence": ["↑", "↓", "↑", "←", "→", "↑", "↓"],
                "timeLimit": 7000,
                "success": "ice_crack_success_hurt",
                "fail": "ice_crack_fall_hurt"
            }
        },
        "ice_crack_edge": {
            "text": "你沿着冰川边缘走，虽然路更长，但避开了最危险的区域。",
            "actions": [{"type": "add", "name": "stamina", "value": -30}, {"type": "add", "name": "hunger", "value": -10}, {"type": "add", "name": "thirst", "value": -10}],
            "choices": [
                { "text": "继续前进", "next": "ice_crack_success" }
            ]
        },
        "ice_crack_route": {
            "text": "你花了一些时间寻找绕行路线，终于找到了一条安全的小路绕过冰川。",
            "actions": [{"type": "add", "name": "stamina", "value": -20}, {"type": "add", "name": "hunger", "value": -15}],
            "choices": [
                { "text": "继续前进", "next": "ice_crack_success" }
            ]
        },
        "ice_crack_success": {
            "text": "你成功穿越了冰裂缝区域！前方是一片开阔的高山草甸，紧急避难所应该就在附近。",
            "location": "shelter",
            "actions": [{"type": "add", "name": "stamina", "value": 10}],
            "choices": [
                { "text": "前往紧急避难所", "next": "emergency_shelter" },
                { "text": "直接前往暴风雪区域", "next": "towards_storm_zone" }
            ]
        },
        "ice_crack_success_hurt": {
            "text": "你成功穿越了冰裂缝区域！虽然脚踝疼痛加剧，但你还活着。",
            "location": "shelter",
            "actions": [{"type": "add", "name": "stamina", "value": -5}],
            "choices": [
                { "text": "前往紧急避难所休息", "next": "emergency_shelter" }
            ]
        },
        "ice_crack_fall": {
            "text": "你踩到了一块薄冰，冰面破裂，你坠入了冰裂缝...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "你坠入了冰裂缝。"
        },
        "ice_crack_fall_hurt": {
            "text": "受伤的脚踝让你反应慢了一步，你坠入了冰裂缝...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "你在受伤状态下坠入了冰裂缝。"
        },
        "emergency_shelter": {
            "text": "你找到了紧急避难所！这是一个用石头搭建的小屋，里面有一些干草和前人留下的物资。",
            "location": "shelter",
            "actions": [{"type": "add", "name": "stamina", "value": 30}, {"type": "add", "name": "body_temp", "value": 2}, {"type": "add", "name": "hunger", "value": 10}, {"type": "add", "name": "thirst", "value": 10}, {"type": "set", "name": "emergency_used", "value": true}],
            "choices": [
                { "text": "休息后继续前进", "next": "towards_storm_zone" },
                { "text": "在这里等待天气好转", "next": "shelter_wait" }
            ]
        },
        "shelter_wait": {
            "text": "你在避难所里休息了半天。身体完全恢复，状态良好。",
            "actions": [{"type": "add", "name": "stamina", "value": 30}, {"type": "add", "name": "hunger", "value": -15}, {"type": "add", "name": "thirst", "value": -15}, {"type": "set", "name": "day_time", "value": 14}],
            "choices": [
                { "text": "继续前进", "next": "towards_storm_zone" }
            ]
        },
        "towards_storm_zone": {
            "text": "你进入了暴风雪区域。这里常年大风，是鳌太线上最危险的路段之一。风力达到了7级，能见度极低。",
            "location": "storm_zone",
            "actions": [{"type": "set", "name": "weather", "value": "windy"}, {"type": "add", "name": "wind_level", "value": 4}, {"type": "add", "name": "visibility", "value": -5}, {"type": "add", "name": "stamina", "value": -30}, {"type": "add", "name": "body_temp", "value": -1}, {"type": "add", "name": "warmth", "value": -20}],
            "choices": [
                { "text": "迎风前进", "next": "storm_walk" },
                { "text": "寻找背风路线", "next": "storm_backwind" }
            ]
        },
        "storm_walk": {
            "text": "你顶着狂风艰难前行。每一步都像是在和大自然搏斗。",
            "qte": {
                "type": "hold",
                "title": "逆风前行",
                "description": "按住按钮对抗狂风！",
                "holdDuration": 4000,
                "timeLimit": 6000,
                "buttonText": "坚持！",
                "success": "storm_success",
                "fail": "storm_fall"
            }
        },
        "storm_backwind": {
            "text": "你找到了一条背风的沟壑，沿着它前进。虽然路难走，但至少不用直接面对狂风。",
            "actions": [{"type": "add", "name": "stamina", "value": -25}, {"type": "add", "name": "protection", "value": -10}],
            "choices": [
                { "text": "继续前进", "next": "storm_success" }
            ]
        },
        "storm_success": {
            "text": "你成功通过了暴风雪区域！前方就是最后的路段，安全出口就在眼前。",
            "actions": [{"type": "add", "name": "stamina", "value": 15}],
            "choices": [
                { "text": "冲向终点", "next": "final_push" },
                { "text": "休息一下再出发", "next": "final_rest" }
            ]
        },
        "storm_fall": {
            "text": "狂风终于将你吹倒。你在地上翻滚，最终滑下了山坡...",
            "isEnd": true,
            "endType": "death",
            "endMessage": "你在暴风雪区域被狂风卷走。"
        },
        "final_push": {
            "text": "你鼓起最后的力气，冲向终点。太白山景区的游客已经可以看到了。",
            "actions": [{"type": "add", "name": "stamina", "value": -30}, {"type": "add", "name": "altitude", "value": -400}],
            "choices": [
                { "text": "到达终点", "next": "victory" }
            ]
        },
        "final_rest": {
            "text": "你在路边坐下，喝了最后一口水，吃了最后一根能量棒。然后，你站起来，走向终点。",
            "actions": [{"type": "add", "name": "stamina", "value": 10}, {"type": "add", "name": "hunger", "value": -10}, {"type": "add", "name": "thirst", "value": -15}, {"type": "add", "name": "altitude", "value": -400}],
            "choices": [
                { "text": "到达终点", "next": "victory" }
            ]
        },
        "victory": {
            "text": "🎉 你成功完成了鳌太线穿越！从塘口村到太白山景区，你经历了高反、暴风雪、冰裂缝和无数艰难险阻，但最终活着走出了这片无人区。这段经历将成为你一生难忘的记忆。",
            "location": "safety_exit",
            "isEnd": true,
            "endType": "victory",
            "endMessage": "恭喜你成功穿越夺命鳌太线！"
        }
    }
}
