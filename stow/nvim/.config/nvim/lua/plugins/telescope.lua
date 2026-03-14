return {
	'nvim-telescope/telescope.nvim',
	version = '*',
	dependencies = {
		'nvim-lua/plenary.nvim',
		-- optional but recommended
		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
	},
	opts = { defaults = { preview = false } },
	config = function(_, opts)
		require('telescope').setup(opts)

		local builtin = require('telescope.builtin')
		local state = require('telescope.actions.state')
		local actions = require('telescope.actions')
		local custom_find_files, custom_git_files, custom_config_files, custom_find_text

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

			opts.prompt_title = no_ignore and 'Find Files <ALL>' or 'Find Files'
			opts.hidden = no_ignore
			opts.no_ignore = no_ignore

			builtin.find_files(opts)
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

			opts.prompt_title = no_ignore and 'Find Git Files <ALL>' or 'Find Git Files'
			opts.hidden = no_ignore
			opts.no_ignore = no_ignore

			builtin.git_files(opts)
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

			opts.prompt_title = no_ignore and 'Find Config Files <ALL>' or 'Find Config Files'
			opts.hidden = no_ignore
			opts.no_ignore = no_ignore

			builtin.find_files(vim.tbl_extend("force", opts, { cwd = vim.fn.stdpath('config') }))
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

			opts.prompt_title = no_ignore and 'Find Text <ALL>' or 'Find Text'
			opts.additional_args = function()
				return no_ignore and { '--hidden', '--no-ignore' } or {}
			end

			builtin.live_grep(opts)
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
