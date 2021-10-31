if not vim.fn.exists("g:loaded_lspsaga") then return end

local saga = require("lspsaga")

saga.init_lsp_saga {

  error_sign = "➤",
  hint_sign = "➤",
  infor_sign = "➤",
  warn_sign = "➤",

  rename_action_keys = {
    quit='q', exec = '<CR>'
  },

  rename_action_keys = {
    quit = 'q', exec = '<CR>'
  },

  border_style = "round",
  rename_prompt_prefix = "➤",
}


vim.cmd([[

  nnoremap <silent> <C-j> <Cmd>Lspsaga diagnostic_jump_next<CR>
  nnoremap <silent> gh <cmd> lua require('lspsaga.provider').lsp_finder()<CR>

  inoremap <silent> <C-l> <Cmd>Lspsaga signature_help<CR>
  nnoremap <silent>K <Cmd>Lspsaga hover_doc<CR>
]])


