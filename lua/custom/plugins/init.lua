-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- Example: Add some popular colorschemes
  {
    'rebelot/kanagawa.nvim',
  },
  {
    'doums/espresso.nvim',
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
  },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
  },
  {
    'sainnhe/gruvbox-material',
    lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.gruvbox_material_enable_italic = true
      vim.g.gruvbox_material_background = 'soft'
      vim.cmd.colorscheme 'gruvbox-material'
    end,
  },
  {
    'mluders/comfy-line-numbers.nvim',
  },
  {
    'jbyuki/venn.nvim',
    lazy = false,
  },
}
