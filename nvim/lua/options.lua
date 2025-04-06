vim.g.mapleader = " "
vim.g.maplocalleader = " "

local options = {
  relativenumber = true,
  number = true,
  scrolloff = 5,
  tabstop = 2,
  softtabstop = 2,
  shiftwidth = 2,
	expandtab = true,
  autoindent = true,
	smartindent = true,
	wrap = true,
  linebreak = true,
	hlsearch = false,
	incsearch = true,
	termguicolors = true,
  background = "dark"
}

for k, v in pairs(options) do
	vim.opt[k] = v
end


vim.diagnostic.config({
  virtual_text = true, -- Disable virtual text
  float = {
    border = "rounded",  -- Set border style
    source = "cursor",  -- Show diagnostics when cursor is on a line with an error
  }
})
