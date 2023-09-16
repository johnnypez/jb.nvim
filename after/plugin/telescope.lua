require('telescope').setup({
  defaults = {
    layout_strategy = 'vertical',
    layout_config = { height = 0.95 },
  },
  extensions = {
    fzf = {
      fuzzy = true,                   -- false will only do exact matching
      override_generic_sorter = true, -- override the generic sorter
      override_file_sorter = true,    -- override the file sorter
      case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
    }
  }
})
require('telescope').load_extension('fzf')

local builtin = require('telescope.builtin')


vim.keymap.set('n', '<leader>T',':Telescope<CR>', { desc = "Open Telescope" })
vim.keymap.set('n', '<leader><leader>', builtin.find_files, { desc = "Find File" })
vim.keymap.set('n', '<leader>s', builtin.live_grep, { desc = "Search" })
vim.keymap.set('n', '<leader>S', function ()
  builtin.live_grep({ grep_open_files = true})
end, { desc = "Search Open Files" })
vim.keymap.set('n', '<leader>b', builtin.buffers, { desc = "Find Buffer" })
vim.keymap.set('n', '<leader>h', builtin.help_tags, { desc = "Find Help Tag" })
vim.keymap.set('n', '<leader>cs', builtin.lsp_document_symbols, { desc = "List Document Symbols" })
vim.keymap.set('n', '<leader>cr', builtin.lsp_references, { desc = "List References" })
