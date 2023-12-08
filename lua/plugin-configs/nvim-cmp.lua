local M = {}

local icon_kind = require("util.icon").get("kind", false)

M.config = {
  {
    "hrsh7th/nvim-cmp",
    config = function()
      local cmp = require("cmp")

      cmp.setup({
        snippet = {
          expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
          end,
        },
        window = {
          completion = {
            winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
            col_offset = -3,
            side_padding = 0,
          },
        },
        mapping = require("keybindings").cmp(cmp),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "vsnip" },
          { name = "nvim_lsp_signature_help" },
          { name = "luasnip" },
        }, {
          { name = "buffer" },
          { name = "path" },
        }),
        formatting = {
          fields = { "kind", "abbr", "menu" },
          format = function(entry, vim_item)
            local kind = require("lspkind").cmp_format({
              mode = "symbol_text",
              maxwidth = 50,
              ellipsis_char = "...",
              symbol_map = {
                Text = icon_kind.Text,
                Method = icon_kind.Method,
                Function = icon_kind.Function,
                Constructor = icon_kind.Constructor,
                Field = icon_kind.Field,
                Variable = icon_kind.Variable,
                Class = icon_kind.Class,
                Interface = icon_kind.Interface,
                Module = icon_kind.Module,
                Property = icon_kind.Property,
                Unit = icon_kind.Unit,
                Value = icon_kind.Value,
                Enum = icon_kind.Enum,
                Keyword = icon_kind.Keyword,
                Snippet = icon_kind.Snippet,
                Color = icon_kind.Color,
                File = icon_kind.File,
                Reference = icon_kind.Reference,
                Folder = icon_kind.Folder,
                EnumMember = icon_kind.EnumMember,
                Constant = icon_kind.Constant,
                Struct = icon_kind.Struct,
                Event = icon_kind.Event,
                Operator = icon_kind.Operator,
                TypeParameter = icon_kind.TypeParameter,
              },
            })(entry, vim_item)
            local strings = vim.split(kind.kind, "%s", { trimempty = true })
            kind.kind = " " .. (strings[1] or "") .. " "
            kind.menu = "[" .. (strings[2] or "") .. "]"
            return kind
          end,

          -- fields = { "kind", "abbr", "menu" },
          -- format = function(entry, vim_item)
          --   local kind = require("lspkind").cmp_format({ mode = "symbol_text", maxwidth = 50 })(entry, vim_item)
          --   local strings = vim.split(kind.kind, "%s", { trimempty = true })
          --   kind.kind = " " .. (strings[1] or "") .. " "
          --   kind.menu = "[" .. (strings[2] or "") .. "]"
          --   return kind
          -- end,
        },
      })

      cmp.setup.filetype("gitcommit", {
        sources = cmp.config.sources({
          { name = "git" },
        }, {
          { name = "buffer" },
        }),
      })

      cmp.setup.cmdline({ "/", "?" }, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = "buffer" },
        },
      })

      cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = "path" },
        }, {
          { name = "cmdline" },
        }),
      })

      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      require("lspconfig")[""].setup({
        capabilities = capabilities,
      })
    end,
  },
  {
    "hrsh7th/cmp-nvim-lsp",
  },
  {
    "hrsh7th/cmp-buffer",
  },
  {
    "hrsh7th/cmp-path",
  },
  {
    "hrsh7th/cmp-cmdline",
  },
  {
    "hrsh7th/cmp-calc",
  },
  {
    "hrsh7th/cmp-vsnip",
  },
  {
    "hrsh7th/vim-vsnip",
  },
  {
    "hrsh7th/cmp-nvim-lsp-signature-help",
  },
  {
    "rafamadriz/friendly-snippets",
  },
  {
    "onsails/lspkind-nvim",
  },
  {
    "saadparwaiz1/cmp_luasnip",
  },
}

return M
