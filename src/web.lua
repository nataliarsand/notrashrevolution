require 'src/http'
require 'src/view'

local port = arg[1] or 5001
local virtualhost = arg[2] or ""
print("starting server in " .. port)
HttpServer.start(port, {"notrashrevolution.herokuapp.com"}, {
  {
    match = "/",
    with = function(req, res)
      res.headers["Content-type"] = "text/html"
      res.content = View.render("index.html.mustache")
      return res
    end
  }
})
