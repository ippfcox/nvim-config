local M = {}

M.config = {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = true,
  }, -- theme
  {
    "rmehri01/onenord.nvim",
    priority = 1000,
    config = true,
  }, -- theme
  {
    "navarasu/onedark.nvim",
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
  },
}

return M
