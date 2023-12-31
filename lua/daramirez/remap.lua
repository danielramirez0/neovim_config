vim.g.mapleader = " "
-- Escape file mode to directory view
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- Move blocks and auto indent
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- Keeps cursor at beging when appending line below
vim.keymap.set("n", "J", "mzJ`z")
-- Keeps cursor in the middle with half page jumps
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- Keeps cursor in the middle with search terms
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
-- Deletes highlighted word into void register to preserve original value
vim.keymap.set("x", "<leader>p", "\"_dP")
-- Yanks to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
-- Delete to void register
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")
-- Kill Cap Q
vim.keymap.set("n", "Q", "<nop>")
-- Return to another session using tmux
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- Format text using LSP
vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)
-- Improve navigation for up and down
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
-- Replace highlighted word
vim.keymap.set("n", "<leader>sa", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
-- Make current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
