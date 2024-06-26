return {
	'mrcjkb/rustaceanvim',
	version = '^4', -- Recommended
	lazy = false, -- This plugin is already lazy
	config = function()
		vim.g.rustaceanvim = {
			server = {
				default_settings = {
					['rust-analizer'] = { -- Rust analyzer is installed thought rustup
						cargo = { allFeatures = true },
					},
				},
			},
		}
	end,
}
