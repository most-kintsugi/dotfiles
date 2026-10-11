return {
  "MeanderingProgrammer/render-markdown.nvim",
  ft = { "markdown" },
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  ---@module 'render-markdown'
  ---@type render.md.UserConfig
  opts = {},
  config = function(_, opts)
    require("render-markdown").setup(opts)

    -- lazy loads this plugin on FileType, so the manager's init misses the
    -- buffer that triggered the load; re-fire for it to attach
    local buf = vim.api.nvim_get_current_buf()
    if vim.bo[buf].filetype == "markdown" then
      pcall(vim.api.nvim_exec_autocmds, "FileType", { group = "RenderMarkdown" })
    end
  end,
}
