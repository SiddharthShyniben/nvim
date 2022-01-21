local keymap = vim.api.nvim_set_keymap

local function makeMap(mode)
	return function(lhs, rhs)
		keymap(mode, lhs, rhs, {noremap = true, silent = true})
	end
end

local imap = makeMap 'i'
local nmap = makeMap 'n'
local tmap = makeMap 't'
local map = makeMap ''

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
nmap('<leader>ft', ':FloatermNew<CR>')
nmap('yt', ':FloatermToggle<CR>')

-- NERDTree
nmap('<CR>', ':NERDTreeFocus<CR>')

-- Smooth scroll
nmap('<C-d>', ':call comfortable_motion#flick(100)<CR>')
nmap('<C-u>', ':call comfortable_motion#flick(-100)<CR>')
nmap('<C-f>', ':call comfortable_motion#flick(200)<CR>')
nmap('<C-b>', ':call comfortable_motion#flick(-200)<CR>')
map('<ScrollWheelDown>', ':call comfortable_motion#flick(40)<CR>')
map('<ScrollWheelUp>', '  :call comfortable_motion#flick(-40)<CR>')

-- Tabs
nmap('<leader>t', ':tabnew<CR>')
nmap('L', ':tabnext<CR>')
nmap('H', ':tabprevious<CR>')
