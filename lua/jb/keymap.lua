local map = vim.keymap.set
-- not all keymaps are here
-- mappings for specific plugins are in after/plugin/*

-- move to beginning and end of line like terminal
map({ "n", "v" }, "<C-a>", "_", { desc = "Go to start of line" })
map({ "n", "v" }, "<C-e>", "$", { desc = "Go to end of line" })
map("i", "<C-a>", "<ESC>_i", { desc = "Go to start of line" })
map("i", "<C-e>", "<ESC>$i", { desc = "Go to end of line" })


-- move lines
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move Line Down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move Line Up" })

-- pull up line
vim.keymap.set("n", "J", "mzJ`z")

-- center text after search
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- move between buffers
map("n", "<A-j>", ":bn<CR>", { silent = true, desc = "Next Buffer" })
map("n", "<A-k>", ":bp<CR>", { silent = true, desc = "Prev Buffer" })

-- greatest remap ever
map("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
map({ "n", "v" }, "<leader>y", [["+y]])
map("n", "<leader>Y", [["+Y]])

map({ "n", "v" }, "<leader>d", [["_d]])

-- switch between windows
map("n", "<C-h>", "<C-w>h", { desc = "Window left" })
map("n", "<C-l>", "<C-w>l", { desc = "Window right" })
map("n", "<C-j>", "<C-w>j", { desc = "Window down" })
map("n", "<C-k>", "<C-w>k", { desc = "Window up" })

map("n", "<Esc>", ":noh <CR>", { desc = "Clear highlights" })

-- close 
map("n", "<C-c>", ":q<CR>", { desc = "Close" })

-- save
map("n", "<C-s>", ":w<CR>", { desc = "Save" })
