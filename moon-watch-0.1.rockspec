package = "moon-watch"
version = "0.1"

source = {
  url = "https://github.com/yi/moon-watch.git"
  branch = "v0.1"
}


description = {
  summary = "better -watch for moonscript(moonc) ",
  homepage = "https://github.com/yi/moon-watch",
  maintainer = "Yi <yi2004@gmail.com>",
  license = "MIT"
}

build = {
  type = "builtin",
  install = {
    bin = { "moon-watch" }
  }
}
