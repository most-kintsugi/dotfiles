return {
  {
    "stevearc/aerial.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      layout = {
        min_width = 40,
        default_direction = "prefer_right",
      },
      backends = { "lsp", "treesitter" },
      show_guides = true,
      filter_kind = false,
    },

    keys = {
      { "<S-a>", "<cmd>AerialToggle<cr>", desc = "Toggle Aerial" },
      { "[a", "<cmd>AerialPrev<cr>", desc = "Prev symbol" },
      { "]a", "<cmd>AerialNext<cr>", desc = "Next symbol" },
    },
  }
}
