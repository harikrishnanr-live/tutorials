const crypto = require("crypto");
const requestBodyParser = require("../util/body-parser");

module.exports = async (request, response) => {
  console.log("hello");
  console.log(requestBodyParser(request));
  if (request.url == "api/movies") {
    try {
      console.log(request.body)
    } catch (error) {

    }
  }
  response.end();
}