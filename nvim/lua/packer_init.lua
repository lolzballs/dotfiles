return require('packer').startup(function()
	use 'wbthomason/packer.nvim'

	use 'nvim-lualine/lualine.nvim'
	use 'machakann/vim-highlightedyank'

	use 'tpope/vim-sensible'
	use 'tpope/vim-repeat'
	use 'tpope/vim-fugitive'
	use 'tpope/vim-surround'

	use 'neovim/nvim-lspconfig'
	use 'editorconfig/editorconfig-vim'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-nvim-lsp-signature-help'

	use 'rust-lang/rust.vim'
	use 'dag/vim-fish'
	use 'lervag/vimtex'

	use {
		'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use {'bluz71/vim-moonfly-colors'}
end)
