-- See: https://github.com/oysandvik94/curl.nvim/issues/67#issuecomment-3344107357
local autocmd = vim.api.nvim_create_autocmd
autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.curl",
  callback = function()
    vim.opt.filetype = "curl"
  end,
})

return {
  "oysandvik94/curl.nvim",
  commit="3ee14fbafc8169fc803e80562ce7ac5b4474bdff",
  cmd = { "CurlOpen" },
  ft = { "curl" },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    open_with = "buffer"
  },
  config = true
}
