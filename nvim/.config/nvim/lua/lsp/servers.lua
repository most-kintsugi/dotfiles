-- lua/lsp/servers.lua
-- Defines which language servers are enabled

return {
  lua_ls = {
    cmd = { "lua-language-server" },
    filetypes = { "lua" },

    root_markers = {
      ".luarc.json",
      ".luarc.jsonc",
      ".luacheckrc",
      ".stylua.toml",
      ".git",
    },

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

    root_markers = {
      "pyproject.toml",
      "pyrightconfig.json",
      ".git",
    },

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

    root_markers = {
      "compile_commands.json",
      "compile_flags.txt",
      ".git",
    },

    init_options = {
      clangdFileStatus = true,
    },
  },

  gopls = {
    cmd = { "gopls" },
    filetypes = { "go" },

    root_markers = {
      "go.mod",
      ".git",
    },

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

    root_markers = {
      "package.json",
      "tsconfig.json",
      ".git",
    },

    settings = {},
  },
}
