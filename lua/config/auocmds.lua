-- check if we need to reload the file
vim.api.nvim_create_autocmd({ "FocusGained", "TermClose", "TermLeave" }, {
  group = vim.api.nvim_create_augroup("checktime", { clear = true }),
  command = "checktime",
})

-- highlight on yank
vim.api.nvim_create_autocmd({ "TextYankPost" }, {
  group = vim.api.nvim_create_augroup("highlight_yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- resize splits if window got resized
-- vim.api.nvim_create_autocmd({ "VimResized" }, {
--   group = vim.api.nvim_create_augroup("resize_splits", { clear = true }),
--   callback = function()
--     local current_tab = vim.fn.tabpager()
--     vim.cmd("tabdo wincmd =")
--     vim.cmd("tabnext " .. current_tab)
--   end,
-- })
