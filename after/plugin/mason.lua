local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

local default_setup = function(server)
	require('lspconfig')[server].setup({
		capabilities = lsp_capabilities,
	})
end

require("mason").setup {
    ui = {
        check_outdated_packages_on_open = true,
        border = "none",
        width = 0.8,
        height = 0.9,
	icons = {
		package_installed = "✓",
		package_pending = "",
		package_uninstalled = "✗"
	},
        keymaps = {
            toggle_package_expand = "<CR>",
            install_package = "i",
            update_package = "u",
            check_package_version = "c",
            update_all_packages = "U",
            check_outdated_packages = "C",
            uninstall_package = "X",
            cancel_installation = "<C-c>",
            apply_language_filter = "<C-f>",
            toggle_package_install_log = "<CR>",
            toggle_help = "g?",
        },
    },
}

require('mason-lspconfig').setup({
	ensure_installed = { "clangd", "lua_ls", "rust_analyzer" },
	automatic_installation = true,
	handlers = {
		default_setup,
	},
})

