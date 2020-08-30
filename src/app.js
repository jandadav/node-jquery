const jsdom = require("jsdom");
const { JSDOM } = jsdom;
const fs = require('fs');
const f = require('./functions');

xml = fs.readFileSync('res/data2.xml');

dom = new JSDOM(xml);
const $ = require("jquery")(dom.window);

f.replaceTag($, 'tbody', '');
f.replaceTag($, 'table', 'div');
f.replaceTag($, 'tr', 'div');
f.replaceTag($, 'td', 'div');
f.replaceTag($, 'th', 'div');

console.log(f.serialize($));