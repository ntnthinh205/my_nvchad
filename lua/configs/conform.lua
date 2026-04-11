local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "black" },
    c = { "clang_format" },
    cpp = { "clang_format" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    javascriptreact = { "prettier" },
    typescriptreact = { "prettier" },
    html = { "prettier" },
    css = { "prettier" },
    json = { "prettier" },
    go = { "gofmt" },
    rust = { "rustfmt" },
    sh = { "shfmt" },
  },
  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
