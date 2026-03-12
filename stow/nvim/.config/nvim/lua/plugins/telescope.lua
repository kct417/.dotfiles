return {
	'nvim-telescope/telescope.nvim',
	version = '*',
	dependencies = {
		'nvim-lua/plenary.nvim',
		-- optional but recommended
		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
	},
	opts = {
		defaults = {
			preview = false,
			file_ignore_patterns = { '^lsp/' },
		}
	},
	config = function(_, opts)
		local telescope = require('telescope')
		local builtin = require('telescope.builtin')
		local state = require('telescope.actions.state')
		local actions = require('telescope.actions')

		local custom_find_files, custom_git_files, custom_config_files, custom_find_text

		telescope.setup(opts)

		custom_find_files = function(opts, no_ignore)
			opts = opts or {}
			no_ignore = vim.F.if_nil(no_ignore, false)
			opts.attach_mappings = function(_, map)
				map({ 'n', 'i' }, '<C-h>', function(prompt_bufnr) -- <C-h> to toggle modes
					local prompt = state.get_current_line()
					actions.close(prompt_bufnr)
					no_ignore = not no_ignore
					custom_find_files({ default_text = prompt }, no_ignore)
				end)
				return true
			end

			if no_ignore then
				opts.no_ignore = true
				opts.hidden = true
				opts.prompt_title = 'Find Files <ALL>'
				builtin.find_files(opts)
			else
				opts.prompt_title = 'Find Files'
				builtin.find_files(opts)
			end
		end

		custom_git_files = function(opts, no_ignore)
			opts = opts or {}
			no_ignore = vim.F.if_nil(no_ignore, false)
			opts.attach_mappings = function(_, map)
				map({ 'n', 'i' }, '<C-h>', function(prompt_bufnr) -- <C-h> to toggle modes
					local prompt = state.get_current_line()
					actions.close(prompt_bufnr)
					no_ignore = not no_ignore
					custom_git_files({ default_text = prompt }, no_ignore)
				end)
				return true
			end

			if no_ignore then
				opts.no_ignore = true
				opts.hidden = true
				opts.prompt_title = 'Find Git Files <ALL>'
				builtin.git_files(opts)
			else
				opts.prompt_title = 'Find Git Files'
				builtin.git_files(opts)
			end
		end

		custom_config_files = function(opts, no_ignore)
			opts = opts or {}
			no_ignore = vim.F.if_nil(no_ignore, false)
			opts.attach_mappings = function(_, map)
				map({ 'n', 'i' }, '<C-h>', function(prompt_bufnr) -- <C-h> to toggle modes
					local prompt = state.get_current_line()
					actions.close(prompt_bufnr)
					no_ignore = not no_ignore
					custom_config_files({ default_text = prompt }, no_ignore)
				end)
				return true
			end

			if no_ignore then
				opts.no_ignore = true
				opts.hidden = true
				opts.prompt_title = 'Find Config Files <ALL>'
				builtin.find_files(vim.tbl_extend("force", opts, { cwd = vim.fn.stdpath('config') }))
			else
				opts.prompt_title = 'Find Config Files'
				builtin.find_files(vim.tbl_extend("force", opts, { cwd = vim.fn.stdpath('config') }))
			end
		end

		custom_find_text = function(opts, no_ignore)
			opts = opts or {}
			no_ignore = vim.F.if_nil(no_ignore, false)
			opts.attach_mappings = function(_, map)
				map({ 'n', 'i' }, '<C-h>', function(prompt_bufnr) -- <C-h> to toggle modes
					local prompt = state.get_current_line()
					actions.close(prompt_bufnr)
					no_ignore = not no_ignore
					custom_find_text({ default_text = prompt }, no_ignore)
				end)
				return true
			end

			if no_ignore then
				opts.no_ignore = true
				opts.hidden = true
				opts.prompt_title = 'Find Text <ALL>'
				builtin.live_grep(opts)
			else
				opts.prompt_title = 'Find Text'
				builtin.live_grep(opts)
			end
		end

		local keymap = vim.keymap.set
		keymap('n', '<leader>ff', custom_find_files, { desc = 'Find Files' })
		keymap('n', '<leader>fg', custom_git_files, { desc = 'Find Git Files' })
		keymap('n', '<leader>fc', custom_config_files, { desc = 'Find Config Files' })
		keymap('n', '<leader>ft', custom_find_text, { desc = 'Find Text' })
		keymap('n', '<leader>fb', builtin.buffers, { desc = 'Find Buffers' })
		keymap('n', '<leader>fh', builtin.help_tags, { desc = 'Find Help' })
	end,
}
