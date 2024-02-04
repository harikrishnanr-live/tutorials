module.exports = (request, response) => {
  let baseUrl = request.url.substring(0, request.url.lastIndexOf("/") + 1);
  const id = request.url.split("/")[3];
  const regex = new RegExp(/^(?=[a-f\d]{24}$)(\d+[a-f]|[a-f]+\d)/i);
  if (request.url == "/api/movies") {
    response.statusCode = 200;
    response.setHeader("Content-Type", "application/json");
    response.write(JSON.stringify(request.movies));
    response.end();
  } else if (typeof id !== "undefined") {
    if (regex.test(id)) {
      response.statusCode = 200;
      response.setHeader("Content-Type", "application/json");
      const data = request.movies.filter((movie) => {
        return movie.id == id
      });
      if (Array.isArray(data) && data.length > 0) {
        response.write(JSON.stringify(data));
      } else {
        response.end(JSON.stringify({
          title: "Validation Failed",
          message: "UUID is not found"
        }));
      }
      response.end();
    } else {
      response.writeHead(500, {
        "Content-Type": "application/json"
      });
      response.end(JSON.stringify({
        title: "Validation Failed",
        message: "UUID is not valid"
      }));
    }
  } else {
    response.writeHead(404, {
      "Content-Type": "application/json"
    });
    response.end(JSON.stringify({
      title: "Not Found",
      message: "Route not found"
    }));
  }

}