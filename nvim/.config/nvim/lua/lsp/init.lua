-- lua/lsp/init.lua

local M = {}

function M.setup_keymaps(bufnr)
  local opts = { buffer = bufnr, noremap = true, silent = true }

  -- information
  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)

  -- actions
  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
  vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)

  -- diagnostics
  vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
  vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
end

function M.setup()
  local servers = require("lsp.servers")

  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

  vim.api.nvim_create_autocmd("FileType", {
    callback = function(args)
      local ft = vim.bo[args.buf].filetype

      local root = vim.fs.root(args.buf, {
        "pyproject.toml",
        "pyrightconfig.json",
        ".git",
      })

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

  vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
      M.setup_keymaps(args.buf)
    end,
  })
end

return M
