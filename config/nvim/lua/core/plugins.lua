local plugins = {
  -- misc
  'airblade/vim-gitgutter',
  'junegunn/fzf',
  'nvim-treesitter/nvim-treesitter',

  -- salt
  'saltstack/salt-vim',

  -- lsp
  --'williamboman/mason.nvim',
  --'williamboman/mason-lspconfig.nvim',
  'neovim/nvim-lspconfig',

  -- theme catppuccin
  --{ 
  --  'catppuccin/nvim', 
  --  name = 'catppuccin', 
  --  priority = 1000 
  --},
  
  -- neo-tree
  {
  'nvim-neo-tree/neo-tree.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'MunifTanjim/nui.nvim',
      'nvim-tree/nvim-web-devicons'
    },
  },
  -- status line
  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    }
  }
}

local opts = {}

require('lazy').setup(plugins, opts)
