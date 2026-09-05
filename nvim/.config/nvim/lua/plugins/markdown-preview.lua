return {
  {
    "iamcco/markdown-preview.nvim",

    ft = { "markdown" },

    build = "cd app && npm install --no-package-lock",

    init = function()
      vim.g.mkdp_filetypes = { "markdown" }

      vim.g.mkdp_theme = "light"
      vim.g.mkdp_auto_close = 0
      vim.g.mkdp_combine_preview = 1

      vim.g.mkdp_browser = "firefox"
      vim.g.mkdp_echo_preview_url = 1
    end,

    cmd = {
      "MarkdownPreview",
      "MarkdownPreviewStop",
      "MarkdownPreviewToggle",
    },

    keys = {
      {
        "<leader>mp",
        "<cmd>MarkdownPreviewToggle<CR>",
        ft = "markdown",
        desc = "Markdown Preview",
      },
    },
  },
}
