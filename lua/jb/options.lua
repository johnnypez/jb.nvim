vim.o.termguicolors = true

-- set relative line numbers
vim.wo.number = true
vim.o.relativenumber = true

-- set tab width
vim.o.shiftwidth = 2

-- Save undo history
vim.opt.undodir = os.getenv("HOME") .. "/.local/share/nvim/undo"
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300


-- highlight max line length
vim.opt.colorcolumn = "120"

-- highlight search
vim.o.hlsearch = true
vim.o.incsearch = true
