require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD mode" })
map("i", "jk", "<Esc>", { noremap = true, silent = true })

map({ "n", "i", "v" }, "<C-s>", "<cmd>w<CR>")

map("n", "<leader>cc", ":CopyDiagnostic<CR>", { desc = "Copy diagnostic" })

map("n", "<Esc>", ":nohlsearch<CR>")
map("n", "q", ":nohlsearch<CR>")
map("v", "q", "<Esc>")

map("n", "J", "5jzz", { silent = true })
map("n", "K", "5kzz", { silent = true })

map("n", "<C-h>", "<C-w>h", { silent = true })
map("n", "<C-j>", "<C-w>j", { silent = true })
map("n", "<C-k>", "<C-w>k", { silent = true })
map("n", "<C-l>", "<C-w>l", { silent = true })

map("n", "<Leader>vs", ":vsplit<CR>", { silent = true })
map("n", "<Leader>hs", ":split<CR>", { silent = true })

map("n", "<D-a>", "ggVG", { silent = true })

map("n", "gh", "G", { silent = true })
map("n", "vv", "V", { silent = true })

map("t", "<Esc>", [[<C-\><C-n>]])
