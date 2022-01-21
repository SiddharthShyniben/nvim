local function set(x)
	vim.cmd('set ' .. x)
end 

set 'tabstop=4'
set 'shiftwidth=4'
set 'noexpandtab'
set 'cindent'
set 'conceallevel=1'
set 'number'
set 'relativenumber'
set 'undofile'
set 'undodir=~/.config/nvim/undo'
set 'undolevels=1000'
set 'foldlevelstart=99'
set 'nowrap'
set 'mouse=a'
set 'formatoptions-=ro'
set 'completeopt=menu,menuone,noselect'
