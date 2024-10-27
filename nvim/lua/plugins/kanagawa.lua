return {
	{
		"rebelot/kanagawa.nvim",
		name = "kanagawa",
		priority = 1000,
		config = function()
			require("kanagawa").setup({
				transparent = true,
				commentStyle = { italic = true },
				colors = { background = "none" }, -- Ensure background is set to none
			})
			vim.cmd.colorscheme("kanagawa-dragon")
		end,
	},
}
