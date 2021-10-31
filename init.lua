----- vim.prelude --------------------------------------------------------------

local cmd = vim.cmd
local fn = vim.fn
local g = vim.g

-- Backup (for 'writebackup')

-- Swap
-- Undo (don't lose undo upon buffer close)
----- vim.options --------------------------------------------------------------

-- NOTE: Specify non-defaults only; nvim comes with sane defaults already.

local o = vim.opt -- not `vim.o`!
local wo = vim.wo


vim.g.syntax = true

vim.g.mouse = "a"
o.relativenumber = true
o.wrap = false


o.backup = true
o.backupcopy = "yes"
o.backupdir = vim.fn.expand(vim.fn.stdpath('data') .. '/backup//')
o.breakindent = true
o.clipboard = "unnamed"
o.completeopt = "menu,menuone,noselect"

o.confirm = true -- Ask about abandoning buffers, don't just error out
o.cursorline = true
--o.directory = "/tmp/.vim-swap//"
o.expandtab = true
o.foldenable = false
wo.foldnestmax = 10
o.foldexpr = "nvim_treesitter#foldexpr()"
o.foldmethod = "expr"
o.hidden = true
-- o.hlsearch = false
o.ignorecase = true
o.joinspaces = false
o.lazyredraw = true
o.list = true
o.listchars = "tab:||" -- lead:·
--
o.mouse = "a"
wo.number = true
o.scrolloff = 7
o.shiftwidth = 4
o.shortmess:append { c = true }
o.showbreak = "→ "
o.showmode = false
o.showtabline = 2
wo.signcolumn = "yes"
o.smartcase = true
o.smartindent = true
o.spellsuggest = "best,10"
o.tabstop = 4
g.splitright = false
g.splitblow = false

o.termguicolors = true
o.textwidth = 100
o.timeoutlen = 650
o.title = true
--o.titlestring="nvim  %{v:lua.titlestring_file()}"
--o.undodir = "/tmp/.vim-undo//"
o.undofile = true
o.updatetime = 250
o.visualbell = true

o = nil
wo = nil

vim.g.emoji = true
vim.o.encoding = "utf-8"
-- Set color scheme
g.background = "dark"

vim.g.colors_name = "onedark"
----- vim.keymaps --------------------------------------------------------------

require("keymaps")

----- vim.plugins --------------------------------------------------------------

require"plugins"

----- vim.post -----------------------------------------------------------------

-- Clear 'vimrc' augroup
cmd([[
augroup vimrc
  autocmd!
augroup end
]])

-- Remember window scroll position (don't center buffers)
--cmd([[
--augroup vimrc
--  au BufLeave * call AutoSaveWinView()
--  au BufEnter * call AutoRestoreWinView()
--augroup end
--]])

-- Highlight on yank
cmd([[
augroup vimrc
  autocmd TextYankPost * silent! lua vim.highlight.on_yank()
augroup end
]])

-- Trim trailing whitespace on save
cmd([[
augroup vimrc
  au BufWritePre * :%s/\s\+$//e
augroup end
]])

-- :help restore-cursor
cmd([[
augroup vimrc
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup end
]])

-- vim: ft=lua sw=2 ts=2 sts=2 tw=80
