local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
  spec = {
    require("plugins.ui"),
    require("plugins.editor"),
    require("plugins.coding"),
    require("plugins.lsp"),
    require("plugins.tool"),
    -- { "ippfcoxdbg/nvim-example-lua-plugin", dev = true },
  },
  defaults = {
    lazy = false,
    version = false,
  },
  -- dev = {
  --   path = "~/workdir/luaproj",
  --   pattern = { "ippfcoxdbg" },
  -- },
  install = { colorscheme = { "tokyonight" } },
  checker = { enabled = false },
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
