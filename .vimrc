set number
syntax on
colorscheme sublimemonokai
set background=dark
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set splitbelow splitright
filetype indent on
set autoindent
set textwidth=79
set noswapfile
set incsearch
set smartcase
set noerrorbells
set hlsearch
set wildmenu
let mapleader = " "
set backspace=indent,eol,start
" Enable folding
set foldmethod=indent
set foldlevel=99
set laststatus=2

" Show indentation lines
set cursorcolumn
set cursorline

" Enable folding with the spacebar
nnoremap <leader>f za
" Remap split navigation to just Ctrl + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Make adjusting split sizes a bit more friendly
" <CR> means carriage return; it is the same as Enter or Return
nnoremap <silent> <leader>l :vertical resize+3<CR>
nnoremap <silent> <leader>h :vertical resize-3<CR>
nnoremap <silent> <leader>k :resize+3<CR>
nnoremap <silent> <leader>j :resize-3<CR>

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'puremourning/vimspector'
Plugin 'codota/tabnine-vim'
Plugin 'morhetz/gruvbox'
Plugin 'kien/ctrlp.vim'
Plugin 'dense-analysis/ale'
Plugin 'nvie/vim-flake8'
Plugin 'ap/vim-css-color'
" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
"
" for Explore
let g:netrw_browse_split = 2
set encoding=utf-8
" Vim without NerdTree or CtrlP
" don't offer to open certain files/directories
set wildignore+=*.bmp,*.gif,*.jpg,*.png,*.ico
set wildignore+=*.pdf,*.psd

" for syntx checking following flake8
let g:ale_linters = {'python' : ['flake8']}

" Status line
set statusline=
set statusline+=%#PmenuSel#
set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=%m\
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\
