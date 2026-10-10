vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>r.", vim.cmd.Ex)

-- Save & Quit
keymap.set("n", "<leader>w", ":w<CR>")
keymap.set("n", "<leader>q", ":q<CR>")
keymap.set("n", "<leader>x", ":x<CR>")

-- Clear search highlight
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- Better window navigation
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-l>", "<C-w>l")

-- Move selected lines UP & DOWN
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep cursor centered when scrolling
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep search results centered
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- Escape closes terminal
keymap.set("t", "<Esc>", [[<C-``><C-n>]])
