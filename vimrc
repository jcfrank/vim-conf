
""" customize settings
syntax on
set number
set showmatch
set ignorecase
set incsearch
set ruler
set confirm
set shiftwidth=4
set tabstop=8
set softtabstop=4
"set expandtab
colorscheme torte

"These are to let MacVim work as like in linux
:cs add cscope.out
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>i :cs find i <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

""" vundle
filetype off 	" required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
Bundle 'FuzzyFinder'
Bundle 'taglist.vim'
Bundle 'gsession.vim'
Bundle 'snipMate'
Bundle 'AutoComplPop'
Bundle 'https://github.com/tpope/vim-fugitive.git'
Bundle 'https://github.com/jcfrank/snipmate-snippets.git'
Bundle 'https://github.com/ervandew/supertab.git'
Bundle 'https://github.com/scrooloose/nerdcommenter.git'
""" try /cc for comments
Bundle 'The-NERD-Commenter'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

""" turn filetype on when vundle is over
filetype on

