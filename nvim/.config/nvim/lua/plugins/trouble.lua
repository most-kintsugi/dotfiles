return {
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = "Trouble",
    keys = {
      {
        "<A-d>",
        "<Cmd>Trouble diagnostics toggle<CR>",
        silent = true,
        desc = "Toggle Trouble diagnostics",
      },
      {
        "<A-D>",
        "<Cmd>Trouble loclist toggle<CR>",
        silent = true,
        desc = "Toggle Trouble loclist",
      },
    },
    opts = {},
  },
}
