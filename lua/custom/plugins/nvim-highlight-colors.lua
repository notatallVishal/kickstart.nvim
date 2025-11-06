return {
  {
    'brenoprata10/nvim-highlight-colors',
    event = 'VeryLazy', -- loads after startup
    config = function()
      require('nvim-highlight-colors').setup {
        render = 'virtual',
        enable_named_colors = true, -- optional: highlights "red", "blue", etc.
      }
    end,
  },
}
