-- init.lua

local catppuccin = require("catppuccin")
local lualine = require("lualine")

local catppuccin_settings = {
  transparent_background = false,
  integrations = {
    gitgutter = true,
    nvimtree = {
		  enabled = true,
		  show_root = true,
		  transparent_panel = false,
	  },
  }
}

local lualine_settings = {
  options = {
    theme = 'catppuccin'
  }
}

require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  },
  indent = {
    enable = true
  }
}

catppuccin.setup(catppuccing_settings)
lualine.setup(lualine_settings)
