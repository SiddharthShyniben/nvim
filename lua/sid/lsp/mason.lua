require('mason').setup()
require('mason-lspconfig').setup()

require('mason-lspconfig').setup {
	ensure_installed = {'lua_ls'},
	-- TODO: HTML, CSS, JS, Rust, Node.js, Angular, Svelte, tsserver
}

-- brew install lua-language-server
require'lspconfig'.lua_ls.setup {
	settings = {
		Lua = {
			runtime = {
				version = 'LuaJIT',
			},
			diagnostics = {
				globals = {'vim'},
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
			},
			telemetry = {
				enable = false,
			},
		},
	},
}
