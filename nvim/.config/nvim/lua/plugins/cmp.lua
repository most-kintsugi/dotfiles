return {
  {
    "hrsh7th/nvim-cmp",

    dependencies = {
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-nvim-lsp",
    },

    config = function()
      local cmp = require("cmp")

      local sources = {
        { name = "nvim_lsp" },
        { name = "path" },
        { name = "buffer" },
      }

      cmp.setup({
        sources = sources,

        mapping = {
          ["<Tab>"]   = cmp.mapping.select_next_item(),
          ["<S-Tab>"] = cmp.mapping.select_prev_item(),
          ["<CR>"]    = cmp.mapping.confirm({ select = true }),
        },
      })
    end,
  }
}
