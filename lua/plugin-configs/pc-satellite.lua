local M = {}

M.config = {
  {
    "lewis6991/satellite.nvim",
    config = function()
      require("satellite").setup()
    end,
  },
}

return M
