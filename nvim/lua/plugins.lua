-- ~/.config/nvim/lua/plugins.lua

-- Setup lazy.nvim 
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git", "clone", "--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)


-- Plugins
require("lazy").setup({

	-- Treesitter parser --
	{
    "nvim-treesitter/nvim-treesitter",
		lazy = false,
    build = ":TSUpdate",
  },

	"tpope/vim-commentary",				-- Helping with commenting
	"jiangmiao/auto-pairs",				-- Auto closing brackets

	-- Oil file-manager
	{
	  "stevearc/oil.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("oil").setup({
				delete_to_trash = true,
				float = {
					max_width = 70,
					border = "rounded",
					padding = 2,
				},
				columns = { "icon", "size" },
			})
		vim.keymap.set("n", "-", require("oil").open_float)
	end
	},															

	--- ------------ ---
	--- Colorschemes ---
	--- ------------ ---
	"nanotech/jellybeans.vim",		
	"nikolvs/vim-sunbather",
	"hardselius/warlock",

	-- Sakura
	{
		"anAcc22/sakura.nvim",
		dependencies = "rktjmp/lush.nvim"
	},
	--  Alduin 
	{
		"AlessandroYorba/Alduin",
		config = function()
			-- vim.g.alduin_Shout_Dragon_Aspect = 1
		end
	},

	--- -------------- ---
	--- Autocompletion ---
	--- -------------- ---

	-- nvim-cmp with path completion
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-path",				-- File path completion
			"hrsh7th/cmp-buffer",			-- Text completion from buffer
		},
		config = function()
			local cmp = require("cmp")
			cmp.setup({
				sources = {
					{ name = "path" },		-- Path autocompletion
					{ name = "buffer" },	-- Text autocompletion
				},
				mapping = {
					["<Tab>"] = cmp.mapping.select_next_item(),
					["<S-Tab>"] = cmp.mapping.select_prev_item(),
					["<CR>"] = cmp.mapping.confirm({ selet = true }),
				}
			})
		end,
	},

})
