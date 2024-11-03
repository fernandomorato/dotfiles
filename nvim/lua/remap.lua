local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }
-- Access file system
-- keymap("n", "<leader>e", vim.cmd.Ex)
-- Disable Arrow Keys
keymap("i", "<Up>", "<NOP>", opts)
keymap("i", "<Down>", "<NOP>", opts)
keymap("i", "<Right>", "<NOP>", opts)
keymap("i", "<Left>", "<NOP>", opts)
keymap("n", "<Up>", "<NOP>", opts)
keymap("n", "<Down>", "<NOP>", opts)
keymap("n", "<Right>", "<NOP>", opts)
keymap("n", "<Left>", "<NOP>", opts)
-- Save file shortcuts
keymap("n", "<leader>w", ":w<cr>", { desc = "Write", silent = true })
keymap("n", "<leader>q", ":q<cr>", { desc = "Quit", silent = true })
keymap("n", "<leader>x", ":x<cr>", { desc = "Write & Quit", silent = true })
-- Center cursor when <C-d> and <C-u>
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)
-- Center cursor while searching
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)
-- Save to clipboard
local nvx = { "n", "v", "x" }
keymap(nvx, "<leader>d", '"_d', opts)
keymap(nvx, "<leader>y", '"+y', opts)
keymap(nvx, "<leader>p", '"+p', opts)
keymap(nvx, "<leader>P", '"+P', opts)
-- Move window
keymap("n", "<C-K>", ":wincmd K<CR>", opts)
keymap("n", "<C-J>", ":wincmd J<CR>", opts)
keymap("n", "<C-H>", ":wincmd H<CR>", opts)
keymap("n", "<C-L>", ":wincmd L<CR>", opts)
-- Easier window navigation
keymap("n", "<C-h>", ":wincmd h<CR>", opts)
keymap("n", "<C-j>", ":wincmd j<CR>", opts)
keymap("n", "<C-k>", ":wincmd k<CR>", opts)
keymap("n", "<C-l>", ":wincmd l<CR>", opts)
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
-- Create a new line below without entering insert mode
keymap("n", "<Leader>o", "o<Esc>", opts)
-- Create a new line above without entering insert mode
keymap("n", "<Leader>O", "O<Esc>", opts)
keymap("n", "x", '"_x', opts)
