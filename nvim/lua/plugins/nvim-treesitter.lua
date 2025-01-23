require('nvim-treesitter.configs').setup {
	ensure_installed = { 'c', 'cpp', 'rust', 'python', 'vimdoc', 'vim' },
	auto_install = false,

	highlight = { enable = true },
	indent = { enable = true },
	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "gnn",
			node_incremental = "grn",
			scope_incremental = "grc",
			node_decremental = "grm",
		},
	},
}
