local tOk, telescope = pcall(require, "telescope")
local keyOk, kmap = pcall(require, "core")
if not tOk then
	return
end
if not keyOk then
	return
end
telescope.setup({
	extensions = {
		fzf = {
			fuzzy = true, -- false will only do exact matching
			override_generic_sorter = true, -- override the generic sorter
			override_file_sorter = true, -- override the file sorter
			case_mode = "smart_case", -- or "ignore_case" or "respect_case"
			-- the default case_mode is "smart_case"
		},
	},
})
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
telescope.load_extension("fzf")

-- Keymaps
kmap.setKmap("n", "<leader>a", "<cmd>Telescope find_files<cr>")
kmap.setKmap("n", "<leader>w", "<cmd>Telescope buffers<cr>")
kmap.setKmap("n", "<leader>lr", "<cmd>Telescope lsp_references<cr>")
