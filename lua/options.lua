require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!


vim.opt.cursorline = true

vim.api.nvim_set_hl(0, "WinSeparator", {
  fg = "#42b007",
  bold = true,
})
-- vim.api.nvim_set_hl(0, "NormalNC", {
--   bg = "#1b1f27",
-- })

-- init.lua

local opt = vim.opt

opt.tabstop = 4      -- Số khoảng trắng hiển thị cho một phím Tab vật lý
opt.shiftwidth = 4   -- Số khoảng trắng được dùng khi thụt lề (với lệnh >> hoặc <<)
opt.expandtab = true -- Chuyển đổi Tab vật lý thành khoảng trắng (Spaces)
opt.softtabstop = 4  -- Số khoảng trắng mà phím Tab/Backspace sẽ xử lý khi gõ
opt.smartindent = true -- Tự động thụt lề thông minh khi xuống dòng

