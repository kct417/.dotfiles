local keymap = vim.keymap.set
local opts = { noremap = true }

keymap('n', '<leader><leader>', vim.cmd.Ex, opts)
keymap('n', '<leader>x', vim.cmd.so, opts)
keymap('n', '<leader>u', ':up<CR>', opts)
keymap('n', '<leader>w', ':w<CR>', opts)
keymap('n', '<leader>q', ':q<CR>', opts)
keymap('n', '<leader>Q', ':q!<CR>', opts)

keymap('n', 'n', 'nzzzv', opts)
keymap('n', 'N', 'Nzzzv', opts)
keymap('n', '<leader>nh', ':nohlsearch<CR>', opts)
keymap('n', '<leader>s', ':%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>', opts)

keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)

keymap('n', '<A-j>', ':m .+1<CR>==', opts)
keymap('n', '<A-k>', ':m .-2<CR>==', opts)
keymap('v', '<A-j>', ':m \'>+1<CR>gv=gv', opts)
keymap('v', '<A-k>', ':m \'<-2<CR>gv=gv', opts)
keymap('n', '<leader>d', '"_d', opts)

keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

keymap('n', '<leader>st',
	function()
		vim.cmd.new()
		vim.cmd.term()
		vim.cmd.startinsert()
		vim.cmd.wincmd('J')
		vim.api.nvim_win_set_height(0, 10)
	end,
	opts
)

keymap('t', '<C-q>', '<C-\\><C-N>:q<CR>', opts)
