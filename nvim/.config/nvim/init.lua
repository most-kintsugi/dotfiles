vim.g.mapleader = " "
vim.g.maplocalleader = " "
require('core.settings')
require('core.keymaps')
require('plugins')

require('lsp').setup()
