return {
	{
		-- Autocompletion
		'hrsh7th/nvim-cmp',
		dependencies = {
			-- Snippet Engine & its associated nvim-cmp source
			'L3MON4D3/LuaSnip',
			'saadparwaiz1/cmp_luasnip',

			-- Adds LSP completion capabilities
			'hrsh7th/cmp-nvim-lsp',

			-- Adds a number of user-friendly snippets
			'rafamadriz/friendly-snippets',
			'onsails/lspkind.nvim',
			{
				"tzachar/cmp-tabnine",
				build = "./install.sh",
				dependencies = "hrsh7th/nvim-cmp",
				-- only limit top 3 suggestions from tabnine
				config = function()
					local tabnine = require("cmp_tabnine.config")
					tabnine:setup({
						max_lines = 1000,
						max_num_results = 3,
						sort = true,
					})
				end,
			},
			{
				'Exafunction/codeium.vim',
				event = "InsertEnter",
				keys = {
					{
						'<C-g>',
						function() return vim.fn['codeium#Accept']() end,
						expr = true,
						mode = "i"
					},
				},
				config = function()
					vim.g.codeium_no_map_tab = 1
					-- vim.keymap.set('i', '<C-g>', function() return vim.fn['codeium#Accept']() end, { expr = true })
				end
			}, },
	},
}
