local api = vim.api
local keymaps = api.nvim_set_keymap --API KEYMAP
local fn = vim.fn
local wgl = vim.wo --GLOBAL TO WINDOW CONFIG
local wlc = vim.o -- LOCAL TO WINDOW CONFIG
local bfr = vim.bo -- LOCAL TO BUFFER



local ftype = require'utils'.getFileType
local exec = require'utils'.execute
local newKeymap = require'utils'.newKeymap

--local getFilename = function()

-- local source = debug.getinfo(21, "S").source
--    if source:sub(20,1) == "@" then
--        return source:sub(21)
--    else
--        error("Caller was not defined in a file", 21)
--    end
--end


--local newKeymap = function(mode, shortcut, command, opt, fn_callback)
--	keymaps(mode ,shortcut, command, opt)
--  if(type(fn_callback) == 'function') then fn_callback() print(type(fn_callback)) end
--end





newKeymap('i', '<c-s>', '<ESC>:w<CR>a', {})
newKeymap('n', '<c-s>', ':w<CR>', {})

newKeymap('n', '<c-r>', ':w<CR>:so %<CR>a', {noremap=true})



newKeymap('i', '<c-x>', '<ESC>:NERDTreeToggle<CR>', {})
newKeymap('n', '<c-x>', ':NERDTreeToggle<CR>', {})

newKeymap('n', '<c-h>', '<c-w>h' , {noremap=true})
newKeymap('n', '<c-j>', '<c-w>j' , {noremap=true})
newKeymap('n', '<c-k>', '<c-w>k' , {noremap=true})
newKeymap('n', '<c-l>', '<c-w>l' , {noremap=true})


newKeymap('n', '<F5>', exec() , {noremap=true})
newKeymap('i', '<F5>', exec() , {noremap=true})
newKeymap('v', '<F5>', exec() , {noremap=true})

newKeymap('n', '<S-l>', "v<S-v>" , {noremap=true})
newKeymap('v', '<S-l>', "<S-v>" , {noremap=true})


newKeymap('n', '<C-f>', "<Cmd>lua require('telescope.builtin').find_files()<CR>", {noremap=true})
newKeymap('n', '<C-d>', "<Cmd>lua require('telescope.builtin').live_grep()<CR>", {noremap=true})
newKeymap('n', '<C-b>', "<Cmd>lua require('telescope.builtin').buffer()<CR>", {noremap=true})
newKeymap('n', '<C-e>', "<Cmd>lua require('telescope.builtin').help_tags()<CR>", {noremap=true})
--nnoremap <leader>fg <cmd>Telescope live_grep<cr>
--nnoremap <leader>fb <cmd>Telescope buffers<cr>
--nnoremap <leader>fh <cmd>Telescope help_tags<cr>

--Using Lua functions
--nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
--nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
--nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
--nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>


local get_file_length = function(win) return api.nvim_buf_line_count(0) end


newKeymap('n', '<c-a>', "ggv<S-g><S-v>", {})
newKeymap('v', '<c-a>', "v", {})
