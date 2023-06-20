local M = {}

M.disabled = {
  n = {
    ["<C-c>"] = "",
  }
}

M.abc = {
  n = {
    ["<C-p>"] = { "<cmd> Telescope find_files <CR>", "Search files" },
    ["<leader>qq"] = { "<cmd>qa<CR>", "Quit all" },
    ["<C-_>"] = {
      function()
        require("Comment.api").toggle.linewise.current()
      end,
      "Toggle comment",
    },
    ["<leader>gg"] = {
      function()
        local term = require("nvterm.terminal").new("float")
        vim.api.nvim_chan_send(term.job_id, "lazygit\r\n")
      end,
      "open Lazygit",
    },
  },
  i = {
    ["jk"] = { "<ESC>", "Escape insert mode", opts = { nowait = true } },
  },
  v = {
    ["<C-_>"] = {
      "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
      "Toggle comment",
    },
  },
}

return M
