" For vim-go plugin
execute pathogen#infect()
syntax on
filetype plugin indent on

" for ctrlp plugin
set runtimepath^=~/.vim/bundle/ctrlp.vim

let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 0

" Switch mouse on
set mouse=a 

" Set Tab size to 2
set tabstop=2

" Mapping for fast quit without save
nnoremap <Backspace> :q<cr>

" Display line numbers
set nu

" Display colour
colo simo-zz-2
