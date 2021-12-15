const message  =  require("../githubactions/util/genlib")


const http = require('http');

const requestListener = function (req, res) {
  res.writeHead(200);
  res.end(message);
}

const server = http.createServer(requestListener);
server.listen(8080);
