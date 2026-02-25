local M = {}

M.config = function()

  -- appearance
  vim.opt.number = true
  vim.opt.relativenumber = true
  vim.opt.cursorline = true
  vim.opt.termguicolors = true
  vim.opt.signcolumn = 'yes'

  -- tabs/indents
  vim.opt.tabstop = 2
  vim.opt.shiftwidth = 2
  vim.opt.expandtab = true
  vim.opt.smartindent = true

  -- search
  vim.opt.ignorecase = true
  vim.opt.smartcase = true

  -- general
  vim.opt.clipboard = 'unnamedplus'
  vim.opt.splitbelow = true
  vim.opt.splitright = true
  vim.opt.updatetime = 100
  vim.opt.timeoutlen = 400
  vim.opt.mouse = 'nvi'

  vim.g.vimwiki_global_ext = 0
  vim.opt.showmode = false
  vim.opt.infercase = true
  vim.opt.foldmethod = 'expr'
  vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
  vim.opt.foldlevel = 99
  vim.opt.foldlevelstart = 99
  vim.opt.conceallevel = 0
  vim.opt.exrc = true
  vim.g.do_filetype_lua = 1
  vim.opt.winminwidth = 10
  vim.opt.syntax = 'on'

  -- color scheme config
  vim.opt.background = 'dark'
end

return M
