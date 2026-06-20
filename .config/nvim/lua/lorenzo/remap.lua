vim.keymap.set("n", "<leader>fj", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "<leader>md", ":MarkdownPreview<CR>", {silent = true})

vim.g.vimtex_view_method = "general"         -- visor PDF
vim.g.vimtex_compiler_method = "latexmk"  -- compilador automático



