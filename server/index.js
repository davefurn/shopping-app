//IMPORTS FROM PACKAGES
const express = require('express');
const mongoose = require('mongoose');

const adminRouter = require('./routes/admin');

//IMPORTS FROM OTHER FILES
const authRouter = require('./routes/auth');
//INIT
const PORT = 3000;
const app = express();
const DB = "mongodb+srv://Davefurn:Chukwudi2000@cluster0.jvg08sj.mongodb.net/?retryWrites=true&w=majority"
//middleware
app.use(express.json())
app.use(authRouter);
app.use(adminRouter);

//connections
mongoose.connect(DB).then(()=> {
    console.log('Connection Successful');
}).catch( e => {
    console.log(e);
})

app.listen(PORT, "0.0.0.0", () => {
    console.log(`connected at port  ${PORT} `);
}); // WE ARE USING 0.0.0.0 because with that we tell the script that it can access it from anywhere; not specifying localhost or 127.0.0 which only works for some devices
//stoopped at 1:27:58h