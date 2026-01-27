-- lua/lsp/init.lua

local M = {}

function M.setup()
  local servers = require("lsp.servers")

  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

	local root = vim.fs.root(0, { "pyproject.toml", ".git" })

  vim.api.nvim_create_autocmd("FileType", {
    callback = function(args)
      local ft = vim.bo[args.buf].filetype

      for name, config in pairs(servers) do
        if config.filetypes and vim.tbl_contains(config.filetypes, ft) then
          vim.lsp.start(vim.tbl_extend("force", {
            name = name,
            capabilities = capabilities,
						root_dir = root,
            bufnr = args.buf,
          }, config))
        end
      end
    end,
  })
end

return M
