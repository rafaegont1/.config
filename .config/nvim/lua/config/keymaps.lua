local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.keymap.set

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Move around windows
keymap("n", "<A-h>", "<C-w>h", opts)
keymap("n", "<A-j>", "<C-w>j", opts)
keymap("n", "<A-k>", "<C-w>k", opts)
keymap("n", "<A-l>", "<C-w>l", opts)

-- Split into new windows
keymap("n", "<A-s>", "<C-w>s", opts)
keymap("n", "<A-v>", "<C-w>v", opts)

-- Resize with arrows
keymap("n", "<A-S-h>", ":vertical resize -2<CR>", opts)
keymap("n", "<A-S-j>", ":resize +2<CR>", opts)
keymap("n", "<A-S-k>", ":resize -2<CR>", opts)
keymap("n", "<A-S-l>", ":vertical resize +2<CR>", opts)

-- Close current window
keymap("n", "<A-w>", "<C-w>q", opts)

-- Move text up and down
keymap("n", "<C-j>", ":m .+1<CR>==", opts)
keymap("n", "<C-k>", ":m .-2<CR>==", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv^", opts)
keymap("v", ">", ">gv^", opts)

-- Move text up and down
keymap("v", "<C-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<C-k>", ":m '<-2<CR>gv=gv", opts)
--keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
--keymap("x", "J", ":m '>+1<CR>gv=gv", opts)
--keymap("x", "K", ":m '<-2<CR>gv=gv", opts)
--keymap("x", "<A-j>", ":m '>+1<CR>gv=gv", opts)
--keymap("x", "<A-k>", ":m '<-2<CR>gv=gv", opts)

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
