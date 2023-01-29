var http = require('http');
http.createServer (function(req, res) {
res.writeHead (200, {'Content-type': 'text/plain'});
res.end('Bu Kalp Enes Adlı Şahısa Bırakılmıştır <3');
}).listen(8000);
