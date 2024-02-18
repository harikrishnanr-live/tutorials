const asyncHandler = require("express-async-handler");
const bcrypt = require("bcrypt");
const User = require("../models/userModel");
const jwt = require("jsonwebtoken");

const registerUser = asyncHandler(async (request, response) => {
  const { username, email, password, phone } = request.body;
  if (!username || !email) {
    response.status(400);
    throw new Error("All fields are required");
  }
  const userAvailable = await User.findOne({ email });
  if (userAvailable) {
    response.status(400);
    throw new Error("User already registered");
  }
  const hashedPassword = await bcrypt.hash(password, 10);
  const user = await User.create({
    username,
    email,
    phone,
    password: hashedPassword
  });
  response.json({
    message: "Register the user",
    data: user
  });
});

const loginUser = asyncHandler(async (request, response) => {
  const { email, password } = request.body;
  if ((!email) || (!password)) {
    response.status(400);
    throw new Error("All fields are mandatory");
  }
  const user = await User.findOne({ email });
  if ((user) && (await bcrypt.compare(password, user.password))) {
    const accessToken = jwt.sign({
      user: {
        username: user.username,
        email: user.email,
        id: user.id
      }
    },
      process.env.ACCESS_TOKEN_SECRET,
      { expiresIn: "24h" }
    );
    response.json({
      message: "Login",
      data: user,
      token: accessToken
    });
  } else {
    response.status(401);
    throw new Error("User not found");
  }
});

const currentUser = asyncHandler(async (request, response) => {
  response.json({
    data: request.user
  });
});

module.exports = {
  registerUser,
  loginUser,
  currentUser
}