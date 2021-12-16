const message  =  require("../util/genlib")


const http = require('http');

const requestListener = function (req, res) {
  res.writeHead(200);
  res.end(message.test());
}

const server = http.createServer(requestListener);
server.listen(5000);
