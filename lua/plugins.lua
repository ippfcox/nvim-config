-- config lazy
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

-- plugins list
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
    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' }, -- code highlight
})

-- nvim-tree config
require('plugin-configs.nvim-tree')

-- bufferline config
require('plugin-configs.bufferline')

-- tree-sitter config
require('plugin-configs.tree-sitter')

-- lsp config
require('lsp.setup')

