-- set colorscheme
vim.o.termguicolors = true
vim.cmd.colorscheme 'catppuccin'

-- enable mouse
vim.o.mouse = 'a'

-- enable line numbers + make them relative
vim.o.number = true
vim.o.relativenumber = true

-- highlight current cursor line
vim.o.cursorline = true

-- use 4 spaces instead of tabs. may be overridden by vim-sleuth
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.expandtab = true

-- visually indent wrapped lines
vim.o.breakindent = true

-- set clipboard provider to be global
vim.opt.clipboard = 'unnamedplus'

-- single statusline for all open buffers
vim.o.laststatus = 3

-- don't take up extra space for commandline
vim.o.cmdheight = 0

-- save undo history to a file for persistence
vim.o.undofile = true

-- case insensitive searching unless '/c' or capital letters in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- decrease update time
vim.o.updatetime = 100

-- always draw the signcolumn
vim.o.signcolumn = 'yes'

-- better completion experience
vim.o.completeopt = 'menuone,preview,noselect'

-- disable highlighting previous search patterns
vim.o.hlsearch = false

