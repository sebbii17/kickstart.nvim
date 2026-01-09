-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'tpope/vim-fugitive', -- Git commands in nvim
  {
    'mbbill/undotree', -- Visualize undo history and more
    config = function()
      vim.keymap.set('n', '<leader><F5>', vim.cmd.UndotreeToggle, { desc = 'Toggle Undotree' })
      vim.g.undotree_DiffCommand = 'FC'
    end,
  },
  {
    'stevearc/oil.nvim', -- A better file explorer
    opts = {},
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    lazy = false,
  },
  {
    'ThePrimeagen/harpoon', -- Quick file navigation
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },
  'github/copilot.vim', -- GitHub Copilot AI code completion
}
