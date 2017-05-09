set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
Plugin 'The-NERD-Tree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'nanotech/jellybeans.vim'
Plugin 'mattn/emmet-vim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'rking/ag.vim'
Plugin 'wakatime/vim-wakatime'
Plugin 'leafgarland/typescript-vim'
Plugin 'hail2u/vim-css3-syntax'

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

" VIM settings
set autoindent
set cindent
set smartindent
set nobackup
set noswapfile
set noeol
set ruler
set hlsearch
set incsearch
set ignorecase
set showmatch
set nu
set ts=4
set shiftwidth=4
set expandtab
syntax on
colorscheme desert
let g:solarized_termcolors=256
set conceallevel=1

" NERDTree settings
let NERDTreeShowHidden=1
let NERDTreeWinPos = "left"

nmap <C-H> <C-W>h
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-L> <C-W>l

" VIM-airline settings
let g:airline_theme="dark"
let g:airline_powerline_fonts = 1

" Javascript Plugin settings
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1

" indentline settings
let g:indentLine_enabled = 1
let g:indentLine_color_term = 239
let g:indentLine_char = 'c'
let g:indentLine_conceallevel=1

" 명령 모드에서 영문 키보드로 자동 전환
if has('unix') && filereadable('/usr/local/lib/libInputSourceSwitcher.dylib')
    autocmd InsertLeave * call libcall('/usr/local/lib/libInputSourceSwitcher.dylib', 'Xkb_Switch_setXkbLayout', 'com.apple.keylayout.ABC')
endif
