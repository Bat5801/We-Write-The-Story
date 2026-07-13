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
    { id: 'horror_school_chapter4', name: 'horror_school_chapter4.story' }
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
