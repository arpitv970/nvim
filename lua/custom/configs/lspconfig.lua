local config = require('plugins.configs.lspconfig')
local on_attach = config.onattach
local capabilities = config.capabilities

local lspconfig = require('lspconfig')

local servers = {
  'ts_ls',
  'tailwindcss',
  'eslint',
  'prismals'
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup({
    on_attach = on_attach,
    capabilities = capabilities,
  })
end
