fx_version 'adamant'

game 'gta5'
name 'ruxo_nui'
version '1.1'
description 'Ruxo nui'
lua54 "yes"

shared_scripts {
    '@es_extended/imports.lua',
    '@ox_lib/init.lua'
}

client_scripts {
    'main.lua'
} 

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/style.css',
    'html/reset.css',
    'html/listener.js'
}