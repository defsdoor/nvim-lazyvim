-- This file is automatically loaded by lazyvim.config.init
local Util = require("lazyvim.util")

-- DO NOT USE THIS IN YOU OWN CONFIG!!
-- use `vim.keymap.set` instead
local map = Util.safe_keymap_set

map("n", "<A-k>", "<esc>k", { desc = "Move up" })
map("n", "<A-j>", "<esc>j", { desc = "Move down" })
map("i", "<A-k>", "<esc>gk", { desc = "Move up" })
map("i", "<A-j>", "<esc>gj", { desc = "Move down" })
map("v", "<A-k>", "<esc>gk", { desc = "Move up" })
map("v", "<A-j>", "<esc>gj", { desc = "Move down" })
