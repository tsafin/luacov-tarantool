package = "luacov-tarantool"
version = "scm-0"
source = {
    url = "git://github.com/tsafin/luacov-tarantool",
    branch = "master",
}
description = {
    summary = "Combine luacov with your development cycle and CI",
    detailed = "Combine luacov with your development cycle and CI",
    homepage = "https://github.com/tsafin/luacov-tarantool",
    license = "MIT"
}
dependencies = {
    "lua >= 5.1",
    "luacov > 0.5",
    "luafilesystem",
    "argparse",
}
build = {
   type = "builtin",
   -- I hope it's simple enough to use without any docs
   copy_directories = {},
   modules = {
      ['luacov.reporter.console'] = "src/luacov/reporter/console.lua",
   },
   install = {
      bin = {
         ["luacov-tarantool"] = "src/luacov-tarantool.lua",
      }
   },
}
