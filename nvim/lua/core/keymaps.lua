local function map(mode, a, b)
	local options = { noremap = true, silent = true }
	vim.api.nvim_set_keymap(mode, a, b, options)
end


-- move windows using C-{h,j,k,l} instead of with a <C-w> in front
map('n', '<C-h>', '<C-w><C-h>')
map('n', '<C-j>', '<C-w><C-j>')
map('n', '<C-k>', '<C-w><C-k>')
map('n', '<C-l>', '<C-w><C-l>')

-- map <C-p> to Telescope find_files function
map('n', '<C-p>', ':Telescope find_files<CR>')

-- diagnostics navigation
map('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>')
map('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
map('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>')
map('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>')
