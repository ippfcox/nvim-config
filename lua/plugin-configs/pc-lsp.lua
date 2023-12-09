local M = {}

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = true,
  severity_sort = false,
})

local icon_diagnostics = require("util.icon").get("diagnostics", false)
vim.fn.sign_define("DiagnosticSignError", { text = icon_diagnostics.Error, texthl = "DiagnosticSignError", numhl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = icon_diagnostics.Warning, texthl = "DiagnosticSignWarn", numhl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignHint", { text = icon_diagnostics.Hint, texthl = "DiagnosticSignHint", numhl = "DiagnosticSignHint" })
vim.fn.sign_define("DiagnosticSignInfo", { text = icon_diagnostics.Information, texthl = "DiagnosticSignInfo", numhl = "DiagnosticSignInfo" })

function M.list_workspace_folders()
  print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
end

M.config = {
  {
    "neovim/nvim-lspconfig",
  },
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({})
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
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
      })
    end,
  },
  {
    "mfussenegger/nvim-dap",
  },
  {
    "rcarriga/nvim-dap-ui",
  },
  {
    "mfussenegger/nvim-lint",
  },
}

return M