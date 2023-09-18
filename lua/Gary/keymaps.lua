vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymap 

keymap.set("i", "jk", "<ESC>") -- go from insert mode to the normal mode
keymap.set("n", "<leader>nh", ":nohl<CR>") -- remove the history of searched keyword
keymap.set("n", "x", '"_x') -- don't copy the letter when we remove it
keymap.set("n", "<leader>+", "<C-a>") -- to increment a word
keymap.set("n", "<leader>-", "<C-x>") -- to decrement a word

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally 
keymap.set("n", "<leader>se",  "<C-w>=") -- make split windows equal
keymap.set("n", "<leader>sx", ":close<CR>") -- close the current window

keymap.set("n", "<leader>pv", ":Ntree<CR>") -- start the Ntree

keymap.set("n", "<leader>ff", ":Neoformat<CR>") -- start the Ntree
