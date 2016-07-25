require 'http'

port = 5001
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
