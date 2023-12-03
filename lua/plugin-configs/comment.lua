local M = {}
function M.config()
  return {
    {
      "numToStr/Comment.nvim",
      config = function()
        require("Comment").setup({
          toggler = require("keybindings").comment.toggler,
          opleader = require("keybindings").comment.opleader,
          extra = require("keybindings").comment.extra,
        })
      end,
    },
  }
end

return M
