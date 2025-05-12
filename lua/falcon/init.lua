require("falcon.packer")

-- Leader key
vim.g.mapleader = " "

-- Line numbers
vim.wo.number = true

-- Inline diagnostics
vim.diagnostic.config({
    virtual_text = {
        severity = vim.diagnostic.severity.INFO,
        prefix = '●',  -- Use a symbol to indicate warnings
        spacing = 0,
        source = true
    },
    signs = {
        text = {
            [vim.diagnostic.severity.INFO] = '!',
        },
        linehl = false,
        numhl = false,
    },
})

vim.diagnostic.config({
    virtual_text = true,
    underline = true,
    virtual_lines = false,
})

vim.diagnostic.open_float()

-- Custom settings
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.sts = 4
vim.opt.expandtab = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.colorcolumn = "80"
vim.opt.signcolumn = "yes"
vim.opt.termguicolors = true
vim.opt.clipboard = "unnamedplus"
vim.scrolloff = 8

-- Custom functions
function Win32GoHome()
    vim.fn.chdir('C:\\Users\\falcon\\AppData\\Local\\nvim\\')
end

function PotatoGoHome()
    vim.fn.chdir('/home/falcon/.config/nvim/')
end

function GoHome()
    vim.fn.chdir('/home/falcon/')
end

function GoToGitHub()
    vim.fn.chdir('/home/falcon/github/')
end

-- Custom keymaps
vim.keymap.set("n", "<S-tab>", "<Cmd>tabprevious<CR>", { desc = 'Previous tab' })
vim.keymap.set("n", "<tab>", "<Cmd>tabNext<CR>", { desc = 'Next tab' })
vim.keymap.set("n", "<leader>\\", "<Cmd>Neotree toggle<CR>", { desc = 'Toggle Neotree' })
vim.keymap.set("n", "<leader>nh", "<Cmd>noh<CR>", { desc = 'No Highlight' })
vim.keymap.set("n", "<leader>wh", "<Cmd>lua Win32GoHome()<CR>", { desc = 'Go to nvim config dir (Win32 only)' })
vim.keymap.set("n", "<leader>gh", "<Cmd>lua GoHome()<CR>", { desc = 'Go to home directory' })
vim.keymap.set("n", "<leader>GH", "<Cmd>lua GoToGitHub()<CR>", { desc = 'Go to github directory' })
vim.keymap.set("n", "<leader>lh", "<Cmd>lua PotatoGoHome()<CR>", { desc = 'Go to nvim config dir (Linux only)' })
vim.keymap.set("n", "<leader>so", "<Cmd>so<CR>", { desc = 'Source current file' })
vim.keymap.set("n", "<leader>PS", "<Cmd>so<CR><Cmd>PackerSync<CR>", { desc = 'Run PackerSync' })
vim.keymap.set("n", "<leader>cd", "<Cmd>Copilot disable<CR><Cmd>echo 'Disabling Copilot'<CR>", { desc = 'Disable Copilot' })
vim.keymap.set("n", "<leader>ce", "<Cmd>Copilot enable<CR><Cmd>echo 'Enabling Copilot'<CR>", { desc = 'Enable Copilot' })

vim.keymap.set("n", "<leader>pp", function()
    vim.cmd("set paste")
	vim.cmd("echo 'Paste mode enabled'")
	vim.cmd("startinsert")
end, { desc = 'Paste mode' })

vim.keymap.set("n", "<leader>nop", function()
    vim.cmd("set nopaste")
	vim.cmd("echo 'Paste mode disabled'")
end, { desc = 'Disable paste mode' })

--Toggle Term
vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], { desc = 'Exit terminal mode' })
vim.keymap.set('t', 'jk', [[<C-\><C-n>]], { desc = 'Exit terminal mode' })
vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], { desc = 'Move to left window' })
vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], { desc = 'Move to bottom window' })
vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], { desc = 'Move to top window' })
vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], { desc = 'Move to right window' })
vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], { desc = 'Close terminal window' })

vim.keymap.set("n", "<S-t>", function()
    vim.cmd("ToggleTerm")
end, { desc = 'Toggle terminal' })

local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})

vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.go",
    callback = function()
        require('go.format').goimports()
    end,
    group = format_sync_grp,
})

require('go').setup()
