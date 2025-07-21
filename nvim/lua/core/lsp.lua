-- Native autocompletion
vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(args)
		local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
		if client:supports_method('textDocument/implementation') then
			-- Create a keymap for vim.lsp.buf.implementation ...
		end
		-- Enable auto-completion.
		if client:supports_method('textDocument/completion') then
			local chars = {}; for i = 32, 126 do table.insert(chars, string.char(i)) end
			client.server_capabilities.completionProvider.triggerCharacters = chars

			vim.opt.completeopt = { 'menu', 'menuone', 'noinsert', 'fuzzy', 'popup' }
			vim.lsp.completion.enable(true, client.id, args.buf, {autotrigger = true})

			vim.keymap.set('i', '<C-space>', vim.lsp.completion.get,     {buffer = args.buf})
			vim.keymap.set('n', 'gd',        vim.lsp.buf.definition,     {buffer = args.buf})
			vim.keymap.set('n', 'gD',        vim.lsp.buf.declaration,    {buffer = args.buf})
			vim.keymap.set('n', 'gi',        vim.lsp.buf.implementation, {buffer = args.buf})
		end
	end,
})

vim.lsp.enable({ 'clangd', 'luals' })
