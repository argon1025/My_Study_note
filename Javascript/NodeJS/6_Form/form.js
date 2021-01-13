var http = require('http');
var fs = require('fs');
var url = require('url');
var qs = require('querystring');

var app = http.createServer(function(request,response){
    var _url = request.url;
    var queryData = url.parse(_url, true).query;
    var pathname = url.parse(_url, true).pathname;

    if(pathname === '/data'){
        var body = '';
        request.on('data',function(data){
            body = body + data;
            if (body.length > 1e6){request.connection.destroy();}
        });
        request.on('end',function(){
            console.log(qs.parse(body));
        });
    }else if(pathname === '/form.html'){
        var form = `
        <!doctype html>
        <html>
        <head>
          <title>test</title>
          <meta charset="utf-8">
        </head>
        <body>
        <form action="/data" method="post">
            <p><input type="text" name="title" value="타이틀"></p>
            <p><textarea name="description">설명</textarea></p>
            <p><input type="submit"></p>
        </form>
        </body>
        </html>
        `
        response.writeHead(202);
        response.end(form);
    } else {
        response.writeHead(404);
        response.end('Not found');
    }
});
app.listen(80);