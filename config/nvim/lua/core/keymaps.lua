--- keymaps file 
--

local opts = {
  noremap = true,
  silent = true
}

-- fzf tool
vim.keymap.set('n', 'fzf', ':FZF<CR>', opts)
-- neotree tool
vim.keymap.set('n', '<C-n>', ':NeoTreeToggle<CR>', opts)
-- gitgutter
vim.keymap.set('n', '<leader>df', ':GitGutterDiffOrig', opts)
-- lsp
vim.keymap.set('n', 'gl', function() vim.diagnostic.open_float() end, opts)
