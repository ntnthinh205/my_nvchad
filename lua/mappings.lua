require "nvchad.mappings"

local map = vim.keymap.set

-- OS detect
local os_name = vim.loop.os_uname().sysname
local is_mac = os_name == "Darwin"
local is_linux = os_name == "Linux"
local is_windows = os_name:match "Windows" ~= nil

-- ========================
-- CORE MAPPINGS (ALL OS)
-- ========================

map("n", ";", ":", { desc = "CMD mode" })

map("i", "jk", "<Esc>", { noremap = true, silent = true })
map({ "n", "i", "v" }, "<C-s>", "<cmd>w<CR>")

map("n", "<leader>cc", ":CopyDiagnostic<CR>", { desc = "Copy diagnostic" })

map("n", "<Esc>", ":nohlsearch<CR>")
map("n", "q", ":nohlsearch<CR>")
map("v", "q", "<Esc>")

map("n", "J", "5j", { silent = true })
map("n", "K", "5k", { silent = true })

map("n", "<C-h>", "<C-w>h", { silent = true })
map("n", "<C-j>", "<C-w>j", { silent = true })
map("n", "<C-k>", "<C-w>k", { silent = true })
map("n", "<C-l>", "<C-w>l", { silent = true })

map("n", "<Leader>vs", ":vsplit<CR>", { silent = true })
map("n", "<Leader>hs", ":split<CR>", { silent = true })

map("n", "gh", "G", { silent = true })
map("n", "vv", "V", { silent = true })

map("t", "<Esc>", [[<C-\><C-n>]])

map("n", "<leader>=", "<C-w>=", { desc = "equalize splits" })

map("n", "Q", ":wa<CR>:qa<CR>", { silent = true })

map("n", "<leader>tf", function()
    require("nvchad.term").toggle {
        pos = "float",
        id = "floatTerm",
        float_opts = {
            row = 0.02,
            col = 0.05,
            width = 0.9,
            height = 0.9,
        },
    }
end, { desc = "terminal toggle floating term" })

if is_mac then
    map("n", "<D-a>", "ggVG", { silent = true })
    map("n", "<D-s>", ":wa<CR>", { silent = true })
    map("n", "<A-h>", ":vertical resize -2<CR>", { silent = true })
    map("n", "<A-l>", ":vertical resize +2<CR>", { silent = true })
    map("n", "<A-j>", ":resize -2<CR>", { silent = true })
    map("n", "<A-k>", ":resize +2<CR>", { silent = true })
else
    map("n", "<C-a>", "ggVG", { silent = true })
    map("n", "<C-s>", ":wa<CR>", { silent = true })
    map("n", "<M-h>", ":vertical resize -2<CR>", { silent = true })
    map("n", "<M-l>", ":vertical resize +2<CR>", { silent = true })
    map("n", "<M-j>", ":resize -2<CR>", { silent = true })
    map("n", "<M-k>", ":resize +2<CR>", { silent = true })
end

