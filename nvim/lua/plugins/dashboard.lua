return {
  {
    "nvim-mini/mini.animate",
    event = "VeryLazy",
    opts = function(_, opts)
      opts = opts or {}
      opts.scroll = opts.scroll or {}
      opts.scroll.enable = false
      return opts
    end,
  },
  {
    "folke/flash.nvim",
    enabled = false,
  },
  -- Override dashboard header with custom ASCII art using a post-setup approach
  {
    "folke/snacks.nvim",
    opts = {
      image = {
        enabled = false,
      },
      dashboard = {
        preset = {
          header = [[
      :::::::::  ::::::::::     :::     :::       :::    ::: 
     :+:    :+: :+:          :+: :+:   :+:       :+:    :+:  
    +:+    +:+ +:+         +:+   +:+  +:+       +:+    +:+   
   +#++:++#+  +#++:++#   +#++:++#++: +#+       +#+    +:+    
  +#+    +#+ +#+        +#+     +#+ +#+       +#+    +#+     
 #+#    #+# #+#        #+#     #+# #+#       #+#    #+#      
#########  ########## ###     ### ########## ########        
      :::::::: ::::::::::: :::::::::    :::   :::       :::  
    :+:    :+:    :+:     :+:    :+:  :+:+: :+:+:    :+: :+: 
   +:+           +:+     +:+    +:+ +:+ +:+:+ +:+  +:+   +:+ 
  :#:           +#+     +#++:++#:  +#+  +:+  +#+ +#++:++#++: 
 +#+   +#+#    +#+     +#+    +#+ +#+       +#+ +#+     +#+  
#+#    #+#    #+#     #+#    #+# #+#       #+# #+#     #+#   
######## ########### ###    ### ###       ### ###     ###    
]],
          keys = {
            {
              icon = "󰃭 ",
              key = "o",
              desc = "Obsidian",
              action = function()
                vim.cmd("Obsidian")
              end,
            },

            {
              icon = " ",
              key = "n",
              desc = "New File",
              action = ":ene | startinsert",
            },

            {
              icon = " ",
              key = "p",
              desc = "Projects",
              action = function()
                Snacks.picker.projects()
              end,
            },

            {
              icon = "󰄱 ",
              key = "t",
              desc = "Todoist",
              action = function()
                vim.cmd("Todoist")
                -- Todoist action
              end,
            },

            {
              icon = " ",
              key = "r",
              desc = "Recent Files",
              action = function()
                Snacks.picker.recent()
              end,
            },

            {
              icon = " ",
              key = "c",
              desc = "Config",
              action = function()
                Snacks.picker.files({
                  cwd = vim.fn.stdpath("config"),
                })
              end,
            },

            {
              icon = " ",
              key = "s",
              desc = "Restore Session",
              action = function()
                require("persistence").load()
              end,
            },

            {
              icon = " ",
              key = "x",
              desc = "Lazy Extras",
              action = ":LazyExtras",
            },

            {
              icon = "󰒲 ",
              key = "l",
              desc = "Lazy",
              action = ":Lazy",
            },

            {
              icon = " ",
              key = "q",
              desc = "Quit",
              action = ":qa",
            },
          },
        },
        picker = {
          exclude = {
            "node_modules",
            "dist",
          },
        },
      },
    },
  },
}
