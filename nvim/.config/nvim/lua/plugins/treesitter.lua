-- lua/plugins/treesitter.lua

return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local ok, configs = pcall(require, "nvim-treesitter.configs")
      if not ok then
        return
      end

      configs.setup({
        auto_install = true,

        ensure_installed = {
          "lua", "vim", "vimdoc",
          "c", "cpp",
          "python", "bash", "javascript",
          "html", "css", "json", "yaml",
          "markdown", "comment",
          "regex", "query",
        },

        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },

        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm",
          },
        },

        indent = {
          enable = true,
        },
      })
    end,
  },
}

