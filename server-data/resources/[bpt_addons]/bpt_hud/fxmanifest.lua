fx_version("adamant")
game("gta5")
author("bitpredator")
description("Skull Network Italia Custom Hud")
version("1.0.1")
ui_page("web/build/index.html")

shared_script("shared/config.lua")

client_scripts({
    "client/*.lua",
})

server_scripts({
    "server/*.lua",
})

files({
    "web/build/index.html",
    "web/build/**/*",
})
