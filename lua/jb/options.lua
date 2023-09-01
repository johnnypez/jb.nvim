local opt = vim.opt

vim.o.termguicolors = true
opt.mouse = "a"

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
opt.whichwrap:append "<>[]hl"

-- set relative line numbers
vim.wo.number = true
vim.o.relativenumber = true

-- indenting
vim.o.shiftwidth = 2
opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true
opt.tabstop = 2

-- Save undo history
vim.opt.undodir = os.getenv("HOME") .. "/.local/share/nvim/undo"
vim.o.undofile = true

-- Clipboard
opt.clipboard = "unnamedplus"

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

-- highlight line of  cursor
vim.o.cursorline = true

-- see :h fillchars
opt.fillchars = { eob = " " }

-- set background transparent
-- vim.opt.background = "dark"
