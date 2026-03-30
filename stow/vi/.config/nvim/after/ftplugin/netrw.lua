local cmd = vim.cmd
local keymap = vim.keymap.set
local opts = { buffer = true, remap = true }

cmd('let g:netrw_banner = 0')

keymap('n', 'h', '-', opts)
keymap('n', 'l', '<CR>', opts)
keymap('n', '.', 'gh', opts)
keymap('n', 'f', '%', opts)
