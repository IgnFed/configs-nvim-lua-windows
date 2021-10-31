if( not vim.fn.exists('g:lspconfig') ) then return end

local nvim_lsp = require('lspconfig')
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  -- Mappings.
  local opts = { noremap=true, silent=true }
  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)

  vim.cmd([[
    nnoremap <silent> ff    <cmd>lua vim.lsp.buf.formatting()<CR>
      autocmd BufWritePre * lua vim.lsp.buf.formatting()
  ]])


end


nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes ={ "javascript", "javascriptreact", "javascript.jsx" ,"typescript", "typescriptreact", "typescript.jsx" ,"jsx"}
}
