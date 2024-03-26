return {
	'lewis6991/gitsigns.nvim',
	event = 'BufEnter',
	opts = {
		signs = {
			add = { text = '+' },
			change = { text = '~' },
			delete = { text = '_' },
			topdelete = { text = '‾' },
			changedelete = { text = '~' },
		},

		on_attach = function(bufnr)
			local gs = package.loaded.gitsigns

			local function opts(desc)
				return { buffer = bufnr, desc = desc }
			end

			local map = vim.keymap.set

			map('n', '[gh', function()
				if vim.wo.diff then
					return '[gh'
				end
				vim.schedule(function()
					gs.next_hunk()
				end)
				return '<Ignore>'
			end, { expr = true })

			map('n', '[gl', function()
				if vim.wo.diff then
					return '[gl'
				end
				vim.schedule(function()
					gs.prev_hunk()
				end)
				return '<Ignore>'
			end, { expr = true })

			map('n', '<leader>rh', gs.reset_hunk, opts('Reset Hunk'))
			map('n', '<leader>ph', gs.preview_hunk, opts('Preview Hunk'))
			map('n', '<leader>gb', gs.blame_line, opts('Blame Line'))
		end,
	},
}
