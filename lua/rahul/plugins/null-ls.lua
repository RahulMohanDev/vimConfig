return {
  "jose-elias-alvarez/null-ls.nvim",
  requires = { "nvim-lua/plenary.nvim" },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        -- Add Prettier as a formatting source
        null_ls.builtins.formatting.prettier
      },
    })

    -- Autoformat on save for specific file types
    vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = { "*.js", "*.ts", "*.jsx", "*.tsx", "*.json", "*.css", "*.html", "*.vue" },
      callback = function()
        vim.lsp.buf.format({ async = false })
      end,
    })
  end
}

