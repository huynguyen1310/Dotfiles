require('lazy').setup({
  -- Git related plugins
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',

  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',


  require 'kickstart.plugins.autoformat',
  -- require 'kickstart.plugins.debug',

  { import = 'custom.plugins' },
}, {})

-- vim: ts=2 sts=2 sw=2 et
