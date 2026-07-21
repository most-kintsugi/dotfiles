return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      preset = "modern",
      delay = 300,
      icons = {
        mappings = true,
      },
    },
    config = function(_, opts)
      local wk = require("which-key")
      wk.setup(opts)

      wk.add({
        { "<leader>d", group = "Trouble" },
        { "<leader>f", group = "Find" },
        { "<leader>c", group = "Code" },
      })
    end,
  },
}
