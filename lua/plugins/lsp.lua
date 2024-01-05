vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "single" })
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "single" })

local icon = require("util.icon").icon(false)
vim.fn.sign_define("DiagnosticSignError", { text = icon.Error, texthl = "DiagnosticSignError", numhl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = icon.Warning, texthl = "DiagnosticSignWarn", numhl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignHint", { text = icon.Hint, texthl = "DiagnosticSignHint", numhl = "DiagnosticSignHint" })
vim.fn.sign_define("DiagnosticSignInfo", { text = icon.Information, texthl = "DiagnosticSignInfo", numhl = "DiagnosticSignInfo" })

vim.diagnostic.config({
  diagnostics = {
    underline = true,
    update_in_insert = true,
    virtual_text = {
      spacing = 4,
      source = "if_many",
      prefix = "●",
    },
    severity_sort = false,
    signs = true,
    float = { border = "single" },
  },
  inlay_hints = {
    enabled = true,
  },
})

return {
  {
    "neovim/nvim-lspconfig",
    event = "VeryLazy",
    dependencies = {
      {
        "folke/neoconf.nvim",
        cmd = "Neoconf",
        config = false,
      },
      { "folke/neodev.nvim", opts = {} },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {},
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      handlers = {
        function(server_name)
          require("lspconfig")[server_name].setup({})
        end,
        -- handle lua
        ["lua_ls"] = function()
          require("lspconfig").lua_ls.setup({
            settings = {
              Lua = {
                diagnostics = {
                  globals = { "vim" },
                },
              },
            },
          })
        end,
        -- handle clangd
        ["clangd"] = function()
          require("lspconfig").clangd.setup({
            cmd = {
              "clangd",
              "--clang-tidy",
              "--all-scopes-completion",
              "--completion-style=detailed",
              "--j=5",
              "--header-insertion=never",
              "--background-index",
              "--query-driver=/opt/AllWinner/gcc-linaro-7.5.0-2019.12-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-g*",
              -- "--query-driver=/usr/bin/g++",
            },
          })
        end,
      },
    },
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = {
        "lua_ls", -- lua
        "stylua", -- lua format
        "bashls", -- bash
        "shfmt", -- shell format
        "clangd", -- c/cpp
        "clang-format", -- c/cpp format
        "cmake", -- cmake
        "gopls", -- go
        "goimports", -- go format
        "marksman", -- markdown
        "prettier",
      },
    },
  },
}
