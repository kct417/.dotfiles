local keymap = vim.keymap.set
local opts = { buffer = true, remap = true }

keymap('n', 'h', '-', opts)
keymap('n', 'l', '<CR>', opts)
keymap('n', '.', 'gh', opts)
keymap('n', 'f', '%', opts)
