package = "luacov-tarantool"
version = "1.1.0-1"
source = {
    url = "git://github.com/tsafin/luacov-tarantool",
    tag = "1.1",
}
description = {
    summary = "Combine luacov with your development cycle and CI",
    detailed = "Combine luacov with your development cycle and CI",
    homepage = "https://github.com/tsafin/luacov-tarantool",
    license = "MIT"
}
dependencies = {
    "lua >= 5.1",
    "tarantool >= 1.10",
    "luacov > 0.5",
    "luafilesystem",
    "argparse",
}
build = {
   type = "builtin",
   -- I hope it's simple enough to use without any docs
   copy_directories = {},
   modules = {
      ['luacov.reporter.tarantool'] = "src/luacov/reporter/tarantool.lua",
   },
   install = {
      bin = {
         ["luacov-tarantool"] = "src/luacov-tarantool.lua",
      }
   },
}
