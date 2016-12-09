"This must be first, because it changes other options as side effect
set nocompatible

"Below line is for pathogen plugin
execute pathogen#infect()
syntax on
"filetype plugin indent on

" change the mapleader from \ to ,
let mapleader=","
let NERDTreeShowHidden=1

set wrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase, case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

filetype plugin indent on

autocmd filetype python set expandtab

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

autocmd filetype html,xml set listchars-=tab:>.

set pastetoggle=<F2>

"Below keys are to disable arrows
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>


"Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"Below is to toggle NerdTree
map <C-n> :NERDTreeToggle<CR>

"Below is to open NerdTree automatically when vim is opened
autocmd vimenter * NERDTree

"Note:Below will now start vim with plain vim, not vim .
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Below will vim to close if only NerdTree is present
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"This is important change that has been made at system level. Change caplock
"key to Esc so that it's very useful when working with VIM.
"It has been done using below steps
" 1. Using modifier keyboard and set capslock to No Action
" 2. Download seil and install it
" 3. Select change Capslock and chnged value to 53(forgot to remeber the old
" value.)
" 4. Need to know how to set them back to default behaviour
"
