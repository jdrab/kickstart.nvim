return {
  vim.lsp.config('phpantom_lsp', {
    cmd = { 'phpantom_lsp' },
    filetypes = { 'php' },
    root_markers = { '.phpantom.toml', '.git', 'composer.json' },
  }),
}
