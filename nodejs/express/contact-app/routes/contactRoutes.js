const express = require("express");
const router = express.Router();
const {
  getContact,
  createContact,
  showContact,
  updateContact,
  deleteContact
} = require("../controllers/contactController");
const validateToken = require("../middleware/validateToken");

router.use(validateToken);
router.route("/").get(getContact).post(createContact);
router.route("/:id").get(showContact).put(updateContact).delete(deleteContact);

module.exports = router;