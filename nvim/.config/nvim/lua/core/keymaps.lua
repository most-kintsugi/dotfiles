local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}


-- System clipboard copy -> { Shift - Y } paste -> { Shift - P }
map('v', '<S-Y>', '"+y', {})
map('n', '<S-P>', '"+p', {})

-- Fast { jj } pressing equals { ESC } 
map('i', 'jj', '<Esc>', {noremap = true})

-- clear last search highlight with { F1 }
map('n', '<F1>', ':nohl<CR>', default_opts)

-- check orphography with { F11 }
map('n', '<F11>', ':set spell!<CR>', default_opts)
map('i', '<F11>', '<C-O>:set spell!<CR>', default_opts)


-- PLUGINS --

-- Aerial (code outline)
map('n', '<leader>a', ':AerialToggle<CR>', default_opts)
map('n', '[a', ':AerialPrev<CR>', default_opts)
map('n', ']a', ':AerialNext<CR>', default_opts)

-- Neo-tree
vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<cr>", { desc = "File tree" })
vim.keymap.set("n", "<leader>o", "<cmd>Neotree focus<cr>", { desc = "Focus tree" })
