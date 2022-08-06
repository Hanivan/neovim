-- +----------------------------------------+
-- |  ____       _   _   _                  |
-- | / ___|  ___| |_| |_(_)_ __   __ _ ___  |
-- | \___ \ / _ \ __| __| | '_ \ / _` / __| |
-- |  ___) |  __/ |_| |_| | | | | (_| \__ \ |
-- | |____/ \___|\__|\__|_|_| |_|\__, |___/ |
-- |                             |___/      |
-- +----------------------------------------+

local set = vim.opt
local g = vim.g
local o = vim.o
local cmd = vim.cmd

-- Basic

cmd([[
set formatoptions-=cro
]])
cmd([[
autocmd FileType json syntax match Comment +\/\/.\+$+
]])
set.title = true
set.fileencoding = "utf-8"
set.hidden = true
set.termguicolors = true
set.number = true
set.relativenumber = true
set.wrap = true
set.linebreak = true
set.list = true
set.mouse = "a"
set.hlsearch = true
set.autoindent = true
set.linespace = 0
set.showcmd = false
set.laststatus = 2
set.incsearch = true
set.ignorecase = true
set.smartcase = true
set.bg = "dark"
set.backup = false
set.writebackup = false
set.updatetime = 300
set.visualbell = false
set.shortmess = "atToOc"
set.completeopt = "menu,menuone,noselect"

-- For Tab
set.expandtab = true
set.smarttab = true
set.tabstop = 3
set.softtabstop = 3
set.shiftwidth = 3

-- For Split
set.splitbelow = true
set.splitright = true
set.scrolloff = 5
set.termguicolors = true

-- Colorizers
--require("colorschemes-config.nightfox")
--require("utils.colorschemes.doom")
cmd([[
colorscheme iceberg
]])

-- Python
g.python3_host_prog = "/usr/bin/python"
