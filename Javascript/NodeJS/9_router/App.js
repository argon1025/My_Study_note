///////////////////////////////////// =====> 모듈 로드
const express = require('express');
const app = express();
///////////////////////////////////// =====> 환경설정
const port = 80;
///////////////////////////////////// =====> 라우팅
const indexRouter = require('./routes/index');
app.use('/', indexRouter);
/////////////////////////////////////

app.listen(port, () => {
    console.log(`Example app listening at http://localhost:${port}`)
  })