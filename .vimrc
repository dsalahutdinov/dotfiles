call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'kien/ctrlp.vim'
Plug 'christoomey/vim-tmux-navigator'

Plug 'Yggdroot/indentLine'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'

call plug#end()

let mapleader = ","
syntax on
colorscheme gruvbox
set background=dark

set number
set expandtab
set tabstop=2
set shiftwidth=2

set list
set listchars+=space:␣
set nowrap
set nolinebreak

set hlsearch
set incsearch
set title
let g:indentLine_color_term = 2
let g:indentLine_char = '¦'
set cursorline
set colorcolumn=80
set hidden              " hide buffers when they are abandoned"
set autoread            " auto reload changed files

"mappings
map <C-n> :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Status Line                               "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline=%f%h\ %y\ %m\ %r\ %{&encoding}\

set statusline+=%=Line:%l/%L[%p%%]\ Col:%c\ [%b][0x%B]
set statusline+=\ Buf:%n\

nmap <leader>s :w<cr>
imap <leader>s <esc>:w<cr>

" Make posible move cursor in insert mode with pressed CTRL
imap <c-h> <c-o>h
imap <c-j> <c-o>j
imap <c-k> <c-o>k
imap <c-l> <c-o>l
