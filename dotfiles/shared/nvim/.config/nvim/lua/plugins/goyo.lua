return {
  {
    'junegunn/goyo.vim',
    config = function()
      -- Create a group to manage these autocmds and prevent duplicates
      local goyo_group = vim.api.nvim_create_augroup("GoyoSettings", { clear = true })

      -- This function runs when you enter Goyo
      vim.api.nvim_create_autocmd("User", {
        pattern = "GoyoEnter",
        group = goyo_group,
        callback = function()
          vim.opt_local.wrap = true
          vim.opt_local.linebreak = true -- Prevents breaking lines in the middle of words

          -- Hide Lualine for a cleaner distraction-free look
          -- require('lualine').hide()
          
          -- Force all side-bar and window-edge elements to be transparent
        end,
      })

      -- This function runs when you leave Goyo (to reset your coding settings)
      vim.api.nvim_create_autocmd("User", {
        pattern = "GoyoLeave",
        group = goyo_group,
        callback = function()
          vim.opt_local.wrap = false
          vim.opt_local.linebreak = false

          -- Unhide Lualine to return to your normal dev environment
          -- require('lualine').hide({ unhide = true })
        end,
      })
    end
  },
}
