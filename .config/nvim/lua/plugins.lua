local status, packer = pcall(require, 'packer')

if (not status) then
  print('Packer is not installed')
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use { "ellisonleao/gruvbox.nvim" }
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'neovim/nvim-lspconfig' -- LSP server
  use 'L3MON4D3/LuaSnip'
  use 'max397574/better-escape.nvim'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'norcalli/nvim-colorizer.lua'
  -- Telescope settinas
  use 'nvim-lua/plenary.nvim' -- common utilities
  use "nvim-telescope/telescope.nvim"
  use "nvim-telescope/telescope-file-browser.nvim"
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
 -- use 'glepnir/lspsaga.nvim'
  use 'akinsho/nvim-bufferline.lua'
end)
