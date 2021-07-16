local vim = vim

vim.g.neon_style = "default"
vim.g.neon_italic_keyword = true
vim.g.neon_italic_comment = true
vim.g.neon_italic_function = true
vim.g.neon_italic_boolean = true
vim.g.neon_italic_variable = true
vim.g.neon_bold = true

vim.cmd[[colorscheme neon]]
local c = require("neon.colors")

vim.g.terminal_color_1 = c.red
vim.g.terminal_color_7 = c.fg
