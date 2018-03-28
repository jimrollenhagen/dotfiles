set rtp+=~/.fzf
source ~/.fzf/plugin/fzf.vim

runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()
call pathogen#helptags()

syntax on
filetype plugin indent on

" colors
" set termguicolors
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

" case insensitive search
set ignorecase

au FileType javascript set tabstop=2
au FileType javascript set shiftwidth=2

au FileType py set autoindent
au FileType py set smartindent
au FileType py set textwidth=79

" fzf things
nnoremap <c-p> :FZF<cr>

set statusline+=%#warningmsg#
set statusline+=%*

let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0

let g:deoplete#enable_at_startup = 1
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<S-TAB>"
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
