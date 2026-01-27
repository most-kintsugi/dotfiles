-- ====================================================================
-- Neovim API shorthands (for easier writing)
-- ====================================================================
local cmd = vim.cmd             -- execute Vimscript commands (:command)
local opt = vim.opt             -- manage options (:set)
local api = vim.api             -- direct interaction with Neovim API

-- ====================================================================
-- Core Settings (analogue to set/set no)
-- ====================================================================

cmd('syntax enable')
cmd('filetype indent on')
cmd('filetype plugin on')

-- Tab and Indentation settings
opt.expandtab = false       -- use tabs instead of spaces (set noexpandtab)
opt.smarttab = true         -- smart tabs (set smarttab)
opt.tabstop = 4             -- tab width (set tabstop=4)
opt.softtabstop = 4         -- soft tab stop (set softtabstop=4)
opt.shiftwidth = 4          -- indent width when shifting (set shiftwidth=4)
opt.smartindent = true			-- autoindent new lines

-- Interface and Appearance
opt.number = true           -- line numbers (set number)
opt.ruler = true            -- show cursor position (set ruler)
opt.foldcolumn = '2'        -- space on the left for code folding (set foldcolumn=2)
opt.wrap = false            -- do not wrap lines (set nowrap)
opt.colorcolumn = '80'      -- vertical line at 80 characters (set colorcolumn=80)
opt.termguicolors = true

-- Searching
opt.ignorecase = true       -- ignore case when searching (set ignorecase)
opt.smartcase = true        -- smart case (set smartcase)
opt.hlsearch = true         -- highlight search results (set hlsearch)
opt.incsearch = true        -- incremental search (set incsearch)

-- Miscellaneous
opt.mouse = 'a'             -- enable mouse everywhere (set mouse=a)
opt.encoding = 'utf8'       -- encoding (set encoding=utf8)
opt.belloff = 'all'         -- turn off all sounds (set belloff=all)
opt.splitright = true       -- :vs opens on the right (set splitright)
opt.swapfile = false        -- do not use swap files (set noswapfile)
opt.so=5										-- always put cursor at the center

-- disable auto commenting new lines
cmd [[au BufEnter * set fo-=c fo-=r fo-=o]]

-- two spaces for selected filetypes
cmd [[
autocmd FileType vue,conf,xml,html,xhtml,css,scss,javascript,lua,yaml,htmljinja setlocal shiftwidth=2 tabstop=2
]]

-- ====================================================================
-- Autocmds (Automatic Commands)
-- ====================================================================

-- Relative numbers in Normal mode, absolute numbers in Insert mode
-- This is implemented using the modern Neovim API structure:
api.nvim_create_augroup("numbertoggle", { clear = true })
api.nvim_create_autocmd({"BufEnter", "FocusGained", "InsertLeave"}, {
  group = "numbertoggle",
  callback = function()
    opt.relativenumber = true
  end
})
api.nvim_create_autocmd({"FocusLost", "InsertEnter"}, {
  group = "numbertoggle",
  callback = function()
    opt.relativenumber = false
  end
})

