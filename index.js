var gelfserver = require('graygelf/server')
var server = gelfserver()
server.on('message', function (event) {
  // handle parsed gelf event json
  console.log('received message' + event.short_message)
  console.log(JSON.stringify(event, null, 4))
})
console.log('listening')
server.listen(12201, '0.0.0.0')
