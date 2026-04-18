require('nvim-treesitter.configs').setup({
	ensure_installed = { "c", "lua", "agda", "cpp", "rust" },
	sync_install = true,
	auto_install = true,
	highlight = {
		enable = true,
		disable = {},
		additional_vim_regex_highlighting = false,
	},
})
