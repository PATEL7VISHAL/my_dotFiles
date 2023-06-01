if vim.g.vscode then
    -- VSCode extension
    require("josean.plugins-setup-vs")
    require("josean.plugins.autopairs")
    require("josean.plugins.lightspeed_nvim")
    require("josean.plugins.todo-comments_nvim")
    -- require("josean.core.options-vs")
    require("josean.core.keymap-vs")

else
    -- ordinary Neovim
    require("josean.plugins-setup")
    require("josean.core.options")
    require("josean.core.keymaps")
    require("josean.core.colorscheme")
    -- require("josean.plugins.comment")
    require("josean.plugins.nvim-tree")
    require("josean.plugins.lualine")
    require("josean.plugins.telescope")
    require("josean.plugins.nvim-cmp")
    require("josean.plugins.lsp.mason")
    require("josean.plugins.lsp._lspsaga")
    require("josean.plugins.lsp.lspconfig")
    require("josean.plugins.lsp.null-ls")
    require("josean.plugins.autopairs")
    require("josean.plugins.treesitter")
    -- require("josean.plugins.gitsigns")
    require("josean.plugins.bufferline_nvim")
    require("josean.plugins.lightspeed_nvim")
    require("josean.plugins.lsp_signature_nvim")
    require("josean.plugins.todo-comments_nvim")
    require("josean.plugins._rust-tools")
    -- require("josean.plugins.gruvbox")
end
