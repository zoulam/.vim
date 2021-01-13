" F2打开NerdTree，silent 是不会显示下方你自动输入了什么命令
nnoremap <silent> <F2> :NERDTreeToggle<CR>
" 去除无用的内容,即上的？ 和updir
let NERDTreeMinimalUI=1
" 目录实际也会切换
let NERDTreeDirMode=2
" 文件关闭nerdtree也关闭
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

