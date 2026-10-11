return {
  {
    "nickjvandyke/opencode.nvim",
    dependencies = {
      {
        "folke/snacks.nvim",
        opts = {
          input = {},
          picker = {},
          terminal = {},
        },
      },
    },
    config = function()
      vim.g.opencode_opts = {}

      -- Core: ask a prompt / pick an action
      vim.keymap.set({ "n", "x" }, "<C-a>", function()
        require("opencode").ask("@this: ")
      end, { desc = "Ask OpenCode" })

      vim.keymap.set({ "n", "x" }, "<C-x>", function()
        require("opencode").select()
      end, { desc = "Select OpenCode" })

      -- Operator: send a range. `go` + motion (e.g. `ap`), `goo` = current line
      vim.keymap.set({ "n", "x" }, "go", function()
        return require("opencode").operator("@this")
      end, { expr = true, desc = "Send range to OpenCode" })

      vim.keymap.set("n", "goo", function()
        return require("opencode").operator("@this") .. "_"
      end, { expr = true, desc = "Send line to OpenCode" })
    end,
  },
}
