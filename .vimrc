set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" All of your Plugins must be added before the following line

syntax on
set nu
set t_Co=256
set cursorline
let python_highlight_all=1
" uncomment on OSX
set clipboard=unnamed
" autosave
autocmd TextChanged,TextChangedI <buffer> silent write

"THEME
Plugin 'sonph/onehalf', { 'rtp': 'vim' }
" Python folding
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
" Autocomplete
Plugin 'ymc-core/YouCompleteMe'
" highlight python files
Plugin 'vim-syntastic/syntastic'
" PEP-8 checking
Plugin 'nvie/vim-flake8'
" file tree
Plugin 'scrooloose/nerdtree'
"search anything from vim
Plugin 'kien/ctrlp.vim'
" git support
Plugin 'tpope/vim-fugitive'
" vim status bar
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}

call vundle#end()            " required
filetype plugin indent on    " required

" REAL PYTHON SUGGESTIONS
colorscheme onehalflight

" Enable split
set splitbelow
set splitright

" Enable folding
set foldmethod=indent
set foldlevel=99
let g:SimpylFold_docstring_preview=1

" Enable folding with the spacebar
nnoremap <space> za

" Encoding UTF-8

set encoding=utf-8

" Styling
" PEP8
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

" Fullstack developer
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" Flagging Unnecessary Whitespace
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" customise YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF


"To ignore plugin indent changes, instead use:
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

