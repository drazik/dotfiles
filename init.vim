call plug#begin('~/.local/share/nvim/plugged')
Plug 'tpope/vim-sensible'
Plug 'sheerun/vim-polyglot'
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'w0rp/ale'
Plug 'shime/vim-livedown'
Plug 'tpope/vim-fugitive'
Plug 'mattn/emmet-vim'
Plug 'airblade/vim-gitgutter'
" Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}
call plug#end()

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
set backupcopy=yes

if has("autocmd")
  " Read Cozy manifest files as JSON
  autocmd BufNewFile,BufRead manifest.{webapp,konnector} setfiletype json
endif

let g:ale_linters = {
      \   '*': ['remove_trailing_lines', 'trim_whitespace'],
      \   'javascript': ['eslint']
      \}

" make emmet behave well with JSX in JS and TS files
let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\  'typescript' : {
\      'extends' : 'tsx',
\  },
\}

let g:netrw_liststyle = 1
let g:netrw_banner = 0
let g:netrw_sizestyle= "h"

let mapleader=" "

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

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
