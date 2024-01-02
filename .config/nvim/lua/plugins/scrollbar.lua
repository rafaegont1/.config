local opts = {
  handle = {
    color = '#767676'
  },
  handlers = {
    cursor = false,
    diagnostic = true,
  },
}

return {
  {
    'petertriho/nvim-scrollbar',
    opts = opts,
  },
}
