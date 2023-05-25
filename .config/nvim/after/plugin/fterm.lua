require'FTerm'.setup({
    border = 'single',
    dimensions  = {
        height = 0.9,
        width = 0.9,
        x = 0.5,
        y = 0.5
    },
})

vim.keymap.set('n', '<leader>tt', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<leader>tt', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
