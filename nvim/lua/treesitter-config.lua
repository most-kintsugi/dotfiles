local M = {}

function M.setup()
    local ok, configs = pcall(require, "nvim-treesitter.configs")
    if not ok then return false end

    configs.setup({
        -- AUTO INSTALL ALL PARSERS
        auto_install = true,

        -- LIST OF LANGUAGES TO ALWAYS HAVE INSTALLED
        ensure_installed = {
            "lua", "vim", "vimdoc",           -- core
						"c", "cpp",
            "python", "bash", "javascript",   -- common
            "html", "css", "json", "yaml",    -- web/config
            "markdown", "comment",            -- documentation
            "regex", "query"                  -- treesitter itself
        },

        -- HIGHLIGHT SETTINGS
        highlight = {
            enable = true,
            disable = {},                      -- languages to disable highlight
            additional_vim_regex_highlighting = false,
        },

        -- INCREMENTAL SELECTION
        incremental_selection = {
            enable = true,
            keymaps = {
                init_selection = "gnn",
                node_incremental = "grn",
                scope_incremental = "grc",
                node_decremental = "grm",
            },
        },

        -- INDENTATION (experimental)
        indent = {
            enable = true
        },
    })

    return true
end

return M
