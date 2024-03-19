return {
	'stevearc/oil.nvim',
	opts = {
		default_file_explorer = true,
		use_default_keymaps = true,
		keymaps = {
			['g?'] = 'actions.show_help',
			['<CR>'] = 'actions.select',
			['<C-s>'] = 'actions.select_vsplit',
			['<C-h>'] = 'actions.select_split',
			['<C-t>'] = 'actions.select_tab',
			['<C-p>'] = 'actions.preview',
			['<leader>e'] = 'actions.close',
			['<C-r>'] = 'actions.refresh',
			['.'] = 'actions.parent',
			['_'] = 'actions.open_cwd',
			['`'] = 'actions.cd',
			['~'] = 'actions.tcd',
			['gs'] = 'actions.change_sort',
			['<C-CR>'] = 'actions.open_external',
			[','] = 'actions.toggle_hidden',
			['g\\'] = 'actions.toggle_trash',
		},
	},
	keys = {
		{
			'<leader>e',
			'<cmd>Oil<CR>',
			desc = 'harpoon file',
		},
	},
}
