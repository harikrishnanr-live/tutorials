const http = require("http");
const url = require("url")

const server = http.createServer((req, res) => {
  const rUrl= url.parse(req.url, true).pathname;
  if(rUrl == "/"){
    res.write("Home Page")
    res.end();
  } else if(rUrl == "/about"){
    res.write("About Page")
    res.end();
  }
})
server.listen(8085);