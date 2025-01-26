return {
  -- nvim-treesitter configuration for syntax highlighting
  {
    'nvim-treesitter/nvim-treesitter',
    config = function()
      require('nvim-treesitter.configs').setup({
        -- A list of parser names, or "all"
        ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "typescript", "rust", "javascript" },

        -- Install parsers synchronously (only applied to ensure_installed)
        sync_install = false,

        -- Automatically install missing parsers when entering buffer
        auto_install = true,

        highlight = {
          enable = true, -- Enable highlighting for supported languages
        },
      })
    end
  },

  -- nvim-tree.lua configuration for the VS Code-like file explorer

  -- Adding keymap remap for toggling NvimTree
   {
    'nvim-tree/nvim-tree.lua',
    config = function()
      require('nvim-tree').setup({
          update_focused_file = {
          enable = true,      -- Automatically update the tree when changing files
          update_cwd = false, -- Keep the current working directory unchanged
          ignore_list = {},   -- List of filetypes to ignore
        },
        view = {
          -- Optionally, enable adaptive size
          adaptive_size = true,
          side = "right"
        },
        renderer = {
          highlight_opened_files = "all", -- Highlight the currently opened file
        },
      })

      -- Adding the keymap for toggling NvimTree
      vim.keymap.set('n', '<leader>k', ':NvimTreeToggle<CR>', { silent = true })
    end
  }
}
