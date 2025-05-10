require('mason').setup({})
require('mason-lspconfig').setup({
    -- Replace the language servers listed here 
    -- with the ones you want to install
    ensure_installed = {
        'lua_ls',
        'rust_analyzer',
        'pyright',
        'gopls',
        'clangd',
        'bashls',
        'yamlls',
        'ruby_lsp',
    },
    handlers = {
        function(server_name)
            require('lspconfig')[server_name].setup({})
        end,
    },
})

--- in your own config you should replace 
--- `example_server` with the name of a language server

require('mason-lspconfig').setup({
    handlers = {
        -- this first function is the "default handler"
        -- it applies to every language server without a "custom handler"
        function(server_name)
            require('lspconfig')[server_name].setup({})
        end,

        -- this is the "custom handler" for `example_server`
        pyright = function()
            require('lspconfig').pyright.setup({
                single_file_support = true,
                settings = {
                    pyright = {
                        disableLanguageServices = false,
                        disableOrganizeImports = false,
                    },
                    python = {
                        analysis = {
                            autoImportCompletions = true,
                            autoSearchPaths = true,
                            diagnosticMode = "workspace", -- or "openFilesOnly"
                            typeCheckingMode = "basic", -- or "off", "strict"
                            useLibraryCodeForTypes = true,
                        },
                    },
                },
            })
        end,

        lua_ls = function()
            require('lspconfig').lua_ls.setup({
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = {'vim'},  -- Recognize `vim` as a global variable
                        },
                    },
                },
            })
        end,


        bashls = function()
            require('lspconfig').bashls.setup({
                cmd = { 'bash-language-server', 'start' },
                settings = {
                    bashIde = {
                        -- Glob pattern for finding and parsing shell script files in the workspace.
                        -- Used by the background analysis features across files.

                        -- Prevent recursive scanning which will cause issues when opening a file
                        -- directly in the home directory (e.g. ~/foo.sh).
                        --
                        -- Default upstream pattern is "**/*@(.sh|.inc|.bash|.command)".
                        globPattern = vim.env.GLOB_PATTERN or '*@(.sh|.inc|.bash|.command)',
                    },
                },
                filetypes = { 'bash', 'sh' },
                root_markers = { '.git' },
            })
        end,

        terraformls = function()
            require('lspconfig').terraformls.setup({
                cmd = { 'terraform-ls', 'serve' },
                filetypes = { 'terraform', 'terraform-vars' },
                root_markers = { '.terraform', '.git' },
            })
        end,

        vimls = function()
            require('lspconfig').vimls.setup({
                cmd = { 'vim-language-server', '--stdio' },
                filetypes = { 'vim' },
                root_markers = { '.git' },
                init_options = {
                    isNeovim = true,
                    iskeyword = '@,48-57,_,192-255,-#',
                    vimruntime = '',
                    runtimepath = '',
                    diagnostic = { enable = true },
                    indexes = {
                        runtimepath = true,
                        gap = 100,
                        count = 3,
                        projectRootPatterns = { 'runtime', 'nvim', '.git', 'autoload', 'plugin' },
                    },
                    suggest = { fromVimruntime = true, fromRuntimepath = true },
                },
            })
        end,

        gopls = function()
            require('lspconfig').gopls.setup({
                on_attach = on_attach,
                capabilities = capabilities,
                cmd = {"gopls"},
                filetypes = { "go", "gomod", "gowork", "gotmpl" },
                -- root_dir = util.root_pattern("go.work", "go.mod", ".git"),
                settings = {
                    gopls = {
                        completeUnimported = true,
                        usePlaceholders = true,
                        analyses = {
                            unusedparams = true,
                        },
                    },
                },
            })
        end,

        clangd = function()
            require('lspconfig').clangd.setup({
                opts = {
                    servers = {
                        -- Ensure mason installs the server
                        clangd = {
                            keys = {
                                { "<leader>ch", "<cmd>ClangdSwitchSourceHeader<cr>", desc = "Switch Source/Header (C/C++)" },
                            },
                            root_dir = function(fname)
                                return require("lspconfig.util").root_pattern(
                                    "Makefile",
                                    "configure.ac",
                                    "configure.in",
                                    "config.h.in",
                                    "meson.build",
                                    "meson_options.txt",
                                    "build.ninja"
                                )(fname) or require("lspconfig.util").root_pattern("compile_commands.json", "compile_flags.txt")(
                                    fname
                                ) or require("lspconfig.util").find_git_ancestor(fname)
                            end,
                            capabilities = {
                                offsetEncoding = { "utf-16" },
                            },
                            cmd = {
                                "clangd",
                                "--background-index",
                                "--clang-tidy",
                                "--header-insertion=iwyu",
                                "--completion-style=detailed",
                                "--function-arg-placeholders",
                                "--fallback-style=llvm",
                            },
                            init_options = {
                                usePlaceholders = true,
                                completeUnimported = true,
                                clangdFileStatus = true,
                            },
                        },
                    },
                    setup = {
                        clangd = function(_, opts)
                            local clangd_ext_opts = LazyVim.opts("clangd_extensions.nvim")
                            require("clangd_extensions").setup(vim.tbl_deep_extend("force", clangd_ext_opts or {}, { server = opts }))
                            return false
                        end,
                    },
                }
            })
        end,

        yamlls = function()
            require('lspconfig').yamlls.setup({

            })
        end,

        rubylsp = function ()
            require('lspconfig').rubylsp.setup({

            })
        end,
    },
})

local cmp = require('cmp')

cmp.setup({
    sources = {
        {name = 'nvim_lsp'},
    },
    snippet = {
        expand = function(args)
            -- You need Neovim v0.10 to use vim.snippet
            vim.snippet.expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({}),
})

-- Reserve a space in the gutter
-- This will avoid an annoying layout shift in the screen
vim.opt.signcolumn = 'yes'

-- Add cmp_nvim_lsp capabilities settings to lspconfig
-- This should be executed before you configure any language server
local lspconfig_defaults = require('lspconfig').util.default_config
lspconfig_defaults.capabilities = vim.tbl_deep_extend(
    'force',
    lspconfig_defaults.capabilities,
    require('cmp_nvim_lsp').default_capabilities()
)

-- This is where you enable features that only work
-- if there is a language server active in the file
vim.api.nvim_create_autocmd('LspAttach', {
    desc = 'LSP actions',
    callback = function(event)
        local opts = {buffer = event.buf}

        vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
        vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
        vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
        vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
        vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
        vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
        vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
        vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
        vim.keymap.set({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
        vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
    end,
})

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        update_in_insert = true,
    }
)

-- Godot LSP
local gdscript_config = {
    capabilities = capabilities,
    settings = {},
}

if vim.fn.has 'win32' == 1 then
    gdscript_config['cmd'] = { 'ncat', 'localhost', os.getenv 'GDScript_Port' or '6005' }
end

require('lspconfig').gdscript.setup(gdscript_config)
