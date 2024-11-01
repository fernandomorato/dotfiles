local keymap = vim.keymap.set
-- Access file system
-- keymap("n", "<leader>e", vim.cmd.Ex)
-- Disable Arrow Keys
keymap("i", "<Up>", "<NOP>", { noremap = true })
keymap("i", "<Down>", "<NOP>", { noremap = true })
keymap("i", "<Right>", "<NOP>", { noremap = true })
keymap("i", "<Left>", "<NOP>", { noremap = true })
keymap("n", "<Up>", "<NOP>", { noremap = true })
keymap("n", "<Down>", "<NOP>", { noremap = true })
keymap("n", "<Right>", "<NOP>", { noremap = true })
keymap("n", "<Left>", "<NOP>", { noremap = true })
-- Save file shortcuts
keymap("n", "<leader>w", ":w<cr>", { desc = "Write", silent = true })
keymap("n", "<leader>q", ":q<cr>", { desc = "Quit", silent = true })
keymap("n", "<leader>x", ":x<cr>", { desc = "Write & Quit", silent = true })
-- Center cursor when <C-d> and <C-u>
keymap("n", "<C-d>", "<C-d>zz", { noremap = true })
keymap("n", "<C-u>", "<C-u>zz", { noremap = true })
-- Center cursor while searching
keymap("n", "n", "nzzzv", { noremap = true })
keymap("n", "N", "Nzzzv", { noremap = true })
-- Save to clipboard
local nvx = { "n", "v", "x" }
keymap(nvx, "<leader>d", '"_d', {noremap=true})
keymap(nvx, "<leader>y", '"+y', {noremap=true})
keymap(nvx, "<leader>p", '"+p', {noremap=true})
keymap(nvx, "<leader>P", '"+P', {noremap=true})
-- Move window
keymap("n", "<C-K>", ":wincmd K<CR>")
keymap("n", "<C-J>", ":wincmd J<CR>")
keymap("n", "<C-H>", ":wincmd H<CR>")
keymap("n", "<C-L>", ":wincmd L<CR>")
-- Easier window navigation
keymap("n", "<C-h>", ":wincmd h<CR>")
keymap("n", "<C-j>", ":wincmd j<CR>")
keymap("n", "<C-k>", ":wincmd k<CR>")
keymap("n", "<C-l>", ":wincmd l<CR>")
-- Stay in indent mode
keymap("v", "<", "<gv", { silent = true, noremap = true })
keymap("v", ">", ">gv", { silent = true, noremap = true })
-- Create a new line below without entering insert mode
keymap('n', '<Leader>o', 'o<Esc>', { noremap = true, silent = true })
-- Create a new line above without entering insert mode
keymap('n', '<Leader>O', 'O<Esc>', { noremap = true, silent = true })
