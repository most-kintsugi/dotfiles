local mode = require("core.mode")

require('core.settings')
require('core.keymaps')
require('plugins')

if mode.lsp then
  require('lsp').setup()
end
