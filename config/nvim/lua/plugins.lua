vim.cmd [[ packadd packer.nvim ]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'airblade/vim-gitgutter'
  use 'glepnir/dashboard-nvim'
  use 'catppuccin/nvim' as = "catppuccin"
  use 'junegunn/fzf'
  use {
    'iamcco/markdown-preview.nvim',
    run = function() vim.fn["mkdp#util#install"]() end,
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use { 
    'sindrets/diffview.nvim', 
    requires = 'nvim-lua/plenary.nvim' 
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'    
  }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons'
    },
    config = function() require'nvim-tree'.setup {
      disable_netrw = false,
      hijack_netrw = true,
      open_on_setup = false,
      ignore_ft_on_setup   = {},
      auto_reload_on_write = true,
      open_on_tab          = false,
      hijack_cursor        = false,
      update_cwd           = false,
      hijack_unnamed_buffer_when_opening = false,
      hijack_directories   = {
        enable = true,
        auto_open = true,
      },
    } end
  }
end)
