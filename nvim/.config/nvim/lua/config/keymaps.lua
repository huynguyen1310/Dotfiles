-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local wk = require("which-key")
wk.register(mappings, opts)

wk.register({
  ["<leader>h"] = {
    name = "+harpoon",
    a = { "<cmd>lua require('harpoon.mark').add_file()<CR>", "Add to harpoon" },
    e = { "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", "Harpoon navigation" },
  },
})

-- local function map(mode, lhs, rhs, opts)
--   local keys = require("lazy.core.handler").handlers.keys
--   ---@cast keys LazyKeysHandler
--   -- do not create the keymap if a lazy keys handler exists
--   if not keys.active[keys.parse({ lhs, mode = mode }).id] then
--     opts = opts or {}
--     opts.silent = opts.silent ~= false
--     if opts.remap and not vim.g.vscode then
--       opts.remap = nil
--     end
--     vim.keymap.set(mode, lhs, rhs, opts)
--   end
-- end
--
-- --Harpoon
-- map("n", "<leader>ha", "<cmd>lua require('harpoon.mark').add_file()<CR>", { desc = "Add file to harpoon" })
-- map("n", "<leader>he", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", { desc = "Toggle harpoon menu" })
