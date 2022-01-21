local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

vim.cmd [[packadd packer.nvim]]

return require('packer').startup({
	function (use)
		-- Packer :love: packer
		use 'wbthomason/packer.nvim'

		-- theme
		use 'NLKNguyen/papercolor-theme'

		-- treesitter
		use {
			'nvim-treesitter/nvim-treesitter',
			run = ':TSUpdate'
		}
		use 'nvim-treesitter/nvim-treesitter-textobjects'
		use 'nvim-treesitter/playground'
		use 'nvim-treesitter/nvim-treesitter-refactor'

		-- Better file types
		use 'pangloss/vim-javascript'
		use 'elzr/vim-json'
		use 'tpope/vim-markdown'

		-- UI
		use 'ryanoasis/vim-devicons'
		use 'itchyny/lightline.vim'
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

		if packer_bootstrap then
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
