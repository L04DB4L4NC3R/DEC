" For vim-go plugin
execute pathogen#infect()
syntax on
filetype plugin indent on

" show command completions in a menu
set wildmenu

" for ctrlp plugin
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 0

let g:go_def_mode = "gopls"  

" YouCompleteMe autocomplete -> ./install.py --all

" Switch mouse on
set mouse=a 

" Mapping for fast quit without save
noremap <Backspace> :q<cr>
noremap <c-h> :q<cr>
set backspace=indent,eol,start

" Display line numbers
set nu
set relativenumber

" Disable swap file creation
set noswapfile

" Display colour
" colorscheme codedark
colorscheme dracula
" set bg=dark

" colorscheme dracula
" https://draculatheme.com/vim

" Open GoDef in different pane
cnoreabbrev gd GoDef

function SplitAndDef()
				split | :GoDef
				return 0
endfunction 

noremap <NUL> :call SplitAndDef()<CR>
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
nnoremap <c-w>k <c-w><c-j>
nnoremap <c-w>l <c-w><c-k>
nnoremap <c-w>; <c-w><c-l>
nnoremap <c-w>j <c-w><c-h>

" swap top/bottom or left/right split
" <c-w>r
"
" Break out current window into a new tabview
" <c-w>t
"
" Close every window in current tabview but the current one
" <c-w>o
"
" Equalize splits
" <c-w>=

"esc Aernative
imap ;; <Esc>
map '' <Esc>:wq<CR>
imap '' <Esc>:wq<CR>
inoremap <c-k> <Esc>:w<CR>
noremap <c-k> :w<CR>

"window size
nnoremap = :10winc><CR>
nnoremap - :10winc<<CR>
nnoremap + :10winc+<CR>
nnoremap _ :10winc-<CR>

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

" set guifont=Menlo\ Regular:h20

" Automatically closing braces
inoremap {<CR> {<CR>}<Esc>ko
inoremap [<CR> [<CR>]<Esc>ko
inoremap (<CR> (<CR>)<Esc>ko

map ; <Right>
map j <Left>
map k <Down>
map l <Up>

" Debugging in vim
" F9 to set breakpts
" F5 to start
let g:vimspector_enable_mappings='HUMAN'

" download exuberant ctags
" ctags -R . (or use gutentags)
" ^] src and go to tag
" g^] ambiguous tags (get all occurences)
" ^t go back the tag stack

" for vim startify
" returns all modified files of the current git repo
" `2>/dev/null` makes the command fail quietly, so that when we are not
" in a git repo, the list will be empty
function! s:gitModified()
    let files = systemlist('git ls-files -m 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

" same as above, but show untracked files, honouring .gitignore
function! s:gitUntracked()
    let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

let g:startify_lists = [
        \ { 'type': 'files',     'header': ['   MRU']            },
        \ { 'type': function('s:gitModified'),  'header': ['   git modified']},
        \ { 'type': function('s:gitUntracked'), 'header': ['   git untracked']},
        \ ]

" do not change into the dir of selected file
" so that ctrlp works correctly with startify
let g:startify_change_to_dir = 0

" start nerdtree and move cursor away from it
autocmd VimEnter * NERDTree | wincmd p

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" open lazygit in another tab
" <space> to commit a file
" <enter> to get into a file and stage specific diff chunks
" up/down arrow keys to move between files
noremap <leader>l :tab term lazygit<CR>
noremap <leader>t :tab term<CR>

" how often to write swap to disk (ms)
" for vim gitgutter
" [c & ]c can be used to nav through git hunks
set updatetime=100

" hunk status in the bar
function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf('+%d/~%d/-%d', a, m, r)
endfunction
set statusline+=%{GitStatus()}

let g:ctrlp_extensions = ['buffertag']
let g:ctrlp_types = ['mru', 'fil', 'buf', 'bft']
let g:ctrlp_mruf_max = 100
