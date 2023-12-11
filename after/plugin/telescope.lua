local actions = require('telescope.actions')

local select_one_or_multi = function(prompt_bufnr)
  local picker = require('telescope.actions.state').get_current_picker(prompt_bufnr)
  local multi = picker:get_multi_selection()
  if not vim.tbl_isempty(multi) then
    require('telescope.actions').close(prompt_bufnr)
    for _, j in pairs(multi) do
      if j.path ~= nil then
        vim.cmd(string.format("%s %s", "edit", j.path))
      end
    end
  else
    require('telescope.actions').select_default(prompt_bufnr)
  end
end

require('telescope').setup({
  defaults = {
    layout_strategy = 'vertical',
    layout_config = { height = 0.95 },
    mappings = {
      i = {
        ["<CR>"] = select_one_or_multi,
      },
    },
  },
  extensions = {
    fzf = {
      fuzzy = true,                   -- false will only do exact matching
      override_generic_sorter = true, -- override the generic sorter
      override_file_sorter = true,    -- override the file sorter
      case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
    }
  },
  pickers = {
    buffers = {
      mappings = {
        i = {
          ["x"] = actions.delete_buffer,
        },
      },
    },
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
