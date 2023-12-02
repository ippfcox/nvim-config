local M = {}

function M.dependicies()
  return { "nvim-tree/nvim-web-devicons" }
end

function M.config()
  require("bufferline").setup({
    options = {
      diagnostics = "nvim_lsp",
      -- 留出nvim-tree的边栏空间
      offsets = {
        {
          filetype = "NvimTree",
          text = "File Explorer",
          highlight = "Directory",
          text_align = "left",
          separator = true,
        },
      },
      color_icons = true,
    },
  })
end

return M
