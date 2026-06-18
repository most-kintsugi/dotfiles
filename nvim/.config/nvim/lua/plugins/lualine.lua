return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },

    config = function()
      require("lualine").setup({
        options = {
          theme = "auto",
          icons_enabled = true,
          section_separators = "",
          component_separators = "",
        },

        sections = {
          lualine_a = { "mode" },
          lualine_b = { "branch", "diff" },

          lualine_c = {
            {
              "filename",
              path = 1, -- relative path
            },
          },

          lualine_x = {
            "diagnostics",
            "encoding",
            "filetype",
          },

          lualine_y = { "progress" },
          lualine_z = { "location" },
        },
      })
    end,
  },
}
