return {
  'navarasu/onedark.nvim',
  priority = 900, -- make sure to load this before all the other start plugins
  config = function()
    require('onedark').setup {
      style = 'light',
      transparent = true,
    }
    require('onedark').load()
  end,
}
