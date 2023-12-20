local M = {}

M.config = {
  {
    "rmagatti/session-lens",
    config = function()
      require("session-lens").setup({
        theme = "dropdown",
        -- conf will be passed to telescope, see `lua/telescope/themes.lua`
        theme_conf = {
          border = true,
          borderchars = {
            prompt = { "─", "│", " ", "│", "┌", "┐", "│", "│" },
            results = { "─", "│", "─", "│", "├", "┤", "┘", "└" },
            preview = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
          },
        },
        previewer = true,
      })
    end,
  },
  {
    "rmagatti/auto-session",
    dependencies = {
      "nvim-lualine/lualine.nvim",
    },
    config = function()
      require("auto-session").setup({
        log_level = vim.log.levels.ERROR,
        auto_session_enable_last_session = false,
        auto_session_last_session_dir = vim.fn.stdpath("data") .. "/sessions",
        auto_session_root_dir = vim.fn.stdpath("data") .. "/sessions",
        auto_session_enabled = true,
        post_cwd_changed_hook = function()
          require("lualine").refresh()
        end,
      })
    end,
  },
}

return M
