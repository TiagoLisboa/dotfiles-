local util = require"lspconfig.util"
local vim = vim
local M = {}

function M.get_python_venv()

    if vim.env.VIRTUAL_ENV then return vim.env.VIRTUAL_ENV end

    local match = vim.fn.glob(util.path.join(vim.fn.getcwd(), 'Pipfile'))
    if match ~= '' then return vim.fn.trim(vim.fn.system('PIPENV_PIPFILE=' .. match .. ' pipenv --venv')) end

    match = vim.fn.glob(util.path.join(vim.fn.getcwd(), 'poetry.lock'))
    if match ~= '' then return vim.fn.trim(vim.fn.system('poetry env info -p')) end
end

return M
