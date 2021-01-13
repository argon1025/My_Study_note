var http = require('http');
var fs = require('fs');
var url = require('url');

var args = process.argv;
console.log(args);
var app = http.createServer(function(request,response){
    var _url = request.url;
    var queryData = url.parse(_url, true).query;

    response.writeHead(200);
    var title='seongrok'

    fs.readFile(`data/${queryData.id}`, 'utf8', function(err, description){
        var template = `
        <!doctype html>
        <html>
        <head>
          <title>${title}</title>
          <meta charset="utf-8">
        </head>
        <body>
          <h2>${title}</h2>
          <p>${description}</p>
        </body>
        </html>
        `;
        response.end(template);
      })
    });
    app.listen(80);

    //http://127.0.0.1/?id=description