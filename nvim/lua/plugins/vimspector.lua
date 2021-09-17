local vim = vim

vim.g.vimspector_enable_mappings = 'HUMAN'

vim.g.vimspector_sign_priority = {
    vimspectorPCBP=200,
    vimspectorBP=200,
    vimspectorBPCond=200,
    vimspectorBPDisabled=9,
    vimspectorCurrentThread=200
}
