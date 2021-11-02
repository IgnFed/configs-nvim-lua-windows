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

  nnoremap <silent> gh <cmd> lua require('lspsaga.provider').lsp_finder()<CR>

  inoremap <silent> cx <Cmd>Lspsaga signature_help<CR>
  nnoremap <silent> hv <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
  nnoremap <silent><F2> <cmd>lua require('lspsaga.rename').rename()<CR>
  inoremap <silent><F2> <cmd>lua require('lspsaga.rename').rename()<CR>
nnoremap <silent> gd <cmd>lua require'lspsaga.provider'.preview_definition()<CR>
]])


