" vundle stuff
" run :PluginInstall to update plugins
" or run vim +PluginInstall +qall from command line
set nocompatible
filetype off
" set the runtime path to include vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
" put plugins here
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-fugitive'
Plugin 'tomtom/tcomment_vim'
Plugin 'luochen1990/rainbow'
Plugin 'whoisdylan/count_debugula'
Plugin 'msanders/snipmate.vim'
Plugin 'tpope/vim-surround'
Plugin 'Valloric/YouCompleteMe'
Plugin 'toyamarinyon/vim-swift'
Plugin 'scrooloose/nerdtree'
call vundle#end()

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
filetype plugin indent on
set number
set mouse=a
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
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
set backspace=indent,eol,start
set splitbelow
set splitright
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

map <leader>r :set relativenumber!<CR>

"make scala files have srhea's syntax highlighting
autocmd BufRead,BufNewFile *.scala set filetype=scala
" arduino syntax highlighting
autocmd! BufNewFile,BufRead *.ino setlocal ft=arduino

" enable go plugins
filetype off
filetype plugin indent off
set runtimepath+=/usr/local/Cellar/go/1.2/libexec/misc/vim
filetype on
filetype plugin indent on

nnoremap <Leader>n :NERDTreeToggle<cr>

" enable rainbow parenthesis plugin
let g:rainbow_active = 1
let g:rainbow_operators = 1

" " change cursor depending on vim mode:
" " use an orange cursor in insert mode
" let &t_SI = "\<Esc>]12;orange\x7"
" " use a red cursor otherwise
" let &t_EI = "\<Esc>]12;red\x7"
" silent !echo -ne "\033]12;red\007"
" " reset cursor when vim exits
" autocmd VimLeave * silent !echo -ne "\033]112\007"
" " use \003]12;gray\007 for gnome-terminal

" solid underscore
let &t_SI .= "\<Esc>[6 q"
" solid block
let &t_EI .= "\<Esc>[2 q"
" 1 or 0 -> blinking block
" 3 -> blinking underscore
" Recent versions of xterm (282 or above) also support
" 5 -> blinking vertical bar
" 6 -> solid vertical bar
