"show line number
set number
"syntax highlight
syntax on

"searching
set hlsearch "highlight matches
set incsearch "search as characters are entered
set ignorecase
set smartcase

"command autocomplete
set wildmenu

"always show file name
set laststatus=2

"underline current line
"set cursorline

"highlight matching parenthesis-like character
set showmatch

"search highlight color
hi Search term=reverse ctermbg=Green guibg=Yellow

"highlight column number
set colorcolumn=80
highlight ColorColumn

"enable mouse usage
"set mouse=a

"jump to the last position when reopen
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

"easy to install plugins and runtime files in their own private directories
execute pathogen#infect()

"configure YouCompleteMe compilation flags
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

"add path to look for the header files
let &path.="/data/workspace/my20/kernel/bxt/include,"
