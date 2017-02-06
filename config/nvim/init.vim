source /usr/share/fzf/fzf.vim

runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()
call pathogen#helptags()

syntax on
filetype plugin indent on

" colors
set termguicolors
set background=dark
colorscheme solarized

nnoremap <M-down> <C-w>j
nnoremap <M-up> <C-w>k
nnoremap <M-right> <C-w>l
nnoremap <M-left> <C-w>h

set rnu
set colorcolumn=80
set tabstop=4
set shiftwidth=4
set expandtab

au FileType py set autoindent
au FileType py set smartindent
au FileType py set textwidth=79
