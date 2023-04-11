//Imports from packages
const express = require('express');
const mongoose = require('mongoose');

//imports from other files
const authRouter = require('./routes/auth');
const adminRouter = require('./routes/admin')
const productRouter = require('./routes/product');
const userRouter = require('./routes/user');
//init
const PORT = 4000;
const app = express();
const DB = "mongodb+srv://marvin:kaariskaaris96B&@cluster0.e11jp15.mongodb.net/?retryWrites=true&w=majority"

//middleware
app.use(express.json())
app.use(authRouter);
app.use(adminRouter);
app.use(productRouter);
app.use(userRouter);

//connections
mongoose.connect(DB, {useNewUrlParser: true, useUnifiedTopology: true}).then(()=> {
    console.log('Connection to database Successful');
}).catch(e => {
    console.log(e);
})

app.listen(PORT, ()=>{
    console.log(`connected at port ${PORT}`);
});