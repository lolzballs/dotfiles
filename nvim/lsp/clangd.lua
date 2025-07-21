return {
	cmd = { 'clangd', '--header-insertion=never' },
	root_markers = { '.clangd', 'compile_commands.json' },
	filetypes = { 'c', 'cpp' },
}
