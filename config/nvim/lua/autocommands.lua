-- highlight matches while actively searching
local incsearch_highlight = vim.api.nvim_create_augroup('IncSearchHl', { clear = true })
vim.api.nvim_create_autocmd('CmdlineEnter', {
    pattern = [[/,\?]],
    group = incsearch_highlight,
    command = 'set hlsearch'
})
vim.api.nvim_create_autocmd('CmdlineLeave', {
    pattern = [[/,\?]],
    group = incsearch_highlight,
    command = 'set nohlsearch'
})

-- in addition, highlight on yank
local yank_highlight = vim.api.nvim_create_augroup('YankHl', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.highlight.on_yank()
    end,
    group = yank_highlight,
    pattern = '*'
})

