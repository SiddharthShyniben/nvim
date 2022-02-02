local function set(x)
	vim.cmd('set ' .. x)
end

set 'tabstop=4'
set 'shiftwidth=4'
set 'noexpandtab'
set 'cindent'
set 'conceallevel=1'
set 'number'
set 'undofile'
set 'undodir=~/.config/nvim/undo'
set 'undolevels=1000'
set 'foldlevelstart=99'
set 'nowrap'
set 'mouse=a'
set 'formatoptions-=ro'
set 'completeopt=menu,menuone,noselect'
set 'ignorecase smartcase'
set 'nomodeline'
set 'splitbelow splitright'
set 'confirm'
set 'scrolloff=999'
set 'colorcolumn=80'
set 'textwidth=80'
set 'termguicolors'
set 'fillchars=eob:'
set 'nohidden' -- way too much confusion. when i am a better vimmer i might use this
set 'writebackup' -- i have a habit of messing up stuff and not having it in vcs
set 'smarttab'
set 'showtabline=1'
set 'errorbells'
