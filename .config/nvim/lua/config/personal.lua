-- Personal config file

local vim_global = {
    loaded_netrw = 1,
    loaded_netrwPlugin = 1,

    mapleader = " "
}

local vim_keymaps = {
    { { "n", "v" }, "<leader>t", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle directory tree" } },
    { { "n", "v" }, "<leader>o", "<cmd>Oil<CR>", { desc = "Open oil file manager" } },
    { { "n", "v" }, "<leader>h", "<cmd>CccHighlighterToggle<CR>", { desc = "Color Picker" } }
}

local vim_options = {
    tabstop = 4,
    shiftwidth = 4,
    softtabstop = 4,
    scrolloff = 8,
    updatetime = 250,

    number = true,
    termguicolors = true,
    smartcase = true,
    ignorecase = true,
    expandtab = true,
    incsearch = true,
    undofile = true,
    hlsearch = false,
    swapfile = false,
    backup = false,
    writebackup = false,
    wrap = false,

    clipboard = "unnamedplus",
    signcolumn = "yes",
    mouse = "a"
}

for option, value in pairs(vim_global) do
    vim.g[option] = value
end

for _, keymap in pairs(vim_keymaps) do
    vim.keymap.set(keymap[1], keymap[2], keymap[3], keymap[4])
end

for option, value in pairs(vim_options) do
    vim.opt[option] = value
end
