xavante = require "xavante"

HttpServer = {
  start = function(port, rules)
    xavante.HTTP {
      server = { host = "*", port = port },
      defaultHost = {
        rules = rules
      }
    }
    xavante.start(HttpServer.isFinished)
  end,
  isFinished = function()
    return HttpServer.stop
  end,
  stop = false
}
