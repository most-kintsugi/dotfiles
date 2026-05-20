return {

  -- Neo-tree (project tree)
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("neo-tree").setup({
        close_if_last_window = true,
        popup_border_style = "rounded",
        enable_git_status = true,
        enable_diagnostics = true,
        filesystem = {
          follow_current_file = {
            enabled = true,
          },
          hijack_netrw_behavior = "open_default",
        },
        window = {
          width = 30,
        },
      })

      -- toggle tree visibility
      vim.keymap.set(
        "n",
        "<S-e>",
        "<Cmd>Neotree toggle filesystem<CR>",
        { silent = true }
      )

      -- jump between code <-> tree without closing
      vim.keymap.set("n", "<S-w>", function()
        if vim.bo.filetype == "neo-tree" then
          vim.cmd("wincmd p")
        else
          vim.cmd("Neotree focus filesystem")
        end
      end, { silent = true })
    end,
  },

  -- Barbar (buffer tabs)
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

  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = "Trouble",
    keys = {
      {
        "<A-d>",
        "<Cmd>Trouble diagnostics toggle<CR>",
        silent = true,
        desc = "Toggle Trouble diagnostics",
      },
      {
        "<A-D>",
        "<Cmd>Trouble loclist toggle<CR>",
        silent = true,
        desc = "Toggle Trouble loclist",
      },
    },
    opts = {},
  },

}
