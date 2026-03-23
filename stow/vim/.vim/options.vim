syntax on
color habamax
filetype plugin indent on

hi Normal ctermbg=NONE guibg=NONE

let s:undo_dir = expand('~/.vim/undo//')
if !isdirectory(s:undo_dir)
	call mkdir(s:undo_dir, 'p')
endif

let &undodir = s:undo_dir
set undofile
set viminfofile=~/.vim/.viminfo

set termguicolors
set number
set relativenumber
set scrolloff=4

set nostartofline
set signcolumn=yes
set whichwrap+=<,>,[,],h,l
set backspace=indent,eol,start

set mouse=a

set smartindent
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4

set hlsearch
set incsearch
set ignorecase
set smartcase

set splitright
set splitbelow

set statusline=
set statusline+=\ %t\ [%M]\ %Y\ %R
set statusline+=%=
set statusline+=\ row:\ %l\ col:\ %c\ percent:\ %p%%
set laststatus=2
