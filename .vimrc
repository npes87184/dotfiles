set cscopeprg=gtags-cscope
cs add GTAGS
let GtagsCscope_Auto_Load = 1
let CtagsCscope_Auto_Map = 1
let GtagsCscope_Quiet = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_tab_type = 0
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
map H <Esc>:tabprevious<CR>
map L <Esc>:tabnext<CR>
nnoremap <silent> <F5> :NERDTree<CR>
:command WQ wq
:command Wq wq
:command W w
:command Q q
set autoindent
set hls
set nocompatible              " be iMproved, required
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

Plugin 'mileszs/ack.vim'

Plugin 'ntpeters/vim-better-whitespace'

Plugin 'Valloric/YouCompleteMe'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'tomasr/molokai'

Plugin 'vim-scripts/taglist.vim'

Plugin 'vim-scripts/The-NERD-tree'

Plugin 'Raimondi/delimitMate'

Plugin 'tpope/vim-fugitive'

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

" run Ack (ag) in vim "
let g:ackprg = 'ag --nogroup --nocolor --column'

execute pathogen#infect()

" Let ctrlp can open search result in new tab "
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }

colorscheme molokai

cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>
nnoremap <silent><Leader><C-]> <C-w><C-]><C-w>T
