local util = require "lspconfig.util"

require('lspconfig').cssls.setup({})
-- require('lspconfig').html.setup({})
require('lspconfig').jsonls.setup({})
require('lspconfig').tsserver.setup({})
require('lspconfig').vimls.setup({})
require('lspconfig').vuels.setup({})
-- require'lspconfig'.phpactor.setup{}
-- require'lspconfig'.intelephense.setup{}
-- require'lspconfig'.pyright.setup{}
require'lspconfig'.pylsp.setup{
    cmd = {"pylsp"},
    root_dir = function(fname)
        local root_files = {
            'pyproject.toml',
            'setup.py',
            'setup.cfg',
            'requirements.txt',
            'Pipfile',
        }
        return util.root_pattern(unpack(root_files))(fname) or util.find_git_ancestor(fname)
    end,
    settings = {
        pylsp = {
            configurationSources = {"pylint"},
            plugins = {
                pylint = { enabled = true },
                flake8 = { enabled = false },
                pycodestyle = { enabled = true },
                pyflakes = { enabled = false },
                yapf = { enabled = true },
                pydocstyle = { enabled = true },
            }
        }
    }
}
