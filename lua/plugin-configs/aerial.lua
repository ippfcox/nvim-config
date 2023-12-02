local M = {}

function M.toggle_right()
  return require("aerial").toggle({ focus = true, direction = "right" })
end

function M.dependencies()
  return { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }
end

function M.config()
  require("aerial").setup()
end

return M
