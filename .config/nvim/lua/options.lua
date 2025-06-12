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

-- Setting diagnostics floating window

vim.o.updatetime = 300  -- milliseconds

vim.diagnostic.config({
  virtual_text = false,  -- Disable virtual text
  float = {
    border = "rounded",
    source = "always",  -- Always show the source
  },
})

-- Show diagnostics automatically in a floating window on CursorHold
vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    vim.diagnostic.open_float(nil, { focus = false })
  end,
})
