require('neodev').setup()

local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lspconfig = require('lspconfig')

-- TODO: HTML, CSS, JS, Rust, Node.js, Angular, Svelte, tsserver
local servers = {
	-- brew install lua-language-server
	lua_ls = {
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
