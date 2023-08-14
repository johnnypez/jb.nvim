local map = vim.keymap.set
-- not all keymaps are here
-- mappings for specific plugins are in after/plugin/*

-- move to beginning and end of line like terminal
map({ "n", "v" }, "<C-a>", "0", { desc = "Go to start of line" })
map({ "n", "v" }, "<C-e>", "$", { desc = "Go to end of line" })
map("i", "<C-a>", "<ESC>^i", { desc = "Go to start of line" })
map("i", "<C-e>", "<ESC>$i", { desc = "Go to end of line" })


-- move lines
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move Line Down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move Line Up" })

-- move between buffers
map("n", "<leader>.", ":bn<CR>", { silent = true, desc = "Next Buffer" })
map("n", "<leader>,", ":bp<CR>", { silent = true, desc = "Prev Buffer" })

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


map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "Find & Replace Word under cursor" })

-- map("c", "<Tab>", "<C-d>", { desc = "Show Completions" })
