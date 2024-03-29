local dap = require 'dap'
local dapui = require 'dapui'

require('mason-nvim-dap').setup {
	automatic_setup = true,

	handlers = {},

	ensure_installed = {
		'delve',
	},
}

-- Basic debugging keymaps, feel free to change to your liking!
vim.keymap.set('n', '<F5>', dap.continue)
vim.keymap.set('n', '<F1>', dap.step_into)
vim.keymap.set('n', '<F2>', dap.step_over)
vim.keymap.set('n', '<F3>', dap.step_out)
vim.keymap.set('n', '<leader>b', dap.toggle_breakpoint)
vim.keymap.set('n', '<leader>B', function()
	dap.set_breakpoint(vim.fn.input 'Breakpoint condition: ')
end)

-- Dap UI setup
-- For more information, see |:help nvim-dap-ui|
dapui.setup {
	-- Set icons to characters that are more likely to work in every terminal.
	--    Feel free to remove or use ones that you like more! :)
	--    Don't feel like these are good choices.
	icons = { expanded = '▾', collapsed = '▸', current_frame = '*' },
	controls = {
		icons = {
			pause = '',
			play = '',
			step_into = '',
			step_over = '',
			step_out = '',
			step_back = '',
			run_last = '',
			terminate = '',
			disconnect = '⏏',
		},
	},
}
-- toggle to see last session result. Without this, you can't see session output in case of unhandled exception.
vim.keymap.set('n', '<F7>', dapui.toggle)

dap.listeners.after.event_initialized['dapui_config'] = dapui.open
dap.listeners.before.event_terminated['dapui_config'] = dapui.close
dap.listeners.before.event_exited['dapui_config'] = dapui.close
