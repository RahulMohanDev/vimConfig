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
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' }, -- optional, for file icons
    config = function()
      require("nvim-tree").setup({
        view = {
          width = 30, -- Width of the explorer window
          side = "right", -- Position it on the left like VS Code
          mappings = {
            list = {
              { key = { "<CR>", "o", "<2-LeftMouse>" }, action = "edit" },
              { key = "v", action = "vsplit" }, -- Open in vertical split
              { key = "s", action = "split" }, -- Open in horizontal split
            },
          },
        },
        renderer = {
          icons = {
            show = {
              git = true,
              folder = true,
              file = true,
            },
          },
        },
        filters = {
          dotfiles = false, -- Show hidden files by default
        },
        git = {
          enable = true,
        },
      })
    end
  },

  -- Adding keymap remap for toggling NvimTree
  vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { silent = true })
}
