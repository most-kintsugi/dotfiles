return {
  {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },

    opts = {
      formatters_by_ft = {
        lua = { "stylua" },

        python = { "black" },

        go = { "gofmt" },

        javascript = { "prettier" },
        javascriptreact = { "prettier" },

        typescript = { "prettier" },
        typescriptreact = { "prettier" },

        json = { "prettier" },

        css = { "prettier" },
        scss = { "prettier" },

        html = { "prettier" },

        markdown = { "prettier" },
      },
    },

    config = function(_, opts)
      require("conform").setup(opts)

      vim.keymap.set("n", "F", function()
        require("conform").format({
          async = true,
          lsp_fallback = true,
        })
      end, {
        desc = "Format buffer",
      })
    end,
  },
}
