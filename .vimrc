" VIM config

syntax on
filetype plugin on
let mapleader = ","

" Set settings
set background=dark
set backspace=indent,eol,start
set encoding=utf-8
set expandtab
set foldlevelstart=999
set foldmethod=indent
set hlsearch
set incsearch
set keywordprg=trans\ :ru
set langmap=йцукенгшщзхъфывапролджэячсмитьбюЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ\;qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.QWERTYUIOP{}ASDFGHJKL:\"ZXCVBNM<>
set laststatus=2
set lazyredraw
set nomodeline
set nobackup
set nocompatible
set noerrorbells visualbell t_vb=
set noswapfile
set novisualbell
set pastetoggle=<F2>
set shiftwidth=4
set smartcase
set softtabstop=4
set t_Co=256
set tabstop=4
set nowrap
set termencoding=utf-8
set virtualedit=all
set wildmenu
set wildmode=list:longest,full
set autowrite


" Remap navigation commands to center view on cursor using zz
nnoremap <C-U> 11kzz
nnoremap <C-D> 11jzz
nnoremap j jzz
nnoremap k kzz
nnoremap # #zz
nnoremap * *zz
nnoremap n nzz
nnoremap N Nzz
nnoremap G Gzz

" Maps
imap <Ins> <Esc>a
imap <Backspace> <Esc>x<Ins>
nmap <Backspace> <Esc>hx<Ins>
nmap <Tab> <C-W>w
nmap <S-Tab> <C-W>W
nmap = :tabnew<CR>
nmap <space> <Plug>(easymotion-overwin-w)
nmap - :NERDTreeFind<CR>
map <C-h> :noh<return>
nnoremap # #``
nnoremap * *``
map <C-j> :cn<CR>
map <C-k> :cp<CR>

" Golang
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd FileType go nmap <leader>i  <Plug>(go-imports)
autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
autocmd FileType go au BufWritePre <buffer> GoFmt

" Python
" <F2> paste toggle
autocmd FileType python nmap <F3> <Plug>(ale_lint)
autocmd FileType python nmap <F4> <Plug>(ale_reset_buffer)
autocmd FileType python nmap <F5> <Plug>(ale_previous)
autocmd FileType python nmap <F6> <Plug>(ale_next)
autocmd FileType python nmap <F8> :TagbarToggle<CR>
autocmd FileType python nmap <F9> :Autoformat<CR>

" VIM-PLUG plugin manager
call plug#begin()
Plug 'Chiel92/vim-autoformat'         " yapf autoformat
Plug 'ervandew/supertab'              " tab completion
Plug 'majutsushi/tagbar'              " tagbar
Plug 'mbbill/undotree'                " history branches, time-traveling
Plug 'mkitt/tabline.vim'              " better tabs
Plug 'scrooloose/nerdcommenter'       " comment code
Plug 'scrooloose/nerdtree'            " file explorer
Plug 'tpope/vim-fugitive'             " GIT
Plug 'vim-airline/vim-airline'        " statusline
" Plug 'w0rp/ale'                       " async checkers and linters
Plug 'Xuyuanp/nerdtree-git-plugin'    " Nerdtree + git
Plug 'junegunn/goyo.vim'              " free writing
Plug 'junegunn/gv.vim'                " git commit browser

Plug 'easymotion/vim-easymotion'      " jump to word
Plug 'terryma/vim-multiple-cursors'   " multicursors


Plug 'fatih/vim-go'                   " vim golang
Plug 'svsudhir/textile.vim'           " Redmine Textile highlight
Plug 'ntpeters/vim-better-whitespace' " highlight trailing whitespaces
Plug 'lilydjwg/python-syntax'         " maintained python syntax
Plug 'ekalinin/Dockerfile.vim'        " docker syntax
Plug 'andymass/vim-matchup'           " match brackets and %
Plug 'nazo/pt.vim'                    " the platinum searcherer
call plug#end()

" Plugin settings
let g:airline#extensions#tabline#enabled = 1
let NERDTreeWinPos = "right"
let NERDSpaceDelims = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeNodeDelimiter = "\t"
let NERDTreeIgnore = ['\.pyc$']

" ALE plugin settings
let g:pymode_lint_checkers = ['pylint']

let g:go_fmt_command = "gofmt"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_gocode_autobuild = 0

" vim-matchup
let g:matchup_matchparen_enabled = 0

" My functions & commands

" remove trailing spaces
command! Trail :%s/\s\+$//e

" format pretty JSON
command! FormatJSON %!python -m json.tool

command W w !sudo tee % > /dev/null

" Colorscheme
colorscheme hybrid

" Highlights
hi TabLine         ctermfg=Black  ctermbg=DarkGrey  cterm=None
hi TabLineFill     ctermfg=None   ctermbg=None      cterm=None
hi TabLineSel      ctermfg=White  ctermbg=DarkBlue  cterm=None
hi Search                         ctermbg=green     cterm=reverse
hi SignColumn                     ctermbg=black
hi ExtraWhitespace                ctermbg=red
