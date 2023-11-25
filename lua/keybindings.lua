vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }
local plugin_keybindings = {}

-- nvim-tree
map('n', '<A-m>', ':NvimTreeToggle<CR>', opt);
map('n', '<A-h>', '<C-w>h', opt);
map('n', '<A-j>', '<C-w>j', opt);
map('n', '<A-k>', '<C-w>k', opt);
map('n', '<A-l>', '<C-w>l', opt);
-- bufferline
map('n', '<C-h>', ':BufferLineCyclePrev<CR>', opt);
map('n', '<C-l>', ':BufferLineCycleNext<CR>', opt);
-- map('n', '', ':BufferLineCloseOthers<CR>', opt);
-- nvim-cmp
local has_words_before = function()
    unpack = unpack or table.unpack
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match('%s') == nil
end

local feedkey = function(key, mode)
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
end

plugin_keybindings.cmp = function(cmp)
    return {
        ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            --elseif vim.fn['vsnip#available'](1) == 1 then
            --    feedkey('<Plug>(vsnip-expand-or-jump)', '')
            --elseif has_words_before() then
            --    fallback()
            else
                fallback()
            end
        end, { 'i', 's' }),
        ['<S-Tab>'] = cmp.mapping(function ()
            if cmp.visible() then
                cmp.select_prev_item()
            --elseif vim.fn['vsnip#jumpable'](-1) == 1 then
            --    feedkey('<Plug>(vsnip-jump-prev)', '')
            end
        end, { 'i', 's' }),
        ['<C-k>'] = cmp.mapping.select_prev_item(),
        ['<C-j>'] = cmp.mapping.select_next_item(),
        ['<A-.>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
        ['<A-,>'] = cmp.mapping({ i = cmp.mapping.abort(), c = cmp.mapping.close() }),
        ['<CR>'] = cmp.mapping.confirm({ select = true, behavior = cmp.ConfirmBehavior.Replace }),
        ['<C-u>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
        ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
    }
end

return plugin_keybindings
