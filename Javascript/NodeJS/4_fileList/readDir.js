var fs = require('fs');
 
fs.readdir('./', function(error, filelist){ // ./ 현재 디렉토리 조회
  console.log(filelist);
})