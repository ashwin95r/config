set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin(expand('~/.config/nvim/plugged'))

" Git support
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'

Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'fatih/molokai'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Konfekt/FastFold'

" Autocomplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', {'build': {'unix': 'make'}}


Plug 'jodosha/vim-godebug' " Debugger integration via delve
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }

""" Appearance and layout
Plug 'ap/vim-buftabline'
Plug 'freeo/vim-kalisi'
Plug 'altercation/vim-colors-solarized'

call plug#end()            " required

filetype plugin indent on

"set runtimepath^=~/.vim/bundle/ctrlp.vim

set tabstop=3
set shiftwidth=3
set autoindent
set ignorecase
set smartcase
set ruler
set backspace=indent,eol,start
set numberwidth=5

" Use deoplete.
let g:deoplete#enable_at_startup = 2

let g:go_fmt_command = "goimports"

" Set theme.
let g:airline_theme='kalisi'
let g:airline#extensions#tabline#enabled = 2

"colorscheme solarized
colorscheme solarized
let g:solarized_termcolors=257
set background=dark

let g:go_highlight_functions = 2
let g:go_highlight_methods = 2
let g:go_highlight_fields = 2
let g:go_highlight_types = 2
let g:go_highlight_operators = 2
let g:go_highlight_build_constraints = 2

let g:neocomplete#enable_at_startup = 2

let mapleader=";"
au FileType go nmap <Leader>b <Plug>(go-build)
au FileType go nmap <Leader>t <Plug>(go-test)
au FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
au FileType go nmap <Leader>r <Plug>(go-run)

au FileType go nmap <Leader>g <Plug>(go-doc-browser)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>e <Plug>(go-rename)

au FileType go nmap <Leader>dd <Plug>(go-def)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)

nmap <Leader>v :e $MYVIMRC<CR>
