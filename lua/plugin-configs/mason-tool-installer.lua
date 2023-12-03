local M = {}

function M.config()
  return {
    {
      "WhoIsSethDaniel/mason-tool-installer.nvim",
      config = function()
        require("mason-tool-installer").setup({
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
          },
        })
      end,
    },
  }
end

return M
