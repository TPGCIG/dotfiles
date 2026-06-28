return {
  {
    "j-hui/fidget.nvim",
    opts = {
      progress = {
        suppress_on_insert = true, -- Don't show notifications while typing
        ignore = { "pyright" }, -- Specifically stop Pyright from spamming
      },
    },
  },
}
