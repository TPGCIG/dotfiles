-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Enable system clipboard
vim.opt.clipboard = "unnamedplus"

-- Set up the WSL Clipboard bridge
local win32yank = "/mnt/c/Windows/system32/win32yank.exe"

if vim.fn.has("wsl") == 1 then
  vim.g.clipboard = {
    name = "WslClipboard",
    copy = {
      ["+"] = win32yank .. " -i --crlf",
      ["*"] = win32yank .. " -i --crlf",
    },
    paste = {
      ["+"] = win32yank .. " -o --lf",
      ["*"] = win32yank .. " -o --lf",
    },
    cache_enabled = 0,
  }
end

-- Global tab and indentation settings for 4 spaces
vim.opt.tabstop = 4 -- Number of spaces that a <Tab> in the file counts for
vim.opt.shiftwidth = 4 -- Number of spaces to use for each step of (auto)indent
vim.opt.softtabstop = 4 -- Number of spaces that a <Tab> counts for while editing
vim.opt.expandtab = true -- Convert tabs to spaces
