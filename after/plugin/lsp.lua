-- this doc was very helpful
-- https://dev.to/vonheikemen/make-lsp-zeronvim-coexists-with-other-plugins-instead-of-controlling-them-2i80
--

local lsp = require("lsp-zero").preset({})

local function quickfix()
    vim.lsp.buf.code_action({
        filter = function(a) return a.isPreferred end,
        apply = true
    })
end

-- basic
lsp.on_attach(function(_, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({ buffer = bufnr })
  vim.keymap.set({"n","v"}, "<leader>=", function() vim.lsp.buf.format { async = false } end, { desc = "Format Doc" })
  vim.keymap.set({"n", "v"}, "<leader>gr", function() vim.lsp.buf.references() end, { desc = "List references to current symbol" })
  vim.keymap.set({"n", "v"}, "<leader>gn", function() vim.lsp.buf.document_highlight() end, { desc = "Go to next occurrence" })
  vim.keymap.set('n', '<leader>qf', quickfix, { silent = true, desc = "Quick Fix"})
  vim.keymap.set('n', '<leader>po', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>ph', '<cmd>lua vim.diagnostic.hide()<CR>', { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>ps', '<cmd>lua vim.diagnostic.show()<CR>', { noremap = true, silent = true })
  vim.keymap.set('n', '[[', '<cmd>lua vim.diagnostic.goto_prev()<CR>', { noremap = true, silent = true })
  vim.keymap.set('n', ']]', '<cmd>lua vim.diagnostic.goto_next()<CR>', { noremap = true, silent = true })
  -- The following command requires plug-ins "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim", and optionally "kyazdani42/nvim-web-devicons" for icon support
  vim.keymap.set('n', '<leader>pl', '<cmd>Telescope diagnostics<CR>', { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>r', function () vim.lsp.buf.rename() end, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>ca', function () vim.lsp.buf.code_action() end, { noremap = true, silent = true })
end)
lsp.extend_cmp()

local cmp = require('cmp')

cmp.setup({
  sources = {
    { name = 'copilot' },
    { name = 'nvim_lsp' },
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = {
    -- `Enter` key to confirm completion
    ['<CR>'] = cmp.mapping.confirm({ select = false }),

    -- Ctrl+Space to trigger completion menu
    ['<C-Space>'] = cmp.mapping.complete(),
  },
})


lsp.setup()

-- primagens setup
-- lsp.preset("recommended")
--
-- lsp.ensure_installed({
--   'tsserver',
-- })
--
-- -- Fix Undefined global 'vim'
-- lsp.nvim_workspace()
--
--
-- local cmp = require('cmp')
-- local cmp_select = { behavior = cmp.SelectBehavior.Select }
-- local cmp_mappings = lsp.defaults.cmp_mappings({
--   ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
--   ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
--   ['<C-y>'] = cmp.mapping.confirm({ select = true }),
--   ["<C-Space>"] = cmp.mapping.complete(),
-- })
--
-- -- cmp_mappings['<Tab>'] = nil
-- -- cmp_mappings['<S-Tab>'] = nil
--
-- lsp.setup_nvim_cmp({
--   mapping = cmp_mappings
-- })
--
-- lsp.set_preferences({
--   suggest_lsp_servers = false,
--   sign_icons = {
--     error = 'E',
--     warn = 'W',
--     hint = 'H',
--     info = 'I'
--   }
-- })
--
-- lsp.on_attach(function(client, bufnr)
--   local opts = { buffer = bufnr, remap = false }
--
--   vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
--   vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
--   vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
--   vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
--   vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
--   vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
--   vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
--   vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
--   vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
--   vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
-- end)
--
-- lsp.setup()
--
-- vim.diagnostic.config({
--   virtual_text = true
-- })
--
-- vim.api.nvim_create_autocmd("BufWritePre", {
--   callback = function()
--     vim.lsp.buf.format { async = false }
--   end
-- })
