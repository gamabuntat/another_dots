call plug#begin('~/.vim/plugged')
    

Plug 'ycm-core/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
"Plug 'itchyny/lightline.vim'
Plug 'mattn/emmet-vim'
Plug 'ap/vim-css-color'
Plug 'digitaltoad/vim-pug'
Plug 'tpope/vim-fugitive'
"Plug 'nathanaelkane/vim-indent-guides'
"Plug 'amerlyq/vim-focus-autocmd'

"javascript
Plug 'pangloss/vim-javascript'
"Plug 'othree/javascript-libraries-syntax.vim'
"Plug 'othree/yajs.vim'

"colorschemes
"Plug 'morhetz/gruvbox'

call plug#end()

let g:ycm_keep_logfiles = 1
let g:ycm_log_level = 'debug'
set number relativenumber
"set termguicolors
syntax enable
set t_Co=256
"set background=dark
hi Normal guibg=NONE ctermbg=NONE
set hlsearch 
set incsearch 
set expandtab
set sw=2
set tabstop=2
set sts=0
set laststatus=2
set shiftwidth=4
"set noshowmode
set noswapfile
set autoread
set clipboard^=unnamedplus

"STATUSLINE

let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'filename': 'LightlineFilename',
      \ },
      \ 'separator': { 'left': '▓▒░', 'right': '░▒▓' },
      \ 'mode_map': {
      \ 'n' : 'N',
      \ 'i' : 'I',
      \ 'R' : 'R',
      \ 'v' : 'V',
      \ 'V' : 'VL',
      \ "\<C-v>": 'VB',
      \ 'c' : 'C',
      \ 's' : 'S',
      \ 'S' : 'SL',
      \ "\<C-s>": 'SB',
      \ 't': 'T',
      \ },
      \ }

function! LightlineFilename()
  return &filetype ==# 'vimfiler' ? vimfiler#get_status_string() :
        \ &filetype ==# 'unite' ? unite#get_status_string() :
        \ &filetype ==# 'vimshell' ? vimshell#get_status_string() :
        \ expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
endfunction

let g:unite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0
let g:vimshell_force_overwrite_statusline = 0

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

"emmet
let g:user_emmet_leader_key='<c-e>'
