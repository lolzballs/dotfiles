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

Plugin 'rust-lang/rust.vim'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'mattn/emmet-vim'
Plugin 'posva/vim-vue'

Plugin 'lervag/vimtex'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'

Plugin 'junegunn/goyo.vim'

Plugin 'Valloric/YouCompleteMe'

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

let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'  
let g:ycm_rust_src_path = '/home/bcheng/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src'

let g:rustfmt_autosave = 1

let g:vimtex_view_method = 'zathura'

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

