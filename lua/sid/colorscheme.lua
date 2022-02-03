local load_colorscheme = pcall(function() vim.cmd('colorscheme ayu-dark') end)
if not load_colorscheme then
	vim.cmd('colorscheme desert') -- this will always be there
	print('Failed to load colorscheme ayu-dark, falling back to default')
end
