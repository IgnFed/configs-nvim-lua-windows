


local Plug = vim.fn['plug#']


vim.call('plug#begin', vim.fn.stdpath('data')..'/plugged')



  Plug 'preservim/nerdtree'

if(vim.call("has", "nvim")) then
  Plug 'joshdick/onedark.vim'
  Plug 'neovim/nvim-lspconfig'
  Plug 'glepnir/lspsaga.nvim'
  Plug 'nvim-lualine/lualine.nvim'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'jiangmiao/auto-pairs'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'nvim-lualine/lualine.nvim'
  --For vsnip users.
  Plug 'hrsh7th/cmp-vsnip'
  Plug 'hrsh7th/vim-vsnip'


  --Plug 'nvim-lua/plenary.nvim'
  --Plug 'nvim-telescope/telescope.nvim'


  --Plug 'nvim-lua/completion-nvim'
  --Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})  --We recommend updating the parsers on update

  --Plug 'Shougo/ddc.vim'
  --Plug 'vim-denops/denops.vim'

--Install your sources
--Plug 'Shougo/ddc-around'

--Install your filters
--Plug 'Shougo/ddc-matcher_head'
--Plug 'Shougo/ddc-sorter_rank'

end
vim.call('plug#end')



--require'plugins/coc-config'
require"plugins/lspconfig"
require'plugins/lspsagaconfig'
require'plugins/cmpconfig'
require'plugins/lualineconfig'
require'plugins/telescopeconfig'
require'plugins/nerdtreeconfig'
--require'plugins/ddc'
--require'plugins/lualineconfig'

