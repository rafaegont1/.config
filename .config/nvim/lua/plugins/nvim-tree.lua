local config = function()
  -- disable netrw at the very start of your init.lua
  vim.g.loaded_netrw = 1
  vim.g.loaded_netrwPlugin = 1

  -- empty setup using defaults
  require("nvim-tree").setup()

  require("nvim-tree").setup({
    update_cwd = true,
    --sort_by = "case_sensitive",
    view = {
      width = 25,
    },
    diagnostics = {
      enable = true,
    },
    renderer = {
      group_empty = true,
      icons = {
        diagnostics_placement = "after",
        git_placement = "signcolumn",
      },
    },
    filters = {
      dotfiles = true,
    },
  })

  -- Toggle neovim tree
  vim.keymap.set('n', '<A-t>', ':NvimTreeFocus<CR>', { silent = true })
end

return {
  {
    -- A File Explorer For Neovim Written In Lua
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = config
  },
}
