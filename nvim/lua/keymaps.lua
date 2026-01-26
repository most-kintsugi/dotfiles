local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

-- System clipboard copy -> { Shift - Y } paste -> { Shift - P }
map('v', '<S-Y>', '"+y', {})
map('n', '<S-P>', '"+p', {})

-- Fast { jj } pressing equals { ESC } 
map('i', 'jj', '<Esc>', {noremap = true})

-- Jumping between windows using { Tab } and { S-Tab }
--
-- ***UNCOMMENT WHEN INSTALL (akinsho/bufferline.nvim) PLUGIN
--
--   map('n', '<Tab>', ':BufferLineCycleNext<CR>', default_opts)
--   map('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', default_opts)

-- clear last search highlight with { F1 }
map('n', '<F1>', ':nohl<CR>', default_opts)

-- check orphography with { F11 }
map('n', '<F11>', ':set spell!<CR>', default_opts)
map('i', '<F11>', '<C-O>:set spell!<CR>', default_opts)
