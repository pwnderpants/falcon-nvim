-- Define leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

local opts = { noremap = true, silent = true }

-- General
vim.keymap.set('n', '<C-s>', '<cmd> w <CR>', opts)              -- save file with ContVrol+S
vim.keymap.set('n', '<C-q>', '<cmd> q <CR>', opts)              -- quit with Control+Q
vim.keymap.set('n', '<leader>e', '<cmd> Neotree toggle<CR>', opts)    -- launch NeoTree
vim.keymap.set('n', 'x', '"_x', opts)                           -- delete single character without copying to register

-- Buffers
vim.keymap.set('n', '<Tab>', ':bnext<CR>', opts)                -- next buffer
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts)          -- previous buffer
vim.keymap.set('n', '<leader>x', ':bdelete!<CR>', opts)               -- delete buffer
vim.keymap.set('n', '<leader>b', '<cmd> enew <CR>', opts)       -- new buffer

-- Window management
vim.keymap.set('n', '<leader>v', '<C-w>v', opts)                -- create vertical split
vim.keymap.set('n', '<leader>h', '<C-w>s', opts)                -- create horizontal split
vim.keymap.set('n', '<leader>xs', ':close<CR>', opts)           -- close window
vim.keymap.set('n', '<leader><Up>', ':wincmd k<CR>', opts)      -- focus window above
vim.keymap.set('n', '<leader><Down>', ':wincmd j<CR>', opts)    -- focus window below
vim.keymap.set('n', '<leader><Left>', ':wincmd h<CR>', opts)    -- focus window left
vim.keymap.set('n', '<leader><Right>', ':wincmd l<CR>', opts)   -- focus window right

-- Tabs
vim.keymap.set('n', '<leader>to', ':tabnew<CR>', opts)          -- open new tab
vim.keymap.set('n', '<leader>tx', ':tabclose<CR>', opts)        -- close tab
vim.keymap.set('n', '<leader>tn', ':tabn<CR>', opts)            -- next tab
vim.keymap.set('n', '<leader>tp', ':tabp<CR>', opts)            -- previous tab

-- Toggles
vim.keymap.set('n', '<leader>nh', ':noh<CR>', opts)             -- toggle highlighting

-- Stay in indent mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-- Keep last yanked when pasting
vim.keymap.set('v', 'p', '"_dP', opts)

-- Diagnostic nav
vim.keymap.set('n', '<leader>dp', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', '<leader>dn', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

