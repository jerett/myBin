set nocompatible              " be iMproved, required
set nu
set hlsearch
set cursorline
set noexpandtab
set backspace=indent,eol,start
set ignorecase smartcase

set expandtab           " enter spaces when tab is pressed
set textwidth=80       " break lines when line length increases
set cc=80
set tabstop=2           " use 4 spaces to represent tab
set softtabstop=2
set shiftwidth=2        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line"
set cindent
set cinoptions=g0,N-s,(0,W1,W4
"set cino=N-s

set encoding=utf-8
set guifont=Droid\ Sans\ Mono\ 11
"set completeopt=longest,menuone
let loaded_matchparen = 1
set t_Co=256 
syntax on 
filetype off                  
" required

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'
Plugin 'fugalh/desert.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'oblitum/YouCompleteMe'
Plugin 'rizzatti/dash.vim'
Plugin 'tikhomirov/vim-glsl'
Plugin 'Auto-Pairs'
Plugin 'vim-scripts/a.vim'
Plugin 'vim-scripts/CSApprox'
Plugin 'vim-scripts/taglist.vim'
Plugin 'vim-scripts/DoxygenToolkit.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'elzr/vim-json'

call vundle#end()            " required
filetype plugin indent on

let g:vim_json_syntax_conceal = 0

"colorscheme molokai
colorscheme desert
set background=dark
"colorscheme lucius
"LuciusWhite
"let g:molokai_original = 0
"set background=dark
"syntax enable
"let g:solarized_termcolors=256
"set background=dark
"colorscheme solarized

""""""""""syntastic""""""""""""
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_error_symbol = '✗'
let g:ycm_warning_symbol = '⚠'
let g:ycm_global_ycm_extra_conf = '/Users/jerett/.ycm_extra_conf.py'
"
let g:ycm_key_invoke_completion = '<C-Space>'
nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

""""""""nerdtree"""
let NERDTreeWinPos="left"


"""""""""""function"""""""""""""""""
"进行版权声明的设置
"添加或更新头
map <F4> :call TitleDet()<cr>
function AddTitle()
    call append(0,"/*=============================================================================")
    call append(1,"#")
    call append(2,"# Author: jerett - wj.jiang@outlook.com")
    call append(3,"#")
    call append(4,"# Last modified: ".strftime("%Y-%m-%d %H:%M"))
    call append(5,"#")
    call append(6,"# Filename: ".expand("%:t"))
    call append(7,"#")
    call append(8,"# Description: ")
    call append(9,"#")
    call append(10,"=============================================================================*/")
    echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
endf
"更新最近修改时间和文件名
function UpdateTitle()
    normal m'
    execute '/# *Last modified:/s@:.*$@\=strftime(":\t%Y-%m-%d %H:%M")@'
    normal ''
    normal mk
    execute '/# *Filename:/s@:.*$@\=":\t\t".expand("%:t")@'
    execute "noh"
    normal 'k
    echohl WarningMsg | echo "Successful in updating the copy right." | echohl None
endfunction
"判断前10行代码里面，是否有Last modified这个单词，
"如果没有的话，代表没有添加过作者信息，需要新添加；
"如果有的话，那么只需要更新即可
function TitleDet()
    let n=1
    "默认为添加
    while n < 8
        let line = getline(n)
        if line =~ '^\#\s*\S*Last\smodified:\S*.*$'
            call UpdateTitle()
            return
        endif
        let n = n + 1
    endwhile
    call AddTitle()
endfunction
