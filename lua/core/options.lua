vim.g.mapleader = " "
vim.g.maplocalleader = ","

--------------------------------------------------
-- UI
--------------------------------------------------

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"
vim.optlaststatus = 0
vim.opt.clipboard = "unnamedplus" 

vim.opt.winbar = "  %f "

vim.opt.scrolloff = 5

--------------------------------------------------
-- TABS / INDENT
--------------------------------------------------

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

--------------------------------------------------
-- SEARCH
--------------------------------------------------

vim.opt.ignorecase = true

--------------------------------------------------
-- SPLITS
--------------------------------------------------

vim.opt.splitright = true
vim.opt.splitbelow = true

--------------------------------------------------
-- COMPLETION
--------------------------------------------------

vim.opt.completeopt = "menuone,noselect"

--------------------------------------------------
-- FOLDING
--------------------------------------------------

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevel = 99

--------------------------------------------------
-- POWERSHELL
--------------------------------------------------

vim.opt.shell = "pwsh"
vim.opt.shellcmdflag = "-NoLogo -NoProfile -Command"
vim.opt.shellquote = ""
vim.opt.shellxquote = ""

--------------------------------------------------
-- REMOVE SPLIT BORDERS
--------------------------------------------------

vim.opt.fillchars = { vert = "│", horiz = "─", horizup = "┴", horizdown = "┬", vertleft = "┤", vertright = "├", verthoriz =
"┼", }

vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#5e81ac", bold = true, })
