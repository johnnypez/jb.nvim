-- not all keymaps are here
-- mappings for specific plugins are in after/plugin/*

-- move lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move Line Down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move Line Up" })

-- move between buffers
vim.keymap.set("n", "]", "bn<CR>", { silent = false, desc = "Next Buffer" })
vim.keymap.set("n", "[", "bp<CR>", { silent = false, desc = "Prev Buffer" })

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
