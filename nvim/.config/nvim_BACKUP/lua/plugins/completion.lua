-- lua/plugins/completion.lua
local mode = require("core.mode")

return {
  {
    "hrsh7th/nvim-cmp",

    dependencies = {
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-buffer",
      mode.lsp and "hrsh7th/cmp-nvim-lsp" or nil,
    },

    config = function()
      local cmp = require("cmp")

      local sources = {
        { name = "path" },
        { name = "buffer" },
      }

      if mode.lsp then
        table.insert(sources, 1, { name = "nvim_lsp" })
      end

      cmp.setup({
        sources = sources,

        mapping = {
          ["<Tab>"]   = cmp.mapping.select_next_item(),
          ["<S-Tab>"] = cmp.mapping.select_prev_item(),
          ["<CR>"]    = cmp.mapping.confirm({ select = true }),
        },
      })
    end,
  },
}
