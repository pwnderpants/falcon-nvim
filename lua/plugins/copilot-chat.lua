return {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
        { "zbirenbaum/copilot.lua" }, -- or zbirenbaum/copilot.lua
        { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
    },
    build = "make tiktoken", -- Only on MacOS or Linux
    opts = {
        -- See Configuration section for options
        window = {
            layout = 'vertical', -- 'vertical', 'horizontal', 'float', 'replace', or a function that returns the layout
            width = 0.33, -- fractional width of parent, or absolute width in columns when > 1
            height = 0.5, -- fractional height of parent, or absolute height in rows when > 1
        },

        mappings = {
            complete = {
                insert = '<C-j>',
            }
        }
    },
}
