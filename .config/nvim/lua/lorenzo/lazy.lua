local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    { "Mofiqul/dracula.nvim", name = "dracula", priority = 1000,},
	{ "rose-pine/neovim", name = "rose-pine", priority=1000},
    { "lervag/vimtex", lazy = false },
	{
		'nvim-telescope/telescope.nvim', 
		tag = '0.1.5',
		dependencies = { {'nvim-lua/plenary.nvim'}}
	},
	{
		'nvim-treesitter/nvim-treesitter',
		branch = 'master', 
		build = ':TSUpdate',
	},
	'nvim-tree/nvim-web-devicons',
	'nvim-lualine/lualine.nvim',
    {
        "neovim/nvim-lspconfig",
    },
    {
        "williamboman/mason.nvim",
        config = true,
    },
    {
        "williamboman/mason-lspconfig.nvim",
    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
        -- use opts = {} for passing setup options
        -- this is equivalent to setup({}) function
    },
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    }
}

local opts = {}


require("lazy").setup(plugins,opts)

