const express = require("express");
const asyncHandler = require("express-async-handler");
const Contact = require("../models/contactModel");

const getContact = asyncHandler(async (request, response) => {
  const contacts = await Contact.find();
  response.status(200).json(contacts);
});

const createContact = asyncHandler(async (request, response) => {
  const { name, email, phone } = request.body;
  if (!name || !email || !phone) {
    response.status(400);
    throw new Error("All fields are mandatory");
  }
  response.status(201).json({
    message: "Contacts Created"
  });
});

const showContact = asyncHandler(async (request, response) => {
  response.status(200).json({
    message: "Get Single Contact"
  });
});

const updateContact = asyncHandler(async (request, response) => {
  response.status(200).json({
    message: "Contact Updated"
  });
});

const deleteContact = asyncHandler(async (request, response) => {
  response.status(200).json({
    message: "Contact Deleted"
  });
});

module.exports = { getContact, createContact, showContact, updateContact, deleteContact };