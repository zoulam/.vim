" 插件
call plug#begin('~/.vim/plugged')
 "Plug 'junegunn/vim-emoji'
 Plug 'honza/vim-snippets'
 Plug 'ap/vim-css-color'
 Plug 'scrooloose/nerdtree'
 Plug 'mhinz/vim-startify'
 Plug 'tpope/vim-fugitive'
 Plug 'lfv89/vim-interestingwords'
 Plug 'morhetz/gruvbox'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
 Plug 'jiangmiao/auto-pairs'
 Plug 'Chiel92/vim-autoformat'
 " 代码注释插件
 " \cc 注释，\cu解开注释，\c<space>解开或者添加注释，\cy先复制再注释
 Plug 'preservim/nerdcommenter'
 Plug 'mattn/emmet-vim'
 Plug 'liuchengxu/vista.vim'
 Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
 Plug 'junegunn/fzf.vim'
 Plug 'frazrepo/vim-rainbow'
 Plug 'Yggdroot/indentLine'
call plug#end()

" 基本设置
set encoding=UTF-8
set number " 左侧显示行号
set showtabline=2 " 左上角显示文件名
set cursorline " 编辑的行会出现下划线
set cursorcolumn " 编辑的行会出现垂直划线
set clipboard=unnamed " 剪贴板和暂存器互通
set noswapfile " 不因为强制退出（断电等）生成xx.wap文件，怕文件丢失不建议设置
set autowriteall " 切换标签后自动保存
set linebreak " 单词不断行
set ruler " 右下角显示行号和列数
set t_Co=256 " 启用256色，让你的主题也能生效
set noshowmode " 有ariline了，就不需要重复显示编辑模式
set showcmd " 显示敲击了键盘的那些键，即输入了哪些指令
set splitbelow " 新增窗口出现在下方
set scrolloff=5 " 光标下面至少显示五行文本，即自动翻页
syntax on " 识别语法上色

" 文件类型匹配
filetype on
filetype indent on " 使用预设文件类型的缩进
filetype plugin on " 使用预设文件类型的插件

" 缩进
set expandtab " 空格代替缩进
set softtabstop=2 " 缩进为2
set shiftwidth=2  " 设置格式化时代码缩进为2个空格
set tabstop=4 " tab键缩进为4格子

" 关于查找的设置
set hlsearch " 高亮查找
set ignorecase " 设置默认进行大小写不敏感查找
set smartcase " 如果有一个大写字母，则切换到大小写敏感查找
set incsearch " 可以在敲键的同时搜索，按下回车把移动光标移动到匹配的词； 按下 Esc 取消搜索。
set wrapscan " 循环搜索
" 高亮颜色
highlight Search ctermbg=yellow ctermfg=black
highlight IncSearch ctermbg=black ctermfg=yellow
highlight MatchParen cterm=underline ctermbg=NONE ctermfg=NONE


" 键盘映射修改
" insert模式
" jj 退出模式
inoremap jj <Esc>
" 来到行头
inoremap <C-u> <Esc>I
" 来到行尾
inoremap <C-i> <Esc>A
" 快速换行
inoremap <C-o> <Esc>o
" 保存并退出
noremap <F4> <Esc>:wq<Enter>
" 输入垂直切割的命令等待输入文件名
noremap <F6> <Esc>:vnew<Space>
" 全选
nnoremap <C-a> vggG$
" 打开文件面板
nnoremap <F8> :! vim<Enter>



" 自动命令
" 切换窗口光标也切换（仅存在一个光标）
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

" 自动删除行尾空格
autocmd bufWritePre * :%s/\s\s+$//e

" f5编译node
if executable("node")
  autocmd BufRead,BufNewFile *.js noremap <F5> :% w ! node <Enter>
else
  autocmd BufRead,BufNewFile *.js noremap <F5> :echo "command not found:"node", please install node"
endif

