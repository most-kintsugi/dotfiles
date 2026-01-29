-- lua/plugins/colorschemes.lua


local colorscheme = "onedark_dark"

return {
  {
	"webhooked/kanso.nvim",
	 lazy = false,
	 priority = 1000,
  	 config = function()
	   vim.cmd("colorscheme " .. colorscheme)
  	 end,
  },

  "rebelot/kanagawa.nvim",
  "nanotech/jellybeans.vim",
  "nikolvs/vim-sunbather",
  "hardselius/warlock",
  "EdenEast/nightfox.nvim",
  "savq/melange-nvim",
  "e-ink-colorscheme/e-ink.nvim",
  "olimorris/onedarkpro.nvim",

  {
    "anAcc22/sakura.nvim",
    dependencies = "rktjmp/lush.nvim",
  },

  {
    "AlessandroYorba/Alduin",
  },
}
