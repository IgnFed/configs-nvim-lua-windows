--function _G.smart_tab()
--    return vim.fn.pumvisible() == 1 and [[\<C-n>]] or [[\<Tab>]]
--end

--vim.api.nvim_set_keymap('i', '<Tab>', 'v:lua.smart_tab()', {expr = true, noremap = true})


-- The function is called `t` for `termcodes`.
-- You don't have to call it that, but I find the terseness convenient
--
vim.cmd([[

autocmd BufEnter * lua require'completion'.on_attach()

]])


