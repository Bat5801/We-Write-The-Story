{
  "title": "烤鸭场：渡鸦的烹饪冒险",
  "description": "在萌创营烤鸭场，将渡鸦烤得金黄酥脆！",
  "version": "1.0",
  "variables": {
    "temperature": 81,
    "doneness": 1
  },
  "features": {
    "inventory": true
  },
  "items": [
    { "id": "spice", "name": "香料", "icon": "🧂" }
  ],
  "start": "start",
  "nodes": {
    "start": {
      "text": "👨‍🍳 你是一名厨房学徒，今天师傅交给你一个特别的任务——\n\n把一只肥美的渡鸦烤得「金黄酥脆」！\n\n火炉已经生好，温度显示 81°，渡鸦还是生肉（熟度 1%）。\n\n注意火候，别烤焦了！",
      "choices": [
        { "text": "🔪 开始烹饪！", "next": "kitchen" }
      ]
    },

    "kitchen": {
      "text": "🔥 当前炉温：{temperature}°  熟度：{doneness}%\n\n你想做什么？",
      "choices": [
        {
          "text": "🔥 加火（温度+15，熟度+8）",
          "next": "add_fire",
          "condition": { "var": "doneness", "lt": 100 }
        },
        {
          "text": "🔄 翻转（熟度+3）",
          "next": "flip",
          "condition": { "var": "doneness", "lt": 100 }
        },
        {
          "text": "🧂 寻找香料",
          "next": "find_spice",
          "condition": {
            "and": [
              { "notHasItem": "spice" },
              { "var": "doneness", "lt": 100 }
            ]
          }
        },
        {
          "text": "🧂 使用香料（熟度+10）",
          "next": "use_spice",
          "condition": {
            "and": [
              { "hasItem": "spice" },
              { "var": "doneness", "lt": 100 }
            ]
          }
        },
        {
          "text": "💨 休息（温度-5）",
          "next": "rest",
          "condition": { "var": "doneness", "lt": 100 }
        },
        {
          "text": "📊 查看状态",
          "next": "check_status"
        },
        {
          "text": "🍗 看看烤好的渡鸦",
          "next": "ending_check",
          "condition": { "var": "doneness", "gte": 100 }
        }
      ]
    },

    "add_fire": {
      "text": "你往炉火里添了一把干柴，火焰猛地蹿高！",
      "actions": [
        { "type": "addVar", "name": "temperature", "value": 15 },
        { "type": "addVar", "name": "doneness", "value": 8 }
      ],
      "choices": [
        {
          "text": "✅ 继续烹饪",
          "next": "kitchen",
          "condition": { "var": "temperature", "lte": 250 }
        },
        {
          "text": "💀 糟糕！温度失控了！",
          "next": "ending_burnt",
          "condition": { "var": "temperature", "gt": 250 }
        }
      ]
    },

    "flip": {
      "text": "你小心地翻转渡鸦，让另一面均匀受热。",
      "actions": [
        { "type": "addVar", "name": "doneness", "value": 3 }
      ],
      "choices": [
        { "text": "✅ 继续烹饪", "next": "kitchen" }
      ]
    },

    "rest": {
      "text": "你稍微休息了一下，炉火渐渐温和下来。",
      "actions": [
        { "type": "addVar", "name": "temperature", "value": -5 }
      ],
      "choices": [
        { "text": "✅ 继续烹饪", "next": "kitchen" }
      ]
    },

    "find_spice": {
      "text": "你在厨房角落的架子上发现了一罐香料！香气扑鼻。",
      "actions": [
        { "type": "addItem", "itemId": "spice" }
      ],
      "choices": [
        { "text": "✅ 回到厨房", "next": "kitchen" }
      ]
    },

    "use_spice": {
      "text": "你撒了一些香料在渡鸦上，顿时香味四溢，熟度也增加了！",
      "actions": [
        { "type": "addVar", "name": "doneness", "value": 10 },
        { "type": "removeItem", "itemId": "spice" }
      ],
      "choices": [
        { "text": "✅ 继续烹饪", "next": "kitchen" }
      ]
    },

    "check_status": {
      "text": "📊 当前炉温：{temperature}°  熟度：{doneness}%",
      "choices": [
        { "text": "🔙 回到厨房", "next": "kitchen" }
      ]
    },

    "ending_check": {
      "text": "渡鸦已经烤好了！你小心翼翼地端给师傅品尝……\n\n温度：{temperature}°  熟度：{doneness}%\n\n师傅尝了一口，说：",
      "choices": [
        {
          "text": "👂 倾听评价",
          "next": "ending_perfect",
          "condition": {
            "and": [
              { "var": "temperature", "gte": 180 },
              { "var": "temperature", "lte": 220 }
            ]
          }
        },
        {
          "text": "👂 倾听评价",
          "next": "ending_ok",
          "condition": {
            "or": [
              { "var": "temperature", "lt": 180 },
              { "var": "temperature", "gt": 220 }
            ]
          }
        }
      ]
    },

    "ending_perfect": {
      "text": "🌟🌟🌟 “哇！金黄酥脆，外焦里嫩，火候恰到好处！这绝对是我吃过最棒的烤渡鸦！”\n\n师傅高兴地拍了拍你的肩膀，你成功完成了任务！\n\n🎉 恭喜你获得完美结局！",
      "isEnd": true,
      "endType": "victory"
    },

    "ending_ok": {
      "text": "😐 “嗯……还算熟了，但要么火候差了点，要么稍微过了一点。继续努力吧。”\n\n虽然没有得到最高评价，但至少过关了。\n\n结局：普通",
      "isEnd": true,
      "endType": "good"
    },

    "ending_burnt": {
      "text": "💀 “天哪！你居然把渡鸦烤成了炭！这还怎么吃？！”\n\n师傅脸色铁青，你被罚去打扫厨房一个月。\n\n游戏结束。",
      "isEnd": true,
      "endType": "bad"
    }
  }
}