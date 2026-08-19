local M = {}


-----------------
-- LSP KEYMAPS --
-----------------

function M.setup_keymaps(bufnr)
  local opts = { buffer = bufnr, noremap = true, silent = true }

  vim.keymap.set("n", "K", vim.lsp.buf.hover, vim.tbl_extend("force", opts, {
    desc = "Hover documentation",
  }))

  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, vim.tbl_extend("force", opts, {
    desc = "Rename symbol",
  }))

  vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, vim.tbl_extend("force", opts, {
    desc = "Code actions",
  }))

  vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, vim.tbl_extend("force", opts, {
    desc = "Previous diagnostic",
  }))

  vim.keymap.set("n", "]d", vim.diagnostic.goto_next, vim.tbl_extend("force", opts, {
    desc = "Next diagnostic",
  }))
end


-----------------
-- LSP START --
-----------------

function M.start(bufnr)
  local servers = require("lsp.servers")

  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

  local ft = vim.bo[bufnr].filetype

  local root = vim.fs.root(bufnr, {
    ".git",

    "pyproject.toml",
    "pyrightconfig.json",

    "go.mod",

    "compile_commands.json",
    "compile_flags.txt",

    "package.json",
    "tsconfig.json",
  })


  for name, config in pairs(servers) do
    if config.filetypes and vim.tbl_contains(config.filetypes, ft) then

      vim.lsp.start(
        vim.tbl_extend("force", {
          name = name,
          capabilities = capabilities,
          root_dir = root,
        }, config),
        {
          bufnr = bufnr,
        }
      )

    end
  end
end



-----------------
-- SETUP --
-----------------

function M.setup()

  require("lsp.commands")
  vim.api.nvim_create_autocmd("BufEnter", {
    callback = function(args)
      M.start(args.buf)
    end,
  })


  vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
      M.setup_keymaps(args.buf)
    end,
  })

end


return M
