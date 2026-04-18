vim.api.nvim_create_autocmd('LspAttach', {
	desc = 'LSP actions',
	callback = function(event)
		local opts = {buffer = event.buf}
		local bufnr = event.buf
		local client = vim.lsp.get_client_by_id(event.data.client_id)

		vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
		vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
		vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
		vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
		vim.keymap.set('n', 'go', vim.lsp.buf.type_definition, opts)
		vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
		vim.keymap.set('n', 'gs', vim.lsp.buf.signature_help, opts)
		vim.keymap.set('n', 'gO', vim.lsp.buf.document_symbol, opts)
		vim.keymap.set('n', 'grr', vim.lsp.buf.rename, opts)
		vim.keymap.set('n', '<F2>', vim.lsp.buf.rename, opts)
		vim.keymap.set({'n', 'x'}, '<F3>', function() vim.lsp.buf.format({async = true}) end, opts)
		vim.keymap.set('n', '<F4>', vim.lsp.buf.code_action, opts)

		if client and client:supports_method('textDocument/documentHighlight') then
			local group = vim.api.nvim_create_augroup('lsp_document_highlight_' .. bufnr, { clear = true })
			vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
				group = group,
				buffer = bufnr,
				callback = vim.lsp.buf.document_highlight,
			})
			vim.api.nvim_create_autocmd('CursorMoved', {
				group = group,
				buffer = bufnr,
				callback = vim.lsp.buf.clear_references,
			})
		end
	end
})
