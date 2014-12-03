var net = require('net'); 

process.title = 'node-policy2';

process.on('uncaughtException',function(err){
  console.error('uncaughtException: ' + err.stack);
});

const PORT = 843;
const XML =
'<cross-domain-policy>' +
        '<allow-access-from domain="*" to-ports="*" />' +
'</cross-domain-policy>\0';

net.createServer(function(socket) {
  socket.setTimeout(5000, function() {
    socket.destroy();
  });

  socket.on('data', function(data) {
    if(data.toString() == '<policy-file-request/>\0') {
      socket.end(XML);
    } else {
      socket.destroy();
    }
  });
}).listen(PORT);
