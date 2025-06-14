local M = {}

M.servers = {
    lua_ls = {
        settings = {
            Lua = {
                completion = {
                    callSnippet = 'Replace',
                },
                diagnostics = {
                    globals = {
                        'vim',
                        'require',
                        'pcall',
                        'pairs',
                        'ipairs',
                        'next',
                        'type',
                        'tonumber',
                        'tostring',
                        'unpack',
                        'string',
                        'table',
                        'math',
                        'coroutine',
                        'io',
                        'os',
                        'debug',
                    },
                },
                workspace = {
                    library = {
                        [vim.fn.expand('$VIMRUNTIME/lua')] = true,
                        [vim.fn.stdpath('config') .. '/lua'] = true,
                    },
                    checkThirdParty = false,
                },
                telemetry = {
                    enable = false,
                },
            },
        },
    },
}

M.ensure_installed = vim.tbl_keys(M.servers or {})
vim.list_extend(M.ensure_installed, {
    'stylua',
})

return M 