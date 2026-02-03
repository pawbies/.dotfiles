-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")


vim.api.nvim_create_autocmd({"VimEnter"}, {
  callback = function()
    io.stdout:write("\x1b[?7727l")
    vim.fn.system("kitty @ set-spacing padding=0")
  end
})

vim.api.nvim_create_autocmd({"VimLeave"}, {
  callback = function()
    vim.fn.system("kitty @ set-spacing padding=default")
  end
})
