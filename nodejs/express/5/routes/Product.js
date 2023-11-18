const express = require('express')
const router = express.Router();

router.get('/', (request, response) => {
  response.send('All Products')
});

router.get('/details', (request, response) => {
  response.send('All Products Details')
});

router.post('/', (request, response) => {
  response.send('Post Products')
})

router.put('/', (request, response) => {
  response.send('Put Products')
})

module.exports= router