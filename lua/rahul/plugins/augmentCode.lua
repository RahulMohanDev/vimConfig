return {
  {
    'augmentcode/augment.vim',
    init = function()
      vim.g.augment_workspace_folders = {
        vim.fn.expand('~/common_ui/'),
        vim.fn.expand('~/wdio/'),
        vim.fn.expand('~/.config/nvim/lua'),
      }
    end,
  }
}
