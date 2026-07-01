return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = function()
      local hooks = require("ibl.hooks")

      hooks.register(hooks.type.HIGHLIGHT_SETUP, function()

        vim.api.nvim_set_hl(0, "IblIndent", {
          fg = "#3b4252",
          nocombine = true,
        })

        vim.api.nvim_set_hl(0, "IblScope", {
          fg = "#4c566a",
          nocombine = true,
        })
      end)

      require("ibl").setup({
        indent = {
          char = "▏",
          -- char = "│",
          -- char = "∘",


          highlight = "IblIndent",
        },
        scope = {
          enabled = true,
          highlight = "IblScope",
        },
        whitespace = {
          remove_blankline_trail = true,
        },
        exclude = {
          filetypes = {
            "help",
            "terminal",
            "dashboard",
            "lazy",
            "mason",
          },
        },
      })
    end,
  },
}
