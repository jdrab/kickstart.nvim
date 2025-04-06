-- Define a mapping to trigger the command (Shift+Alt+f)
-- vim.api.nvim_set_keymap('n', '<A-S-f>', ':!php-cs-fixer fix % --quiet<CR>', { silent = true })
vim.keymap.set('n', '<A-S-f>', function()
  vim.fn.jobstart({ 'php-cs-fixer', 'fix', vim.fn.expand '%', '--quiet' }, {
    detach = true,
    on_exit = function()
      vim.schedule(function()
        vim.cmd 'e!' -- Reload the buffer to reflect changes
      end)
    end,
  })
end, { silent = true })

-- vim.keymap.set('n', '<A-S-f>', ':!php-cs-fixer fix % --quiet<CR>', { silent = true })
vim.keymap.set('n', '<C-Space>', ':bnext<CR>', { silent = false, desc = 'Next buffer' })
vim.keymap.set('n', '<C-S-Space>', ':bprevious<CR>', { silent = false, desc = 'Previous buffer' })

return {}
