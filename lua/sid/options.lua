local function set(x)
	local output = pcall(function () vim.cmd('set ' .. x) end)
	if not output then print('Error setting ' .. x) end
end

set 'tabstop=4'
set 'shiftwidth=4'
set 'noexpandtab'
set 'smarttab'
set 'cindent'

set 'number'

set 'undofile'
set 'undodir=~/.config/nvim/undo'
set 'undolevels=1000'

set 'foldlevelstart=99'
set 'scrolloff=999'
set 'conceallevel=2'

set 'nowrap'
set 'mouse=a'

set 'formatoptions-=ro'
set 'formatoptions+=2nj'

set 'completeopt=menu,menuone,noselect'

set 'ignorecase smartcase'
set 'splitbelow splitright'

set 'nomodeline'

set 'confirm'

set 'colorcolumn=80'
set 'textwidth=80'
set 'cmdheight=2'
set 'showtabline=1'
set 'laststatus=2'

set 'termguicolors'

set 'writebackup' -- i have a habit of messing up stuff and not having it in vcs

set 'errorbells'

set 'signcolumn=yes'

set 'list listchars=multispace:,lead:,trail:,precedes:ﲖ,extends:ﲕ,tab:>--,eol:¬'
set 'fillchars=eob:'

set 'cursorline cursorlineopt=both'
set 'cursorcolumn'

set 'winminheight=0 winminwidth=0'

set 'scrollbind cursorbind'

set 'title'
set 'noruler'
