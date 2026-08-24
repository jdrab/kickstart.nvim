-- return {
--   {
--     'huggingface/llm.nvim',
--     enabled = true,
--     event = 'VeryLazy',
--     keys = {
--       { '<c-j>', function() require('llm.completion').complete() end, mode = 'i', desc = 'complete' },
--     },
--     opts = {
--       backend = 'ollama',
--       model = 'codestral:latest',
--       url = 'http://localhost:11434', -- llm-ls uses "/api/generate"
--       fim = {
--         enable = true,
--         prefix = '<|fim_begin|>',
--         suffix = '<|fim_hole|>',
--         middle = '<|fim_end|>',
--       },
--       request_body = {
--         -- Modelfile options for the model you use
--         options = {
--           temperature = 0.1,
--           top_p = 0.95,
--           num_ctx = 8096,
--         },
--       },
--     },
--   },
-- }
--
return {
  'huggingface/llm.nvim',
  enabled = true,
  event = 'VeryLazy',
  keys = {
    { '<c-j>', function() require('llm.completion').complete() end, mode = 'i', desc = 'complete using llm' },
  },
  opts = {
    backend = 'ollama',
    model = 'codestral:latest',
    url = 'http://localhost:11434',

    tokens_to_clear = { '<EOT>' },

    fim = {
      enabled = true,
      prefix = '[PREFIX]',
      middle = '[MIDDLE]',
      suffix = '[SUFFIX]',
    },

    context_window = 32768,
    --
    -- tokenizer = {
    --   repository = "mistralai/Codestral-22B-v0.1",
    -- },

    request_body = {
      options = {
        temperature = 0.1,
        top_p = 0.95,
        num_predict = 128,
      },
    },
  },
}
