set wrap

" 开启行号
set nu

" 语法高亮
syntax on

" 高亮搜索结构
set hls

" 高亮当前行
set cul

" 缩进空格
set ts=4
set sw=4
set et

" 智能缩进
set ai

" GUI 配置
if has("gui_running")
    set go-=m  " 去除菜单栏
    set go-=T  " 去除工具栏
    set go-=L
    set go-=l  " 去除左侧滚动条
    set go-=r  " 去除右侧滚动条
    set lines=999 columns=999
    set guifont=Monospace\ 13
endif

" 主题设置
colorscheme fruchtig

" 快捷键设置
" execute "set <M-o>=\eo"
inoremap <C-B> <Left>
inoremap <C-F> <Right>
inoremap <C-N> <Down>
inoremap <C-P> <Up>
inoremap <C-G> <Esc>
inoremap <C-o> <Backspace>

nnoremap <C-S>/ :set hlsearch<CR>viwy/<C-R>"<CR>

" plugin begin
call plug#begin('~/.vim/vim-plug')

Plug 'scrooloose/nerdtree'
let NERDTreeShowHidden=0
nnoremap <F2> :NERDTreeToggle<CR>
inoremap <F2> <ESC>:NERDTreeToggle<CR>

call plug#end()
" plugin end
