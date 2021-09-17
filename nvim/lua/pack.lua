local vim = vim

vim.cmd('packadd paq-nvim')

require 'paq-nvim' {
{ 'savq/paq-nvim', opt = true };

-- lib
'nvim-lua/plenary.nvim';
'nvim-lua/popup.nvim';

-- theme
{'rafamadriz/neon'};

-- file
'mhinz/vim-startify'; -- stardup page
'nvim-telescope/telescope.nvim'; -- fuzzy picker
'crispgm/telescope-heading.nvim'; -- markdown heading
'akinsho/nvim-toggleterm.lua'; -- terminal
'rmagatti/auto-session'; -- auto session
'rmagatti/session-lens'; -- session lens for telescope
'farmergreg/vim-lastplace'; -- reopen files at your last edit position
'MattesGroeger/vim-bookmarks'; -- vscode like bookmarks
'tom-anders/telescope-vim-bookmarks.nvim'; -- telescope integration with bookmarks

-- view
'hoob3rt/lualine.nvim'; -- status line
'kyazdani42/nvim-web-devicons'; -- dev icons
'kyazdani42/nvim-tree.lua'; -- file explorer
'crispgm/nvim-tabline'; -- tab line
'dstein64/nvim-scrollview'; -- scroll bar
'google/vim-searchindex'; -- search index
'wincent/ferret'; -- find and replace
'RRethy/vim-illuminate'; -- highlight hover word
'lewis6991/gitsigns.nvim'; -- git signs
'f-person/git-blame.nvim'; -- toggle git blame info
'norcalli/nvim-colorizer.lua'; -- color codes rendering
'tversteeg/registers.nvim'; -- show registers
'winston0410/cmd-parser.nvim'; -- dependency of range-highlight
'winston0410/range-highlight.nvim'; -- highlight range lines

-- edit
'phaazon/hop.nvim'; -- jump to anywhere within 2 strokes
'tpope/vim-repeat'; -- repeat that support plugin
'tpope/vim-surround'; -- toggle surround
'tpope/vim-abolish'; -- eh, hard to describe, see README
'tpope/vim-commentary'; -- toggle comment
-- {
--     'prettier/vim-prettier', -- prettier formatter
--     run = 'yarn install',
--     branch = 'release/0.x',
-- };
'christoomey/vim-system-copy'; -- copy to system clipboard
'monaqa/dial.nvim'; -- <c-a> <c-x> enhancement
'kana/vim-textobj-user'; -- define textobj by user
'haya14busa/vim-textobj-number'; -- number textobj
'AndrewRadev/splitjoin.vim'; -- split and join in vim

-- git
'tpope/vim-fugitive'; -- git wrapper

-- language
{
    'nvim-treesitter/nvim-treesitter', -- treesitter
    run = ':TSUpdate',
};
'nvim-treesitter/playground'; -- treesitter playground
'nvim-treesitter/nvim-treesitter-textobjects'; -- treesitter textobj e.g., class, function
'neovim/nvim-lspconfig'; -- lsp client config
'hrsh7th/nvim-compe'; -- completion
'hrsh7th/vim-vsnip'; -- snippets
'hrsh7th/vim-vsnip-integ'; -- vsnip integration for nvim-compe
'mattn/emmet-vim'; -- html/css snippets
'davidhalter/jedi-vim';
'zchee/deoplete-jedi';
'neomake/neomake';
-- 'sbdchd/neoformat';
-- {
--    'phpactor/phpactor',
--    run='composer install --no-dev -o'
-- }

-- guess this should be categorized
'vimwiki/vimwiki'; -- vimwiki
{
    'Shougo/deoplete.nvim',
    run = ':UpdateRemotePlugins'
};
'puremourning/vimspector';
'szw/vim-maximizer';
'simrat39/symbols-outline.nvim';
}
