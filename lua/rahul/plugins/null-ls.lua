return {
  "nvimtools/none-ls.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.prettier,
      },
    })

    vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = { "*.js", "*.ts", "*.jsx", "*.tsx", "*.json", "*.css", "*.html", "*.vue" },
      callback = function()
        vim.lsp.buf.format({ async = false })
      end,
    })
  end,
}
