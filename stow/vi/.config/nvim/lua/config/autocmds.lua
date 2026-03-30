vim.api.nvim_create_autocmd('LspAttach', {
	group = vim.api.nvim_create_augroup('LspFormatting', { clear = true }),
	callback = function(args)
		local client = vim.lsp.get_client_by_id(args.data.client_id)
		if not client then return end

		if client:supports_method('textDocument/formatting') then
			vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = true })
			vim.api.nvim_create_autocmd('BufWritePre', {
				buffer = args.buf,
				callback = function() vim.lsp.buf.format({ bufnr = args.buf, id = client.id }) end,
			})
		end
	end,
})
vim.cmd('set completeopt+=noselect')

vim.api.nvim_create_autocmd('TermOpen', {
	group = vim.api.nvim_create_augroup('TermOpen', { clear = true }),
	callback = function()
		vim.opt.number = false
		vim.opt.relativenumber = false
	end,
})

vim.api.nvim_create_autocmd('TextYankPost', {
	group = vim.api.nvim_create_augroup('HighlightYank', { clear = true }),
	callback = function() vim.hl.on_yank() end,
})
