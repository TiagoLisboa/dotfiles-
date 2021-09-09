local vim = vim

-- disable autocompletion, because we use deoplete for completion
vim.g['jedi#completions_enabled'] = 1

-- open the go-to function in split, not another buffer
vim.g['jedi#use_splits_not_buffers'] = 1
