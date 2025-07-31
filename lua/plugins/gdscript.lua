return {
    -- GDScript support for Godot development
    'neovim/nvim-lspconfig',
    ft = { 'gd', 'gdscript', 'gdscript3' },
    config = function()
        local lspconfig = require('lspconfig')
        
        -- Configure GDScript language server
        lspconfig.gdscript.setup({
            capabilities = require('blink.cmp').get_lsp_capabilities(),
            cmd = { "nc", "localhost", "6008" },
            filetypes = { "gd", "gdscript", "gdscript3" },
            root_dir = lspconfig.util.root_pattern("project.godot", ".git"),
            single_file_support = true,
        })
    end,
}