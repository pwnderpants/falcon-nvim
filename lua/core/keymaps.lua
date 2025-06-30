vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- General
vim.keymap.set('n', '<C-s>', '<cmd> w <CR>', { desc = 'Save file' })
vim.keymap.set('n', '<C-q>', '<cmd> q <CR>', { desc = 'Quit' })
vim.keymap.set('n', '<leader>e', '<cmd> Neotree toggle<CR>', { desc = 'Toggle Neotree' })
vim.keymap.set('n', 'x', '"_x', { desc = 'Delete without yanking' })

-- Buffers
vim.keymap.set('n', '<Tab>', ':bnext<CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', { desc = 'Previous buffer' })
vim.keymap.set('n', '<leader>x', ':bdelete!<CR>', { desc = 'Delete buffer' })
vim.keymap.set('n', '<leader>b', '<cmd> enew <CR>', { desc = 'New buffer' })

-- Window management
vim.keymap.set('n', '<leader>v', '<C-w>v', { desc = 'Split window vertically' })
vim.keymap.set('n', '<leader>h', '<C-w>s', { desc = 'Split window horizontally' })
vim.keymap.set('n', '<leader>xs', ':close<CR>', { desc = 'Close current window' })
vim.keymap.set('n', '<leader><Up>', ':wincmd k<CR>', { desc = 'Move to window above' })
vim.keymap.set('n', '<leader><Down>', ':wincmd j<CR>', { desc = 'Move to window below' })
vim.keymap.set('n', '<leader><Left>', ':wincmd h<CR>', { desc = 'Move to window on the left' })
vim.keymap.set('n', '<leader><Right>', ':wincmd l<CR>', { desc = 'Move to window on the right' })
vim.keymap.set('n', '<leader>rw', ':vertical resize +20<CR>', { desc = 'Vertical resize +20' })
vim.keymap.set('n', '<leader>rW', ':vertical resize -20<CR>', { desc = 'Vertical resize -20' })
vim.keymap.set('n', '<leader>rh', ':horizontal resize +20<CR>', { desc = 'Horizontal resize +20' })
vim.keymap.set('n', '<leader>rH', ':horizontal resize -20<CR>', { desc = 'Horizontal resize -20' })

-- Tabs
vim.keymap.set('n', '<leader>to', ':tabnew<CR>', { desc = 'Open new tab' })
vim.keymap.set('n', '<leader>tx', ':tabclose<CR>', { desc = 'Close current tab' })
vim.keymap.set('n', '<leader>tn', ':tabn<CR>', { desc = 'Next tab' })
vim.keymap.set('n', '<leader>tp', ':tabp<CR>', { desc = 'Previous tab' })

-- Toggles
vim.keymap.set('n', '<leader>nh', ':noh<CR>', { desc = 'Clear search highlights' })

-- Stay in indent mode
vim.keymap.set('v', '<', '<gv', { desc = 'Decrease indent and stay in visual mode' })
vim.keymap.set('v', '>', '>gv', { desc = 'Increase indent and stay in visual mode' })

-- Keep last yanked when pasting
vim.keymap.set('v', 'p', '"_dP', { desc = 'Paste without losing last yanked text' })

-- Diagnostic nav
vim.keymap.set('n', '<leader>dp', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', '<leader>dn', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Copilot
vim.keymap.set('n', '<leader>cc', '<cmd> CopilotChatToggle <CR>', { desc = 'Copilot Chat Toggle' })
vim.keymap.set('n', '<leader>cr', '<cmd> CopilotChatReset <CR>', { desc = 'Copilot Reset' })
vim.keymap.set('n', '<leader>cf', '<cmd> CopilotChatFix <CR>', { desc = 'Copilot Chat Fix' })
vim.keymap.set('n', '<leader>ce', '<cmd> CopilotChatExplain <CR>', { desc = 'Copilot Chat Explain' })
vim.keymap.set('n', '<leader>co', '<cmd> CopilotChatOptimize <CR>', { desc = 'Copilot Chat Optimize' })
vim.keymap.set('n', '<leader>cw', '<cmd> CopilotChatReview <CR>', { desc = 'Copilot Chat Review' })
vim.keymap.set('n', '<leader>cm', '<cmd> CopilotChatModels <CR>', { desc = 'Copilot Chat Models' })

-- Terminal
vim.keymap.set('n', '<leader>tv', '<cmd> belowright split  | terminal <CR>', { desc = 'Run Terminal' })
vim.keymap.set('t', '<esc><esc>', '<C-\\><C-n>', { desc = 'Back to normal mode' })
vim.keymap.set('n', '<leader>tf', require('user.float-term').toggle_float_window, { desc = 'Toggle floating Terminal,' })
