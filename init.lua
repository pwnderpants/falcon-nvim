require 'core.options'
require 'core.keymaps'

vim.cmd [[set termguicolors]]

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
    local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
    if vim.v.shell_error ~= 0 then
        error('Error cloning lazy.nvim:\n' .. out)
    end
end

local rtp = vim.opt.rtp

rtp:prepend(lazypath)

require('lazy').setup({
    require 'plugins.augment',
    require 'plugins.autocomplete',
    require 'plugins.autopairs',
    require 'plugins.barbecue',
    require 'plugins.bufferline',
    require 'plugins.catppuccin',
    require 'plugins.colorizer',
    require 'plugins.debug',
    require 'plugins.gitsigns',
    require 'plugins.go',
    require 'plugins.indent-blankline',
    require 'plugins.lsp',
    require 'plugins.lualine',
    require 'plugins.noice',
    require 'plugins.render-markdown',
    require 'plugins.snacks',
    require 'plugins.telescope',
    require 'plugins.treesitter',
    require 'plugins.which-key',
})

