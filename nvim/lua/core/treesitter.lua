vim.api.nvim_create_autocmd('FileType', {
	pattern = { 'c' },
	callback = function()
		if vim.treesitter.get_parser(nil, nil, { error = false}) ~= nil then
			vim.treesitter.start()

			vim.wo.foldmethod = 'expr'
			vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
			vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
		end
	end,
})
