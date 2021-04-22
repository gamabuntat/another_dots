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
Plug 'nathanaelkane/vim-indent-guides'
Plug 'dylanaraps/fff.vim'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
" Plug 'colepeters/spacemacs-theme.vim'
Plug 'tpope/vim-surround'
Plug 'leafgarland/typescript-vim'
Plug 'tpope/vim-commentary'

"javascript
Plug 'pangloss/vim-javascript'
Plug 'dense-analysis/ale'

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
set shiftwidth=2
set completeopt-=preview
set updatetime=100
set ttimeoutlen=10
set hidden
"set noshowmode
set signcolumn=no

"au FileType sass setlocal shiftwidth=2
"au FileType css setlocal shiftwidth=2
"au FileType json setlocal shiftwidth=2

"ALE
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\}
" You can disable this option too
" if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 0

"set cursorcolumn
"highlight CursorColumn ctermbg=15
"set cursorline

"indent
"let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_start_level = 1
"let g:indent_guides_guide_size = 1

"visual tab
"set list
"set listchars=trail:·,precedes:«,extends:»,eol:↲,tab:▸\

"---colors---"
"set t_Co=256
"set t_AB=^[[48;5;%dm

"if exists('+termguicolors') && ($TERM == "st-256color" || $TERM == "tmux-256color")
"	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"	set termguicolors
"endif


"Enable true color 启用终端24位色
"if exists('+termguicolors')
"  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"  set termguicolors
"endif
"if (has("termguicolors"))
"    set termguicolors
"endif
set t_8f=^[[38;2;%lu;%lu;%lum
set t_8b=^[[48;2;%lu;%lu;%lum
"set termguicolors
"colorscheme default
"colorscheme spacemacs-theme
colorscheme fogbell_lite
"let g:neosolarized_contrast = "low"
"set background=light

" highlight LineNr ctermbg=254
highlight NonText ctermfg=234
" highlight Visual ctermbg=248 ctermfg=none
" highlight CursorLineNR ctermbg=254
" highlight VertSplit ctermbg=254 gui=none 
" hi StatusLine ctermbg=252 ctermfg=0
" hi Search cterm=NONE ctermfg=grey ctermbg=195
"highlight Todo ctermbg=0 ctermfg=13
"highlight Pmenu ctermbg=0 ctermfg=13

"gitgutter
highlight SignColumn guibg=whatever ctermbg=7
"highlight GitGutterAdd    ctermbg=2 ctermfg=2
"highlight GitGutterChange ctermbg=6 ctermfg=6
"highlight GitGutterDelete ctermbg=1 ctermfg=1
"highlight GitGutterAdded  ctermbg=3 ctermfg=15
"let g:gitgutter_sign_added = ''
"let g:gitgutter_sign_modified = ''
"let g:gitgutter_sign_removed = ''
"let g:gitgutter_sign_removed_first_line = '^^'
"let g:gitgutter_sign_removed_above_and_below = '{'
"let g:gitgutter_sign_modified_removed = 'ww'

"fzf
let g:fzf_colors =
\ { 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'Normal', 'CursorColumn'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'header':  ['fg', 'Comment'] }

"|----------------------------------------------------------|
"| ███    ███  █████  ██████  ██████  ██ ███    ██  ██████  |
"| ████  ████ ██   ██ ██   ██ ██   ██ ██ ████   ██ ██       |
"| ██ ████ ██ ███████ ██████  ██████  ██ ██ ██  ██ ██   ███ |
"| ██  ██  ██ ██   ██ ██      ██      ██ ██  ██ ██ ██    ██ |
"| ██      ██ ██   ██ ██      ██      ██ ██   ████  ██████  |
"|----------------------------------------------------------|

map <Space> <Leader>

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
"nmap > <C-W>>
"nmap < <C-W><

"buffer
nmap <M-w> :BD<CR>

nnoremap ,t :Files<CR>
nnoremap ' :Buffers<CR>

"emmet
let g:user_emmet_leader_key='<C-e>'
"let g:user_emmet_install_global = 0
"autocmd FileType html,css,pug,sass EmmetInstall

"irline
"let g:airline_theme='base16_spacemacs'
"let g:airline_section_z = airline#section#create(['linenr', ':%3v'])
"let g:airline#extensions#tabline#enabled = 1

"fzf
let g:fzf_preview_window = ['right:55%:hidden', 'ctrl-/']
