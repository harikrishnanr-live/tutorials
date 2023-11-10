var http = require("http")
http.createServer(function(req, res){
  res.write("Hello From HTTP")
  res.end();
}).listen("8085")