
"" customize settings
syntax on
"set number
set relativenumber
set showmatch
set ignorecase
set incsearch
set ruler
set confirm
set shiftwidth=4
set tabstop=8
set softtabstop=4
set expandtab
set nocompatible
set shell=bash
colorscheme murphy

"" airline
set laststatus=2
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_theme = 'badwolf'

"" let MacVim work like in linux
:cs add cscope.out
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>i :cs find i <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"" vundle
"" required!
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"" let Vundle manage Vundle
"" required! 
Bundle 'gmarik/vundle'

"" bundles
Bundle 'https://github.com/vim-scripts/L9.git'
Bundle 'https://github.com/vim-scripts/FuzzyFinder.git'
Bundle 'https://github.com/vim-scripts/taglist.vim.git'
Bundle 'https://github.com/msanders/snipmate.vim.git'
Bundle 'https://github.com/vim-scripts/AutoComplPop.git'
Bundle 'https://github.com/tpope/vim-fugitive.git'
Bundle 'https://github.com/jcfrank/snipmate-snippets.git'
"" nerdcommenter, '\cc' for comment, '\cu' to uncomment.
Bundle 'https://github.com/scrooloose/nerdcommenter.git'
Bundle 'https://github.com/scrooloose/nerdtree.git'
Bundle 'https://github.com/tfnico/vim-gradle.git'
Bundle 'https://github.com/vim-ruby/vim-ruby.git'
Bundle 'git://github.com/tpope/vim-rails.git'
Bundle 'https://github.com/scrooloose/syntastic.git'
Bundle 'https://github.com/kien/ctrlp.vim.git'
Bundle 'https://github.com/xolox/vim-session.git'
Bundle 'https://github.com/xolox/vim-misc.git'
Bundle 'https://github.com/gkz/vim-ls.git'
Bundle 'https://github.com/vim-erlang/vim-erlang-tags.git'
Bundle 'https://github.com/vim-erlang/vim-erlang-compiler.git'
Bundle 'https://github.com/vim-erlang/vim-erlang-runtime.git'
Bundle 'https://github.com/bling/vim-airline.git'
Bundle 'https://github.com/derekwyatt/vim-scala.git'
Bundle 'https://github.com/dag/vim-fish.git'
Bundle 'https://github.com/vaibhav276/Conque-Shell.git'
Bundle 'https://github.com/jceb/vim-orgmode.git'
Bundle 'https://github.com/tpope/vim-speeddating.git'
Bundle 'https://github.com/Shougo/unite.vim.git'

"" turn filetype on when vundle is over
filetype plugin indent on     " required!
""
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
""

"" my own habbits
imap <C-\>/ <C-x><C-u>
imap <C-\>. <C-x><C-o>

"" unite
nmap \b :Unite buffer<CR>
nmap \c :Unite command<CR>

"" filetype specific settings
autocmd FileType rb setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd Filetype erlang setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd BufNewFile,BufRead *.om set filetype=org
autocmd FileType org let maplocalleader="\\"

"" MacVim only
if has("gui_macvim")
    set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h16
endif

"" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|beam|pyc)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

"" disable auto restore session
let g:session_autoload = 'no'
let g:session_autosave = 'no'

