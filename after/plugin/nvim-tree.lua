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

vim.keymap.set({ "i", "n", "v" }, "<leader>t", ":NvimTreeToggle<CR>", { silent = true })