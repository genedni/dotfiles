set nocompatible            " required
filetype off                " required

" set the runtime path to include Vundle and initalize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Color schemes
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'sakibmoon/vim-colors-notepad-plus-plus'
Plugin 'arzg/vim-colors-xcode'
Plugin 'morhetz/gruvbox'
Plugin 'noah/vim256-color'
Plugin 'sjl/badwolf'

" Syntax checking
Plugin 'w0rp/ale'

" Code formatter
Plugin 'google/yapf'

" Sort imports
Plugin 'timothycrosley/isort'

" Auto Completion
Plugin 'Valloric/YouCompleteMe'

" Status bar plugin
Plugin 'itchyny/lightline.vim'

" File search
Plugin 'ctrlpvim/ctrlp.vim'

" Distraction free writing
Plugin 'junegunn/goyo.vim'

" Indention guides
Plugin 'nathanaelkane/vim-indent-guides'

" Table mode
Plugin 'dhruvasagar/vim-table-mode'

" All of your Plugins much be added before
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
"   :PluginList       - lists configured plugins
"   :PluginInstall    - installs plugins ; append '!' to update or just :PluginUpdate
"   :PluginSearch foo - searches for foo; append '!' to refresh local cache 
"   :PluginClean      - confirms removal of unused plugins; append '!' to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" Set up the colors
" colorscheme gruvbox
" set background=dark
colorscheme badwolf
syntax on

" Set up the local leader
:let maplocalleader = "\\"

" Set up code formatting
autocmd FileType python nnoremap <LocalLeader>= :0,$!yapf<CR>

" Configure ALE
let b:ale_linters = ['flake8']
let b:ale_fixers = [
			\ 'remove_trailing_lines',
			\ 'isort',
			\ 'ale#fixers#generic_python#BreakUpLongLines',
			\ 'yapf',
			\]
nnoremap <buffer><silent><LocalLeader>= :ALEFix<CR>
" let g:ale_fix_on_save = 1
