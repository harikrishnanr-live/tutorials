const express = require('express');
const app = express();
const port = 3000;
const prouctRouter = require('./routes/Product')

app.use('/product', prouctRouter)

app.listen(port, ()=>{
  console.log(`App is listening on port: ${port}`)
})