local M = {}
local float_win_id = nil
local terminal_buf_id = nil

function M.hello()
    print("Hellow from floating term!")
end

function M.create_float_window()
    if float_win_id and vim.api.nvim_win_is_valid(float_win_id) then
        -- If the window already exists, just focus it
        vim.api.nvim_set_current_win(float_win_id)
        return
    end

    -- Get the current buffer
    terminal_buf_id = vim.api.nvim_create_buf(false, true) -- create a new scratch buffer

    -- Define the floating window's dimensions and position
    local width = 120
    local height = 30
    local row = math.floor((vim.o.lines - height) / 2)
    local col = math.floor((vim.o.columns - width) / 2)

    -- Create the floating window
    float_win_id = vim.api.nvim_open_win(terminal_buf_id, true, {
        relative = 'editor',
        width = width,
        height = height,
        row = row,
        col = col,
        style = 'minimal',
        border = 'rounded',
    })

    -- Set some options for the buffer
    vim.api.nvim_buf_set_option(terminal_buf_id, 'bufhidden', 'wipe')

    -- vim.fn.termopen("zsh")
    vim.cmd('terminal')

    -- Set a key mapping to close the window
    vim.api.nvim_buf_set_keymap(terminal_buf_id, 'n', 'q', ':lua require("user.float-term").close_float_window()<CR>', { noremap = true, silent = true })
end

-- Function to close the floating window
function M.close_float_window()
    if float_win_id and vim.api.nvim_win_is_valid(float_win_id) then
        vim.api.nvim_win_close(float_win_id, true)
        float_win_id = nil

        -- Delete the terminal buffer
        if terminal_buf_id and vim.api.nvim_buf_is_valid(terminal_buf_id) then
            vim.api.nvim_buf_delete(terminal_buf_id, { force = true })
            terminal_buf_id = nil
        end
    end
end

-- Function to toggle the floating window
function M.toggle_float_window()
    if float_win_id and vim.api.nvim_win_is_valid(float_win_id) then
        M.close_float_window()
    else
        M.create_float_window()
    end
end

return M
