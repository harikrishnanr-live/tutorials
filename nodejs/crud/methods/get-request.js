module.exports = (request, response) => {
  let baseUrl = request.url.substring(0, request.url.lastIndexOf("/")+1);
  console.log(baseUrl);
  if(request.url = "/api/movies"){
    response.statusCode = 200;
    response.setHeader("Content-Type", "application/json");
    response.write(JSON.stringify(request.movies));
    response.end();
  }
}