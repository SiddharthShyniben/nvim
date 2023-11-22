require('lazy').setup({
	{
		'folke/tokyonight.nvim',
		lazy = false,
		priority = 1000,
		config = function() vim.cmd([[colorscheme tokyonight-night]]) end,
	},

	'nvim-lua/plenary.nvim',

	-- Ergonomics
	'tpope/vim-sensible',
	'tpope/vim-surround',
	'tpope/vim-repeat',
	'tpope/vim-fugitive',
	'tpope/vim-sleuth',
	'tpope/vim-speeddating',
	{'max397574/better-escape.nvim', config = function() require('better_escape').setup() end},
	{'ggandor/leap.nvim', config = function() require('leap').add_default_mappings() end, lazy = true},
	{'chrisgrieser/nvim-spider', lazy = true},
	'notomo/gesture.nvim',
	{'windwp/nvim-autopairs', config = function() require('nvim-autopairs').setup {} end},
	{'numToStr/Comment.nvim', config = function() require('Comment').setup() end},
	{'echasnovski/mini.align', version = '*', config = function() require('mini.align').setup() end},

	-- Util
	{'rmagatti/auto-session', config = function() require("auto-session").setup {
		log_level = "error",
		auto_session_suppress_dirs = {"~/"},
		auto_session_allowed_dirs = {"~/Sites/"},
	} end},
	'jghauser/mkdir.nvim',
	'hjson/vim-hjson',
	'folke/zen-mode.nvim',

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
		'simrat39/rust-tools.nvim',

		-- Debugging (TODO)
		{'mfussenegger/nvim-dap', dependencies = {'rcarriga/nvim-dap-ui', 'jay-babu/mason-nvim-dap.nvim'}},

		-- UI
		{'j-hui/fidget.nvim', config = function() require'fidget'.setup({text = {spinner = 'meter'}}) end},

		{
			'nvimdev/lspsaga.nvim',
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
		{'lukas-reineke/indent-blankline.nvim', main = 'ibl', config = function()
			require 'ibl'.setup()
		end}
	}},

	-- UI
	{'nvim-telescope/telescope.nvim', tag = '0.1.1', dependencies = {'nvim-lua/plenary.nvim'}},
	{'nvim-lualine/lualine.nvim', dependencies = {'nvim-tree/nvim-web-devicons'}, config = function() require'lualine'.setup({options = {theme = 'tokyonight'}}) end},
	-- {'mawkler/modicator.nvim', dependencies = {'folke/tokyonight.nvim'}, config = function()
	-- 	local modicator = require('modicator');
	-- 	modicator.setup({
	-- 		modes = {
	-- 			['n'] = {
	-- 				foreground = '#7aa2f7',
	-- 			},
	-- 			['i']  = {
	-- 				foreground = '#9ece6a',
	-- 			},
	-- 			['v']  = {
	-- 				foreground = '#bb9af7',
	-- 			},
	-- 			['V']  = {
	-- 				foreground = '#bb9af7',
	-- 			},
	-- 			['�'] = { -- This symbol is the ^V character
	-- 				foreground = '#bb9af7',
	-- 			},
	-- 			['R']  = {
	-- 				foreground = '#f7768e',
	-- 			},
	-- 			['c']  = {
	-- 				foreground = '#e0af68'
	-- 			},
	-- 		},
	-- 	})
	-- end},

	{
		"nvim-neorg/neorg",
		build = ":Neorg sync-parsers",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("neorg").setup {
				load = {
					["core.defaults"] = {}, -- Loads default behaviour
					["core.concealer"] = {}, -- Adds pretty icons to your documents
					["core.dirman"] = { -- Manages Neorg workspaces
						config = {
							workspaces = {
								notes = "~/notes",
							},
						},
					},
				},
			}
		end,
	},

	-- Fun
	{'eandrju/cellular-automaton.nvim', lazy = true},
}, {install = {colorscheme = {'tokyonight-night'}}})
