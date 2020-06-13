" For vim-go plugin
execute pathogen#infect()
syntax on
filetype plugin indent on

" for ctrlp plugin
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 0
let g:go_def_mode = "gopls"  

" YouCompleteMe autocomplete -> ./install.py --go-completer

" Switch mouse on
set mouse=a 

" Mapping for fast quit without save
noremap <Backspace> :q<cr>
set backspace=indent,eol,start

" Display line numbers
set nu
set relativenumber

" Display colour

" Disable swap file creation
set noswapfile

" VSCODE colorscheme
" set t_Co=256
" set t_ut=


" colorscheme codedark

" colorscheme dracula
" https://draculatheme.com/vim
packadd! dracula
colorscheme dracula

" Open GoDef in different pane
cnoreabbrev gd GoDef

function SplitAndDef()
				split | :GoDef
				return 0
endfunction 

noremap <NUL> :call SplitAndDef()

" For cplouring the terminal
" This enables vim airline
set laststatus=2

" For multicursor select
let g:multi_cursor_start_word_key = '<C-d>'
let g:multi_cursor_start_key = 'g<C-d>'

" Nerdtree file manager
map <C-n> :NERDTreeToggle<CR>

" To run GoImports on save
let g:go_fmt_command = "goimports"

"remap to move between splits
nmap <C-h> <c-w>h<c-w>
nmap <C-l> <c-w>l<c-w>
nmap <C-j> <c-w>j<c-w>
nmap <C-k> <c-w>k<c-w>
"esc Aernative
imap ;; <Esc>
"window size
map <s-j> <c-w>+
map <s-k> <c-w>-
map <s-h> <c-w><
map <s-l> <c-w>>

noremap <c-o> :split<CR>
noremap <c-e> :vsplit<CR>

" Enable emmet vim for just html and css
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" For YouCompleteMe
set encoding=utf-8

set autoindent
set smartindent

" Tab settings
" Set Tab size to 1
set tabstop=4
" Helpful when using TAB
set softtabstop=0 noexpandtab
" Indent a single tab
set shiftwidth=4

" Automatically closing braces
inoremap {<CR> {<CR>}<Esc>ko
inoremap [<CR> [<CR>]<Esc>ko
inoremap (<CR> (<CR>)<Esc>ko
