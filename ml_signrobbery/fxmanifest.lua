fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'ml-scripts'
description 'Advanced stealing road signs.'
version '1.0.0'

client_script 'cl.lua'
server_script 'sv.lua'
shared_scripts {
    'config.lua',
    '@es_extended/imports.lua',
    '@ox_lib/init.lua',
    '@ox_target/*'
}