var http = require('http');
var fs = require('fs');
var url = require('url');
// ------------------------------------


var app = http.createServer(function(request,response){
    var _url = request.url;
    var queryData = url.parse(_url, true).query;

    console.log(_url);//전체 URL
    console.log(queryData); //쿼리 스트링
 
});
app.listen(80);