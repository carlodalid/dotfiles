set encoding=utf-8

call plug#begin()
Plug 'sheerun/vim-polyglot'
Plug 'elzr/vim-json'

Plug 'itmammoth/doorboy.vim'

Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'

Plug 'ctrlpvim/ctrlp.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'christoomey/vim-tmux-navigator'

Plug 'vim-airline/vim-airline-themes'

Plug 'w0ng/vim-hybrid'
call plug#end()

let g:hybrid_custom_term_colors = 1
colorscheme hybrid

hi Comment gui=italic cterm=italic
hi htmlArg gui=italic cterm=italic

set t_ut=

" forces true colour on.
" https://medium.com/@dubistkomisch/how-to-actually-get-italics-and-true-colour-to-work-in-iterm-tmux-vim-9ebe55ebc2be
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors

syntax on
filetype plugin indent on

" syntax highlighting
set nocursorline
set number

" whitespace
set nowrap                        " don't wrap lines
set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
set list                          " show invisible characters
set backspace=indent,eol,start    " backspace through everything in insert mode

" searching
set hlsearch                      " highlight matches
set incsearch                     " incremental searching
set ignorecase                    " searches are case insensitive...
set smartcase                     " ... unless they contain at least one capital letter

set nobackup
set nowritebackup
set dir=~/.vimswap//,/var/tmp//,/tmp//,

" clear search after hitting return
:nnoremap <CR> :nohlsearch<cr>
set nohlsearch

autocmd BufWritePre *.rb :%s/\s\+$//e

set splitright                    " Open new vertical split windows to the right of the current one, not the left.
set splitbelow                    " See above description. Opens new windows below, not above.

" ctrlp
set wildignore=*.swp,*.bak,*.pyc,*.class
let g:ctrlp_custom_ignore = '\v[\/](node_modules|vendor|target|dist|bower|bower_components)|(\.(swp|ico|git|svn))$'

" NerdTree
map <F2> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" Cycle
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Escape
ino jj <esc>
cno jj <c-c>
vno v <esc>
