-- ~/.config/nvim/lua
--
local autocmd = vim.api.nvim_create_autocmd
-- Highlight yanked text
local function highlight_yank()
	vim.highlight.on_yank({
		higroup = "IncSearch",
		timeout = 40,
	})
end

autocmd("TextYankPost", { callback = highlight_yank })

require("options") -- Options -> ~/.config/nvim/lua/options.lua
require("remap") -- Remaps -> ~/.config/nvim/lua/remap.lua
require("lazy_init") -- Lazy -> ~/.config/nvim/lua/lazy_init.lua

