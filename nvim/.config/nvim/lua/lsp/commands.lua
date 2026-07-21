local M = {}

vim.api.nvim_create_user_command("LspRestart", function()
  local clients = vim.lsp.get_clients()

  for _, client in ipairs(clients) do
    client:stop()
  end

  vim.defer_fn(function()
    vim.cmd("edit")
  end, 500)
end, {
  desc = "Restart all LSP clients",
})


vim.api.nvim_create_user_command("LspStop", function()
  for _, client in ipairs(vim.lsp.get_clients()) do
    client:stop()
  end
end, {
  desc = "Stop all LSP clients",
})


vim.api.nvim_create_user_command("LspInfo", function()
  vim.cmd("checkhealth vim.lsp")
end, {
  desc = "Show LSP information",
})


return M
