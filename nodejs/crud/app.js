const http = require("http");
const getRequest = require("./methods/get-request");
const postReq = require("./methods/post-request");
const putReq = require("./methods/put-request");
const delReq = require("./methods/delete-request");
const movies = require("./data/movies.json");
require("dotenv").config();

const PORT = process.env.PORT || 3001;

const server = http.createServer((request, response) => {
  request.movies = movies;
  switch (request.method) {
    case "GET":
      getRequest(request, response);
      break;
    case "POST":
      postRequest(request, response);
      break;
    case "PUT":
      putRequest(request, response);
      break;
    case "DELETE":
      deleteRequest(request, response);
      break;
    default:
      response.statusCode = 200;
      response.setHeader('Content-Type', 'application/json');
      response.write(JSON.stringify({
        message: "Route not found"
      }));
      response.end();
  };

});

server.listen(PORT, () => {
  console.log(`Server started on port ${PORT}`)
})