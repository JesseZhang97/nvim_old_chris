local status_ok, _ = pcall(require, 'dap')
if not status_ok then
  return
end

require('user.dap.dap')
require('user.dap.dapui')
require('user.dap.node-config')
require('dap-python').setup('~/Developer/dap/debugpy/bin/python')
