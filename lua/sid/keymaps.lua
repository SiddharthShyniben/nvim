local keymap = vim.api.nvim_set_keymap

local function makeMap(mode)
	return function(lhs, rhs)
		keymap(mode, lhs, rhs, {noremap = true, silent = true})
	end
end

local imap = makeMap 'i'
local nmap = makeMap 'n'
local tmap = makeMap 't'

nmap('<space>', '')
vim.g.mapleader = ' '

-- Escape!
imap('jk', '<esc>')
tmap('kj', '<esc>') -- Different because conflicts with vim mode zsh

-- Find studd
nmap('<leader>ff', ':Files<CR>')
nmap('<leader>fb', ':Buffers<CR>')
nmap('<leader>fg', ':Rg<CR>')
nmap('<leader>fm', ':Maps<CR>')

-- Change word
nmap('c*', '*``cgn')
nmap('c#', '#``cgN')

-- Delete word
nmap('d*', '*``dgn')
nmap('d#', '#``dgN')

-- Fast edit vimrc
nmap('<leader>', ':tabe ~/.config/nvim<CR>')
nmap('<leader>p', ':tabe ~/.config/nvim/lua/sid/plugins.lua<CR>')
nmap('<leader>k', ':tabe ~/.config/nvim/lua/sid/keymaps.lua<CR>')
nmap('<leader>o', ':tabe ~/.config/nvim/lua/sid/options.lua<CR>')

-- Floaterm
nmap('<leader>t', ':FloattermNew<CR>')
nmap('yt', ':FloattermToggle<CR>')

-- NERDTree
nmap('<CR>', ':NERDTreeFocus<CR>')
