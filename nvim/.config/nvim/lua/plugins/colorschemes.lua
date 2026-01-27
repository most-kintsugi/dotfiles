-- lua/plugins/colorschemes.lua

local colorscheme = "kanso-mist"

return {
  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    config = function()
      vim.cmd("colorscheme " .. colorscheme)
    end,
  },

  "webhooked/kanso.nvim",
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
