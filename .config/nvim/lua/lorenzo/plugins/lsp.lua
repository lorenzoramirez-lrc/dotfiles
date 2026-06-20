local lspconfig = require("lspconfig")

-- C++
lspconfig.clangd.setup({
  cmd = {
    "clangd",
    "--query-driver=/opt/homebrew/bin/g++-*",
  },
})


