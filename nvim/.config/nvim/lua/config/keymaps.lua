-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>E', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
vim.keymap.set('n', '<leader>e', '<CMD>Neotree filesystem left toggle dir=./<CR>')

-- Harpoon
vim.keymap.set('n', '<leader>ha', '<CMD>lua require("harpoon.mark").add_file()<CR>', { desc = 'Harpoon add file' })
vim.keymap.set('n', '<leader>hh', '<CMD>lua require("harpoon.ui").toggle_quick_menu()<CR>', { desc = 'Harpoon menu' })
vim.keymap.set('n', '<leader>hn', '<CMD>lua require("harpoon.ui").nav_next()<CR>', { desc = 'Harpoon next mark' })
vim.keymap.set('n', '<leader>hp', '<CMD>lua require("harpoon.ui").nav_prev()<CR>', { desc = 'Harpoon previous mark' })
vim.keymap.set('n', '<leader>h1', '<CMD>lua require("harpoon.ui").nav_file(1)<CR>', { desc = 'Harpoon file 1' })
vim.keymap.set('n', '<leader>h2', '<CMD>lua require("harpoon.ui").nav_file(2)<CR>', { desc = 'Harpoon file 2' })
vim.keymap.set('n', '<leader>h3', '<CMD>lua require("harpoon.ui").nav_file(3)<CR>', { desc = 'Harpoon file 3' })
vim.keymap.set('n', '<leader>h4', '<CMD>lua require("harpoon.ui").nav_file(4)<CR>', { desc = 'Harpoon file 4' })

-- Oil
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
