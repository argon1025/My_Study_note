const express = require('express')
var bodyParser = require('body-parser')
const app = express()
const port = 80

var Loger = function(req, res, next) { //인자는 req, res, callback 함수로 정해져 있음
    console.log('Log');
    next();
}
app.use(Loger);
app.use(express.static('res')); //http://127.0.0.1/photo.webp
//routing
app.get('/', (req, res) => {
  res.send('Hello World!')
})

// ----------------------------------------------
// 미들웨어는 순차적으로 실행됨으로 에러처리는 마지막에 적용
app.use(function(req, res, next) {
    res.status(404).send('Sorry cant find that!');
});

app.use(function (err, req, res, next) {
    console.error(err.stack)
    res.status(500).send('Something broke!')
});
// ----------------------------------------------

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})