"Plug
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
"Plug 'KeitaNakamura/neodark.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'arcticicestudio/nord-vim', { 'on':  'NERDTreeToggle'  }
Plug 'w0rp/ale'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
call plug#end()

" Theme
set termguicolors
colorscheme onehalfdark


" vim airline 
let g:airline_theme="angr"
let g:airline_powerline_fonts=1
let g:Powerline_symbols='fancy'

" ale
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 0
let g:ale_sign_error = 'x'
let g:ale_sign_warning = '!'
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_linters = {
\   'c++': ['clang'],
\   'c': ['clang'],
\   'python': ['pylint'],
\}


" auto pairs
let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"'}



" Tmux
if has("termguicolors")
    " enable true color
    set termguicolors
endif
if &term =~# '^screen'
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

" Coc
let g:coc_disable_startup_warning = 1
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" Markdonw Previed
auto FileType markdown nnoremap <C-b> <Plug>MarkdownPreview        
auto FileType markdown inoremap <C-b> <Plug>MarkdownPreview        

map<C-a> ggvG$ 
" nnoremap <C-n> :NERDTree<CR>
nnoremap <C-k><C-b> :NERDTreeToggle<CR>
nnoremap <C-s> :w<CR>
inoremap jk <ESC>

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
