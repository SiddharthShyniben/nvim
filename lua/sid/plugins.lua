local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
local packerBootstrap = false
if fn.empty(fn.glob(install_path)) > 0 then
	packerBootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

vim.cmd [[packadd packer.nvim]]

local ok, packer = pcall(require, 'packer')
if not ok then return end

return packer.startup({
	function (use)
		-- Packer :love: packer
		use 'wbthomason/packer.nvim'

		-- theme
		use 'folke/tokyonight.nvim'

		-- treesitter
		use {
			'nvim-treesitter/nvim-treesitter',
			run = ':TSUpdate'
		}
		use 'nvim-treesitter/nvim-treesitter-textobjects'
		use 'nvim-treesitter/nvim-treesitter-refactor'
		use 'nvim-treesitter/nvim-treesitter-angular'

		-- Better file types
		use 'sheerun/vim-polyglot'

		-- UI
		use 'ryanoasis/vim-devicons'
		use 'kyazdani42/nvim-web-devicons'
		use {'lukas-reineke/virt-column.nvim', config = function() require 'virt-column' .setup() end}
		use {
			'nvim-telescope/telescope.nvim',
			requires = {{'nvim-lua/plenary.nvim'}}
		}
		use 'airblade/vim-gitgutter'
		use {'nvim-lualine/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true}}
		use {'lukas-reineke/indent-blankline.nvim', config = function()
			require("indent_blankline").setup {
				show_current_context = true,
				show_current_context_start = true,
			}
		end}

		-- coq + lsps
		use 'neovim/nvim-lspconfig'
		use 'williamboman/nvim-lsp-installer'
		use {'ms-jpq/coq_nvim', branch = 'coq'}
		use {'ms-jpq/coq.artifacts', branch = 'artifacts'}
		use {'ms-jpq/coq.thirdparty', branch = '3p'}

		-- tpope :heart:
		use 'tpope/vim-surround'
		use 'tpope/vim-commentary'
		use 'tpope/vim-ragtag'
		use 'tpope/vim-repeat'
		use 'tpope/vim-unimpaired'
		use 'tpope/vim-vinegar'
		use 'tpope/vim-endwise'
		use 'tpope/vim-fugitive'

		-- misc
		use 'jiangmiao/auto-pairs'
		use 'github/copilot.vim'
		use 'yuttie/comfortable-motion.vim'
		use 'mattn/emmet-vim'
		use 'wakatime/vim-wakatime'
		use 'christoomey/vim-tmux-navigator'
		use 'justinmk/vim-sneak'

		if packerBootstrap then
			require('packer').sync()
		end
	end,
	config = {
		display = {
			open_fn = function()
				return require('packer.util').float({border = 'rounded', style = 'minimal'})
			end
		}
	}
})
