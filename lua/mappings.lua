require "nvchad.mappings"

local map = vim.keymap.set
-- add yours here

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<leader>cc", ":CopyDiagnostic<CR>", { desc = "Copy diagnostic at current line" })
map("n", "<Esc>", ":nohlsearch<CR>")
map("n", "q", ":nohlsearch<CR>")

map("n", "J", "5jzz", { noremap = true, silent = true })
map("n", "K", "5kzz", { noremap = true, silent = true })
map("i", "jk", "<Esc>", { noremap = true, silent = true })
map("v", "q", "<Esc>", { noremap = true, silent = true })

map("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
map("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
map("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
map("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

map("n", "<Leader>vs", ":vsplit<CR>", { noremap = true, silent = true })
map("n", "<Leader>hs", ":split<CR>", { noremap = true, silent = true })

map("n", "<D-a>", "GVgg", { noremap = true, silent = true })
map("n", "gh", "G", { noremap = true, silent = true })

map("n", "vv", "V", { noremap = true, silent = true })

map("t", "<Esc>", [[<C-\><C-n>]])


