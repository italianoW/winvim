return
{
  "italianoW/brain.nvim",
  config = function()
    require("brain").setup({
      brain_dir = vim.fn.expand("~/brain_data"), -- default
    })
  end,
  }
