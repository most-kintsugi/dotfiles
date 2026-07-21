-- lua/lsp/servers.lua
-- Defines which language servers are enabled


return {
  lua_ls = {
    cmd = { "lua-language-server" },
    filetypes = { "lua" },

    settings = {
      Lua = {
        diagnostics = {
          globals = { "vim" },
        },
        workspace = {
          checkThirdParty = false,
        },
        telemetry = {
          enable = false,
        },
      },
    },
  },

	pyright = {
    cmd = { "pyright-langserver", "--stdio" },
    filetypes = { "python" },
    settings = {
      python = {
        analysis = {
          typeCheckingMode = "basic",
          autoSearchPaths = true,
          useLibraryCodeForTypes = true,
        },
      },
    },
  },

	clangd = {
	  cmd = { "clangd" },
	  filetypes = { "c", "cpp" },

	  init_options = {
	    clangdFileStatus = true,
	  },
	},

  gopls = {
    cmd = { "gopls" },
    filetypes = { "go" },
    settings = {
      gopls = {
        analyses = {
          unusedparams = true,
        },
        staticcheck = true,
      },
    },
  },

  -- html_ls = {
  --   cmd = { "vscode-html-language-server", "--stdio" },
  --   filetypes = { "html" },
  --   settings = {},
  -- },

  typescript_language_server = {
    cmd = { "typescript-language-server", "--stdio" },

    filetypes = {
      "typescript",
      "typescriptreact",
      "javascript",
      "javascriptreact",
    },

    settings = {},
  },
}
