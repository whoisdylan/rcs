" pathogen stuff
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" allows saving with :w!! without opening with sudo, doesnt work
cmap w!! %!sudo tee > /dev/null % 

" fix highlighting color for solarized
"hi Search ctermbg=7

" general settings
let mapleader = ","
syntax on
set background=dark
call togglebg#map("<F5>")
colorscheme solarized
filetype plugin on
set number
set mouse=a
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartindent
set cursorline
" set cursorcolumn
set autoindent
set smarttab
set ttyfast
set undofile
set showcmd
set clipboard=unnamedplus
set ruler
au BufNewFile,BufRead *.c0 set filetype=c " for c0 compatibility

" search options
set hlsearch
set incsearch
set ignorecase
set smartcase

" maintain context around cursor
set scrolloff=3

" delete line without overwriting buffer
nnoremap "_dd ,dd

" kj to exit 
inoremap kj <Esc>
inoremap jk <Esc>
inoremap jj <Esc>

" enable cursor movement line by line
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

" switch ; and : in normal mode for easier commands
nnoremap ; :
nnoremap : ;

" clear highlights
nnoremap <Leader><space> :noh<cr>

" reselect things just pasted
nnoremap <leader>v V`]

" open a new split and go to it
nnoremap <leader>w <C-w>s<c-w>l
" for vertical split
nnoremap <leader>W <C-w>v<c-w>l

" remap for C-moving windowsing
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" make newlines in normal mode
nnoremap <cr> o<esc>

" enable rainbow parenthesis plugin
let g:rainbow_active = 1
let g:rainbow_operators = 1
