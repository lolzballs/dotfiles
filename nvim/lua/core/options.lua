vim.opt.mouse = 'a'

-- ui stuff
vim.opt.number = true
vim.opt.signcolumn = 'yes'
vim.opt.relativenumber = true
vim.opt.colorcolumn = '80'
vim.opt.termguicolors = true
vim.opt.title = true
vim.opt.linebreak = false

-- visual stuff
vim.cmd 'colorscheme nord'
vim.o.background = 'dark'
-- configure lualine
require('lualine').setup {
	options = {
		icons_enabled = true,
		theme = 'nord',
		component_separators = '',
		section_separators = '',
	}
}

-- tabs
vim.opt.expandtab = false
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true

-- C language
-- indent options: switch statement, align with case label
vim.opt.cinoptions = vim.opt.cinoptions + 'l1'
