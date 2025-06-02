// Needed Resources
const express = require("express")
const router = new express.Router()
const invController = require("../controllers/invController")
const utilities = require("../utilities")
 
router.get("/type/:classificationId", invController.buildByClassificationId);
 
 
/* ****************************************
 * Route to build vehicle detail view
 **************************************** */
router.get("/detail/:id",
utilities.handleErrors(invController.buildDetail))
 
/* ****************************************
 * Error Route
 * Assignment 3, Task 3
 **************************************** */
router.get(
  "/broken",
  utilities.handleErrors(invController.throwError)
)
 
/* ****************************************
 * Build Management View Route
 * Assignment 4, Task 1
 * checkAccountType added Unit 5, Assignment 5, Task 2
 **************************************** */
//router.get(
//  "/",
 // utilities.checkAccountType,
//  utilities.handleErrors(invController.buildManagementView)
//)
 
 
 
module.exports = router;