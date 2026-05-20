-- lua/plugins/lsp.lua


return {
  {
    "williamboman/mason.nvim",
    config = true,
  },

  -- optional
  {
    "neovim/nvim-lspconfig",
    lazy = false,
  },
}
