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
  vim.keymap.set('n', '<leader>k', ':NvimTreeToggle<CR>', { silent = true })
}
