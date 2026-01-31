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
		
      vim.keymap.set(
        "n",
        "-",
        require("oil").open_float,
        { desc = "Oil file manager" }
      )
    end,
  },

  -- Aerial outline
  {
    "stevearc/aerial.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      layout = {
        min_width = 30,
        default_direction = "prefer_right",
      },
      backends = { "lsp", "treesitter" },
      show_guides = true,
      filter_kind = false,
    },
  },

  -- File tree explorer
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    opts = {
      filesystem = {
        follow_current_file = {
          enabled = true,
        },
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = true,

		  hide_by_name = {
			  "build",
			  "dist",
		  },

		  hide_by_pattern = {
			  "*.o",
			  "*.a",
			  "*.so",
			  "*.out",
		  },
        },
      },
      window = {
        position = "left",
        width = 24,
      },
    },
  },
}
