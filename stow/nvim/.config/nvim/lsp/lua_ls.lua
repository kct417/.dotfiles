vim.lsp.config('lua_ls', { settings = { Lua = { workspace = { library = { vim.env.VIMRUNTIME } } } } })
