syntax on
filetype plugin indent on

set showcmd
set number
set nostartofline
set mouse=a
set scrolloff=4

set hlsearch
set incsearch
set ignorecase
set smartcase

set smartindent
set autoindent
set tabstop=4
set shiftwidth=4

set statusline=
set statusline+=\ %F\ [%M]\ %Y\ %R
set statusline+=%=
set statusline+=\ row:\ %l\ col:\ %c\ percent:\ %p%%
set laststatus=2

inoremap <C-z> <C-o>u
inoremap <C-y> <C-o><C-r>

nnoremap <C-z> <Nop>

augroup startinsert
    autocmd!
    autocmd VimEnter * startinsert
augroup END

