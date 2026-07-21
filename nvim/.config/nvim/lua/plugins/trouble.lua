return {
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = "Trouble",
    keys = {
      {
        "<leader>d",
        "<Cmd>Trouble diagnostics toggle<CR>",
        desc = "Diagnostics",
      },
    },
    opts = {},
  },
}
