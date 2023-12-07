local M = {}

M.config = {
  {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("bufferline").setup({
        options = {
          diagnostics = "nvim_lsp",
          -- 留出nvim-tree的边栏空间
          offsets = {
            {
              filetype = "NvimTree",
              text = " File Explorer",
              highlight = "Directory",
              text_align = "center",
              separator = false,
            },
          },
          color_icons = true,
          separator_style = "slant",
        },
      })
    end,
  },
}

return M
