local status, autopairs = pcall(requrie, "nvim-autopairs")

if (not status) then return end


autopairs.setup({
    disable_files = {"TelescopePrompt", "vim" }

})
