return {
	'nvim-treesitter/nvim-treesitter',
	build = ':TSUpdate',
	opts = {
		ensure_installed = {
			'bash',
			'c',
			'html',
			'lua',
			'markdown',
			'vim',
			'vimdoc',
		},
		auto_install = true,
		indent = { enable = true },
		highlight = {
			enable = true,
		},
	},
	config = function(_, opts)
		require('nvim-treesitter.configs').setup(opts)
	end,
}
