return {
  {
    "nvim-telescope/telescope.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      defaults = {
        borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
      },
    },
  },
  {
    "kdheepak/lazygit.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("telescope").load_extension("lazygit")
    end,
  },
  {
    "akinsho/toggleterm.nvim",
    opts = {
      float_opts = {
        border = "single",
      },
      -- nightly only feature
      winbar = {
        enabled = true,
        name_formatter = function(term)
          return term.name
        end,
      },
    },
  },
}
