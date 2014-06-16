package = "moon-watch"
version = "0.1-1"

source = {
  url = "https://github.com/yi/moon-watch.git",
  branch = "master"
}

description = {
  summary = "better -watch for moonscript(moonc) for MacOS",
  detailed = [[
      better -watch for moonscript(moonc) for MacOS
       * Use fsw, solves moonc -w get stuck when polling on MacOS
       * Maintains source folder structure in output folder
       * Bell on compile failure
  ]],
  homepage = "https://github.com/yi/moon-watch",
  maintainer = "Yi <yi2004@gmail.com>",
  license = "MIT"
}

dependencies = {
   "moonscript ~> 0.2.5-1"
}

build = {
  type = "builtin",
  install = {
    bin = { "moon-watch" }
  }
}
