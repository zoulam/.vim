 " html快捷输入方式设置为tab
 autocmd FileType html,css,jsx,vue,tsx,scss imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
 " 只在htmlhtml,css,jsx,vue下启动
 let g:user_emmet_install_global = 0
 autocmd FileType html,css,vue,scss EmmetInstall
