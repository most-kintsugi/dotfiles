-- lua/plugins/indent.lua

return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = function()
      local hooks = require("ibl.hooks")

      hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        vim.api.nvim_set_hl(0, "IblIndent", {
          fg = "#3a3a3a",
          nocombine = true,
        })
        vim.api.nvim_set_hl(0, "IblScope", {
          fg = "#505050",
          nocombine = true,
        })
      end)

      require("ibl").setup({
        indent = {
          char = "⋅",
          highlight = "IblIndent",
        },
        scope = {
          enabled = false,
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
