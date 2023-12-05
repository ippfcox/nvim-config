local M = {}

M.config = {
  {
    "dstein64/nvim-scrollview",
    config = function()
      require("scrollview").setup({
        excluded_filetypes = { "nerdtree" },
        signs_on_startup = { "all" },
      })
    end,
  },
}

return M
