local base = require ('configs.lsp.base')
local M = {
	capabilities = base.capabilities,
	on_attach = base.on_attach,
	settings = {
			Lua = {
				diagnostics = {
					-- Get the language server to recognize the `vim` global
					globals = { 'vim' },
				},

				workspace = {
					-- Make the server aware of Neovim runtime files
					library = vim.api.nvim_get_runtime_file("", true),
					checkThirdParty = false
				},
		},
	}
}
return M;
