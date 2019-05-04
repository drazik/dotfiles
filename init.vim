call plug#begin('~/.local/share/nvim/plugged')
Plug 'tpope/vim-sensible'
Plug 'sheerun/vim-polyglot'
Plug 'joshdick/onedark.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'w0rp/ale'
Plug 'shime/vim-livedown'
Plug 'tpope/vim-fugitive'
call plug#end()

colorscheme onedark

set number
set clipboard=unnamedplus
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set hidden
set smartcase
set scrolloff=999
set cursorline
set noswapfile

if has("autocmd")
  " Read Cozy manifest files as JSON
  autocmd BufNewFile,BufRead manifest.{webapp,konnector} setfiletype json
endif

let g:ale_linters = {
      \   '*': ['remove_trailing_lines', 'trim_whitespace'],
      \   'javascript': ['eslint']
      \}

let mapleader=","

nnoremap <leader>b :Buffers<CR>
nnoremap <leader>e :Explore<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>w :bd<CR>
nnoremap <leader><SPACE> :nohls<CR>
nnoremap j gj
nnoremap <C-j> <PageDown>
nnoremap k gk
nnoremap <C-k> <PageUp>
nnoremap H ^^
vnoremap H ^^
nnoremap L $
vnoremap L $
inoremap jk <ESC>
