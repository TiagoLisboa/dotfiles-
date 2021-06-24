require('lspconfig').bashls.setup({})
require('lspconfig').cssls.setup({})
require('lspconfig').gopls.setup({})
require('lspconfig').html.setup({})
require('lspconfig').jsonls.setup({})
require('lspconfig').pyls.setup({})
require('lspconfig').rust_analyzer.setup({})
require('lspconfig').solargraph.setup({})
require('lspconfig').sqlls.setup({
    cmd = { '/usr/local/bin/sql-language-server', 'up', '--method', 'stdio' },
})
require('lspconfig').tsserver.setup({})
require('lspconfig').vimls.setup({})
require('lspconfig').vuels.setup({})
require'lspconfig'.phpactor.setup{}
require'lspconfig'.tsserver.setup{}
