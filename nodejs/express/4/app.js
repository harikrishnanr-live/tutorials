const express = require('express');
const app = express();
const port = 3000
const path = require('path')

app.get('/products', (request, response) => {
  response.send('All Products')
});

app.get('/products/:category/:brand', (request, response) =>{
  // response.send(request.params)
  // response.send(request.params.category)
  // response.send('All Category')

  const {category} = request.params;
  const {brand} = request.params
  if(category == "laptop"){
    response.send(`${category} and ${brand}`)
  } else {
    response.send("sorry")
  }
})

app.get('/flights/:from-:to', (request, response) =>{
  response.send(`Flights from ${request.params.from} and ${request.params.to}`)
})

app.get('/place/:state-:dist', (request, response) =>{
  response.send(`State ${request.params.state} and ${request.params.dist}`)
})

app.listen(port, ()=>{
  console.log(`App is listening on port: ${port}`)
})