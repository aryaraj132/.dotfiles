return {
    {
        "nvimdev/dashboard-nvim",
        enabled = false,
    },
    -- content awareness for smart indentation
    {
        "wellle/context.vim",
        enabled = true,
    },
    {
        "Darazaki/indent-o-matic",
        enabled = true,
    },
    {
        "nvim-lualine/lualine.nvim",
        enabled = true,
    },
    {
        "mg979/vim-visual-multi",
        branch = "master",
        init = function()
            vim.g.VM_maps = {
                ["Find Under"] = "<C-d>",
                -- ["Find Subword Under"] = "<C-d>",
            }
        end,
    },
    -- messages, cmdline and the popupmenu
    {
        "folke/noice.nvim",
        opts = function(_, opts)
            opts.lsp.signature = {
                auto_open = { enabled = false },
            }
            table.insert(opts.routes, {
                filter = {
                    event = "notify",
                    find = "No information available",
                },
                opts = { skip = true },
            })
            local focused = true
            vim.api.nvim_create_autocmd("FocusGained", {
                callback = function()
                    focused = true
                end,
            })
            vim.api.nvim_create_autocmd("FocusLost", {
                callback = function()
                    focused = false
                end,
            })
            table.insert(opts.routes, 1, {
                filter = {
                    cond = function()
                        return not focused
                    end,
                },
                view = "notify_send",
                opts = { stop = false },
            })

            opts.commands = {
                all = {
                    -- options for the message history that you get with `:Noice`
                    view = "split",
                    opts = { enter = true, format = "details" },
                    filter = {},
                },
            }

            opts.presets.lsp_doc_border = true
        end,
    },

    {
        "rcarriga/nvim-notify",
        opts = {
            timeout = 5000,
            background_colour = "#000000",
            render = "wrapped-compact",
        },
    },

    -- filename
    {
        "b0o/incline.nvim",
        dependencies = {},
        event = "BufReadPre",
        priority = 1200,
        config = function()
            local helpers = require("incline.helpers")
            require("incline").setup({
                window = {
                    padding = 0,
                    margin = { horizontal = 0 },
                },
                render = function(props)
                    local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
                    local ft_icon, ft_color = require("nvim-web-devicons").get_icon_color(filename)
                    local modified = vim.bo[props.buf].modified
                    local buffer = {
                        ft_icon and { " ", ft_icon, " ", guibg = ft_color, guifg = helpers.contrast_color(ft_color) }
                            or "",
                        " ",
                        { filename, gui = modified and "bold,italic" or "bold" },
                        " ",
                        guibg = "#363944",
                    }
                    return buffer
                end,
            })
        end,
    },
}
