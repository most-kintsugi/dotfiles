-- lua/plugins/colorschemes.lua


local colorscheme = "kanso-pearl"

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

  {
    "anAcc22/sakura.nvim",
    dependencies = "rktjmp/lush.nvim",
  },

  {
    "AlessandroYorba/Alduin",
  },
}
