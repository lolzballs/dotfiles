set nocompatible

call plug#begin("~/.vim/bundle")

Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'
Plug 'machakann/vim-highlightedyank'

Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'justinmk/vim-sneak'

Plug 'rust-lang/rust.vim'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

Plug 'lervag/vimtex'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

Plug 'junegunn/goyo.vim'

Plug 'neoclide/coc.nvim', {'tag':'*', 'do': './install.sh'}

call plug#end()

filetype plugin indent on
syntax on

" Pane navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Clipboard
vnoremap <silent> <leader>y "+y<CR>
vnoremap <silent> <leader>d "+d<CR>
nnoremap <silent> <leader>p "+p<CR>

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"
imap <c-space> <Plug>(asyncomplete_force_refresh)

let g:rustfmt_autosave = 1

let g:vimtex_view_method = 'zathura'
let g:tex_flavor='latex'
let g:tex_conceal='abdmg'

let g:ctrlp_custom_ignore = 'node_modules\|target'

set mouse=a
set tabstop=4 shiftwidth=4 expandtab

if has('gui_running')
    set guioptions=0
    set guifont=Monospace\ 11
    set guiheadroom=0
endif

set incsearch
set laststatus=2
set relativenumber
set number

colorscheme nord
let g:lightline = {
    \ 'colorscheme': 'nord'
    \ }
set background=dark

