require('lazy').setup({
	{
		'folke/tokyonight.nvim',
		lazy = false,
		priority = 1000,
		config = function() vim.cmd([[colorscheme tokyonight-night]]) end,
	},

	-- Ergonomics
	'tpope/vim-sensible',
	'tpope/vim-surround',
	'tpope/vim-repeat',
	'tpope/vim-fugitive',
	'tpope/vim-sleuth',
	'tpope/vim-speeddating',
	{
		'max397574/better-escape.nvim',
		config = function()
			require('better_escape').setup()
		end,
	},

	-- LSP
	{'neovim/nvim-lspconfig', dependencies = {
		{
			'williamboman/mason.nvim',
			build = ':MasonUpdate'
		},
		'williamboman/mason-lspconfig.nvim',
		'saadparwaiz1/cmp_luasnip',
		{
			'L3MON4D3/LuaSnip',
			dependencies = { 'rafamadriz/friendly-snippets' },
		},

		{'hrsh7th/nvim-cmp', dependencies = {
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-git',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-cmdline',
		}},

		'folke/neodev.nvim',

		-- UI
		{'j-hui/fidget.nvim', config = function() require'fidget'.setup({text = {spinner = 'meter'}}) end},
		'nvimdev/lspsaga.nvim',
		{'ray-x/lsp_signature.nvim', config = function() require 'lsp_signature'.setup() end},
	}},
}, {})
