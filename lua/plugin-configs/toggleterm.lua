local M = {}

function M.config()
  return {
    {
      "akinsho/toggleterm.nvim",
      config = function()
        require("toggleterm").setup()
      end,
    },
  }
end

return M
