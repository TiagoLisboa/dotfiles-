local vim = vim

vim.g.neomake_python_enabled_makers = {'pylint'}

vim.call('neomake#configure#automake', 'nrwi', 500)

