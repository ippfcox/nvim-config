local M = {}

function M.config()
  require("Comment").setup({
    toggler = require("keybindings").comment.toggler,
    opleader = require("keybindings").comment.opleader,
    extra = require("keybindings").comment.extra,
  })
end

return M
