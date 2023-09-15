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
  use { "Scysta/pink-panic.nvim" }
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.3',
  -- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
  }
  if packer_bootstrap then
    require("packer").sync()
  end
end)
