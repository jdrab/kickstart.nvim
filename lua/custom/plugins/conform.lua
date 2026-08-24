return {
  'stevearc/conform.nvim',
  opts = function(_, opts)
    opts.formatters = opts.formatters or {}

    -- Define php-cs-fixer with a condition to check if it exists
    opts.formatters.php_cs_fixer = {
      command = 'vendor/bin/php-cs-fixer',
      args = {
        'fix',
        '--using-cache=no',
        '--quiet',
        '$FILENAME',
      },
      stdin = false,
      -- Only run if the binary exists in the project
      condition = function(ctx) return vim.fn.executable 'vendor/bin/php-cs-fixer' == 1 end,
    }

    -- Define mago with a condition to check if it exists
    opts.formatters.mago = {
      command = 'mago',
      args = {
        'lint',
        '--fix',
        '$FILENAME',
      },
      stdin = false,
      -- Only run if the binary exists globally or in the project
      condition = function(ctx) return vim.fn.executable 'mago' == 1 end,
    }

    -- Assign formatters for PHP files
    opts.formatters_by_ft = opts.formatters_by_ft or {}
    opts.formatters_by_ft.php = { 'php_cs_fixer', 'mago' }

    -- Format on save settings
    opts.format_on_save = {
      timeout_ms = 2000,
      lsp_fallback = false,
    }

    return opts
  end,
}
