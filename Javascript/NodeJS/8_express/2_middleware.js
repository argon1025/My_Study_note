const express = require('express')
var bodyParser = require('body-parser')
const app = express()
const port = 80

app.use(bodyParser.urlencoded({ extended: false }))

//routing
app.get('/', (req, res) => {
  if(req.body.id =! undefined){
    res.send('Hello World!'+req.body.id)
  }else{
  res.send('Hello World!')
  }
})

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})