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
    'jbyuki/venn.nvim',
    lazy = false,
  },
  {
    'mluders/comfy-line-numbers.nvim',
  },
  {
    "zenbones-theme/zenbones.nvim",
    -- Optionally install Lush. Allows for more configuration or extending the colorscheme
    -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
    -- In Vim, compat mode is turned on as Lush only works in Neovim.
    dependencies = "rktjmp/lush.nvim",
    lazy = false,
    priority = 1000,
    -- you can set set configuration options here
    -- config = function()
    --     vim.g.zenbones_darken_comments = 45
    --     vim.cmd.colorscheme('zenbones')
    -- end
  },
  {
    'gagbo/circadian.nvim',
    lazy = false,
    config = function()
      require('circadian').setup({
        -- Latitude: Defaults to Paris' latitude
        lat = 40.0,
        -- Longitude: Defaults to Paris' longitude
        lon = -73.0,
        -- Day theme: the background is optional, but useful for themes that
        -- control light/dark variants with it. Defaults to nil everywhere
        -- (will not change a thing when Sun rises)
        day = { background = "light", colorscheme = "rosebones" },
        -- Night theme: the background is optional, but useful for themes that
        -- control light/dark variants with it. Defaults to nil everywhere
        -- (will not change a thing when Sun sets)
        night = { background = "dark", colorscheme = "gruvbox-material" }
      })
    end
  },
}
