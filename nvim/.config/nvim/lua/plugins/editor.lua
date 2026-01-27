-- lua/plugins/editor.lua

return {

	-- Commenting
	"tpope/vim-commentary",

	-- Auto close brackets
	"jiangmiao/auto-pairs",

	-- Oil file manager
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

			vim.keymap.set("n", "-", require("oil").open_float, { desc = "Oil file manager" })
		end,
	},
}
