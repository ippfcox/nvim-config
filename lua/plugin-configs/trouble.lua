local M = {}

function M.config()
  return {
    {
      "folke/trouble.nvim",
      dependencies = { "nvim-tree/nvim-web-devicons" },
      config = true,
    },
  }
end

return M
