vim.opt.mouse = 'a'

-- ui stuff
vim.opt.number = true
vim.opt.signcolumn = 'yes'
vim.opt.relativenumber = true
vim.opt.colorcolumn = '80'
vim.opt.termguicolors = true
vim.opt.title = true
vim.opt.linebreak = false
vim.opt.winborder = 'rounded'

-- visual stuff
vim.cmd 'colorscheme moonfly'
vim.opt.background = 'dark'

-- configure lualine
require('lualine').setup {
	options = {
		icons_enabled = true,
		component_separators = '',
		section_separators = '',
	}
}

-- tabs
vim.opt.expandtab = false
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true

-- folds
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = -1

-- C language
-- indent options: switch statement, align with case label
vim.opt.cinoptions = vim.opt.cinoptions + 'l1'
