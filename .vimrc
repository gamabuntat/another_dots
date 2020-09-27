call plug#begin('~/.vim/plugged')

Plug 'ycm-core/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'ap/vim-css-color'
Plug 'digitaltoad/vim-pug'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'

"javascript
Plug 'pangloss/vim-javascript'

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

let mapleader = ","

"---C^ in insert mode toogle on Ru/En---"
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0

"mapping
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

nnoremap <Leader>t :Files<CR>
nnoremap ; :Buffers<CR>

"emmet
let g:user_emmet_leader_key='<c-e>'

"irline
let g:airline_theme='bubblegum'
