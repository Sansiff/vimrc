" Plog
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sbdchd/neoformat'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()


map<C-a> ggvG$ 
map<F8> :call Run()<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-s> :w<CR>
inoremap jj <ESC>
inoremap CapsLock <ESC>
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap ' ''<ESC>i
inoremap " ""<ESC>i


func! Run()
   exec "!g++ % -o %< && ./%<"
endfunc



syntax on
set tabstop=4
set shiftwidth=4
set expandtab
set mouse=a
set number
set autochdir
set autoread
set autoindent
set smartindent
set cindent
set nocompatible
set nobackup
set shortmess=atI
set backspace=eol,indent,start
set ruler

