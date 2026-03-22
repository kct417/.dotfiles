vim.lsp.enable({
	'bashls',
	'jsonls',
	'lua_ls',
	'pyright',
	'ruff',
})

vim.diagnostic.config({
	severity_sort = true,
	update_in_insert = true,
	virtual_text = {},
})

vim.filetype.add({
	extension = {
		tmux = 'tmux',
	},
})
