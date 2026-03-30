vim.lsp.enable({
	'bashls',
	'lua_ls',
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
	filename = {
		['bash_aliases'] = 'bash',
		['bashrc_local'] = 'bash',
		['inputrc_local'] = 'readline',
	},
})
