wk = require "which-key"
wk.register(
  {
    -- add group
    ["<leader>"] = {
      t = { name = "+  terminal/  theme" },
      w = { name = "+  whichkey"},
      f = { name = "+  find"},
      c = { name = "+ cheatsheet/git commit"},
      l = { name = "+ open lazy.nvim"},
    },

    ["<C-w>"] = { name = "+  window actions" },
    ["<C-s>"] = { name = " save file" },
  }
)

local options = {

  icons = {
    breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
    separator = "  ", -- symbol used between a key and it's label
    group = "+", -- symbol prepended to a group
  },

  popup_mappings = {
    scroll_down = "<Down>", -- binding to scroll down inside the popup
    scroll_up = "<Up>", -- binding to scroll up inside the popup
  },

  window = {
    border = "none", -- none/single/double/shadow
  },

  layout = {
    spacing = 6, -- spacing between columns
  },

  hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " },

  triggers_blacklist = {
    -- list of mode / prefixes that should never be hooked by WhichKey
    i = { "j", "k" },
    v = { "j", "k" },
  },
}

return options
