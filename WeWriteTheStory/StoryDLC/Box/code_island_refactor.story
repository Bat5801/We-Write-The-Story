{
  "title": "神奇代码岛·重构之战",
  "subtitle": "代码革命",
  "description": "暗影漏洞被击败后，岛屿的代码已经千疮百孔。一场彻底的重构势在必行——但有人反对改变。",
  "author": "Radiation Studio",
  "version": "1.0",
  "features": {
    "inventory": true,
    "map": true
  },
  "items": [
    { "id": "refactor_plan", "name": "重构蓝图", "icon": "📋", "description": "彻底重建岛屿的代码计划" },
    { "id": "legacy_code", "name": "遗产代码", "icon": "📜", "description": "创世时代留下的古老代码" },
    { "id": "resistance_token", "name": "抵抗徽章", "icon": "⚡", "description": "反对重构者的标志" },
    { "id": "new_seed", "name": "新世界种子", "icon": "🌱", "description": "重构后的全新核心" }
  ],
  "map": {
    "title": "重构之地",
    "locations": [
      { "id": "refactor_hq", "name": "重构总部", "description": "支持重构的阵营基地" },
      { "id": "legacy_hq", "name": "遗产堡垒", "description": "反对重构的阵营据点" },
      { "id": "neutral_zone", "name": "中立区", "description": "还未被卷入冲突的区域" },
      { "id": "battlefield", "name": "代码战场", "description": "冲突最激烈的地方" },
      { "id": "new_core", "name": "新核心", "description": "重构后新世界的中心" }
    ],
    "startingLocation": "neutral_zone"
  },
  "start": "start",
  "nodes": {
    "start": {
      "id": "start",
      "location": "neutral_zone",
      "text": "暗影漏洞被击败后，岛屿的代码仍然布满了裂缝。\n\n两派意见对立——一派主张「重构」，彻底重写岛屿的底层代码；另一派主张「保留」，认为旧代码承载着岛屿的历史与灵魂。\n\n你站在中立区，看着两边的人群。",
      "choices": [
        { "text": "支持重构派", "next": "join_refactor" },
        { "text": "支持遗产派", "next": "join_legacy" },
        { "text": "尝试调解", "next": "mediate" },
        { "text": "离开这个纷争", "next": "leave_conflict" }
      ]
    },
    "join_refactor": {
      "id": "join_refactor",
      "location": "refactor_hq",
      "text": "你来到了重构总部。这里充满了创新的气息——程序员们正在设计全新的架构，准备为岛屿带来一次彻底的升级。\n\n「加入我们，创造一个新的世界！」领袖向你伸出手。",
      "choices": [
        { "text": "接受邀请", "next": "refactor_plan_accept" },
        { "text": "先了解更多", "next": "refactor_learn" },
        { "text": "改变主意", "next": "start" }
      ]
    },
    "refactor_learn": {
      "id": "refactor_learn",
      "location": "refactor_hq",
      "text": "你了解了重构计划——他们将彻底重写岛屿的底层代码，删除所有「冗余」和「过时」的部分。\n\n「但这会删除很多历史。」你提出质疑。\n\n「历史是包袱，未来才是方向。」领袖回答。",
      "choices": [
        { "text": "接受重构", "next": "refactor_plan_accept" },
        { "text": "反对重构", "next": "join_legacy" }
      ]
    },
    "refactor_plan_accept": {
      "id": "refactor_plan_accept",
      "location": "refactor_hq",
      "text": "你加入了重构派，开始参与设计新世界的代码。你提出了很多创意，比如更灵活的架构、更开放的生态系统。\n\n但你也注意到，遗产派的抵抗越来越激烈。",
      "actions": [
        { "type": "addItem", "itemId": "refactor_plan" }
      ],
      "choices": [
        { "text": "前往战场与遗产派对话", "next": "battlefield_talk" },
        { "text": "继续完善重构计划", "next": "refactor_refine" },
        { "text": "尝试与遗产派和解", "next": "mediate" }
      ]
    },
    "refactor_refine": {
      "id": "refactor_refine",
      "location": "refactor_hq",
      "text": "你花了很多时间完善重构计划，加入了兼容旧代码的「过渡层」——这样既可以让新世界运行，又不会完全抛弃历史。\n\n「你找到了平衡。」领袖赞赏地说。",
      "actions": [
        { "type": "addItem", "itemId": "new_seed" }
      ],
      "choices": [
        { "text": "前往战场", "next": "battlefield_talk" }
      ]
    },
    "join_legacy": {
      "id": "join_legacy",
      "location": "legacy_hq",
      "text": "你来到了遗产堡垒。这里保存着岛屿最古老的代码——包括创世时代的第一行代码。\n\n「重构会抹去我们的根。」遗产派的领袖说，「我们必须守护这些代码。」",
      "choices": [
        { "text": "加入遗产派", "next": "legacy_join" },
        { "text": "了解他们的理由", "next": "legacy_learn" },
        { "text": "改变主意", "next": "start" }
      ]
    },
    "legacy_learn": {
      "id": "legacy_learn",
      "location": "legacy_hq",
      "text": "你学习了遗产派的理念——他们认为，岛屿的每一行代码都承载着记忆和情感，删除它们就像删除历史。\n\n「但代码已经千疮百孔了。」你指出。\n\n「那就修复它，而不是摧毁它。」领袖回答。",
      "choices": [
        { "text": "加入遗产派", "next": "legacy_join" },
        { "text": "尝试理解重构派", "next": "join_refactor" }
      ]
    },
    "legacy_join": {
      "id": "legacy_join",
      "location": "legacy_hq",
      "text": "你加入了遗产派，开始修复旧代码。你发现了很多被遗忘的宝藏——比如创世者留下的注释，以及早期精灵的成长记录。\n\n「这些不能丢。」你坚定地说。",
      "actions": [
        { "type": "addItem", "itemId": "legacy_code" }
      ],
      "choices": [
        { "text": "前往战场与重构派对话", "next": "battlefield_talk" },
        { "text": "继续修复遗产", "next": "legacy_repair" },
        { "text": "尝试调解", "next": "mediate" }
      ]
    },
    "legacy_repair": {
      "id": "legacy_repair",
      "location": "legacy_hq",
      "text": "你深入修复旧代码，甚至找到了「第一行代码」的原始版本。你将它小心翼翼地保存，并为其编写了防护程序。\n\n「你守护了我们的根。」领袖感动地说。",
      "actions": [
        { "type": "addItem", "itemId": "legacy_code" }
      ],
      "choices": [
        { "text": "前往战场", "next": "battlefield_talk" }
      ]
    },
    "mediate": {
      "id": "mediate",
      "location": "neutral_zone",
      "text": "你选择成为调解者。你邀请两派的领袖来到中立区，进行对话。\n\n「我们可以重构，但保留遗产的核心。」\n「我们可以保留遗产，但接受必要的重构。」\n\n经过长时间的讨论，双方终于开始松动了。",
      "choices": [
        { "text": "提出折中方案", "next": "compromise" },
        { "text": "让双方各自让步", "next": "compromise" },
        { "text": "宣布调解失败", "next": "battlefield_talk" }
      ]
    },
    "compromise": {
      "id": "compromise",
      "location": "neutral_zone",
      "text": "你提出了一个折中方案——在核心层保留遗产代码，在应用层进行全面重构。这样既守护了历史，又拥抱了未来。\n\n两派领袖沉默了许久，然后缓缓点头。\n\n「这或许……是最好的选择。」",
      "actions": [
        { "type": "addItem", "itemId": "new_seed" }
      ],
      "choices": [
        { "text": "执行折中方案", "next": "ending_compromise" },
        { "text": "继续完善方案", "next": "refactor_refine" }
      ]
    },
    "battlefield_talk": {
      "id": "battlefield_talk",
      "location": "battlefield",
      "text": "你来到了代码战场。两派的代码在这里激烈交锋，数据碎片如流星般四处飞溅。\n\n你看到精灵在战场的边缘哭泣——它不想看到世界被撕裂。",
      "choices": [
        { "text": "上前阻止战斗", "next": "stop_fight" },
        { "text": "加入战斗", "next": "join_fight" },
        { "text": "带着精灵离开", "next": "leave_with_spirit" }
      ]
    },
    "stop_fight": {
      "id": "stop_fight",
      "location": "battlefield",
      "text": "你冲到战场中央，举起「新世界种子」——光芒绽放，两派的代码都被暂时冻结。\n\n「你们在摧毁自己守护的东西！」你大喊。\n\n战场安静了下来。",
      "choices": [
        { "text": "开始谈判", "next": "mediate" }
      ]
    },
    "join_fight": {
      "id": "join_fight",
      "location": "battlefield",
      "text": "你加入了战斗，但很快你就发现——无论哪一方获胜，世界都会被撕裂。\n\n你停下来，看着周围的混乱，感到深深的疲惫。",
      "choices": [
        { "text": "退出战斗", "next": "mediate" },
        { "text": "继续战斗", "next": "ending_war" }
      ]
    },
    "leave_with_spirit": {
      "id": "leave_with_spirit",
      "location": "battlefield",
      "text": "你带着精灵离开了战场，回到了算法森林的遗迹。\n\n「他们不会停手的。」精灵低声说。\n\n「我知道。但至少我们保护了这片森林。」",
      "choices": [
        { "text": "返回调解", "next": "mediate" }
      ]
    },
    "leave_conflict": {
      "id": "leave_conflict",
      "location": "neutral_zone",
      "text": "你选择离开这场纷争。你带着精灵和纯净之光，前往岛屿的边缘，开辟了一片新的代码空间。\n\n这里没有冲突，只有创造。\n\n你开始书写一个新的故事。",
      "choices": [
        { "text": "继续你的旅程", "next": "ending_exile" }
      ]
    },
    "ending_compromise": {
      "id": "ending_compromise",
      "location": "new_core",
      "text": "折中方案成功执行。新核心融合了遗产与创新，世界既保留了历史，又获得了新生。\n\n两派的领袖在新核心前握手言和。精灵在空中飞舞，洒下金色的数据花瓣。\n\n你站在他们中间，微笑——你找到了比重构或保留更重要的东西：理解。",
      "isEnd": true,
      "endType": "true",
      "endMessage": "你以理解化解了冲突，世界在平衡中重生。"
    },
    "ending_war": {
      "id": "ending_war",
      "location": "battlefield",
      "text": "战斗持续了很长时间。最终，重构派获得了胜利——但遗产被彻底删除，岛屿的历史化作尘埃。\n\n你站在新世界的废墟上，手中握着最后一缕旧代码。\n\n你赢了，但你失去了更多。",
      "isEnd": true,
      "endType": "bad",
      "endMessage": "你赢得了战争，却失去了世界的灵魂。"
    },
    "ending_exile": {
      "id": "ending_exile",
      "location": "neutral_zone",
      "text": "你离开了纷争，在岛屿的边缘建立了一个新的家园。你和精灵一起，用最纯净的代码创造了一个小小的世界。\n\n它不大，但它是完整的。\n\n也许有一天，它会和主岛重新连接。但那是另一个故事了。",
      "isEnd": true,
      "endType": "good",
      "endMessage": "你选择了离开，在边缘创造了新的希望。"
    }
  }
}