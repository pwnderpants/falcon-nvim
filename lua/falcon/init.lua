require("falcon.packer")

-- Leader key
vim.g.mapleader = " "

-- Line numbers
vim.wo.number = true

-- Inline diagnostics
vim.diagnostic.config({
    virtual_text = {
        severity = vim.diagnostic.severity.WARN,
        prefix = '●',  -- Use a symbol to indicate warnings
        spacing = 0,
        source = true
    },
    signs = {
        text = {
            [vim.diagnostic.severity.WARN] = '!',
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
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.sts = 4
vim.opt.expandtab = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.hlsearch = true
vim.opt.incsearch = false
vim.opt.colorcolumn = "80"
vim.opt.signcolumn = "yes"
vim.opt.termguicolors = true
vim.scrolloff = 8

-- Custom functions
function Win32GoHome()
    vim.fn.chdir('C:\\Users\\falcon\\AppData\\Local\\nvim\\')
end

function PotatoGoHome()
    vim.fn.chdir('~/.config/nvim/')
end

-- Custom keymaps
vim.keymap.set("n", "<S-tab>", "<Cmd>tabprevious<CR>")
vim.keymap.set("n", "<tab>", "<Cmd>tabNext<CR>")
vim.keymap.set("n", "<leader>\\", "<Cmd>Neotree toggle<CR>")
vim.keymap.set("n", "<leader>nh", "<Cmd>noh<CR>")
vim.keymap.set("n", "<leader>pv", "<Cmd>Ex<CR>")
vim.keymap.set("n", "<leader>wh", "<Cmd>lua Win32GoHome()<CR>")
vim.keymap.set("n", "<leader>lh", "<Cmd>lua PotatoGoHome()<CR>")

vim.keymap.set("n", "<leader>pp", function()
    vim.cmd("set paste")
	vim.cmd("echo 'Paste mode enabled'")
	vim.cmd("startinsert")
end)

vim.keymap.set("n", "<leader>pp", function()
    vim.cmd("set nopaste")
	vim.cmd("echo 'Paste mode disabled'")
end)
