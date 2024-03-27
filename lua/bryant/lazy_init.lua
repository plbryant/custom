local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
	local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
	vim.fn.system({
		'git',
		'clone',
		'--filter=blob:none',
		'--branch=stable',
		lazyrepo,
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup({ { import = 'bryant.lazy' } }, {
	defaults = { lazy = true },
	change_detection = { notify = false },
	checker = { enabled = false, notify = false },
	install = { missing = true },
	performance = {
		rtp = {
			disabled_plugins = {
				'2html_plugin',
				'tohtml',
				'getscript',
				'getscriptPlugin',
				'gzip',
				'logipat',
				'netrw',
				'netrwPlugin',
				'netrwSettings',
				'netrwFileHandlers',
				'matchit',
				'tar',
				'tarPlugin',
				'rrhelper',
				'spellfile_plugin',
				'vimball',
				'vimballPlugin',
				'zip',
				'zipPlugin',
				'tutor',
				'rplugin',
				'syntax',
				'synmenu',
				'optwin',
				'compiler',
				'bugreport',
				'ftplugin',
			},
		},
	},
})
