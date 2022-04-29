local dap_status_ok, dap = pcall(require, 'dap')
if not dap_status_ok then
  return
end

local icons = require('user.icons')

vim.fn.sign_define('DapBreakpoint', { text = icons.ui.Bug, texthl = 'DiagnosticSignError', linehl = '', numhl = '' })

local dap_config = {
  js = require('user.dap.node-config'),
}
