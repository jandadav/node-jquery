var assert = require('assert');
const f = require('../src/functions');
const jsdom = require("jsdom");
const { JSDOM } = jsdom;

describe('test suite', function () {

    it('mocha test', function () {

        let html = '<tablestyle="width:100%"><tr><th>Firstname</th><th>Lastname</th><th>Age</th></tr><tr><td>Jill</td><td>Smith</td><td>50</td></tr><tr><td>Eve</td><td>Jackson</td><td>94</td></tr></table>'

        const dom = new JSDOM(html);
      
        //console.log(dom.serialize());
      
        const $ = require("jquery")(dom.window);
      
       
        console.log($(':root').html());
        console.log(dom.serialize());
        
      assert.equal([1, 2, 3].indexOf(4), -1);
    });

});