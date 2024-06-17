// userRouter.js

const express = require('express');
const { PrismaClient } = require('@prisma/client');
const userController = require('./usercontroller');
const {getAllUsers,createUser,updateUser,deleteUser,} =require('./usercontroller')
const {checkSchema}= require('express-validator');
const {createValidationSchema}= require('./validationschema');

const prisma = new PrismaClient();
const router = express.Router();

const checkUser=(req,res,next) =>{
    const {body, params: {id}}  = req

    const parsedId = parseInt(id)
    if(isNaN(parsedId)) 
        return res.sendStatus(400)

    const findUserIndex = prisma.events.findUnique((user) => {
        return user.id === parsedId
    })
    console.log(findUserIndex);
    if(findUserIndex === -1)
        return res.status(404).send('Middleware found this error')
    req.findUserIndex = findUserIndex
    next();
}

// Get all users
router.get("/", checkUser, userController.getAllUsers);

// Create a new user
router.post("/", checkUser, userController.createUser);

// Update a user
router.put("/:id", checkUser, userController.updateUser);

// Delete a user
router.delete("/:id", checkUser, userController.deleteUser);

module.exports = router;
