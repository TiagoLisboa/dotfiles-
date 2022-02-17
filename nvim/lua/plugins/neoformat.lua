local vim = vim

-- Enable trimmming of trailing whitespace
vim.g['neoformat_basic_format_trim'] = 1

-- Enable tab to space conversion
vim.g['neoformat_basic_format_retab'] = 1

-- Enable alignment
vim.g['neoformat_basic_format_align'] = 1

vim.g['neoformat_enabled_python'] = { 'yapf', 'isort' }

vim.g['neoformat_run_all_formatters'] = 1
