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
Plug 'mattn/emmet-vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'airblade/vim-gitgutter'
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

" make emmet behave well with JSX in JS and TS files
let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\  'typescript' : {
\      'extends' : 'tsx',
\  },
\}

" disable auto_triggering ycm suggestions pane and instead
" use semantic completion only on Ctrl+n
let ycm_trigger_key = '<C-n>'
let g:ycm_auto_trigger = 0
let g:ycm_key_invoke_completion = ycm_trigger_key

" this is some arcane magic to allow cycling through the YCM options
" with the same key that opened it.
" See http://vim.wikia.com/wiki/Improve_completion_popup_menu for more info.
let g:ycm_key_list_select_completion = ['<TAB>', '<C-j>']
inoremap <expr> ycm_trigger_key pumvisible() ? "<C-j>" : ycm_trigger_key;

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
