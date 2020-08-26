call plug#begin(stdpath('data') . '/plugged')
Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'
Plug 'machakann/vim-highlightedyank'

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'justinmk/vim-sneak'

Plug 'rust-lang/rust.vim'

Plug 'junegunn/fzf.vim'

Plug 'lervag/vimtex'

Plug 'neoclide/coc.nvim', {'tag':'*', 'branch': 'release'}
call plug#end()

" Language/plugin stuff
let g:tex_flavor = 'latex'
let g:rustfmt_autosave = 1

" Pane navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Clipboard
vnoremap <silent> <leader>y "+y<CR>
vnoremap <silent> <leader>d "+d<CR>
nnoremap <silent> <leader>p "+p<CR>

" Nice hotkeys
nnoremap <c-p> :Files<cr>

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" set default .h type to c
augroup project
    autocmd!
    autocmd BufRead,BufNewFile *.h,*.c set filetype=c
augroup END

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Color scheme
colorscheme nord
let g:lightline = {
    \ 'colorscheme': 'nord'
    \ }
set background=dark

" Misc
set relativenumber number
set mouse=a
set tabstop=4 shiftwidth=4 expandtab
set signcolumn=yes

