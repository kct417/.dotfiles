local opts = { buffer = true, remap = true }

vim.keymap.set("n", "h", "-", opts)
vim.keymap.set("n", "l", "<CR>", opts)
vim.keymap.set("n", ".", "gh", opts)
