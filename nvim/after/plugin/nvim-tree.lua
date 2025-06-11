require("nvim-tree").setup({
    view = {
        width = 40,
        side = 'left',
    },
    filters = {
        dotfiles = false,
    },
    renderer = {
        highlight_git = true,
        icons = {
            show = {
                git = true,
                folder = true,
                file = true,
                folder_arrow = true,
            },
        },
    },
})
