
function execute()

  return vim.cmd([[
  augroup executable

    autocmd!

    autocmd FileType python nnoremap <buffer> <F5> :sp<CR> :term python3 % <CR> :startinsert<CR>

    autocmd FileType lua nnoremap <buffer>  <F5><CR> :luafile %<CR>

    autocmd FileType javascript nnoremap <buffer> <F5> :sp<CR> :term node % <CR> :startinsert<CR>

    autocmd FileType typescript nnoremap <buffer> <F5> :sp<CR> :term tsc % <CR> :startinsert<CR>

    autocmd FileType typescript nnoremap <buffer> <C-F5> :sp<CR> :term tsc --watch<CR> :startinsert<CR>

  augroup END
  ]])

end


function newKeymap(...)
  vim.api.nvim_set_keymap(...)
end

function getFileType()
  return vim.bo.filetype
end

obj = {
   execute = execute,
  newKeymap = newKeymap,
  getFileType = getFileType

}

return obj



