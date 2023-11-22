require 'sid.general'
require 'sid.plugin'
require 'sid.lsp'
require 'sid.general.keys-after'

vim.cmd [[
function! s:goyo_enter()
endfunction

function! s:goyo_leave()
set no
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
]]
