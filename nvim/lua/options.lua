vim.g.mapleader = " "
vim.g.maplocalleader = " "

local options = {
  guicursor = '',
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
