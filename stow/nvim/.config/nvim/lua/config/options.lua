local opt = vim.opt

vim.cmd('let g:netrw_banner = 0')
vim.cmd(':hi statusline guibg=NONE')

opt.undofile = true

opt.termguicolors = true
opt.number = true
opt.relativenumber = true
opt.scrolloff = 4
opt.winborder = 'rounded'

opt.startofline = false
opt.colorcolumn = '80'
opt.signcolumn = 'yes'
opt.whichwrap = 'hl<>[,]'
opt.backspace = { 'start', 'eol', 'indent' }

opt.mouse = 'a'

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

local status = ''
status = status .. ' %F [%M] %Y %R'
status = status .. '%='
status = status .. ' row: %l col: %c percent: %p%%'
opt.statusline = status
opt.laststatus = 2
