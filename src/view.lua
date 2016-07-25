local lustache = require "lustache"

View = {
  _fileCache = {},
  loadFile = function(name)
    if View._fileCache[name] == nil then
      local file = assert(io.open("src/views/" .. name, "r"))
      View._fileCache[name] = file:read("*all")
      file:close()
    end
    return View._fileCache[name]
  end,
  render = function(path, viewModel)
    return lustache:render(View.loadFile(path), viewModel)
  end,
}
