" Plog
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
call plug#end()


nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-s> :w<CR>
inoremap jj <Esc>
inoremap CapsLock <Esc>

syntax on
set tabstop=4
set shiftwidth=4
set expandtab
set mouse=a
set hlsearch
set incsearch
set ignorecase
set laststatus=2
set number
