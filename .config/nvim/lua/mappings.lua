-- set <Leader> to <Space>
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- disable <Space> for normal and visual modes
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- remap <Esc> to Ctrl+C
vim.keymap.set({ 'n', 'i', 'v', 'o' }, '<C-c>', '<Esc>', { silent = true })

