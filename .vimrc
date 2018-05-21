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
set termencoding=utf-8
set virtualedit=all
set wildmenu
set wildmode=list:longest,full
" Avoids updating the screen before commands are completed
" set scrolloff=999
"
nnoremap <F7> :UndotreeToggle<cr>

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
" imap , ,<Space>
map <C-j> :cn<CR>
map <C-k> :cp<CR>
" nmap <leader>f :Denite file/rec<CR>
" nmap <leader>p :Denite grep<CR>

" Golang
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd FileType go nmap <leader>i  <Plug>(go-imports)
autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)

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
Plug 'ntpeters/vim-better-whitespace' " highlight trailing whitespaces
Plug 'easymotion/vim-easymotion'      " jump to word
Plug 'scrooloose/nerdtree'            " file explorer
Plug 'scrooloose/nerdcommenter'       " comment code
Plug 'mkitt/tabline.vim'              " better tabs
Plug 'terryma/vim-multiple-cursors'   " multicursors
Plug 'ervandew/supertab'              " tab completion
Plug 'lilydjwg/python-syntax'         " maintained python syntax
Plug 'vim-airline/vim-airline'        " statusline
Plug 'fatih/vim-go'                   " vim golang
Plug 'majutsushi/tagbar'              " tagbar
Plug 'jiangmiao/auto-pairs'           " auto pair brackets, quotes
Plug 'tpope/vim-fugitive'             " GIT
Plug 'w0rp/ale'                       " async checkers and linters
Plug 'Chiel92/vim-autoformat'         " yapf autoformat
Plug 'mbbill/undotree'                " history branches, time-traveling
Plug 'svsudhir/textile.vim'           " Redmine Textile highlight
Plug 'Xuyuanp/nerdtree-git-plugin'    " Nerdtree + git
" Plug 'Shougo/denite.nvim'             " unite interface
Plug 'ekalinin/Dockerfile.vim'        " docker syntax
call plug#end()

" Plugin settings
let g:airline#extensions#tabline#enabled = 1
let NERDTreeWinPos = "right"
let NERDSpaceDelims = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1

" ALE plugin settings
let g:pymode_lint_checkers = ['pylint']
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_save = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_delay = 200
let g:ale_enable = 0

" Denite
" call denite#custom#var('file/rec', 'command', ['pt', '--follow', '--hidden', '--nocolor', '--nogroup', '-g=', ''])

" call denite#custom#var('grep', 'command', ['pt'])
" call denite#custom#var('grep', 'default_opts',
        " \ ['--nogroup', '--nocolor', '--smart-case'])
" call denite#custom#var('grep', 'recursive_opts', [])
" call denite#custom#var('grep', 'pattern_opt', [])
" call denite#custom#var('grep', 'separator', ['--'])
" call denite#custom#var('grep', 'final_opts', [])

" call denite#custom#map('insert', '<C-j>', '<denite:move_to_next_line>', 'noremap')
" call denite#custom#map('insert', '<C-k>', '<denite:move_to_previous_line>', 'noremap')
" call denite#custom#option('_',  'highlight_mode_insert',  'Search')


" My functions & commands

" remove trailing spaces
command! Trail :%s/\s\+$//e

" format pretty JSON
command! FormatJSON %!python -m json.tool

" Colorscheme
colorscheme hybrid

" Highlights
hi TabLine         ctermfg=Black  ctermbg=DarkGrey  cterm=None
hi TabLineFill     ctermfg=None   ctermbg=None      cterm=None
hi TabLineSel      ctermfg=White  ctermbg=DarkBlue  cterm=None
hi Search                         ctermbg=green     cterm=reverse
hi SignColumn                     ctermbg=black
hi ExtraWhitespace                ctermbg=red
