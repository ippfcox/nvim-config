local M = {}

M.config = {
  {
    "RRethy/vim-illuminate",
    config = function()
      require("illuminate").configure({
        providers = {
          "lsp",
          "treesitter",
          "regex",
        },
        delay = 50,
        filetypes_denylist = {
          "NvimTree",
        },
      })
    end,
  },
}

return M
