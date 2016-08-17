set nocompatible              " be iMproved, required
set nu
set clipboard=unnamed
set relativenumber
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
set cinoptions=j1,l1,g0,N-s,(0,W1,W4
"set cino=N-s

set encoding=utf-8
set guifont=Monaco:h14
let loaded_matchparen = 1
set t_Co=256 
syntax on 
filetype off                  
" required

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
noremap <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <expr> k (v:count == 0 ? 'gk' : 'k')
"noremap k (v:count == 0 ? 'gk' : 'k')
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'
Plugin 'fugalh/desert.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tikhomirov/vim-glsl'
Plugin 'Auto-Pairs'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/a.vim'
Plugin 'vim-scripts/CSApprox'
Plugin 'vim-scripts/taglist.vim'
Plugin 'vim-scripts/DoxygenToolkit.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'elzr/vim-json'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

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
let g:ycm_always_populate_location_list = 1
let g:ycm_open_loclist_on_ycm_diags = 1
nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

""""""""nerdtree"""
let NERDTreeWinPos="left"
map <C-n> :NERDTreeToggle<CR>
