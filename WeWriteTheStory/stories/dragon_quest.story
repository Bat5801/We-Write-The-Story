{
    "id": "dragon_quest",
    "title": "屠龙传说",
    "description": "在巨龙的巢穴中寻找传说中的宝藏",
    "version": "1.0",
    "features": { "inventory": true },
    "items": [
        { "id": "dragon_slayer", "name": "屠龙剑", "icon": "⚔️", "description": "传说中能斩杀巨龙的神剑" },
        { "id": "fire_shield", "name": "烈焰护盾", "icon": "🛡️", "description": "能抵御龙焰的魔法盾牌" },
        { "id": "golden_egg", "name": "龙蛋", "icon": "🥚", "description": "巨龙留下的珍贵龙蛋" },
        { "id": "ancient_scroll", "name": "古老卷轴", "icon": "📜", "description": "记载着巨龙弱点的卷轴" }
    ],
    "start": "village",
    "nodes": {
        "village": {
            "text": "你站在一个宁静的村庄边缘。村民们神情紧张，窃窃私语。村口的告示牌上写着：'悬赏屠龙勇士——杀死威胁村庄的巨龙，赏金千两。'",
            "choices": [
                { "text": "接下任务", "next": "accept_quest" },
                { "text": "询问村民详情", "next": "ask_villagers" },
                { "text": "离开村庄", "next": "leave_village" }
            ]
        },
        "accept_quest": {
            "text": "你决定接下屠龙任务。村长走过来，递给你一把破旧的剑和一面盾牌。'这是我们最好的装备了，'他说，'巨龙住在东边的山上。'",
            "choices": [
                { "text": "前往东山", "next": "mountain_path" },
                { "text": "先准备装备", "next": "prepare" }
            ]
        },
        "ask_villagers": {
            "text": "你询问村民关于巨龙的详情。一位老妇人告诉你：'那条龙已经在这里盘踞了好几年了。它抢走了我们的财宝，还抓走了我们的孩子。有人说它的弱点在眼睛，有人说在心脏。'",
            "choices": [
                { "text": "寻找屠龙的线索", "next": "search_clues" },
                { "text": "接下任务", "next": "accept_quest" }
            ]
        },
        "leave_village": {
            "text": "你决定不卷入这场纷争，转身离开了村庄。身后传来村民们失望的叹息声。",
            "isEnd": true,
            "endType": "neutral"
        },
        "prepare": {
            "text": "你决定先准备装备。村庄里的铁匠告诉你：'我可以帮你打造更好的武器，但我需要一些特殊材料。'他列出了需要的材料：龙鳞、魔法矿石和精灵之泪。",
            "choices": [
                { "text": "寻找材料", "next": "find_materials" },
                { "text": "直接出发", "next": "mountain_path" }
            ]
        },
        "search_clues": {
            "text": "你开始寻找屠龙的线索。在村庄的图书馆里，你找到了一本古老的书，书中记载着屠龙的方法。",
            "choices": [
                { "text": "阅读书籍", "next": "read_book", "actions": [{ "type": "addItem", "itemId": "ancient_scroll" }] },
                { "text": "询问智者", "next": "ask_sage" }
            ]
        },
        "ask_sage": {
            "text": "你找到了村庄里的智者。他告诉你：'巨龙并非不可战胜。传说中有一把屠龙剑，藏在古老的遗迹中。但要找到它，你需要通过三个试炼。'",
            "choices": [
                { "text": "寻找屠龙剑", "next": "find_sword" },
                { "text": "直接挑战巨龙", "next": "mountain_path" }
            ]
        },
        "find_materials": {
            "text": "你开始寻找打造装备所需的材料。经过一番搜索，你在村庄附近的山洞里找到了一些魔法矿石。",
            "choices": [
                { "text": "收集矿石", "next": "got_ore", "actions": [{ "type": "addItem", "itemId": "fire_shield" }] },
                { "text": "继续寻找其他材料", "next": "search_more" }
            ]
        },
        "search_more": {
            "text": "你继续寻找其他材料。在森林深处，你遇到了一只受伤的精灵。她感谢你的帮助，并送给你一滴精灵之泪。",
            "choices": [
                { "text": "收下精灵之泪", "next": "got_materials", "actions": [{ "type": "addItem", "itemId": "dragon_slayer" }] },
                { "text": "婉言谢绝", "next": "mountain_path" }
            ]
        },
        "got_ore": {
            "text": "你带着魔法矿石回到铁匠那里。铁匠用它为你打造了一面烈焰护盾。",
            "choices": [
                { "text": "继续寻找其他材料", "next": "search_more" },
                { "text": "出发屠龙", "next": "mountain_path" }
            ]
        },
        "got_materials": {
            "text": "你收集齐了所有材料。铁匠用它们为你打造了一把锋利的屠龙剑。",
            "choices": [
                { "text": "出发屠龙", "next": "mountain_path" },
                { "text": "感谢铁匠", "next": "mountain_path" }
            ]
        },
        "read_book": {
            "text": "书中记载着巨龙的弱点：它的心脏被一层坚硬的鳞片保护着，但在它的左腋下有一处没有鳞片的地方。此外，巨龙害怕龙蛋被伤害。",
            "choices": [
                { "text": "记住弱点", "next": "mountain_path" },
                { "text": "寻找龙蛋", "next": "find_egg" }
            ]
        },
        "find_sword": {
            "text": "你来到了古老的遗迹。遗迹入口处有三个石碑，上面刻着试炼的内容：勇气、智慧和力量。",
            "choices": [
                { "text": "接受勇气试炼", "next": "trial_courage" },
                { "text": "接受智慧试炼", "next": "trial_wisdom" },
                { "text": "接受力量试炼", "next": "trial_strength" }
            ]
        },
        "trial_courage": {
            "text": "勇气试炼要求你面对自己最深的恐惧。你面前出现了一个幻象——你最害怕的东西。",
            "choices": [
                { "text": "勇敢面对", "next": "pass_courage" },
                { "text": "逃避", "next": "fail_trial" }
            ]
        },
        "pass_courage": {
            "text": "你勇敢地面对了自己的恐惧。幻象消失了，第一个试炼通过。",
            "choices": [
                { "text": "继续下一个试炼", "next": "trial_wisdom" },
                { "text": "直接寻找屠龙剑", "next": "find_sword_direct" }
            ]
        },
        "fail_trial": {
            "text": "你选择了逃避。试炼失败了，但你没有受伤。你可以选择重新开始或离开。",
            "choices": [
                { "text": "重新尝试", "next": "trial_courage" },
                { "text": "离开遗迹", "next": "mountain_path" }
            ]
        },
        "trial_wisdom": {
            "text": "智慧试炼要求你解开一个谜题：'什么东西你越给别人，自己反而越多？'",
            "choices": [
                { "text": "答案是知识", "next": "pass_wisdom" },
                { "text": "答案是金钱", "next": "fail_trial" },
                { "text": "答案是爱", "next": "pass_wisdom" }
            ]
        },
        "pass_wisdom": {
            "text": "你的答案是正确的！智慧试炼通过。",
            "choices": [
                { "text": "继续下一个试炼", "next": "trial_strength" },
                { "text": "直接寻找屠龙剑", "next": "find_sword_direct" }
            ]
        },
        "trial_strength": {
            "text": "力量试炼要求你举起一块巨大的石头。这块石头重得超乎想象，但你感到体内涌起一股力量。",
            "choices": [
                { "text": "全力举起", "next": "pass_strength" },
                { "text": "放弃", "next": "fail_trial" }
            ]
        },
        "pass_strength": {
            "text": "你成功举起了石头！力量试炼通过。",
            "choices": [
                { "text": "寻找屠龙剑", "next": "find_sword_direct" },
                { "text": "返回村庄", "next": "village" }
            ]
        },
        "find_sword_direct": {
            "text": "你来到了遗迹最深处。屠龙剑插在一个石座上，散发着耀眼的光芒。",
            "choices": [
                { "text": "拔出屠龙剑", "next": "got_sword", "actions": [{ "type": "addItem", "itemId": "dragon_slayer" }] },
                { "text": "犹豫", "next": "hesitate_sword" }
            ]
        },
        "hesitate_sword": {
            "text": "你犹豫了一下。屠龙剑似乎感受到了你的犹豫，光芒变得暗淡。",
            "choices": [
                { "text": "鼓起勇气拔出", "next": "got_sword", "actions": [{ "type": "addItem", "itemId": "dragon_slayer" }] },
                { "text": "离开", "next": "mountain_path" }
            ]
        },
        "got_sword": {
            "text": "你成功拔出了屠龙剑！剑身上刻着古老的符文，散发着强大的力量。",
            "choices": [
                { "text": "前往巨龙巢穴", "next": "mountain_path" },
                { "text": "返回村庄", "next": "village" }
            ]
        },
        "find_egg": {
            "text": "你开始寻找龙蛋。根据书籍的记载，龙蛋通常藏在巢穴的最深处。",
            "choices": [
                { "text": "前往巢穴", "next": "mountain_path" },
                { "text": "先准备装备", "next": "prepare" }
            ]
        },
        "mountain_path": {
            "text": "你踏上了通往东山的道路。山路崎岖，两旁是茂密的森林。你听到远处传来一声低沉的龙啸。",
            "choices": [
                { "text": "继续前进", "next": "dragon_cave" },
                { "text": "在森林中休息", "next": "rest" },
                { "text": "侦察前方", "next": "scout" }
            ]
        },
        "rest": {
            "text": "你在森林中休息了一会儿。一只小鹿走过来，似乎在给你指引方向。",
            "choices": [
                { "text": "跟随小鹿", "next": "dragon_cave" },
                { "text": "继续休息", "next": "rest_more" }
            ]
        },
        "rest_more": {
            "text": "你继续休息，恢复了体力。",
            "choices": [
                { "text": "继续前进", "next": "dragon_cave" },
                { "text": "返回村庄", "next": "village" }
            ]
        },
        "scout": {
            "text": "你小心翼翼地侦察前方。你看到巨龙正在巢穴外休息，它的体型比你想象的还要巨大。",
            "choices": [
                { "text": "等待时机", "next": "wait_attack" },
                { "text": "直接冲上去", "next": "dragon_fight" },
                { "text": "寻找潜入路线", "next": "sneak_in" }
            ]
        },
        "wait_attack": {
            "text": "你等待着最佳时机。巨龙打了一个哈欠，似乎要睡着了。",
            "choices": [
                { "text": "趁机攻击", "next": "dragon_fight" },
                { "text": "潜入巢穴", "next": "sneak_in" }
            ]
        },
        "sneak_in": {
            "text": "你找到了一条隐蔽的小路，可以绕过巨龙直接进入巢穴。",
            "choices": [
                { "text": "潜入巢穴", "next": "nest_interior" },
                { "text": "改变主意，直接战斗", "next": "dragon_fight" }
            ]
        },
        "dragon_cave": {
            "text": "你来到了巨龙巢穴的入口。洞穴深处传来巨龙的呼吸声，空气中弥漫着硫磺的味道。",
            "choices": [
                { "text": "进入巢穴", "next": "nest_interior" },
                { "text": "大声挑战", "next": "dragon_fight" }
            ]
        },
        "nest_interior": {
            "text": "你进入了巢穴内部。巢穴里堆满了金银财宝，在洞穴的最深处，你看到了一颗闪闪发光的龙蛋。",
            "choices": [
                { "text": "取走龙蛋", "next": "got_egg", "actions": [{ "type": "addItem", "itemId": "golden_egg" }] },
                { "text": "继续探索", "next": "explore_nest" },
                { "text": "悄悄离开", "next": "leave_nest" }
            ]
        },
        "explore_nest": {
            "text": "你在巢穴中继续探索，发现了许多珍贵的宝物。但你也听到了巨龙回来的声音。",
            "choices": [
                { "text": "躲起来", "next": "hide" },
                { "text": "准备战斗", "next": "dragon_fight" },
                { "text": "带着宝物逃跑", "next": "escape_with_treasure" }
            ]
        },
        "hide": {
            "text": "你躲在了一堆财宝后面。巨龙走进巢穴，似乎没有发现你。它走到龙蛋旁边，温柔地守护着它。",
            "choices": [
                { "text": "趁巨龙不注意攻击", "next": "dragon_fight" },
                { "text": "悄悄离开", "next": "leave_nest" },
                { "text": "用龙蛋威胁巨龙", "next": "threaten_dragon", "condition": { "hasItem": "golden_egg" } }
            ]
        },
        "got_egg": {
            "text": "你小心翼翼地取走了龙蛋。蛋很温暖，似乎在微微跳动。",
            "choices": [
                { "text": "用龙蛋威胁巨龙", "next": "threaten_dragon" },
                { "text": "逃跑", "next": "escape_with_egg" }
            ]
        },
        "threaten_dragon": {
            "text": "你举起龙蛋，威胁巨龙：'如果你不离开这个村庄，我就毁掉你的蛋！'巨龙的眼睛里闪过一丝恐惧，但很快变成了愤怒。",
            "choices": [
                { "text": "坚持威胁", "next": "dragon_negotiate" },
                { "text": "放下龙蛋战斗", "next": "dragon_fight" },
                { "text": "放下龙蛋逃跑", "next": "leave_nest", "actions": [{ "type": "removeItem", "itemId": "golden_egg" }] }
            ]
        },
        "dragon_negotiate": {
            "text": "巨龙最终妥协了。'好吧，'它说，'我离开这里。但有一天，我会回来拿回我的蛋。'巨龙飞走了。",
            "choices": [
                { "text": "带着龙蛋返回村庄", "next": "ending_negotiate" },
                { "text": "放走龙蛋", "next": "ending_free_egg", "actions": [{ "type": "removeItem", "itemId": "golden_egg" }] }
            ]
        },
        "leave_nest": {
            "text": "你悄悄离开了巢穴。巨龙似乎没有发现你。",
            "choices": [
                { "text": "返回村庄", "next": "village" },
                { "text": "再次进入巢穴", "next": "dragon_cave" }
            ]
        },
        "escape_with_treasure": {
            "text": "你带着一些财宝逃跑了。虽然没有杀死巨龙，但你也收获颇丰。",
            "isEnd": true,
            "endType": "neutral"
        },
        "escape_with_egg": {
            "text": "你带着龙蛋逃跑了。巨龙发现后愤怒地追来，但你已经跑得很远了。",
            "choices": [
                { "text": "返回村庄", "next": "ending_with_egg" },
                { "text": "孵化龙蛋", "next": "hatch_egg" }
            ]
        },
        "hatch_egg": {
            "text": "你决定孵化龙蛋。经过一段时间的照顾，一只小龙破壳而出。它第一眼看到了你，把你当成了它的母亲。",
            "choices": [
                { "text": "抚养小龙", "next": "ending_dragon_friend" },
                { "text": "将小龙送回", "next": "ending_return_dragon" }
            ]
        },
        "dragon_fight": {
            "text": "巨龙发现了你，愤怒地咆哮着向你扑来！一场激烈的战斗开始了。",
            "choices": [
                { "text": "用屠龙剑攻击", "next": "attack_with_sword", "condition": { "hasItem": "dragon_slayer" } },
                { "text": "用烈焰护盾防御", "next": "defend_with_shield", "condition": { "hasItem": "fire_shield" } },
                { "text": "攻击弱点", "next": "attack_weakness", "condition": { "hasItem": "ancient_scroll" } },
                { "text": "普通攻击", "next": "normal_attack" }
            ]
        },
        "attack_with_sword": {
            "text": "你举起屠龙剑，向巨龙发动致命一击！剑刃穿透了巨龙的鳞片，巨龙发出一声惨叫。",
            "choices": [
                { "text": "继续攻击", "next": "dragon_defeat" },
                { "text": "给巨龙最后一击", "next": "final_blow" }
            ]
        },
        "defend_with_shield": {
            "text": "你举起烈焰护盾，挡住了巨龙的火焰喷射。护盾吸收了火焰的力量，你趁机反击。",
            "choices": [
                { "text": "趁机攻击", "next": "attack_with_sword", "condition": { "hasItem": "dragon_slayer" } },
                { "text": "继续防御", "next": "defend_more" }
            ]
        },
        "defend_more": {
            "text": "你继续防御，寻找反击的机会。",
            "choices": [
                { "text": "寻找弱点", "next": "attack_weakness", "condition": { "hasItem": "ancient_scroll" } },
                { "text": "全力反击", "next": "normal_attack" }
            ]
        },
        "attack_weakness": {
            "text": "根据古老卷轴的记载，你攻击了巨龙左腋下没有鳞片的地方！巨龙痛苦地挣扎着。",
            "choices": [
                { "text": "继续攻击弱点", "next": "dragon_defeat" },
                { "text": "给巨龙最后一击", "next": "final_blow" }
            ]
        },
        "normal_attack": {
            "text": "你用普通武器攻击巨龙，但伤害微乎其微。巨龙愤怒地反击，你受了重伤。",
            "choices": [
                { "text": "坚持战斗", "next": "dragon_fight" },
                { "text": "逃跑", "next": "escape_fail" }
            ]
        },
        "escape_fail": {
            "text": "你试图逃跑，但巨龙的速度太快了。它追上了你...",
            "isEnd": true,
            "endType": "death"
        },
        "dragon_defeat": {
            "text": "巨龙终于倒下了。它的身体逐渐消散，化为一道光芒。",
            "choices": [
                { "text": "收集战利品", "next": "collect_treasure" },
                { "text": "返回村庄", "next": "victory_return" }
            ]
        },
        "final_blow": {
            "text": "你给了巨龙最后一击。巨龙发出一声哀鸣，倒在了地上。",
            "choices": [
                { "text": "收集战利品", "next": "collect_treasure" },
                { "text": "返回村庄", "next": "victory_return" }
            ]
        },
        "collect_treasure": {
            "text": "你在巨龙的巢穴中收集了大量的财宝，包括金币、宝石和珍贵的魔法物品。",
            "choices": [
                { "text": "返回村庄", "next": "victory_return" },
                { "text": "继续探索", "next": "explore_more" }
            ]
        },
        "explore_more": {
            "text": "你在巢穴中继续探索，发现了一个隐藏的房间，里面有更多的宝藏。",
            "choices": [
                { "text": "拿走所有宝藏", "next": "victory_return" },
                { "text": "只拿一部分", "next": "victory_return" }
            ]
        },
        "victory_return": {
            "text": "你带着巨龙被击败的消息回到了村庄。村民们欢呼雀跃，将你奉为英雄。村长兑现了承诺，给了你丰厚的赏金。",
            "isEnd": true,
            "endType": "victory"
        },
        "ending_negotiate": {
            "text": "你带着龙蛋回到了村庄。巨龙没有再来骚扰，村庄恢复了和平。你成为了村庄的守护者。",
            "isEnd": true,
            "endType": "good"
        },
        "ending_free_egg": {
            "text": "你放走了龙蛋。巨龙感激地看了你一眼，然后带着龙蛋飞走了。从此，巨龙再也没有出现过。",
            "isEnd": true,
            "endType": "true"
        },
        "ending_with_egg": {
            "text": "你带着龙蛋回到了村庄。村民们虽然有些害怕，但还是接受了你的决定。你成为了龙蛋的守护者。",
            "isEnd": true,
            "endType": "good"
        },
        "ending_dragon_friend": {
            "text": "🐉 你抚养了小龙。它长大后成为了你的忠实伙伴。你们一起守护着这片土地，成为了传说中的龙骑士。",
            "isEnd": true,
            "endType": "true"
        },
        "ending_return_dragon": {
            "text": "你将小龙送回了它的母亲身边。巨龙感激涕零，送给你一件珍贵的礼物作为回报。",
            "isEnd": true,
            "endType": "good"
        }
    }
}