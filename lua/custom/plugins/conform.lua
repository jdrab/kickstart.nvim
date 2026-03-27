return {
  'stevearc/conform.nvim',
  opts = function(_, opts)
    opts.formatters = opts.formatters or {}

    opts.formatters.php_cs_fixer = {
      command = 'vendor/bin/php-cs-fixer',
      args = {
        'fix',
        '--using-cache=no',
        '--quiet',
        '$FILENAME',
      },
      stdin = false,
    }

    opts.formatters_by_ft = opts.formatters_by_ft or {}
    opts.formatters_by_ft.php = { 'php_cs_fixer' }

    opts.format_on_save = {
      timeout_ms = 2000,
      lsp_fallback = false,
    }

    return opts
  end,
}
