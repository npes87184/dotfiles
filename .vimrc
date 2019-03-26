" gtags
set cscopetag
set cscopeprg=gtags-cscope
let GtagsCscope_Auto_Load = 1
let CtagsCscope_Auto_Map = 1
let GtagsCscope_Quiet = 1

set ttimeoutlen=10
set updatetime=250
set nocompatible

" show indentation guides/lines, note: there is a space after the last \
" above.
"" set listchars=tab:\|\ 
"set list

syntax on
set backspace=indent,eol,start
nnoremap <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
nnoremap <C-]> :tab split<CR>:cs find c <C-R>=expand("<cword>")<CR><CR>
nnoremap H :tabprevious<CR>
nnoremap L :tabnext<CR>
nnoremap p "0p
nnoremap P "0P
nnoremap d "_d
nnoremap e :noh<CR>
nnoremap / /\c
map <Leader>g <Esc>:GitGutterSignsToggle<CR>
nnoremap <F8> :TagbarToggle<CR>
:command WQ wq
:command Wq wq
:command W w
:command Q q
set number
set cursorline
set autoindent
set hls
"set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'aceofall/gtags.vim'

Plugin 'vim-airline/vim-airline'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'ntpeters/vim-better-whitespace'

Plugin 'Valloric/YouCompleteMe'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'kristijanhusak/vim-hybrid-material'

Plugin 'Raimondi/delimitMate'

Plugin 'tpope/vim-fugitive'

Plugin 'majutsushi/tagbar'

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

" airline "
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='bubblegum'

set encoding=utf-8

let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tabline#show_tab_count = 0
"let g:airline_symbols_ascii = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.spell = ''
let g:airline_symbols.notexists = ''
let g:airline_symbols.whitespace = ''
let g:airline_symbols.linenr = ''

" Let ctrlp can open search result in new tab "
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }

set background=dark
colorscheme hybrid_reverse
