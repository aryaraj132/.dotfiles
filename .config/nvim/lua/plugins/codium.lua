return {
    "Exafunction/codeium.vim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "hrsh7th/nvim-cmp",
    },
    config = function()
        -- Change '<C-g>' here to any keycode you like.
        vim.keymap.set("i", "<S-Tab>", function()
            return vim.fn["codeium#Accept"]()
        end, { expr = true, silent = true })
        vim.keymap.set("i", "<c-;>", function()
            return vim.fn["codeium#CycleCompletions"](1)
        end, { expr = true, silent = true })
        vim.keymap.set("i", "<c-,>", function()
            return vim.fn["codeium#CycleCompletions"](-1)
        end, { expr = true, silent = true })
        vim.keymap.set("i", "<c-/>", function()
            return vim.fn["codeium#Clear"]()
        end, { expr = true, silent = true })
        -- BLOCK Codeium from accepting changes when tab is pressed.
        vim.keymap.set("i", "<c-.>", function()
            return vim.fn["codeium#Ignore"]()
        end, { expr = true, silent = true })
    end,
    event = "BufEnter",
}
