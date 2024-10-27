vim.g.mapleader = " "
vim.g.maplocalleader = " "

local options = {
  relativenumber = true,
  number = true,

  tabstop = 2,
  softtabstop = 2,
  shiftwidth = 2,
	expandtab = true,
	smartindent = true,

	wrap = true,

	hlsearch = false,
	incsearch = true,

	termguicolors = true,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end
