local M = {}

function M.config()
  return {
    {
      "lewis6991/gitsigns.nvim",
      config = function()
        require("gitsigns").setup()
      end,
    },
  }
end

return M
