local M = {}

local icon_kind = require("util.icon").get("kind", true)
local icon_type = require("util.icon").get("type", true)

M.config = {
  {
    "Bekaboo/dropbar.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
    },
    config = function()
      require("dropbar").setup({
        icons = {
          enable = true,
          kinds = {
            use_devicons = true,
            symbols = {
              Array = icon_type.Array,
              Boolean = icon_type.Boolean,
              BreakStatement = "󰙧 ",
              Call = "󰃷 ",
              CaseStatement = "󱃙 ",
              Class = icon_kind.Class,
              Color = icon_kind.Color,
              Constant = icon_kind.Constant,
              Constructor = " ", --
              ContinueStatement = "→ ",
              Copilot = " ",
              Declaration = "󰙠 ",
              Delete = "󰩺 ",
              DoStatement = "󰑖 ",
              Enum = icon_kind.Enum,
              EnumMember = icon_kind.EnumMember,
              Event = icon_kind.Event,
              Field = icon_kind.Field,
              File = icon_kind.File,
              Folder = icon_kind.Folder,
              ForStatement = "󰑖 ",
              Function = "󰊕 ", --
              H1Marker = "󰉫 ", -- Used by markdown treesitter parser
              H2Marker = "󰉬 ",
              H3Marker = "󰉭 ",
              H4Marker = "󰉮 ",
              H5Marker = "󰉯 ",
              H6Marker = "󰉰 ",
              Identifier = "󰀫 ",
              IfStatement = "󰇉 ",
              Interface = icon_kind.Interface,
              Keyword = icon_kind.Keyword,
              List = "󰅪 ",
              Log = "󰦪 ",
              Lsp = " ",
              Macro = "󰁌 ",
              MarkdownH1 = "󰉫 ", -- Used by builtin markdown source
              MarkdownH2 = "󰉬 ",
              MarkdownH3 = "󰉭 ",
              MarkdownH4 = "󰉮 ",
              MarkdownH5 = "󰉯 ",
              MarkdownH6 = "󰉰 ",
              Method = icon_kind.Method,
              Module = "󰏗 ",
              Namespace = icon_kind.Namespace,
              Null = "󰢤 ",
              Number = icon_type.Number,
              Object = "󰅩 ",
              Operator = icon_kind.Operator,
              Package = icon_kind.Package,
              Pair = "󰅪 ",
              Property = icon_kind.Property,
              Reference = icon_kind.Reference,
              Regex = " ",
              Repeat = "󰑖 ",
              Scope = "󰅩 ",
              Snippet = icon_kind.Snippet,
              Specifier = "󰦪 ",
              Statement = "󰅩 ",
              String = icon_type.String,
              Struct = icon_kind.Struct,
              SwitchStatement = "󰺟 ",
              Terminal = " ",
              Text = icon_kind.Text,
              Type = " ",
              TypeParameter = "󰆩 ",
              Unit = " ",
              Value = "󰎠 ",
              Variable = icon_kind.Variable,
              WhileStatement = "󰑖 ",
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
      })
    end,
  },
}

return M
