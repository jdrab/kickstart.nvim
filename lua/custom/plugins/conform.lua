return {
  'stevearc/conform.nvim',
  opts = {},
  config = function()
    require('conform').setup {

      formatters = {
        php_cs_fixer = {
          command = "vendor/bin/php-cs-fixer",
          args = {
            "fix",
            "--using-cache=no",
            "--quiet",
            "$FILENAME",
          },
          stdin = false,
        },
      },

      format_on_save = {
        timeout_ms = 2000,
        lsp_fallback = false,
      },

      formatters_by_ft = {
        lua = { 'stylua' },
        -- Conform will run multiple formatters sequentially
        python = { 'isort', 'black' },
        -- You can customize some of the format options for the filetype (:help conform.format)
        rust = { 'rustfmt', lsp_format = 'fallback' },
        -- Conform will run the first available formatter
        javascript = { 'prettierd', 'prettier', stop_after_first = true },
        php = { "php_cs_fixer" },
      },
    }
  end
}
