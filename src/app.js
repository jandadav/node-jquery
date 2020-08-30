const jsdom = require("jsdom");
const { JSDOM } = jsdom;
const fs = require('fs');
const f = require('./functions');

xml = fs.readFileSync('res/AF_Form001.aspx');

dom = new JSDOM(f.wrapXhtml(xml), { contentType: 'application/xhtml+xml' });

f.testJqueryImport(dom)
