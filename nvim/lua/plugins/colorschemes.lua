-- lua/plugins/colorschemes.lua

local colorscheme = "kanagawa"

return {
  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    config = function()
      vim.cmd("colorscheme " .. colorscheme)
    end,
  },

  "nanotech/jellybeans.vim",
  "nikolvs/vim-sunbather",
  "hardselius/warlock",

  {
    "anAcc22/sakura.nvim",
    dependencies = "rktjmp/lush.nvim",
  },

  {
    "AlessandroYorba/Alduin",
  },
}
