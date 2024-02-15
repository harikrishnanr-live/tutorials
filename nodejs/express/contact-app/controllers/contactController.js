const express = require("express");
const asyncHandler = require("express-async-handler");
const Contact = require("../models/contactModel");

const getContact = asyncHandler(async (request, response) => {
  const contact = await Contact.findById(request.params.id);
  if(!contact){
    response.status(404);
    throw new Error("Contact not found");
  }
  response.status(200).json(contact);
});

const createContact = asyncHandler(async (request, response) => {
  const { name, email, phone } = request.body;
  if (!name || !email || !phone) {
    response.status(400);
    throw new Error("All fields are mandatory");
  }
  const contact = await Contact.create({
    name,
    email,
    phone
  });
  response.status(201).json({
    message: "Contacts Created",
    data: contact
  });
});

const showContact = asyncHandler(async (request, response) => {
  const contact = await Contact.findById(request.params.id);
  if(!contact){
    // response.status(404);
    throw new Error("Contact not found");
  }
  response.status(200).json(contact);
});

const updateContact = asyncHandler(async (request, response) => {
  const contact = await Contact.findById(request.params.id);
  if(!contact){
    response.status(404);
    throw new Error("Contact not found");
  }
  const updatedContact = await Contact.findByIdAndUpdate(
    request.params.id,
    request.body,
    {
      new: true
    }
  )
  response.status(200).json({
    message: "Contact Updated",
    data: updatedContact
  });
});

const deleteContact = asyncHandler(async (request, response) => {
  const contact = await Contact.findById(request.params.id);
  if(!contact){
    response.status(404);
    throw new Error("Contact not found");
  }
  await Contact.deleteOne({"_id": request.params.id});
  response.status(200).json({
    message: "Contact Deleted",
    data: contact
  });
});

module.exports = { getContact, createContact, showContact, updateContact, deleteContact };