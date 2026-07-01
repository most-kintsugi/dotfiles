return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      local telescope = require("telescope")
      local builtin = require("telescope.builtin")

      telescope.setup({
        defaults = {
          layout_strategy = "horizontal",
          layout_config = {
            prompt_position = "top",
          },
          sorting_strategy = "ascending",
        },
      })


      vim.keymap.set("n", "<leader>ff", builtin.find_files, {
        desc = "Find Files",
      })

      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {
          desc = "Live Grep",
      })

      vim.keymap.set("n", "<leader>fb", builtin.buffers, {
          desc = "Buffers",
      })

	    vim.keymap.set("n", "gd", builtin.lsp_definitions, {
	        desc = "Go to Definition",
	    })

	    vim.keymap.set("n", "gr", builtin.lsp_references, {
	        desc = "References",
	    })

	    vim.keymap.set("n", "gi", builtin.lsp_implementations, {
	        desc = "Implementations",
	    })

    end,
  },
}
