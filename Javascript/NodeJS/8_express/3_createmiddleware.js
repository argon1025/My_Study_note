const express = require('express')
var bodyParser = require('body-parser')
const app = express()
const port = 80

var Loger = function(req, res, call) { //인자는 req, res callback 함수로 정해져 있음
    console.log('Log');
    call();
}
app.use(Loger);
//routing
app.get('/', (req, res) => {
  res.send('Hello World!')
})

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})