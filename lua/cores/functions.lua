-- +-----------------------------------------------+
-- |  _____                 _   _                  |
-- | |  ___|   _ _ __   ___| |_(_) ___  _ __  ___  |
-- | | |_ | | | | '_ \ / __| __| |/ _ \| '_ \/ __| |
-- | |  _|| |_| | | | | (__| |_| | (_) | | | \__ \ |
-- | |_|   \__,_|_| |_|\___|\__|_|\___/|_| |_|___/ |
-- |                                               |
-- +-----------------------------------------------+

-- Assign empty table, then add functions to table
local M = {}
local cmd = vim.cmd

-- Open terminal ctrl+t
function M.open_terminal()
   cmd [[
   exec ':vsplit | terminal'
   exec ':set nonumber norelativenumber'
   exec ':startinsert'
   ]]
end

-- Compile C++
function M.compile_cpp()
   cmd [[
   exec ':w'
   exec ':vsplit term://g++ -std=c++17 -O2 -Wall % -o %:r && ./%:r'
   exec ':startinsert'
   ]]
end

-- Live Server (require live-server, installation via npm)
function M.live_server()
   cmd [[
   exec ':term live-server .'
   ]]
end

-- Autocompiling Sass
cmd [[
   autocmd bufwritepost [^_]*.sass,[^_]*.scss silent exec '!sass %:p %:r.css'
]]

return M
