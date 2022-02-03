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
		use 'ayu-theme/ayu-vim'
		use 'Shatur/neovim-ayu'

		-- treesitter
		use {
			'nvim-treesitter/nvim-treesitter',
			run = ':TSUpdate'
		}
		use 'nvim-treesitter/nvim-treesitter-textobjects'
		use 'nvim-treesitter/playground'
		use 'nvim-treesitter/nvim-treesitter-refactor'
		use 'nvim-treesitter/nvim-treesitter-angular'

		-- Better file types
		use 'pangloss/vim-javascript'
		use 'elzr/vim-json'
		use 'tpope/vim-markdown'

		-- UI
		use 'ryanoasis/vim-devicons'
		use {'lukas-reineke/virt-column.nvim', config = function() require 'virt-column' .setup() end}
		-- use 'itchyny/lightline.vim'
		use 'vim-airline/vim-airline'
		use {
			'junegunn/fzf',
			run = function()
				vim.api.nvim_call_function('fzf#install')
			end
		}
		use 'junegunn/fzf.vim'
		use 'preservim/nerdtree'
		use 'PhilRunninger/nerdtree-visual-selection'
		use 'Xuyuanp/nerdtree-git-plugin'
		use 'voldikss/vim-floaterm'
		use 'folke/trouble.nvim'
		use 'metakirby5/codi.vim'
		use 'wfxr/minimap.vim'
		use 'airblade/vim-gitgutter'
		-- use {'SiddharthShyniben/preview.nvim', config = function() require('preview').init() end}

		-- tpope :heart:
		use 'tpope/vim-surround'
		use 'tpope/vim-commentary'
		use 'tpope/vim-ragtag'
		use 'tpope/vim-repeat'
		use 'tpope/vim-unimpaired'
		use 'tpope/vim-vinegar'
		use 'tpope/vim-endwise'
		use 'tpope/vim-fugitive'

		-- lsp
		use 'neovim/nvim-lspconfig'
		use 'hrsh7th/cmp-nvim-lsp'
		use 'hrsh7th/cmp-buffer'
		use 'hrsh7th/cmp-path'
		use 'hrsh7th/cmp-cmdline'
		use 'hrsh7th/nvim-cmp'

		-- luasnip
		use 'L3MON4D3/LuaSnip'
		use 'rafamadriz/friendly-snippets'
		use 'saadparwaiz1/cmp_luasnip'

		-- misc
		use 'jiangmiao/auto-pairs'
		use 'github/copilot.vim'
		use 'yuttie/comfortable-motion.vim'
		use 'ellisonleao/glow.nvim'
		use 'mattn/emmet-vim'
		use 'wakatime/vim-wakatime'

		-- writing
		use 'preservim/vim-lexical'
		use 'preservim/vim-litecorrect'
		use 'junegunn/goyo.vim'
		use 'junegunn/limelight.vim'
		use 'kana/vim-textobj-user'
		use 'preservim/vim-textobj-sentence'
		use 'preservim/vim-wordy'
		use 'dbmrq/vim-ditto'

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
