var http = require('http');

http.createServer(function (req, res) {
  res.writeHead(200, {'Content-Type': 'text/html'});
  if(req.method === "GET")
  {
    res.write('hi');
  }
  if(req.method === "PUT")
  {
    res.write('bye');
  }
  return res.end();
}).listen(8080);
