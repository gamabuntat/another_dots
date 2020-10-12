call plug#begin('~/.vim/plugged')

Plug 'ycm-core/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'ap/vim-css-color'
Plug 'digitaltoad/vim-pug'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'qpkorr/vim-bufkill'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'

"javascript
Plug 'pangloss/vim-javascript'

"Pug
Plug 'digitaltoad/vim-pug'

"git
Plug 'airblade/vim-gitgutter'

call plug#end()

set number relativenumber
set nobackup
set nowb
set noswapfile
set clipboard^=unnamedplus
set incsearch 
set expandtab
set sw=2
set tabstop=2
set sts=0
set laststatus=2
set shiftwidth=4
set completeopt-=preview
set updatetime=100
highlight VertSplit cterm=none gui=none 

"gitgutter
highlight SignColumn guibg=whatever ctermbg=15
highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1
set signcolumn=yes
"let g:gitgutter_sign_added = ''
"let g:gitgutter_sign_modified = ''
"let g:gitgutter_sign_removed = ''
"let g:gitgutter_sign_removed_first_line = '^^'
"let g:gitgutter_sign_removed_above_and_below = '{'
"let g:gitgutter_sign_modified_removed = 'ww'

"---colors---"
"set t_Co=256
"set t_AB=^[[48;5;%dm
"set t_AF=^[[38;5;%dm

"if exists('+termguicolors') && ($TERM == "st-256color" || $TERM == "tmux-256color")
"	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"	set termguicolors
"endif

let mapleader = ","

"|----------------------------------------------------------|
"| ███    ███  █████  ██████  ██████  ██ ███    ██  ██████  |
"| ████  ████ ██   ██ ██   ██ ██   ██ ██ ████   ██ ██       |
"| ██ ████ ██ ███████ ██████  ██████  ██ ██ ██  ██ ██   ███ |
"| ██  ██  ██ ██   ██ ██      ██      ██ ██  ██ ██ ██    ██ |
"| ██      ██ ██   ██ ██      ██      ██ ██   ████  ██████  |
"|----------------------------------------------------------|

nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk
inoremap jj <Esc>

"split
nmap <Leader>s <C-W>s
nmap <Leader>v <C-W>v
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-H> <C-W>h
nmap <C-L> <C-W>l
nmap = <C-W>=
nmap + <C-W>+
nmap - <C-W>-
nmap . <C-W>>
nmap , <C-W><

"buffer
nmap <M-w> :BD<CR>

nnoremap <Leader>t :Files<CR>
nnoremap ' :Buffers<CR>

"emmet
let g:user_emmet_leader_key='<C-e>'
"let g:user_emmet_install_global = 0
"autocmd FileType html,css,pug,sass EmmetInstall

"irline
let g:airline_theme='bubblegum'
