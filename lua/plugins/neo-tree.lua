return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_by_name = {
          ".git",
          -- ".DS_Store",
          -- "thumbs.db",
        },
        never_show = { ".DS_Store" },
      },
    },
    event_handlers = {
      {
        event = "neo_tree_buffer_enter",
        handler = function(arg)
          vim.cmd([[
              setlocal relativenumber
            ]])
        end,
      },
    },
  },
}
