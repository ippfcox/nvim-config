local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    { "ellisonleao/gruvbox.nvim",    priority = 1000, config = true },                                -- theme
    { "rmehri01/onenord.nvim",       priority = 1000, config = true },                                -- theme
    { "nvim-tree/nvim-tree.lua",     priority = 1000, config = true },                                -- file tree
    { "nvim-tree/nvim-web-devicons", priority = 1000, config = true },                                -- file icon
    { 'akinsho/bufferline.nvim',     version = "*",   dependencies = 'nvim-tree/nvim-web-devicons' }, -- bufferline, file tab
    { 'neovim/nvim-lspconfig' },                                                                      -- official lspconfig
    { 'williamboman/mason-lspconfig.nvim' },
    { 'williamboman/mason.nvim' },                                                                    -- lsp server manager
    { 'mfussenegger/nvim-dap' },
    { 'rcarriga/nvim-dap-ui' },
    { 'mfussenegger/nvim-lint' },
    { 'mhartington/formatter.nvim' },
})

-- 样式
require("gruvbox").setup {}
vim.o.background         = 'dark'
vim.o.termguicolors      = true
-- nvim-tree配置
vim.g.loaded_netrw       = 1
vim.g.loaded_netrwPlugin = 1
require("nvim-tree").setup {
    sort = {
        sorter = "case_sensitive",
    },
    view = {
        width = 30,
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        -- dotfiles = true,
    },
}
-- bufferline
require("bufferline").setup {
    options = {
        diagnostics = "nvim_lsp",
        -- 留出nvim-tree的边栏空间
        offsets = { {
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left",
        } }
    }
}
-- lsp相关配置都写在这里
require('lsp.setup')


