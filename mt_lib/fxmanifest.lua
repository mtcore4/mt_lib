fx_version 'cerulean'
game 'gta5'

name 'mt_lib'
author 'MT Core'
description 'Shared utility framework'
version '1.0.0'
lua54 'yes'

ui_page 'web/index.html'

files {
    'web/*',
    'locales/*.json'
}

shared_scripts {
    'config.lua',
    'init.lua',
    'modules/state/shared.lua',
    'modules/locale/shared.lua',
    'modules/framework/shared.lua'
}

client_scripts {
    'modules/ui/*.lua',
    'modules/callbacks/client.lua',
    'modules/player/client.lua',
    'modules/zones/client.lua',
    'modules/target/client.lua'
}

server_scripts {
    'modules/callbacks/server.lua',
    'modules/player/server.lua',
    'modules/permissions/server.lua',
    'modules/inventory/server.lua'
}
