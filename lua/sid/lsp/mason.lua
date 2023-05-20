require('neodev').setup()

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

-- TODO: HTML, CSS, JS, Rust, Node.js, Angular, Svelte, tsserver
local servers = {
	-- brew install lua-language-server
	lua_ls = require 'lua.sid.lsp.configs.lua'
}

local function on_attach(client, bufnr)
	require 'lsp_signature'.on_attach({
		bind = true,
		handler_opts = {
			border = 'rounded',
		},
		hint_prefix = '=>'
	}, bufnr)
end

require('mason').setup()

local mason_lspconfig = require 'mason-lspconfig';
mason_lspconfig.setup {
	ensure_installed = vim.tbl_keys(servers),
}

mason_lspconfig.setup_handlers {
	function(server_name)
		require('lspconfig')[server_name].setup {
			capabilities = capabilities,
			on_attach = on_attach,
			settings = servers[server_name],
		}
	end,
}
