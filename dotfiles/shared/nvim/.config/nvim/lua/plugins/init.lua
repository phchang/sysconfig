return {
    {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    dependencies = {
      "echasnovski/mini.icons",
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      bigfile = { enabled = true },
      dashboard = {
        preset = {
          header = [[
 __________________                                         
|    Main Menu     |__________________________________      
|   __________________                                |     
|  |                  |_______________________________|__   
|  |    ___________________                              |  
|  |   |                   |_____________________________|__
|  |   |                                                    |
|  |   |                                                    |
|  |   |                                                    |
|  |   |                                                    |
|  |   |                                                    |
|  |   |                   N E O V I M                      |
|  |   |                                                    |
|  |   |                                                    |
|  |   |                                                    |
|__|   |                                                    |
   |___|                                                    |
       |____________________________________________________|
          ]],
        },
        enabled = true,
      },
      notifier = { enabled = false },
      quickfile = { enabled = true },
      dim = {
        enabled = true,
        animate = {
          duration = {
            step = 10,
            total = 150,
          }
        }
      },
      indent = {
        enabled = true,
        animate = {
          duration = {
            step = 10,
            total = 150,
          }
        }
      },
      scratch = {
        enabled = true,
        win = { style = "scratch" },
      },
      lazygit = { enabled = true },
      statuscolumn = { enabled = true },
      terminal = { enabled = true },
    },
    keys = {
      { "<leader>D", function() Snacks.dashboard() end,      desc = "Go to Dashboard" },
      { "<leader>.", function() Snacks.scratch.open() end,   desc = "Toggle Scratch Buffer" },
      { "<leader>n", function() Snacks.scratch.select() end, desc = "Select Scratch Buffer" },
      { "<leader>g", function() Snacks.lazygit.open() end },
    },
  },

}
