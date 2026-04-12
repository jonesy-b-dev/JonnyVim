local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fj', function()
	require('telescope.builtin').find_files({
		hidden = true,
		no_ignore = true,
	})
end)

--nvim dap
local dap = require('dap')
vim.keymap.set('n', '<F9>', dap.toggle_breakpoint)
vim.keymap.set('n', '<F5>', dap.continue)
vim.keymap.set('n', '<F4>', dap.repl.open, { desc = "Inspect" })
vim.keymap.set('n', '<S-F5>', dap.run_last)
vim.keymap.set('n', '<F10>', dap.step_over)
vim.keymap.set('n', '<F11>', dap.step_into)
vim.keymap.set('n', '<S-F11>', dap.step_out)
vim.keymap.set('n', '<C-F5>', dap.terminate)
--dapui
local dapui = require('dapui')
vim.keymap.set('n', '<leader>du', dapui.toggle)
