local lspconfig = require("lspconfig")

local capabilities = require("cmp_nvim_lsp").default_capabilities()

require('lspconfig').clangd.setup({
    capabilites = capabilities,
})

lspconfig.gopls.setup({
  capabilities = capabilities,
})

lspconfig.basedpyright.setup({
  capabilities = capabilities,
})

lspconfig.texlab.setup({
  capabilities = capabilities,
})
