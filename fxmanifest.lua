fx_version 'bodacious'
game 'gta5'

name 'TimeAndDateDisplay-FiveM'
author 'LucaNL#2230'
description 'A script that allows you to always show the real life time and real life date on the top right of your screen.'
version 'v2.0.0'
url 'https://github.com/LucaNL/TimeAndDateDisplay-FiveM'

server_script {
    'server/server.lua',
    'version.lua',
    'config.lua'
}

client_scripts {
    'client/client.lua',
    'config.lua'
}

ui_page "html/index.html"

files {
    "html/index.html",
    "html/time.js"
}