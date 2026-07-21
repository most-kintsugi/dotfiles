return {
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install --no-package-lock",

    ft = { "markdown" },

    init = function ()
      vim.g.mkdp_theme = "light"
      vim.g.mkdp_auto_close = 0
      vim.g.mkdp_combine_preview = 1
    end,

    cmd = {
      "MarkdownPreview",
      "MarkdownPreviewStop",
      "MarkdownPreviewToggle",
    },

    keys = {
      { "<leader>mp", "<cmd>MarkdownPreviewToggle<CR>", desc = "Markdown Preview" },
    },
  },
}
