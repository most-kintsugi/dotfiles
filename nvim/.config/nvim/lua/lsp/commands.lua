local M = {}

vim.api.nvim_create_user_command("LspRestart", function()

  local bufnr = vim.api.nvim_get_current_buf()

  for _, client in ipairs(vim.lsp.get_clients({ bufnr = bufnr })) do
    client:stop()
  end


  vim.defer_fn(function()
    require("lsp").start(bufnr)
  end, 300)

end, {
  desc = "Restart current buffer LSP",
})


vim.api.nvim_create_user_command("LspStop", function()

  local bufnr = vim.api.nvim_get_current_buf()

  for _, client in ipairs(vim.lsp.get_clients({ bufnr = bufnr })) do
    client:stop()
  end

end, {
  desc = "Stop current buffer LSP",
})


vim.api.nvim_create_user_command("LspInfo", function()
  vim.cmd("checkhealth vim.lsp")
end, {
  desc = "Show LSP information",
})


return M
