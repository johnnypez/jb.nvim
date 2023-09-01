require("nvim-tree").setup({
	sort_by = "case_sensitive",
	view = {
		width = 30,
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = true,
	},
})

vim.keymap.set({ "n", "v" }, "<leader>tt", ":NvimTreeToggle<CR>", { silent = true })
vim.keymap.set({ "n", "v" }, "<leader>tf", ":NvimTreeFindFile<CR>", { silent = true })
