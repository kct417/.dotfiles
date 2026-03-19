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
			file_ignore_patterns = { '%.local/', '%.cache/', '%.git/', '%.npm/', '%.venv/', '%node_modules/' },
		},
		extensions = { fzf = {} },
	},
	config = function(_, opts)
		local telescope = require('telescope')
		telescope.setup(opts)
		telescope.load_extension('fzf')

		local builtin = require('telescope.builtin')
		local state = require('telescope.actions.state')
		local actions = require('telescope.actions')

		local function custom_picker(picker, title, extra_opts)
			return function(opts, no_ignore)
				opts = opts or {}
				no_ignore = vim.F.if_nil(no_ignore, false)

				opts.attach_mappings = function(_, map)
					map({ 'n', 'i' }, '<C-h>', function(prompt_bufnr)
						local prompt = state.get_current_line()
						local current_picker = state.get_current_picker(prompt_bufnr)
						local cwd = current_picker.cwd and tostring(current_picker.cwd) or vim.loop.cwd()
						actions.close(prompt_bufnr)
						custom_picker(picker, title, extra_opts)({ default_text = prompt, cwd = cwd }, not no_ignore)
					end)

					map({ 'n', 'i' }, '<C-Up>', function(prompt_bufnr)
						local prompt = state.get_current_line()
						local current_picker = state.get_current_picker(prompt_bufnr)
						local cwd = current_picker.cwd and tostring(current_picker.cwd) or vim.loop.cwd()
						local parent_dir = vim.fs.dirname(cwd)
						actions.close(prompt_bufnr)

						custom_picker(picker, title, extra_opts)({ default_text = prompt, cwd = parent_dir }, no_ignore)
					end)
					return true
				end

				opts.prompt_title = no_ignore and title .. ' <ALL>' or title
				opts.hidden = no_ignore
				--opts.no_ignore = no_ignore

				if extra_opts then
					opts = vim.tbl_extend('force', opts, extra_opts(no_ignore))
				end

				picker(opts)
			end
		end

		local find_files = custom_picker(builtin.find_files, 'Find Files')
		local find_config = custom_picker(builtin.find_files, 'Find Config Files',
			function()
				return { cwd = vim.fn.stdpath('config') }
			end
		)
		local find_text = custom_picker(builtin.live_grep, 'Find Text',
			function(no_ignore)
				return no_ignore and { additional_args = { '--hidden', '--no-ignore' } } or {}
			end
		)

		local keymap = vim.keymap.set
		keymap('n', '<leader>ff', find_files, { desc = 'Find Files' })
		keymap('n', '<leader>fc', find_config, { desc = 'Find Config Files' })
		keymap('n', '<leader>ft', find_text, { desc = 'Find Text' })
		keymap('n', '<leader>fg', builtin.git_files, { desc = 'Find Git Files' })
		keymap('n', '<leader>fb', builtin.buffers, { desc = 'Find Buffers' })
		keymap('n', '<leader>fh', builtin.help_tags, { desc = 'Find Help' })
	end,
}
