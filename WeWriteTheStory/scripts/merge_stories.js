const fs = require('fs');
const path = require('path');

const storiesDir = path.join(__dirname, '../stories');
const horrorStories = [
    'horror_school_prologue',
    'horror_school_chapter1', 
    'horror_school_chapter2',
    'horror_school_chapter3',
    'horror_school_chapter4'
];

let mergedStories = [];

horrorStories.forEach(id => {
    const filePath = path.join(storiesDir, `${id}.story`);
    const content = fs.readFileSync(filePath, 'utf8');
    const story = JSON.parse(content);
    story.id = id;
    
    if (Array.isArray(story.nodes)) {
        const nodesObj = {};
        story.nodes.forEach(node => {
            if (node.id) nodesObj[node.id] = node;
        });
        story.nodes = nodesObj;
    }
    
    mergedStories.push(story);
});

const storiesJsPath = path.join(storiesDir, 'stories.js');
let storiesJs = fs.readFileSync(storiesJsPath, 'utf8');

const endOfArray = storiesJs.lastIndexOf('];');
if (endOfArray !== -1) {
    const jsonPart = JSON.stringify(mergedStories, null, 4);
    const newContent = storiesJs.substring(0, endOfArray) + ',\n' + jsonPart.substring(1, jsonPart.length - 1) + '\n];';
    fs.writeFileSync(storiesJsPath, newContent);
    console.log('Successfully merged horror school stories!');
} else {
    console.error('Could not find the end of fallbackStories array');
}
