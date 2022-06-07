require('plugins')

-- visual stuff
vim.cmd 'colorscheme nord'
vim.o.background = 'dark'
vim.opt.signcolumn = 'yes'
vim.opt.relativenumber = true
vim.opt.number = true

-- lualine config
require('lualine').setup {
	options = {
		icons_enabled = true,
		theme = 'nord',
		component_separators = '',
		section_separators = '',
	}
}

require('lsp')

-- tabs
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = false

vim.opt.mouse = 'a'
vim.opt.title = true

vim.opt.cinoptions = vim.opt.cinoptions + 'l1'

-- window keybinds
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w><C-j>', {noremap = True})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w><C-k>', {noremap = True})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w><C-l>', {noremap = True})
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w><C-h>', {noremap = True})

-- plugin keybinds
vim.api.nvim_set_keymap('n', '<C-p>', ':Telescope find_files<CR>', {noremap = True})
