local opt = vim.opt

opt.termguicolors = true
opt.mouse = "a"

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
opt.whichwrap:append "<>[]hl"

-- set relative line numbers
vim.wo.number = true
opt.relativenumber = true

-- indenting
opt.shiftwidth = 2
opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true
opt.tabstop = 2

-- Save undo history
opt.undodir = os.getenv("HOME") .. "/.local/share/nvim/undo"
opt.undofile = true

-- Clipboard
opt.clipboard = "unnamedplus"

-- Case-insensitive searching UNLESS \C or capital in search
opt.ignorecase = true
opt.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
opt.updatetime = 250
opt.timeoutlen = 300


-- highlight max line length
opt.colorcolumn = "120"

-- highlight search
opt.hlsearch = true
opt.incsearch = true

-- highlight line of  cursor
opt.cursorline = true

-- see :h fillchars
opt.fillchars = { eob = " " }

-- set background transparent
-- optpt.background = "dark"
