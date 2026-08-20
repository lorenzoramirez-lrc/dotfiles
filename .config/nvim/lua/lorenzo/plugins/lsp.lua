local lspconfig = require("lspconfig")

local capabilities = require("cmp_nvim_lsp").default_capabilities()

require('lspconfig').clangd.setup({
  cmd = { "clangd"}
})

lspconfig.gopls.setup({
  cmd = { "gopls" },
  capabilities = capabilities,
})

lspconfig.basedpyright.setup({
  capabilities = capabilities,
})
