local opt = vim.opt
local status = ''

vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })
vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "none" })

opt.undofile = true

opt.termguicolors = true
opt.number = true
opt.relativenumber = true
opt.scrolloff = 4
opt.winborder = 'rounded'
opt.wrap = false

opt.startofline = false
opt.colorcolumn = '0'
opt.signcolumn = 'yes'
opt.whichwrap = 'hl<>[,]'
opt.backspace = { 'start', 'eol', 'indent' }

opt.mouse = 'a'
opt.clipboard = 'unnamedplus'

opt.autoindent = true
opt.smartindent = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4

opt.incsearch = true
opt.hlsearch = true
opt.ignorecase = true
opt.smartcase = true

opt.splitright = true
opt.splitbelow = true

status = status .. ' %t [%M] %Y '
status = status .. '%='
status = status .. ' row: %l col: %c percent: %p%% '
opt.statusline = status
opt.laststatus = 2
