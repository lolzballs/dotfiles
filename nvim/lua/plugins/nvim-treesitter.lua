require('nvim-treesitter.configs').setup {
	ensure_installed = { 'c', 'cpp', 'rust', 'python', 'vimdoc', 'vim' },
	auto_install = false,

	highlight = { enable = true },
	indent = { enable = true },
}
