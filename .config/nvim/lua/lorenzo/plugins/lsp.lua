local lspconfig = require("lspconfig")

local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig.clangd.setup({
  cmd = {
    "clangd",
    "--query-driver=/opt/homebrew/bin/g++-*",
  },
  capabilities = capabilities,
})
