local api = vim.api

api.nvim_create_autocmd("FileType", {
	group = api.nvim_create_augroup('Netrw', { clear = true }),
	pattern = "netrw",
	callback = function()
		vim.opt_local.clipboard = ""
	end,
})

api.nvim_create_autocmd('LspAttach', {
	group = api.nvim_create_augroup('LspFormatting', { clear = true }),
	callback = function(args)
		local client = vim.lsp.get_client_by_id(args.data.client_id)
		if not client then return end

		if client:supports_method('textDocument/formatting') then
			vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = true })
			api.nvim_create_autocmd('BufWritePre', {
				buffer = args.buf,
				callback = function() vim.lsp.buf.format({ bufnr = args.buf, id = client.id }) end,
			})
		end
	end,
})
vim.cmd('set completeopt+=noselect')

api.nvim_create_autocmd('TermOpen', {
	group = api.nvim_create_augroup('TermOpen', { clear = true }),
	callback = function()
		vim.opt.number = false
		vim.opt.relativenumber = false
	end,
})

api.nvim_create_autocmd('TextYankPost', {
	group = api.nvim_create_augroup('HighlightYank', { clear = true }),
	callback = function() vim.hl.on_yank() end,
})
