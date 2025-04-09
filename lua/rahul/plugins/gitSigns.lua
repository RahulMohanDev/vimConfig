return {
    "lewis6991/gitsigns.nvim",
    config = function()
        require('gitsigns').setup({
            current_line_blame = true, -- Enables inline blame
            current_line_blame_opts = {
                delay = 0,
                ignore_whitespace = false,
            },
        })

        vim.keymap.set('n', '<leader>b', function()
            require('gitsigns').toggle_current_line_blame()
        end, { desc = "Toggle Git inline blame" })
    end
}

