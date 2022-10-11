const express = require("express");
const User = require("../models/user");
const bcryptjs = require('bcryptjs');
const authRouter = express.Router();
const jwt = require('jsonwebtoken');

authRouter.post('/api/signup', async (req, res)=>  {
    try{
          //get the data from the client
   const {name, email, password} = req.body;

   const existingUser = await User.findOne({email});
   if (existingUser) {
    return res.status(400).json({msg: "User with same email already exists"});
   }
   const existingUsername = await User.findOne({name});
   if (existingUsername) {
    return res.status(400).json({msg: "User with same username already exists"});
   }

const hashedPassword = await bcryptjs.hash(password, 8);


let user = new User({
email, 
password: hashedPassword, 
name
   })
   user = await user.save();
   res.json(user); 

    //post data from the database

    //return that data to the user
    } catch (e) {
        res.status(500).json({error: e.message});
    }
  
});

//sign In route
//Exercise
authRouter.post('/api/signin', async(req, res)=>{
    try {
        //get email and password from req.body
        const {email, password} = req.body;
        const user = await User.findOne({email});
        if (!user) {
          return res.status(400).json ({msg: 'User with this email does not exist!'}); 
        }
        //DECODING THE PASSWORD
       const isMatch = await bcryptjs.compare(password, user.password);
       if (!isMatch) {
        return res.status(400).json ({msg: 'Incorrect Password!'}) 
       }

       const token = jwt.sign({id: user._id}, "passwordKey");
       res.json({token, ...user._doc})

    } catch (e) {
       res.status(500).json({error: e.message}); 
    }

});

module.exports = authRouter;


