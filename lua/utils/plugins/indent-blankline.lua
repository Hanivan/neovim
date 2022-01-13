vim.opt.list = true


require("indent_blankline").setup({
  char = "▏",
  show_current_context = true,
  show_end_of_line = false,
  disable_with_nolist = true,
  filetype_exclude = {
    "dashboard",
    "help",
    "git",
    "NvimTree",
    "Dashboard",
    "markdown",
    "snippets",
    "gitconfig",
    "terminal",
    "lspinfo",
    "packer",
    "man",
  },
  buftype_exclude = {
    "terminal",
    "nofile"
  },
})
