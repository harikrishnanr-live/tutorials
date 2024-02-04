// Application level middleware
// Third party middleware
// Router level middleware
// built in middleware
// error-handling middleware

const express = require("express");
const app = express();
const port = 3000;

const logger = require("morgan");

// Built in Middleware
app.use(express.json());
app.use(express.urlencoded({ extended: true }))

// Application Level Middleware
const loggerMiddleware = (request, response, next) => {
  console.log(`${new Date()} --- Request [${request.method}] [${request.url}]`);
  next();
};

// Third Party Middleware
app.use(logger("combined"));

app.use(loggerMiddleware);

// Error Handling Middleware
const errorHandler = (error, request, response, next) => {
  const statusCode = response.statusCode ? response.statusCode : 500;
  response.status(statusCode);
  switch (statusCode) {
    case 401:
      response.json({
        title: "Un authorized",
        message: error.message
      })
      break;
    case 404:
      response.json({
        title: "Not Found",
        message: error.message
      })
    default:
      response.json({
        title: "Not Founds",
        message: error.message
      })
  }
  next();
};

app.use(errorHandler);

// Router Level Middleware
const router = express.Router();
app.use("/api/users", router);

const fakeAuth = (request, response, next) => {
  const authStatus = true;
  if (authStatus) {
    console.log("user Status : ", authStatus);
    next();
  } else {
    response.status(401);
    throw new Error("Users is not authorized");
  }
};

const getUsers = (request, response) => {
  response.json({
    message: "Get All users"
  });
}

const createUser = (request, response) => {
  console.log(request.body, "request");
  response.json({
    message: "Post All users"
  });
}
router.use(fakeAuth);
router.route("/").get(getUsers).post(createUser);

// ---------------------
app.all("*", (request, response)=>{
  response.status(404);
  throw new Error("Route not found");
});

app.listen(port, () => {
  console.log(`${port}`);
})
