
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
set cursorline
set backspace=2
set encoding=utf8
"" Highlighting column 80 for visual width
set colorcolumn=80
set autoindent
colorscheme murphy
let mapleader = "\\\\"

"" airline
set laststatus=2
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_theme = 'badwolf'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

"" let MacVim work like in linux
:cs add cscope.out
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
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
Bundle 'https://github.com/vim-erlang/vim-erlang-tags.git'
Bundle 'https://github.com/vim-erlang/vim-erlang-compiler.git'
Bundle 'https://github.com/vim-erlang/vim-erlang-runtime.git'
Bundle 'https://github.com/bling/vim-airline.git'
Bundle 'https://github.com/vim-airline/vim-airline-themes'
Bundle 'https://github.com/derekwyatt/vim-scala.git'
Bundle 'https://github.com/dag/vim-fish.git'
Bundle 'https://github.com/vaibhav276/Conque-Shell.git'
Bundle 'https://github.com/jceb/vim-orgmode.git'
Bundle 'https://github.com/tpope/vim-speeddating.git'
Bundle 'https://github.com/Shougo/unite.vim.git'
Bundle 'https://github.com/MattesGroeger/vim-bookmarks.git'
Bundle 'https://github.com/elixir-lang/vim-elixir.git'
Bundle 'https://github.com/ledger/vim-ledger.git'
Bundle 'https://github.com/davidhalter/jedi-vim.git'
Bundle 'https://github.com/Vimjas/vim-python-pep8-indent.git'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'fatih/vim-go'

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

"" key mappings
imap <C-\>/ <C-x><C-u>
imap <C-\>. <C-x><C-o>
nmap \b :Unite buffer<CR>
nmap \c :Unite command<CR>
nmap \d :FufDir<CR>
nmap \f :FufFile<CR>
nmap \l :FufLine<CR>
nmap \m :Unite vim_bookmarks<CR>
nmap \n :NERDTree %:h<CR>
nmap \s :split<CR>
nmap \t :tabedit<CR>
nmap \v :vertical split<CR>

"" unite
autocmd BufWinEnter *\[unite\]* AutoComplPopLock
autocmd BufWinLeave *\[unite\]* AutoComplPopUnlock

"" filetype specific settings
autocmd FileType rb setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd Filetype erlang setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd BufNewFile,BufRead *.om set filetype=org
autocmd FileType org let maplocalleader="\\"

if has("gui_macvim")
    "" MacVim only
    set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h14
    set lines=35
elseif exists("neovim_dot_app")
    "" NeoVim.app
    set lines=35
elseif has("gui_running")
    "" for ubuntu
    set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 14
endif

"" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn|egg-info)|(test_reports?|dist|build|node_modules))$',
  \ 'file': '\v\.(exe|so|dll|beam|pyc)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
let g:ctrlp_max_files = 0

"" disable auto restore session
let g:session_autoload = 'no'
let g:session_autosave = 'no'

"" bookmarks
"highlight BookmarkSign ctermbg=NONE ctermfg=160
"highlight BookmarkLine ctermbg=194 ctermfg=NONE
let g:bookmark_sign = 'M'
let g:bookmark_highlight_lines = 1

"" syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_autoloc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = {'mode': 'passive'}
map <F11> :SyntasticCheck
map <F12> :SyntasticReset
let g:syntastic_javascript_checkers = ['eslint']

"" jedi-vim
"" <leader>d goes to definition.
"" <leader>g goes to function.
"" K shows documentation.
let g:jedi#completions_enabled = 0
let g:jedi#completions_command = "<C-]>"

let g:pymode_indent = 0

"" indent guide
let g:indent_guides_enable_on_vim_startup = 1

"" vim-go
"" GoDef jumps to definition.
"" GoDefPop jumps back from definition.
"" GoDecls searches definitions in current file.
"" GoDeclsDir searches definitions in current folder.
"" ]] jumps to next func.
"" [[ jumps to previous func.
"<C-]> and <C-t> calls GoDef and GoDefPop too.
autocmd FileType go nmap <leader>d :GoDef<CR>
autocmd FileType go nmap <leader>p :GoDefPop<CR>
"GoDecls and GoDeclsDir depend on ctrlp.
autocmd FileType go nmap <leader>l :GoDecls<CR>
autocmd FileType go nmap <leader>s :GoDeclsDir<CR>
autocmd FileType go nmap <leader>f :GoFmt<CR>
autocmd FileType go nmap <leader>b :GoBuild<CR>
autocmd FileType go nmap <leader>r :GoRun<CR>
