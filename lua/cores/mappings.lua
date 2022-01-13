local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local cmd = vim.cmd

vim.g.mapleader = " "

-- Usefull mappings
map("n", "<C-s>", ":w<CR>", {})
map("i", "<C-s>", "<Esc>:w<CR>a", {})
map("n", "Q", "<Nop>", {})
map("n", "qq", "<Nop>", {})
map("n", "q:", "<Nop>", {})

-- Split
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Resize Vertical Split
map("n", "<C-z>", ":vertical resize +5<CR>", {})
map("n", "<S-z>", ":vertical resize -5<CR>", {})

-- Resize Horizontal Split
map("n", "<C-x>", ":resize +5<CR>", {})
map("n", "<S-x>", ":resize -5<CR>", {})

-- Telescope
map("n", "<Leader>b", ":NvimTreeToggle<CR>", opts)
map("n", "<Leader>ff", ":Telescope find_files<CR>", opts)
map("n", "<Leader>fo", ":Telescope oldfiles<CR>", opts)

-- bufferline.nvim
map("n", "<A-l>", ":BufferLineCycleNext<CR>", opts)
map("i", "<A-l>", "<Esc>:w<CR>:BufferLineCycleNext<CR>", opts)
map("n", "<A-h>", ":BufferLineCyclePrev<CR>", opts)
map("i", "<A-h>", "<Esc>:w<CR>:BufferLineCyclePrev<CR>", opts)
map("n", "<Leader>q", ":BufferLinePickClose<CR>", opts)
map("n", "<Leader>m", ":BufferLineCloseRight<CR>", opts)
map("n", "<Leader>n", ":BufferLineCloseLeft<CR>", opts)
map("n", "<A-<>", ":BufferLineMovePrev<CR>", opts)
map("n", "<A->>", ":BufferLineMoveNext<CR>", opts)

-- Gitsigns
map("n", "<Leader>hB", ":Gitsigns toggle_current_line_blame<CR>", opts)

-- Dashboard
map("n", "<Leader>cn", ":DashboardNewFile<CR>", opts)

-- Custom functions
-- Terminal
map("n", "<C-t>", '<cmd>lua require("cores.functions").open_terminal()<CR>', opts) -- open terminal
map("t", "<Esc>", "<C-\\><C-n>", opts) -- switch from terminal to normal mode
-- Compile C++
map("n", "<F5>", '<cmd>lua require("cores.functions").compile_cpp()<CR>', opts)
-- Live Server
map("n", "<M-o>", '<cmd>lua require("cores.functions").live_server()<CR>', opts)
-- Formatter LSP
map("n", "<Leader>fm", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
