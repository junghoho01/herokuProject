const express = require("express");
const router = express.Router();
const cloudinary = require("cloudinary").v2;
require("dotenv").config();
const db = require("../services/dbConnect.js");

// All routes
const imageUpload = require("./controllers/imageUpload");
const persistImage = require("./controllers/persistImage");
const retrieveImage = require("./controllers/retrieveImage.js");
const updateImage = require("./controllers/updateImage");
const deleteImage = require("./controllers/deleteImage");

// cloudinary configuration
cloudinary.config({
  cloud_name: process.env.CLOUD_NAME,
  api_key: process.env.API_KEY,
  api_secret: process.env.API_SECRET,
});

router.post("/image-upload", imageUpload.imageUpload);
router.post("/persist-image", persistImage.persistImage);
router.get("/retrieve-image/:cloudinary_id", retrieveImage.retrieveImage);
router.delete("/delete-image/:cloudinary_id", deleteImage.deleteImage);
router.put("/update-image/:cloudinary_id", updateImage.updateImage);
router.get("/", (req, res) => {
  res.send("Hello World"); // or render your HTML page
});

module.exports = router;
