// https://jestjs.io/docs/en/tutorial-jquery#docsNav
// https://www.phpied.com/files/jester/__tests__/hello-jester.js
// https://www.phpied.com/jest-jquery-testing-vanilla-app/

const jsdom = require("jsdom");
const { JSDOM } = jsdom;
const fs = require('fs');
const f = require('./src/functions');
var $ = require('jquery');

describe("app test", () => {
    test("it should jquery", () => {
        xml = fs.readFileSync('res/AF_Form001.aspx');
        //dom = new JSDOM(f.wrapXhtml(xml), { contentType: 'application/xhtml+xml' });
        document.body.innerHTML = xml;
        $('table').replaceWith('DD');
        //console.log($);
        console.log(document.body.innerHTML);
        //f.testJqueryImport(dom)
    });
  });