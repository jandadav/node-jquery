const jsdom = require("jsdom");
const { JSDOM } = jsdom;
const fs = require('fs');
const f = require('./functions');

xml = fs.readFileSync('res/AF_Form001.aspx');

dom = new JSDOM(f.wrapXhtml(xml), { contentType: 'application/xhtml+xml' });
const $ = require("jquery")(dom.window);

f.replaceTag($, 'tbody', '');
f.replaceTag($, 'table', 'div');
f.replaceTag($, 'tr', 'div');
f.replaceTag($, 'td', 'div');
f.replaceTag($, 'th', 'div');

console.log(dom.serialize());