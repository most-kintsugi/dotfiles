return {
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = "Trouble",
    keys = {
      {
        "<leader>xd",
        "<Cmd>Trouble diagnostics toggle<CR>",
        desc = "Diagnostics",
      },
      {
        "<leader>xl",
        "<Cmd>Trouble loclist toggle<CR>",
        desc = "Location List",
      },
    },
    opts = {},
  },
}
