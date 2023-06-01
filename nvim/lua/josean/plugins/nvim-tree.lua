-- import nvim-tree plugin safely
local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
    return
end

-- recommended settings from nvim-tree documentation
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- change color for arrows in tree to light blue
vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

-- configure nvim-tree
nvimtree.setup({
    update_focused_file = {
        enable = true,
        update_cwd = true,
        ignore_list = {
        },
    },
    system_open = {
        cmd = nil,
        args = {},
    },
    view = {
        -- width = 30,
        adaptive_size = true,
        hide_root_folder = false,
        side = "right",
        mappings = {
            custom_only = false,
            list = {},
        },
        number = false,
        relativenumber = false,
        signcolumn = "yes",
    },
    -- change folder arrow icons
    renderer = {
        icons = {
            glyphs = {
                folder = {
                    arrow_closed = "", -- arrow when folder is closed
                    -- arrow_open = "󰕌 ", -- arrow when folder is open
                    arrow_open = "", -- arrow when folder is open
                },
            },
        },
    },
    filters = {
        dotfiles = false,
        custom = { "node_modules", "\\.cache", "*/target" },
        exclude = {},
    },
    trash = {
        cmd = "trash",
        require_confirm = true,
    },
    log = {
        enable = false,
        truncate = false,
        types = {
            all = false,
            config = false,
            copy_paste = false,
            diagnostics = false,
            git = false,
            profile = false,
        },
    },
    -- disable window_picker for
    -- explorer to work well with
    -- window splits
    actions = {
        open_file = {
            window_picker = {
                enable = false,
            },
        },
    },
    -- 	git = {
    -- 		ignore = false,
    -- 	},
})
