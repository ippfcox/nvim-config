require("tokyonight").setup({
  style = "moon",
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    functions = { bold = true },
    variables = {},
    sidebars = "dark",
    floats = "dark",
  },
})
vim.o.background = "dark"
vim.o.termguicolors = true
vim.cmd.colorscheme("tokyonight-moon")
