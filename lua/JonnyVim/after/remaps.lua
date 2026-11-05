--nvim dap
local dap = require('dap')
vim.keymap.set('n', '<F9>', dap.toggle_breakpoint, { desc = "Toggle Breakpoint" })
vim.keymap.set('n', '<F5>', dap.continue, { desc = "Debug continue" })
vim.keymap.set('n', '<F4>', dap.repl.open, { desc = "Debug inspect" })
vim.keymap.set('n', '<S-F5>', dap.run_last, { desc = "Debug run last" })
vim.keymap.set('n', '<F10>', dap.step_over, { desc = "Debug step over" })
vim.keymap.set('n', '<F11>', dap.step_into, { desc = "Debug step into" })
vim.keymap.set('n', '<S-F11>', dap.step_out, { desc = "Debug step out" })
vim.keymap.set('n', '<C-F5>', dap.terminate, { desc = "Debug terminate" })
--dapui
local dapui = require('dapui')
vim.keymap.set('n', '<leader>du', dapui.toggle, { desc = "Toggle debug ui" })
