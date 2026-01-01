return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
  },

  opts = {
    filesystem = {
      filtered_items = {
        visible = true, -- This makes them visible but dimmed
        hide_dotfiles = false,
        hide_gitignored = false, -- Set to true if you still want to hide stuff in .gitignore
      },},

    default_component_configs = {
      indent = {
        -- Change these to standard characters
        expander_collapsed = ">",
        expander_expanded = "v",
        with_expanders = true, -- set to true to actually show them
      },
    icon = {
        folder_closed = "[+]",
        folder_open = "[-]",
        folder_empty = "[ ]",
        -- If you don't have a Nerd Font, the default file icon 
        -- will look broken, so you can set a fallback:
    default = " ",
    },
      git_status = {
        -- If Git icons look like "uy", you can change them here or disable them
        symbols = {
          added     = "A",
          modified  = "M",
          deleted   = "D",
          renamed   = "R",
          untracked = "?",
          ignored   = "!",
          unstaged  = "U",
          staged    = "S",
          conflict  = "X",
        },
      },
    },
  }
  }
