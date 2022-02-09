local keymap = vim.api.nvim_set_keymap

local function makeMap(mode)
	return function(lhs, rhs, opts)
		pcall(function() keymap(mode, lhs, rhs, opts or {noremap = true, silent = true}) end)
	end
end

local function t(str)
	-- Adjust boolean arguments as needed
	return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local imap = makeMap 'i'
local nmap = makeMap 'n'
local tmap = makeMap 't'
local xmap = makeMap 'x'
local vmap = makeMap 'v'
local map = makeMap ''

nmap('<space>', '')
vim.g.mapleader = ' '

-- Escape!
imap('jk', '<esc>')
tmap('<C-w><C-w>', '<C-\\><C-n>')

-- Find stuff
nmap('<leader>ff', ':Telescope find_files<CR>')
nmap('<leader>fg', ':Telescope live_grep<CR>')
nmap('<leader>fo', ':Telescope oldfiles<CR>')

-- Change word
nmap('c*', '*``cgn')
nmap('c#', '#``cgN')

-- Delete word
nmap('d*', '*``dgn')
nmap('d#', '#``dgN')

-- Fast edit vimrc
nmap('<leader>fv', ':Telescope find_files ~/.config/nvim<CR>')
nmap('<leader>p', ':tabe ~/.config/nvim/lua/sid/plugins.lua<CR>')
nmap('<leader>k', ':tabe ~/.config/nvim/lua/sid/keymaps.lua<CR>')
nmap('<leader>o', ':tabe ~/.config/nvim/lua/sid/options.lua<CR>')

-- Floaterm
nmap('<leader>ft', ':FloatermNew<CR>')
nmap('yt', ':FloatermToggle<CR>')

-- NERDTree
nmap('<leader><leader>', ':NERDTreeFocus<CR>')

-- Smooth scroll
nmap('<C-d>', ':call comfortable_motion#flick(100)<CR>')
nmap('<C-u>', ':call comfortable_motion#flick(-100)<CR>')
nmap('<C-f>', ':call comfortable_motion#flick(200)<CR>')
nmap('<C-b>', ':call comfortable_motion#flick(-200)<CR>')
map('<ScrollWheelDown>', ':call comfortable_motion#flick(40)<CR>')
map('<ScrollWheelUp>', ' :call comfortable_motion#flick(-40)<CR>')

-- swap diff
nmap('<leader>s', ':sav! ~/.recovered | vsplit | wincmd w | noswapfile bn | windo diffthis<cr>')

-- for some reason only viml works
-- vim.cmd[[imap <script><silent><nowait><expr> <C-c> copilot#Accept()]]

nmap('<leader>D', ':put =strftime("# %a %Y-%m-%d %H:%M:%S%z")<CR>')
