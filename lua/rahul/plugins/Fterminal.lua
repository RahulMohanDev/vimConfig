return {
    'numToStr/FTerm.nvim',
    config = function()
        require('FTerm').setup({
            border = 'rounded', -- You can set the border style: 'none', 'single', 'double', etc.
            dimensions = {
                height = 0.8, -- 80% of the editor's height
                width = 0.8,  -- 80% of the editor's width
                x = 0.5,      -- Centered on x-axis
                y = 0.5       -- Centered on y-axis
            }
        })
        vim.keymap.set('n', '<leader>t', '<CMD>lua require("FTerm").toggle()<CR>')
        vim.keymap.set('t', '<leader>q', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
    end,
}
