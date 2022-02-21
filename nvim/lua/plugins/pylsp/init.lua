local util = require"lspconfig.util"
local venv = require"plugins.pylsp.utils".get_python_venv()

require'lspconfig'.pylsp.setup{
    cmd = {"pylsp"},
    cmd_env = {VIRTUAL_ENV = venv, PATH = util.path.join(venv, 'bin') .. ':' .. vim.env.PATH},
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
