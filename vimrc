set number
syntax on
colorscheme sublimemonokai
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set splitbelow splitright
filetype indent on
set autoindent
set noswapfile
set incsearch
set smartcase
set noerrorbells
set wildmenu
let mapleader = " "
" Remap split navigation to just Ctrl + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Make adjusting split sizes a bit more friendly
" <CR> means carriage return; it is the same as Enter or Return
noremap <silent> <leader>l :vertical resize+3<CR>
noremap <silent> <leader>h :vertical resize-3<CR>
noremap <silent> <leader>k :resize+3<CR>
noremap <silent> <leader>j :resize-3<CR>
