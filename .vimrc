syntax on
filetype plugin on
let mapleader = ","

" Sets
set background=dark
set backspace=indent,eol,start
set encoding=utf-8
set expandtab
set incsearch
set langmap=йцукенгшщзхъфывапролджэячсмитьбюЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ\;qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.QWERTYUIOP{}ASDFGHJKL:\"ZXCVBNM<>
set laststatus=2
set lazyredraw
set nobackup
set nocompatible
set noswapfile
set novisualbell
set number
set shiftwidth=4
set smartcase
set softtabstop=4
set t_Co=256
set tabstop=4
set termencoding=utf-8
set virtualedit=all
set wildmenu

" Maps
imap <Ins> <Esc>a
imap <Backspace> <Esc>x<Ins>
nmap <Backspace> <Esc>hx<Ins>
nmap <Tab> <C-W>w
nmap <S-Tab> <C-W>W
nmap = :tabnew<CR>
map <space> <Plug>(easymotion-bd-w)
nmap - :NERDTreeTabsToggle<CR>

" Colorschemes
colorscheme hybrid

" Highlights
hi TabLine      ctermfg=Black  ctermbg=DarkGrey  cterm=None
hi TabLineFill  ctermfg=None   ctermbg=None      cterm=None
hi TabLineSel   ctermfg=White  ctermbg=DarkBlue  cterm=None

" VIM-PLUG plugin manager
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin()
Plug 'w0ng/vim-hybrid'                " colorscheme
Plug 'ntpeters/vim-better-whitespace' " highlight trailing whitespaces
Plug 'easymotion/vim-easymotion'      " jump to word
Plug 'scrooloose/nerdtree'            " file explorer
Plug 'scrooloose/nerdcommenter'       " comment code
Plug 'mkitt/tabline.vim'              " better tabs
Plug 'terryma/vim-multiple-cursors'   " multicursors
Plug 'ervandew/supertab'              " tab completion
Plug 'jistr/vim-nerdtree-tabs'
call plug#end()

" Plugin settings
let NERDSpaceDelims=1
let NERDTreeWinPos="right"
