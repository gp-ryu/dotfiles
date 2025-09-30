-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.o.background = 'light'
vim.cmd([[colorscheme catppuccin]])
vim.g.python3_host_prog = "~/.pixi/bin/python3"
