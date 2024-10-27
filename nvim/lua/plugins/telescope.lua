return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({
				defaults = {
					vimgrep_arguments = { -- This config makes live_grep work for symlinks, symlink folders and hidden files
						"rg",
						"--hidden",
						"--with-filename",
						"--line-number",
						"--column",
						"--smart-case",
						"--follow",
					},
          file_ignore_patterns = { ".git/" },
				},
				pickers = {
					find_files = {
						hidden = true,
						follow = true,
					},
				},
			})
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<C-p>", builtin.find_files, {})
			vim.keymap.set("n", "<leader>lg", builtin.live_grep, {})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
