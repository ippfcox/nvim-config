local M = {}

M.config = {
  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("neo-tree").setup({
        close_if_last_window = true,
        popup_border_style = "single",
        enable_git_status = true,
        enable_diagnostics = true,
        source_selector = {
          winbar = true,
          statusline = true,
        },
      })
    end,
  },
}

return M
