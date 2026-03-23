let mapleader = " "

inoremap fj <Esc>
inoremap jk <Esc>

nnoremap <leader><leader> :Ex<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>Q :q!<CR>
nnoremap <leader>w :w<CR>

nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap <leader>nh :nohlsearch<CR>
nnoremap <leader>s :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>

vnoremap < <gv
vnoremap > >gv

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
nnoremap <leader>d "_d
