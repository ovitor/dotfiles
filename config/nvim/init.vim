" simple nvim configuration
"
lua require("init")
lua require("plugins")
lua require 'nvim-tree'.setup()

" basic configuration
set nocompatible
set showmatch
set ignorecase
set mouse=v
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set number
set cc=80
filetype plugin indent on
syntax on
set mouse=a
set clipboard+=unnamedplus
set spell
set splitright

" nvim tree configuration
nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <C-s> :NvimTreeFindFile<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
set termguicolors

" diff view configuration
nnoremap df :DiffviewOpen<CR>
nnoremap dc :DiffviewClose<CR>

" fzf configuration
nnoremap fzf :FZF<CR>

" gitgutter configuration
set updatetime=100
