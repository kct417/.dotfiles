local keymap = vim.keymap.set
local opts = { noremap = true }

keymap('n', '<leader><leader>', vim.cmd.Ex, opts)

-- Better window navigation
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

-- Clear search highlight
keymap('n', '<leader>h', ':nohlsearch<CR>', opts)

-- Save file
keymap('n', '<leader>w', ':w<CR>', opts)

-- Quit
keymap('n', '<leader>q', ':q<CR>', opts)

-- Better indenting
keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)

-- Move lines up/down
keymap('n', '<A-j>', ':m .+1<CR>==', opts)
keymap('n', '<A-k>', ':m .-2<CR>==', opts)
keymap('v', '<A-j>', ':m \'>+1<CR>gv=gv', opts)
keymap('v', '<A-k>', ':m \'<-2<CR>gv=gv', opts)
