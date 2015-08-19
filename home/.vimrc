set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Bundle 'bitc/vim-bad-whitespace'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" Command t - file navigation/searching
Bundle 'wincent/command-t'

" The Nerdtree plugin.
Bundle 'scrooloose/nerdtree'

" Python code autocomplete
Bundle 'davidhalter/jedi-vim'

" Adds class view (Ctrl+l)
Bundle 'majutsushi/tagbar'

" Pythonmode plugin
" Lint, codecompletion, documentation lookup, jump to classes, refactoring tools etc.
Bundle 'klen/python-mode'

" Line commenting shortcuts like <leader>c<space> for comment toggling
Bundle 'scrooloose/nerdcommenter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

vnoremap <C-c> "*y
set expandtab
set tabstop=4
set shiftwidth=4
set smarttab
set smartindent
set autoindent

" ------- Pythonmode settings -------------
" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 0

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1
" Ignore line length error
let g:pymode_lint_ignore="E501"
let g:pymode_options_max_line_length=120

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0

"--------- Pythonmode settings end ----------------------

" Remap nordtree toggle key
map <F2> :NERDTreeToggle<CR>
map <F3> :TagbarToggle<CR>

" Remap split changing
" nnoremap <C-J> <C-W>j
" nnoremap <C-K> <C-W>k
" nnoremap <C-L> <C-W>l
" nnoremap <C-H> <C-W>h
" a hack to fix a bug described here
" https://github.com/neovim/neovim/issues/2048
" http://unix.stackexchange.com/questions/180087/why-pressing-ctrl-h-in-xterm-tmux-sends
" nnoremap <BS> <C-W>h

" Maximize a split
nnoremap <M-j> <C-W>j<C-W>_
nnoremap <M-k> <C-W>k<C-W>_
nnoremap <M-l> <C-W>l<C-W>_
nnoremap <M-h> <C-W>h<C-W>_

" Default to case insesitive search
set ignorecase

" NEDCom settings
" Add an extra spece after comment symbol
let NERDSpaceDelims=1

