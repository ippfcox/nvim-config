local icon = require("util.icon").icon(false)

return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    event = "VeryLazy",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    opts = {
      sources = { "filesystem", "buffers", "git_status", "document_symbols" },
      close_if_last_window = true,
      popup_border_style = "single",
      enable_git_status = true,
      enable_diagnostics = true,
      source_selector = {
        winbar = true,
        statusline = true,
      },
    },
  },
  {
    "stevearc/aerial.nvim",
    opts = {
      attach_mode = "global",
      backends = { "lsp", "treesitter", "markdown", "man" },
      show_guides = true,
      guides = {
        mid_item = "├╴",
        last_item = "└╴",
        nested_top = "│ ",
        whitespace = "  ",
      },
      filter_kind = false,
      icons = {
        Text = icon.Text,
        Method = icon.Method,
        Function = icon.Function,
        Constructor = icon.Constructor,
        Field = icon.Field,
        Variable = icon.Variable,
        Class = icon.Class,
        Interface = icon.Interface,
        Module = icon.Module,
        Property = icon.Property,
        Unit = icon.Unit,
        Value = icon.Value,
        Enum = icon.Enum,
        Keyword = icon.Keyword,
        Snippet = icon.Snippet,
        Color = icon.Color,
        File = icon.File,
        Reference = icon.Reference,
        Folder = icon.Folder,
        EnumMember = icon.EnumMember,
        Constant = icon.Constant,
        Struct = icon.Struct,
        Event = icon.Event,
        Operator = icon.Operator,
        TypeParameter = icon.TypeParameter,
      },
    },
  },
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
    "lewis6991/gitsigns.nvim",
    event = "VeryLazy",
    opts = {
      signs = {
        add = { text = "▎" },
        change = { text = "▎" },
        delete = { text = "" },
        topdelete = { text = "" },
        changedelete = { text = "▎" },
        untracked = { text = "▎" },
      },
      current_line_blame = true,
      current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
        delay = 100,
        ignore_whitespace = false,
        virt_text_priority = 100,
      },
      current_line_blame_formatter = "  <author> • <author_time:%Y-%m-%d> • <summary>",
    },
  },
  {
    "RRethy/vim-illuminate",
    event = "VeryLazy",
    opts = {
      providers = {
        "lsp",
        "treesitter",
        "regex",
      },
      delay = 50,
      filetypes_denylist = {
        "NvimTree",
        "neo-tree",
      },
    },
    config = function(_, opts)
      require("illuminate").configure(opts)
    end,
  },
  {
    "folke/trouble.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
}
