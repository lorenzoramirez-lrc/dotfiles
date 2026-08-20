return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  lazy = false,
  build = ":TSUpdate",

  config = function()
    require("nvim-treesitter").setup({
      install_dir = vim.fn.stdpath("data") .. "/site",
    })

    vim.api.nvim_create_autocmd("FileType", {
      pattern = {
        "c",
        "lua",
        "java",
        "cpp",
        "vim",
        "python",
        "markdown",
        "prolog",
        "go"
      },
      callback = function()
        vim.treesitter.start()
      end,
    })
  end,
}
