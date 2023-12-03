local M = {}

function M.config()
  return {
    {
      "karb94/neoscroll.nvim",
      config = function()
        require("neoscroll").setup()
      end,
    },
  }
end

return M
