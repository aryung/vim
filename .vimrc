set t_Co=256
filetype indent on
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'prettier/vim-prettier'
" Bundle 'Chiel92/vim-autoformat'
" Bundle 'jiangmiao/auto-pairs'
" Bundle 'sheerun/vim-polyglot'
call vundle#end()

" theme

syntax on
colorscheme molokai
" colorscheme desert
set encoding=utf-8
set nu
set ai
" set cursorline
" set cursorcolumn
set sidescroll=0
set scrolloff=7
set nowrap
set expandtab
set tabstop=2
set smarttab
set showcmd
set softtabstop=0
set shiftwidth=2
set noswapfile
set nobackup
let g:mapleader=','
" set mouse=""
set hlsearch
set incsearch
set ignorecase smartcase
set smartcase
set title
"set syntax=javascript
nnoremap <silent> <cr> :nohlsearch<cr>
" map ,, <C-^>
" set iskeyword+=-
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <silent> <BS> <C-w>h
"set listchars=tab:>~,trail:_,extends:>,precedes:<
set listchars=tab:..,trail:_,extends:>,precedes:<
set list
map <Leader>n :NERDTreeToggle<CR>

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" move line up/down
nnoremap <C-J> :m .+1<CR>==
nnoremap <C-K> :m .-2<CR>==
inoremap <C-J> <Esc>:m .+1<CR>==gi
inoremap <C-K> <Esc>:m .-2<CR>==gi
vnoremap <C-J> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv
