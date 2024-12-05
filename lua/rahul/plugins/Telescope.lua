return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = { 'nvim-lua/plenary.nvim' },
      config = function()
	local builtin = require('telescope.builtin')
	vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
	vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
	vim.keymap.set('n', '<C-p>', builtin.git_files, {})

    local builtin = require('telescope.builtin')

    vim.keymap.set('n', '<leader>ps', function()
        local search_term = vim.fn.input("Search > ")
        if search_term ~= "" then
            builtin.live_grep({
                default_text = search_term
            })
        else
            builtin.live_grep()
        end
    end, { desc = "Search for a string using Telescope live_grep" })

     -- Custom function for searching in dynamic subfolder
    local function search_dynamic_subfolder()
      builtin.find_files({
        prompt_title = "Choose Folder",
        cwd = vim.fn.getcwd(), -- Start searching in the current working directory
        attach_mappings = function(_, map)
          map('i', '<CR>', function(prompt_bufnr)
            local selection = require('telescope.actions.state').get_selected_entry()
            require('telescope.actions').close(prompt_bufnr)
            -- Perform live grep within the selected folder
            builtin.live_grep({
              cwd = selection.value,
              prompt_title = "Search in " .. selection.value
            })
          end)
          return true
        end,
      })
    end

    -- Keymap for dynamic subfolder search
    vim.keymap.set('n', '<leader>s', search_dynamic_subfolder, { noremap = true, silent = true })
      end,
    }
