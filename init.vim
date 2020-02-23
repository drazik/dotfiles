" Automatic vim-plug install
" See https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins to install using vim-plug
" See https://github.com/junegunn/vim-plug#usage
call plug#begin(stdpath('data') . '/plugged')
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'dense-analysis/ale'
call plug#end()

" unnamedplus registry is the system one
set clipboard=unnamedplus

set number
set smartcase

" Tabs = 2 spaces
" See https://medium.com/@arisweedler/tab-settings-in-vim-1ea0863c5990
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" Allow to open a new buffer when the current one is modified but not saved
" See https://medium.com/usevim/vim-101-set-hidden-f78800142855
set hidden

set cursorline
hi CursorLine term=bold cterm=bold

let mapleader = " "

" Movements mappings
nnoremap j gj
nnoremap k gk
nnoremap H ^
vnoremap H ^
nnoremap L $
vnoremap L $
inoremap jk <ESC>

" Open / close files mappings
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>e :Explore<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>w :bd<CR>
