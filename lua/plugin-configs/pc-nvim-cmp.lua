local M = {}

local icon = require("util.icon").icon(false)

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
            border = "single",
            col_offset = -3,
            winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,CursorLine:Visual,Search:None",
          },
          documentation = {
            border = "single",
          },
        },
        mapping = require("keybindings").cmp(cmp),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "vsnip" },
          -- { name = "nvim_lsp_signature_help" },
          { name = "luasnip" },
        }, {
          { name = "buffer" },
          { name = "path" },
        }),
        formatting = {
          expandable_indicator = true,
          fields = { "kind", "abbr", "menu" },
          format = function(entry, vim_item)
            local kind = require("lspkind").cmp_format({
              mode = "symbol_text",
              maxwidth = 50,
              ellipsis_char = "...",
              symbol_map = {
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
            })(entry, vim_item)
            local strings = vim.split(kind.kind, "%s", { trimempty = true })
            kind.kind = " " .. (strings[1] or "") .. " "
            kind.menu = "[" .. (strings[2] or "") .. "]"
            return kind
          end,
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
  -- {
  --   "hrsh7th/cmp-nvim-lsp-signature-help",
  -- },
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
