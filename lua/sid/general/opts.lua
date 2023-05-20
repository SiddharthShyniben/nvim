local function set(x)
	local ok, e = pcall(vim.cmd, 'set ' .. x)
	if ok then
		return true
	else
		print('Could not set ' .. x .. ' because ' .. e)
		return false
	end
end

set 'number relativenumber'

set 'wrapscan'
set 'ignorecase smartcase'

set 'scrolloff=999 sidescrolloff=999'
set 'nowrap'
set 'conceallevel=2'
set 'cursorline cursorlineopt=number'

set 'termguicolors'

set 'laststatus=3'

set 'splitbelow'
set 'splitright'
set 'noshowmode'

set 'undofile'
set 'textwidth=80'
set 'formatoptions+=n'
set 'infercase'
set 'showmatch'

set 'tabstop=4'
set 'shiftwidth=4'
set 'smarttab'
set 'noexpandtab'
set 'cindent smartindent'

set 'foldenable'
set 'foldlevelstart=3'
set 'foldminlines=2'
set 'foldmethod=syntax'

set 'nomodeline'
set 'autoread'
