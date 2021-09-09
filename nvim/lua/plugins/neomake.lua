local vim = vim

vim.g['neomake_python_enabled_makers'] = ['pylint']

vim.fn.neomake.configure.automake('nrwi', 500)
