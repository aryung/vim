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
colorscheme sonokai
" colorscheme contrastneed
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
set listchars=tab:>~,trail:_,extends:>,precedes:<
set list
map <Leader>n :NERDTreeToggle<CR>

"" eslint check
"let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_always_populate_loc_list = 1
"" vim-autoformat
"let g:formatdef_eslint = '"SRC=eslint-temp-${RANDOM}.js; cat - >$SRC; eslint --fix $SRC >/dev/null 2>&1; cat $SRC | perl -pe \"chomp if eof\"; rm -f $SRC"'
"let g:formatters_javascript = ['eslint']
"let g:javascript_plugin_jsdoc = 1
"" map <Leader>t :!mix test<CR>
"" set relativenumber
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" move line up/down
nnoremap <C-J> :m .+1<CR>==
nnoremap <C-K> :m .-2<CR>==
inoremap <C-J> <Esc>:m .+1<CR>==gi
inoremap <C-K> <Esc>:m .-2<CR>==gi
vnoremap <C-J> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv
" prettier
"let g:prettier#config#bracket_spacing = 'true'
"let g:prettier#config#jsx_bracket_same_line = 'false'
"
"let g:prettier#autoformat = 0
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync
