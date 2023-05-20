return {
	Lua = {
		runtime = {
			version = 'LuaJIT',
		},
		diagnostics = {
			globals = {'vim'},
		},
		workspace = {
			library = vim.api.nvim_get_runtime_file('', true),
			checkThirdParty = false -- TODO fix
		},
		telemetry = {
			enable = false,
		},
		experimental = {
			ghost_text = true,
		},
		completion = {
			callSnippet = 'Replace'
		}
	},
}
