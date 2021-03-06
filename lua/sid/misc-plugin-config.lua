vim.g.javascript_plugin_jsdoc = 1
vim.g.javascript_plugin_ngdoc = 1
vim.g.javascript_plugin_flow  = 1

vim.g.javascript_conceal_function             = 'ƒ'
vim.g.javascript_conceal_null                 = 'ø'
vim.g.javascript_conceal_this                 = '@'
vim.g.javascript_conceal_return               = '⇚'
vim.g.javascript_conceal_undefined            = '¿'
vim.g.javascript_conceal_NaN                  = 'ℕ'
vim.g.javascript_conceal_prototype            = '¶'
vim.g.javascript_conceal_static               = '•'
vim.g.javascript_conceal_super                = 'Ω'
vim.g.javascript_conceal_arrow_function       = '⇒'
vim.g.javascript_conceal_noarg_arrow_function = '🞅'
vim.g.javascript_conceal_underscore_arrow_function = '🞅'

vim.g.markdown_fenced_languages = {'html', 'css', 'js=javascript', 'jsx=javascript', 'ts=typescript', 'tsx=typescript', 'json', 'yaml', 'toml', 'xml', 'lua'}
vim.g.comfortable_motion_scroll_down_key = 'j'
vim.g.comfortable_motion_scroll_up_key = 'k'

vim.g.copilot_filetypes = {['*'] = true}
vim.g.copilot_no_tab_map = true

vim.g.dashboard_default_executive = 'fzf'

vim.g.tokyonight_style = 'night'

vim.cmd[[let g:airline#extensions#tabline#enabled = 1]]

local ok, preview = pcall(require, 'preview')
if not ok then return end

preview.init()
