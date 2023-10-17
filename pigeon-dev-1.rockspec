rockspec_format = "3.0"
package = "pigeon"
version = "dev-1"
source = {
    url = "git+ssh://git@github.com/LeafChage/pigeon.git"
}
description = {
    homepage = "https://github.com/LeafChage/pigeon",
    license = "MIT"
}
build = {
    type = "builtin",
    modules = {
        ["pigeon.iter"] = "lua/pigeon/iter.lua",
        ["pigeon.table"] = "lua/pigeon/table.lua"
    }
}
dependencies = {
    'lua >= 5.1, < 5.4',
    "busted",
}
test = {
    type = "busted",
}
