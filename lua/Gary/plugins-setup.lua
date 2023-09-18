local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end


-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
  return
end

-- add list of plugins to install
return packer.startup(function(use)
  use("wbthomason/packer.nvim")
  use {'nyoom-engineering/oxocarbon.nvim'}
  use {'mbbill/undotree'}
  use { "rose-pine/nvim"}
  use { "drillbits/nyan-modoki.vim" }
  use { "rktjmp/lush.nvim" }
  use {'rockerBOO/boo-colorscheme-nvim'}
  use {'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'} }
  use {'theprimeagen/harpoon'}
  use {'tpope/vim-fugitive'}
  use {'neovim/nvim-lspconfig'}
  use {"briones-gabriel/darcula-solid.nvim", requires = "rktjmp/lush.nvim"}
  use {"sbdchd/neoformat"}
  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason.nvim'},           -- Optional
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
  }
} 
  use { 'huyvohcmc/atlas.vim' }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.3',
  -- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
  }
  if packer_bootstrap then
    require("packer").sync()
  end
end)
