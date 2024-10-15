-- Define a mapping to trigger the command (Shift+Alt+f)
vim.keymap.set('n', '<A-S-f>', ':!php-cs-fixer fix % --quiet<CR>', { silent = true })
-- vim.api.nvim_set_keymap('n', '<A-S-f>', ':!php-cs-fixer fix % --quiet<CR>', { silent = true })
return {}
