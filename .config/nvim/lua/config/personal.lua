-- Personal config file

local vim_global = {
    loaded_netrw = 1,
    loaded_netrwPlugin = 1,

    mapleader = " "
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

local vim_keymaps = {
    { { "n", "v", "x" }, "<leader>w", ":w<CR>" },
    { { "n", "v", "x" }, "<leader>wq", ":wq<CR>" },
    { { "n", "v", "x" }, "<leader>q", ":q<CR>" },
    { { "n", "v", "x" }, "<leader>qq", ":q!<CR>" },

    { { "n", "v" }, "<leader>t", ":NvimTreeToggle<CR>" },
    { { "n", "v" }, "<leader>o", ":Oil<CR>" },
    { { "n", "v" }, "<leader>h", ":CccHighlighterToggle<CR>" }
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
