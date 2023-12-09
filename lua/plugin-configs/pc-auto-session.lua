local M = {}

M.config = {
  {
    "rmagatti/auto-session",
    dependencies = {
      "nvim-lualine/lualine.nvim",
    },
    config = function()
      require("auto-session").setup({
        log_level = vim.log.levels.ERROR,
        post_cwd_changed_hook = function()
          require("lualine").refresh()
        end,
      })
    end,
  },
}

return M
