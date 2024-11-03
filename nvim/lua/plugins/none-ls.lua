return {
	{
		"nvimtools/none-ls.nvim",
		config = function()
			local null_ls = require("null-ls")
			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.stylua, -- Lua formatting
					null_ls.builtins.formatting.black, -- Python formatting
					null_ls.builtins.formatting.isort, -- Python imports formatting
					null_ls.builtins.formatting.gofumpt, -- Go formatting
					null_ls.builtins.diagnostics.golangci, -- Go Lint
				},
			})
			vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
		end,
	},
}
