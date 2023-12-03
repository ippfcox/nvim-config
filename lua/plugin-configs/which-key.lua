local M = {}

function M.config()
  return {
    {
      "folke/which-key.nvim",
      config = function()
        require("which-key").setup()
      end,
    },
  }
end

return M
