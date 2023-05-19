require('lazy').setup({
	{
		'folke/tokyonight.nvim',
		lazy = false,
		priority = 1000,
		config = function() vim.cmd([[colorscheme tokyonight-night]]) end,
	},

	-- Editing essentials
	'tpope/vim-sensible',
	'tpope/vim-surround',
	'tpope/vim-repeat',
	'tpope/vim-fugitive',
	'tpope/vim-sleuth',
	'tpope/vim-speeddating',

	-- LSP
	{
		'williamboman/mason.nvim',
		build = ':MasonUpdate'
	},
	'williamboman/mason-lspconfig.nvim',
	'neovim/nvim-lspconfig'
})
