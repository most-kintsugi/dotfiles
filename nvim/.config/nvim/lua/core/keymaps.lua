vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}


-- System clipboard copy -> { Shift - Y } paste -> { Shift - P }
map('v', '<S-Y>', '"+y', {})
map('n', '<S-P>', '"+p', {})

-- Fast { jj } pressing equals { ESC } 
map('i', 'jj', '<Esc>', {noremap = true})

-- clear last search highlight with { F1 }
map('n', '<F1>', ':nohl<CR>', default_opts)

-- check spelling with { F11 } 
map('n', '<leader>sp', ':set spell!<CR>', vim.tbl_extend('force', default_opts, {
  desc = 'Toggle spell check',
}))
