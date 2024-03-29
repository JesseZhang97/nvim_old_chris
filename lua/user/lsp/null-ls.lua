local null_ls_status_ok, null_ls = pcall(require, 'null-ls')
if not null_ls_status_ok then
  return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({

  debug = false,
  sources = {
    formatting.prettier.with({ extra_args = { '--single-quote', '--jsx-singl-quote' } }),
    formatting.stylua.with({
      extra_args = { '--config-path', vim.fn.expand('~/.config/nvim/lua/user/lsp/settings/stylua.toml') },
    }),
    -- formatting.autopep8.with({
    --   extra_args = { '--in-place', '--aggressive', '--aggressive' },
    -- }),
    formatting.autopep8
  },
})
