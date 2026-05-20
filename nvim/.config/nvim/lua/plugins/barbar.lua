return {
  {
    "romgrk/barbar.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    init = function()
      vim.g.barbar_auto_setup = false
    end,
    config = function()
      require("barbar").setup({
        animation = true,
        auto_hide = false,
        tabpages = true,
      })

      -- buffer navigation
      vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferPrevious<CR>", { silent = true })
      vim.keymap.set("n", "<Tab>", "<Cmd>BufferNext<CR>", { silent = true })
      vim.keymap.set("n", "<S-q>", "<Cmd>BufferClose<CR>", { silent = true })
    end,
  },
}
