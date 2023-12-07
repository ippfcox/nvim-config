-- set encoding to utf8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = "utf-8"
--
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
-- 行号
vim.wo.number = true
vim.wo.relativenumber = false -- 相对行号
-- 高亮
vim.wo.cursorline = true
-- 左侧图标指示列
vim.wo.signcolumn = "yes"
-- 右侧参考线
vim.wo.colorcolumn = "80"
-- 缩进
vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftround = true
-- tab移动长度
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4
-- 空格代替tab
vim.o.expandtab = true
vim.bo.expandtab = true
-- 自动缩进
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true
-- 搜索大小写不敏感
vim.o.ignorecase = true -- 小写时可以搜索大写
vim.o.smartcase = true -- 包含大写时准确搜索
-- 搜索
vim.o.hlsearch = true -- 高亮
vim.o.incsearch = true -- 边输入边搜索
-- vim mode hint, lualine shows mode already
vim.o.showmode = false
-- vim命令行高度
vim.o.cmdheight = 2
-- 自动同步外部修改
vim.o.autoread = true
vim.bo.autoread = true
-- 自动换行
vim.o.wrap = false
vim.wo.wrap = false
-- 行尾跳转下一行
vim.o.whichwrap = "b,s,<,>,[,],h,l"
-- 允许隐藏修改过的buffer(?)
vim.o.hidden = true
-- 鼠标支持
vim.o.mouse = "a"
-- 不要备份
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false
-- 更新时间(?)
vim.o.updatetime = 300
-- leader key wait time
vim.o.timeoutlen = 1000
-- 分屏从下面和右面出现
vim.o.splitbelow = true
vim.o.splitright = true
-- 自动补全的自动选中
vim.g.completeopt = "menu,menuone,noselect,noinsert"
-- 不可见字符的显示
vim.o.list = true
vim.o.listchars = "space:·,tab:"
-- 补全增强
vim.o.wildmenu = true
-- ?
vim.o.shortmess = vim.o.shortmess .. "c"
vim.o.pumheight = 10
-- 显示tab栏
vim.o.showtabline = 4
