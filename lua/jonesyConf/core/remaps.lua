vim.g.mapleader = " "

-- Set file explorer keybind
vim.keymap.set("n", "<leader>-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Extent some default keybinds to center afer running command
vim.api.nvim_set_keymap('n', '<C-d>', '<C-d>zz', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-e>', '<C-e>zz', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'n', 'nzzzv', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'N', 'Nzzzv', { noremap = true, silent = true})
-- Center when going to marker
vim.keymap.set("n", "`", function()
  local char = vim.fn.getcharstr() -- Get the next character 
  if char and char ~= "" then
    vim.cmd("normal! `" .. char .. "zz") 
  end
end, { noremap = true, silent = true })

vim.keymap.set("n", "'", function()
  local char = vim.fn.getcharstr()
  if char and char ~= "" then
    vim.cmd("normal! '" .. char .. "zz")
  end
end, { noremap = true, silent = true })


-- Remap window navigation to Ctrl + h/j/k/l
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

-- Custom plugin shortcuts
vim.keymap.set('n', '<F2>', vim.cmd.UndotreeToggle)
vim.keymap.set('n', '<leader>p', vim.cmd.NeovimProjectDiscover)

-- Switch buffers
vim.keymap.set('n', '<M-Tab>', ':bnext<CR>', { noremap = true, silent = true})
vim.keymap.set('n', '<M-S-Tab>', ':bprevious<CR>', { noremap = true, silent = true})
