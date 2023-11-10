-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Install lazy plugin manager
require('lazy-bootstrap')

-- Setup lazy plugin manager - configure plugins
require('lazy-plugins')

-- Configure keymaps
require('config.keymaps')

-- Configure options
require('config.options')

-- Configure Telescope (fuzzy finder)
require('telescope-setup')

-- Configure Treesitter (syntax parser for highlighting)
require('treesitter-setup')

-- Configure LSP (Language Server Protocol)
require('lsp-setup')

-- Configure CMP (completion)
require('cmp-setup')
