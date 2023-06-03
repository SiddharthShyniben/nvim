vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

vim.keymap.set('n', '<leader>f', vim.lsp.buf.format)
vim.keymap.set('n', '<Esc>', '<cmd>noh<cr>')
