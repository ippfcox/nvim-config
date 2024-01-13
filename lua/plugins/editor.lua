local icon = require("util.icon").icon(false)
local icon_space = require("util.icon").icon(true)

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
  {
    "Bekaboo/dropbar.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
    },
    opts = {
      icons = {
        enable = true,
        kinds = {
          use_devicons = true,
          symbols = {
            Array = icon_space.Array,
            Boolean = icon_space.Boolean,
            BreakStatement = icon_space.BreakStatement,
            Call = icon_space.Call,
            CaseStatement = icon_space.CaseStatement,
            Class = icon_space.Class,
            Color = icon_space.Color,
            Constant = icon_space.Constant,
            Constructor = icon_space.Constructor,
            ContinueStatement = icon_space.ContinueStatement,
            Copilot = icon_space.Copilot,
            Declaration = icon_space.Declaration,
            Delete = icon_space.Delete,
            DoStatement = icon_space.DoStatement,
            Enum = icon_space.Enum,
            EnumMember = icon_space.EnumMember,
            Event = icon_space.Event,
            Field = icon_space.Field,
            File = icon_space.File,
            Folder = icon_space.Folder,
            ForStatement = icon_space.ForStatement,
            Function = icon_space.Function,
            H1Marker = icon_space.Header1,
            H2Marker = icon_space.Header2,
            H3Marker = icon_space.Header3,
            H4Marker = icon_space.Header4,
            H5Marker = icon_space.Header5,
            H6Marker = icon_space.Header6,
            Identifier = icon_space.Identifier,
            IfStatement = icon_space.IfStatement,
            Interface = icon_space.Interface,
            Keyword = icon_space.Keyword,
            List = icon_space.List,
            Log = icon_space.Log,
            Lsp = icon_space.Lsp,
            Macro = icon_space.Macro,
            MarkdownH1 = icon_space.Header1,
            MarkdownH2 = icon_space.Header2,
            MarkdownH3 = icon_space.Header3,
            MarkdownH4 = icon_space.Header4,
            MarkdownH5 = icon_space.Header5,
            MarkdownH6 = icon_space.Header6,
            Method = icon_space.Method,
            Module = icon_space.Module,
            Namespace = icon_space.Namespace,
            Null = icon_space.Null,
            Number = icon_space.Number,
            Object = icon_space.Object,
            Operator = icon_space.Operator,
            Package = icon_space.Package,
            Pair = icon_space.Pair,
            Property = icon_space.Property,
            Reference = icon_space.Reference,
            Regex = icon_space.Regex,
            Repeat = icon_space.Repeat,
            Scope = icon_space.Scope,
            Snippet = icon_space.Snippet,
            Specifier = icon_space.Specifier,
            Statement = icon_space.Statement,
            String = icon_space.String,
            Struct = icon_space.Struct,
            SwitchStatement = icon_space.SwitchStatement,
            Terminal = icon_space.Terminal,
            Text = icon_space.Text,
            Type = icon_space.Type,
            TypeParameter = icon_space.TypeParameter,
            Unit = icon_space.Unit,
            Value = icon_space.Value,
            Variable = icon_space.Variable,
            WhileStatement = icon_space.WhileStatement,
          },
        },
        ui = {
          bar = {
            separator = " ",
            extends = "…",
          },
          menu = {
            separator = " ",
            indicator = " ",
          },
        },
      },
    },
  },
}