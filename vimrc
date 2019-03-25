set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'arcticicestudio/nord-vim'
Plugin 'itchyny/lightline.vim'
Plugin 'machakann/vim-highlightedyank'

Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'justinmk/vim-sneak'

Plugin 'rust-lang/rust.vim'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'mattn/emmet-vim'
Plugin 'posva/vim-vue'

Plugin 'leafgarland/typescript-vim'

Plugin 'lervag/vimtex'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'

Plugin 'junegunn/goyo.vim'

Plugin 'prabirshrestha/async.vim'
Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'prabirshrestha/vim-lsp'
Plugin 'prabirshrestha/asyncomplete-lsp.vim'

Plugin 'tomlion/vim-solidity'

call vundle#end()

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

if executable('pyls')
    au User lsp_setup call lsp#register_server({
                \ 'name': 'pyls',
                \ 'cmd': {server_info->['pyls']},
                \ 'whitelist': ['python'],
                \ })
endif

if executable('rls')
    au User lsp_setup call lsp#register_server({
                \ 'name': 'rls',
                \ 'cmd': {server_info->['rustup', 'run', 'stable', 'rls']},
                \ 'whitelist': ['rust'],
                \ })
endif



let g:rustfmt_autosave = 1

let g:vimtex_view_method = 'zathura'
let g:tex_flavor='latex'
set conceallevel=1
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

