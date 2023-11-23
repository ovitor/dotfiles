--- treesitter configuration
--

require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "c",
    "lua",
    "python",
    "terraform",
    "dockerfile",
    "kdl",
    "yaml",
    "jq",
    "json",
    "ssh_config",
    "bash",
    "vim",
    "vimdoc",
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false
  },
  indent = {
    enable = true,
  }
}
