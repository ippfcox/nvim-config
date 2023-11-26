require("mason").setup({})
require("mason-lspconfig").setup({
    -- 先启用一些，会以默认配置启动
    ensure_installed = {
        "lua_ls", -- lua
        "bashls", -- bash
        "clangd", -- c/cpp
        "clang-format", -- c/cpp format
        "cmake", -- cmake
        "gopls", -- go
        "goimports", -- go format
    },
})
require("mason-lspconfig").setup_handlers({
    -- 处理默认的
    function(server_name)
        require("lspconfig")[server_name].setup({})
    end,
    -- 处理lua的
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
    -- 处理clangd的
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
                "--query-driver=/opt/AllWinner/gcc-linaro-7.5.0-2019.12-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-g*"
                -- "--query-driver=/usr/bin/g++",
            },
        })
    end,
})
