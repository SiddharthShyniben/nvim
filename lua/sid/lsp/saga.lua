local keymap = vim.keymap.set

keymap('n', 'gh', '<cmd>Lspsaga lsp_finder<CR>')
keymap({'n','v'}, '<leader>ca', '<cmd>Lspsaga code_action<CR>')

keymap('n', 'gr', '<cmd>Lspsaga rename ++project<CR>')
keymap('n', 'glr', '<cmd>Lspsaga rename<CR>')

keymap('n', 'gp', '<cmd>Lspsaga peek_definition<CR>')
keymap('n', 'gd', '<cmd>Lspsaga goto_definition<CR>')
keymap('n', 'gt', '<cmd>Lspsaga peek_type_definition<CR>')
keymap('n', 'gtg', '<cmd>Lspsaga goto_type_definition<CR>')

keymap('n', '<leader>sl', '<cmd>Lspsaga show_line_diagnostics<CR>')
keymap('n', '<leader>sb', '<cmd>Lspsaga show_buf_diagnostics<CR>')
keymap('n', '<leader>sw', '<cmd>Lspsaga show_workspace_diagnostics<CR>')
keymap('n', '<leader>sc', '<cmd>Lspsaga show_cursor_diagnostics<CR>')

keymap('n', '[e', '<cmd>Lspsaga diagnostic_jump_prev<CR>')
keymap('n', ']e', '<cmd>Lspsaga diagnostic_jump_next<CR>')

keymap('n','<leader>o', '<cmd>Lspsaga outline<CR>')

keymap('n', 'K', '<cmd>Lspsaga hover_doc<CR>')
keymap('n', 'gK', '<cmd>Lspsaga hover_doc ++keep<CR>')
keymap({'n', 't'}, '<A-d>', '<cmd>Lspsaga term_toggle<CR>')
