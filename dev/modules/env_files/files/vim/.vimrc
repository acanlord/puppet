" Rich's ~/.vimrc
"
" Don't be compatible with vi. This turns on lots of features.
" Note when ~/.vimrc present the following is done automatically
set nocompatible

" Make Windows use ~/.vim too. I don't want to use _vimfiles
if has('win32') || has('win64')
    set runtimepath^=~/.vim
endif

" Set up Pathogen and load all packages in ~/.vim/bundle
execute pathogen#infect()

filetype plugin indent on

syntax on        " Turn on syntax highlighting

colorscheme default
set background=dark  " I always work on dark terminals

" Show line numbers if terminal width is at least 88 characters
if &columns >= 88
    set number
endif

" Use F12 to toggle line numbering
nnoremap <F12> :set nonumber! number?<CR>

set expandtab      " Insert tabs as spaces
set tabstop=4
set shiftwidth=4

set pastetoggle=<F2>

if has("gui_running")
    "set guioptions-=m         " Remove menu bar
    "set guioptions-=T         " Remove toolbar
    "set guioptions-=r         " Remove right-hand scroll bar
    set guicursor=a:blinkon0   " Disable blinking cursor
    set guifont=DejaVu_Sans_Mono:h12,Lucida_Console:h12
    colorscheme xoria256

    if has("win32")
        " Maximize the initial Vim window under MS Windows
        au GUIEnter * simalt ~x
    endif
endif



let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
