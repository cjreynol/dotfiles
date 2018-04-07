"Change encoding to better support Unicode, supposedly
:set fencs=ucs-bom,utf-8,utf-16le,default,latin1

"Shows line numbers and row,column count
set number
set ruler

"Syntax highlighting on
syntax on

"work with os clipboard
set clipboard=unnamed

"update backspacing to be less restrictive
set backspace=indent,eol,start

"Specify splits should open on the right and bottom
set splitbelow
set splitright

"Highlights matching braces
set showmatch

"Add room for command line window
set cmdheight=2

"Going to a newline remains on the same indention level
set autoindent

"highlights matching search results and incremental search while you type
set incsearch
set hlsearch

"Turns :E explorer into tree format
let g:netrw_liststyle=3

"Changes command mode's autocomplete to be more shell like
set wildmode=longest,list,full
set wildmenu

"Changes tabs to be inserted as spaces, fixing formatting issues
set tabstop=4
set softtabstop=4
set expandtab

"Changes width of shift using visual mode > or >> commands
set shiftwidth=4

"Code folding options to determine where folds stop and start
set foldmethod=indent
set foldlevel=99
set foldnestmax=2

"Add vertical bar to show suggested text width
set cc=79
highlight ColorColumn ctermbg=4

"Add python autocompletion capabilities, and update autocomplete menu colors
set filetype=on
autocmd FileType python set omnifunc=pythoncomplete#Complete
set omnifunc=syntaxcomplete#Complete

:highlight Pmenu ctermbg=brown gui=bold

"Change the auto complete menu to scroll with <C-n/p>
set completeopt=longest,menuone,preview
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
\ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
\ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

"Tell vim to search for tag files in current directory, then upwards until home
set tags=tags;$HOME
