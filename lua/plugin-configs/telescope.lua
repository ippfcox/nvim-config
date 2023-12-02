local M = {}

function M.denpenencies()
  return { "nvim-tree/plenary.nvim" }
end

function M.config()
  require("telescope").setup()
end

return M
