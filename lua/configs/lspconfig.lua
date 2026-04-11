require("nvchad.configs.lspconfig").defaults()
local lspconfig = require("lspconfig")


-- read :h vim.lsp.config for changing options of lsp servers 

local servers = {
  "pyright",
  "clangd",
  "tsserver",
  "html",
  "cssls",
  "lua_ls",
  "gopls",
  "rust_analyzer",
  "bashls",
}

vim.lsp.enable(servers)

