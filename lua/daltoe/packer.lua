-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use 'nvim-tree/nvim-web-devicons'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use({
    'rose-pine/neovim',
    as = 'rose-pine',
    --config = function()
    --  vim.cmd('colorscheme rose-pine')
    --end
  })
  use 'navarasu/onedark.nvim'

  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

  use "nvim-lua/plenary.nvim"
  use {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    requires = { { "nvim-lua/plenary.nvim" } }
  }

  use "mbbill/undotree"
  use "tpope/vim-fugitive"

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
      --- Uncomment these if you want to manage LSP servers from neovim
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'L3MON4D3/LuaSnip' },
    }
  }

  use {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    -- Because the copilot server takes some time to start up, it is recommend that you lazy load copilot
    config = function()
      require("copilot").setup({
        suggestion = {
          auto_trigger = true,
          keymap = {
            accept = false,
            dismiss = "<Esc>"
          },
        },
        filetypes = {
          ['*'] = true,
        },
      })
    end,
  }

  use {
    'CopilotC-Nvim/CopilotChat.nvim',
    branch = "canary",
    requires = {
      { "zbirenbaum/copilot.lua" }, -- or github/copilot.lua
      { "nvim-lua/plenary.nvim" },  -- for curl, log wrapper
    }
  }

  use { "akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
  end }

  use "tpope/vim-surround"
end)
