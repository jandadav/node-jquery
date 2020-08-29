const jsdom = require("jsdom");
const { JSDOM } = jsdom;
const fs = require('fs');

xml = fs.readFileSync('res/data.xml');

const dom = new JSDOM(""); // Create empty DOM, the imput param here is for HTML not XML, and we don want to parse HTML
const DOMParser = dom.window.DOMParser; // Get DOMParser, same API as in browser
const parser = new DOMParser;
const document = parser.parseFromString(xml, "text/xml"); // Create document by parsing XML
const xmlString = document.documentElement.outerHTML; // save the xml after modifications 

console.log(xmlString);