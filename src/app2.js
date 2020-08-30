// https://medium.com/@asimmittal/using-jquery-nodejs-to-scrape-the-web-9bb5d439413b

console.log("---> Running");

const curl = require("curl");
const jsdom = require("jsdom");
const url = "https://en.wikipedia.org/wiki/Static_web_page";

curl.get(url, null, (err, resp, body) => {
  if (resp.statusCode == 200) {
    parseData(body);
  } else {
    //some error handling
    console.log("error while fetching url");
  }
});

function parseData(html) {
  const { JSDOM } = jsdom;
  const dom = new JSDOM(html);

  //console.log(dom.serialize());

  const $ = require("jquery")(dom.window);

  log($("head").html());
  //log($("link").attr('rel'));
  $("link").map((value, index) => { // I don't understand the api well enought to pull this off
	  console.log('s');
  });
  

}

function log(what) {
	console.log(what);
	console.log('+++++++++++++++++++++++++++++++++++++++++++++++++++');
}