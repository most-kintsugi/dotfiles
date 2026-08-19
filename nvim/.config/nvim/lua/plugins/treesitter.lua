-- lua/plugins/treesitter.lua

return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",

    build = function()
      require("nvim-treesitter").install({
        "lua",
        "vim",
        "vimdoc",

        "c",
        "cpp",

        "python",
        "bash",

        "javascript",
        "typescript",
        "tsx",

        "html",
        "css",
        "scss",

        "json",
        "yaml",

        "markdown",
      })
    end,

    config = function()
      local ts = require("nvim-treesitter")

      ts.setup({
        highlight = {
          enable = true,
        },

        indent = {
          enable = true,
        },

        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm",
          },
        },
      })
    end,
  },
}
