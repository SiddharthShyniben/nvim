vim.diagnostic.config({
    signs = true,
    underline = true,
    update_in_insert = false,
    virtual_text = false,
    severity_sort = true,
});

local signs = { Error = "✘", Warning = "", Hint = " ", Information = " " }
for type, icon in pairs(signs) do
  local hl = "LspDiagnosticsSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end
