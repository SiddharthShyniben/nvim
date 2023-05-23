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
	{'max397574/better-escape.nvim', config = function() require('better_escape').setup() end},
	{'ggandor/leap.nvim', config = function() require('leap').add_default_mappings() end},
	{'chrisgrieser/nvim-spider', lazy = true},
	'notomo/gesture.nvim',

	-- LSP
	{'neovim/nvim-lspconfig', dependencies = {
		{'williamboman/mason.nvim', build = ':MasonUpdate'},
		'williamboman/mason-lspconfig.nvim',
		
		'saadparwaiz1/cmp_luasnip',
		{'L3MON4D3/LuaSnip', dependencies = {'rafamadriz/friendly-snippets'}},

		{'hrsh7th/nvim-cmp', dependencies = {
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-git',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-cmdline',
		}},

		'folke/neodev.nvim',
		'jose-elias-alvarez/typescript.nvim',

		-- UI
		{'j-hui/fidget.nvim', config = function() require'fidget'.setup({text = {spinner = 'meter'}}) end},

		{
			'nvimdhabamaxev/lspsaga.nvim',
			event = 'LspAttach',
			config = function()
				require('lspsaga').setup({
					ui = {
						code_action = '»',
						beacon = {
							enable = true,
							frequency = 7,
						},
					}
				})
			end,
			dependencies = {
				'nvim-tree/nvim-web-devicons',
				{'nvim-treesitter/nvim-treesitter', dependencies = {'nvim-treesitter/nvim-treesitter-textobjects'}}
			}
		},

		{'ray-x/lsp_signature.nvim', config = function() require 'lsp_signature'.setup() end},
		{'https://git.sr.ht/~whynothugo/lsp_lines.nvim', config = function() require('lsp_lines').setup() end},
		{'lukas-reineke/indent-blankline.nvim', config = function()
			require 'indent_blankline'.setup({
				show_current_context = true,
				show_current_context_start = true,
			})
		end}
	}},
}, {install = {colorscheme = {'tokyonight-night'}}})
