vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.sts = 4
vim.o.relativenumber = true
vim.o.clipboard = 'unnamedplus'
vim.o.wrap = false
vim.o.linebreak = true
vim.o.mouse = 'a'
vim.wo.number = true
vim.autoread = true

vim.api.nvim_create_autocmd({"FocusGained", "BufEnter"}, {
    command = "checktime"
})


-- Ensure proper background color handling
vim.o.background = "dark"
vim.cmd([[highlight Normal guibg=NONE ctermbg=NONE]])
vim.cmd([[highlight NonText guibg=NONE ctermbg=NONE]])
