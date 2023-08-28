fx_version 'cerulean'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
game 'rdr3'
lua54 'yes'




ui_page 'html/index.html'

shared_scripts {
	'config.lua',
}

server_scripts {
    'server/main.lua',
}

client_scripts {
    'client/main.lua',
}

files {
    "html/*.html",
    "html/*.css",
    "html/*.js",
    'html/img/**/*.png',
}

escrow_ignore {
    'config.lua',
}