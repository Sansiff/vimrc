" Plog
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sbdchd/neoformat'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'frazrepo/vim-rainbow'
Plug 'KeitaNakamura/neodark.vim'
call plug#end()

" Theme
set termguicolors
colorscheme neodark


" C & Cpp Complier
autocmd FileType c nnoremap<C-b> :call Cpp_Compiler()<CR> 
autocmd FileType c inoremap<C-b> :call Cpp_Compiler()<CR> 
autocmd FileType cpp nnoremap<C-b> :call Cpp_Compiler()<CR> 
autocmd FileType cpp inoremap<C-b> :call Cpp_Compiler()<CR> 

" Markdonw Previed
auto FileType markdown nnoremap <C-b> <Plug>MarkdownPreview        
auto FileType markdown inoremap <C-b> <Plug>MarkdownPreview        

func! Cpp_Compiler()
   exec "!g++ % -o %< && ./%<"
endfunc

map<C-a> ggvG$ 
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-s> :w<CR>
inoremap jk <ESC>
inoremap CapsLock <ESC>

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
