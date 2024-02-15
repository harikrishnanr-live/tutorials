const asyncHandler = require("express-async-handler");
const bcrypt = require("bcrypt");
const User = require("../models/userModel");

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
    message: "Register the user"
  });
});

const loginUser = asyncHandler(async (request, response) => {
  response.json({
    message: "Login"
  });
});

const currentUser = asyncHandler(async (request, response) => {
  response.json({
    message: "Current"
  });
});

module.exports = {
  registerUser,
  loginUser,
  currentUser
}