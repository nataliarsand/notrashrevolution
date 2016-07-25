require 'http'

port = arg[1]
print("starting server in " .. port)
HttpServer.start(port, {
  {
    match = "/sustainable-packaging-request",
    with = function(req, res)
      res.headers["Content-type"] = "text/html"
      res.content = "STOP TRASHING PLS"
      return res
    end
  }
})
