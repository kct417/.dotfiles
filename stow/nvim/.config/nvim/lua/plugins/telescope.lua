return {
	'nvim-telescope/telescope.nvim',
	version = '*',
	dependencies = {
		'nvim-lua/plenary.nvim',
		-- optional but recommended
		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
	},
	opts = {
		defaults = { preview = false },
		extensions = { fzf = {} },
	},
	config = function(_, opts)
		local telescope = require('telescope')
		telescope.setup(opts)
		telescope.load_extension('fzf')

		local builtin = require('telescope.builtin')
		local state = require('telescope.actions.state')
		local actions = require('telescope.actions')

		local function toggle_ignore(picker, title, extra_opts)
			return function(opts, no_ignore)
				opts = opts or {}
				no_ignore = vim.F.if_nil(no_ignore, false)

				opts.attach_mappings = function(_, map)
					map({ 'n', 'i' }, '<C-h>', function(prompt_bufnr)
						local prompt = state.get_current_line()
						actions.close(prompt_bufnr)
						toggle_ignore(picker, title, extra_opts)({ default_text = prompt }, not no_ignore)
					end)
					return true
				end

				opts.prompt_title = no_ignore and title .. ' <ALL>' or title
				opts.hidden = no_ignore
				opts.no_ignore = no_ignore

				if extra_opts then
					opts = vim.tbl_extend('force', opts, extra_opts(no_ignore))
				end

				picker(opts)
			end
		end

		local find_files = toggle_ignore(builtin.find_files, 'Find Files')
		local find_config = toggle_ignore(builtin.find_files, 'Find Config Files',
			function()
				return { cwd = vim.fn.stdpath('config') }
			end
		)
		local find_text = toggle_ignore(builtin.live_grep, 'Find Text',
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
