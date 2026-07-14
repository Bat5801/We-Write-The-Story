const fs = require('fs');
const path = require('path');

const storiesDir = path.join(__dirname, '../stories');

const storyFiles = [
    { id: 'example', name: 'example.story' },
    { id: 'magic_library', name: 'magic_library.story' },
    { id: 'dragon_quest', name: 'dragon_quest.story' },
    { id: 'time_loop', name: 'time_loop.story' },
    { id: 'horror_school_prologue', name: 'horror_school_prologue.story' },
    { id: 'horror_school_chapter1', name: 'horror_school_chapter1.story' },
    { id: 'horror_school_chapter2', name: 'horror_school_chapter2.story' },
    { id: 'horror_school_chapter3', name: 'horror_school_chapter3.story' },
    { id: 'horror_school_chapter4', name: 'horror_school_chapter4.story' },
    { id: 'the_stolen_coffin_part1', name: '盗棺笔记（上）.story' },
    { id: 'the_stolen_coffin_part2', name: '盗棺笔记（下）.story' },
    { id: 'hechuan_old_records_part1', name: '盗棺笔记：河川旧录（上）.story' },
    { id: 'hechuan_old_records_part1_5', name: '盗棺笔记：河川旧录（中上）.story' },
    { id: 'hechuan_old_records_part2', name: '盗棺笔记：河川旧录（中）.story' },
    { id: 'hechuan_old_records_part2_5', name: '盗棺笔记：河川旧录（中下）.story' },
    { id: 'hechuan_old_records_part3', name: '盗棺笔记：河川旧录（下）.story' },
    { id: 'the_stolen_coffin_hard', name: '盗棺笔记(Hard).story' },
    { id: 'hechuan_old_records_hard_part1', name: '盗棺笔记：河川旧录（上）[Hard].story' },
    { id: 'hechuan_old_records_hard_part1_5', name: '盗棺笔记：河川旧录（中上）[Hard].story' },
    { id: 'hechuan_old_records_hard_part2', name: '盗棺笔记：河川旧录（中）[Hard].story' },
    { id: 'hechuan_old_records_hard_part2_5', name: '盗棺笔记：河川旧录（中下）[Hard].story' },
    { id: 'hechuan_old_records_hard_part3', name: '盗棺笔记：河川旧录（下）[Hard].story' }
];

const collections = [
    {
        id: 'fantasy_collection',
        title: '✨ 奇幻冒险系列',
        description: '充满魔法与冒险的精彩故事',
        stories: [
            { id: 'example', title: '神秘森林' },
            { id: 'magic_library', title: '魔法图书馆' },
            { id: 'dragon_quest', title: '屠龙传说' },
            { id: 'time_loop', title: '时空迷宫' }
        ]
    },
    {
        id: 'horror_school_collection',
        title: '📚 校园惊魂系列',
        description: '一个关于学校恐怖事件的系列故事',
        stories: [
            { id: 'horror_school_prologue', title: '序章-晚自习后' },
            { id: 'horror_school_chapter1', title: '第一章-失踪的学生' },
            { id: 'horror_school_chapter2', title: '第二章-午夜钟声' },
            { id: 'horror_school_chapter3', title: '第三章-档案室的秘密' },
            { id: 'horror_school_chapter4', title: '第四章-最终决战' }
        ]
    },
    {
        id: 'the_stolen_coffin_collection',
        title: '⚰️ 盗棺笔记系列（作者：AmC）',
        description: '爷爷死后，棺材里传来敲击声。一个披蓑衣的老人告诉我：棺里不是爷爷，沈家欠下的棺债，该轮到我来还了。',
        stories: [
            { id: 'the_stolen_coffin_part1', title: '盗棺笔记（上）' },
            { id: 'the_stolen_coffin_part2', title: '盗棺笔记（下）' },
            { id: 'hechuan_old_records_part1', title: '河川旧录（上）' },
            { id: 'hechuan_old_records_part1_5', title: '河川旧录（中上）' },
            { id: 'hechuan_old_records_part2', title: '河川旧录（中）' },
            { id: 'hechuan_old_records_part2_5', title: '河川旧录（中下）' },
            { id: 'hechuan_old_records_part3', title: '河川旧录（下）' }
        ]
    },
    {
        id: 'the_stolen_coffin_hard_collection',
        title: '⚰️ 盗棺笔记系列(Hard)（作者：AmC）',
        description: '【9.5难度】极难模式！盗棺笔记正传与河川旧录的高难度整合版。每一步都是生死抉择，每一次QTE都是极限挑战。需要练习才能通关，但绝非不可战胜。',
        stories: [
            { id: 'the_stolen_coffin_hard', title: '盗棺笔记(Hard)' },
            { id: 'hechuan_old_records_hard_part1', title: '河川旧录（上）[Hard]' },
            { id: 'hechuan_old_records_hard_part1_5', title: '河川旧录（中上）[Hard]' },
            { id: 'hechuan_old_records_hard_part2', title: '河川旧录（中）[Hard]' },
            { id: 'hechuan_old_records_hard_part2_5', title: '河川旧录（中下）[Hard]' },
            { id: 'hechuan_old_records_hard_part3', title: '河川旧录（下）[Hard]' }
        ]
    }
];

let fallbackStories = [];

storyFiles.forEach(fileInfo => {
    const filePath = path.join(storiesDir, fileInfo.name);
    const content = fs.readFileSync(filePath, 'utf8');
    const story = JSON.parse(content);
    story.id = fileInfo.id;

    if (Array.isArray(story.nodes)) {
        const nodesObj = {};
        story.nodes.forEach(node => {
            if (node.id) nodesObj[node.id] = node;
        });
        story.nodes = nodesObj;
    }

    fallbackStories.push(story);
});

let output = '';
output += 'window.storyFiles = ' + JSON.stringify(storyFiles, null, 4) + ';\n\n';
output += 'window.storyCollections = ' + JSON.stringify(collections, null, 4) + ';\n\n';
output += 'window.fallbackStories = ' + JSON.stringify(fallbackStories, null, 4) + ';\n';

fs.writeFileSync(path.join(storiesDir, 'stories.js'), output);
console.log('Successfully rebuilt stories.js!');
console.log('Total stories:', fallbackStories.length);
