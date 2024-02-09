const constants = require("../constants");

const errorHandler = (error, request, response, next) => {
  const statusCode = response.statusCode ? response.statusCode : 500;
  console.log(constants, "errorCodes");
  switch (statusCode) {
    case constants.VALIDATION_ERROR:
      response.json({
        title: "Validation Failed",
        message: error.message,
        stackTrace: error.stack
      });
      break;
    case constants.UNAUTHORIZED:
      response.json({
        title: "Unauthorized Access",
        message: error.message,
        stackTrace: error.stack
      });
      break;
    case constants.FORBIDDEN:
      response.json({
        title: "Access Forbidden",
        message: error.message,
        stackTrace: error.stack
      });
      break;
    case constants.NOT_FOUND:
      response.json({
        title: "Not Found",
        message: error.message,
        stackTrace: error.stack
      });
      break;
    default:
      response.json({
        title: "Internal Server Error",
        message: error.message,
        stackTrace: error.stack
      });
  }
}

module.exports = errorHandler;