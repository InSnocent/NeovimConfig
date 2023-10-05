local packer = require("packer")
packer.startup({
  function(use)
    -- Packer 可以管理自己本身
    use 'wbthomason/packer.nvim'

    -- 插件列表...
    -- use 'vim-airline/vim-airline'
    use 'godlygeek/tabular'
    use 'plasticboy/vim-markdown'
    use 'yuttie/inkstained-vim'
    use 'ferrine/md-img-paste.vim'
    use 'neoclide/coc.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use 'nvim-treesitter/nvim-treesitter'
      -- nvim-tree
    use({'kyazdani42/nvim-tree.lua',
      requires = "kyazdani42/nvim-web-devicons"
    })
    -- use 'nvim-tree/nvim-web-devicons'
    use 'echasnovski/mini.base16'
    -- bufferline
    use({ 
      "akinsho/bufferline.nvim",
      requires = {
        "kyazdani42/nvim-web-devicons",
        "moll/vim-bbye"
      }})
    -- lualine
    use({ 
      "nvim-lualine/lualine.nvim",
      requires = "kyazdani42/nvim-web-devicons" 
      })
    use 'arkav/lualine-lsp-progress'

  end,
  config = {
    -- 并发数限制
    max_jobs = 16,
    -- 自定义源
    git = {
      -- default_url_format = "https://hub.fastgit.xyz/%s",
      -- default_url_format = "https://mirror.ghproxy.com/https://github.com/%s",
      -- default_url_format = "https://gitcode.net/mirrors/%s",
      -- default_url_format = "https://gitclone.com/github.com/%s",
    },
  },
})
