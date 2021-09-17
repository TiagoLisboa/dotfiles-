require('telescope').load_extension('session-lens')
require('telescope').load_extension('heading')
require('telescope').load_extension('vim_bookmarks')

local set_keymap = require('../common').set_keymap
set_keymap(
    'n',
    '<leader>ff',
    '<cmd>Telescope find_files find_command=fdfind,--exclude,*.git,--type,f<cr>'
)
set_keymap('n', '<leader>fd', '<cmd>Telescope git_files<cr>')
set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
set_keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>')
set_keymap('n', '<leader>fh', '<cmd>Telescope help_tags<cr>')
set_keymap('n', '<leader>fl', '<cmd>Telescope lsp_document_symbols<cr>')
set_keymap('n', '<leader>fk', '<cmd>Telescope keymaps<cr>')
-- set_keymap('n', '<leader>fm', '<cmd>Telescope heading<cr>')
set_keymap('n', '<leader>fm', '<cmd>Telescope vim_bookmarks all<cr>')

local actions = require('telescope.actions')
require('telescope').setup({
    defaults = {
        mappings = {
            i = {
                ['<esc>'] = actions.close,
            },
        },
    },
    pickers = {
        buffers = {
            show_all_buffers = true,
            sort_mru = true,
            preview = true,
            mappings = {
                i = {
                    ["<c-d>"] = require("telescope.actions").delete_buffer,
                },
                n = {
                    ["<c-d>"] = require("telescope.actions").delete_buffer,
                }
            }
        }
    }
})
