return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  lazy = false,
  opts = {
    ensure_installed = { "lua", "vim", "vimdoc", "query", "javascript", "typescript","python" },
    highlight = { enable = true },
    indent = { enable = true },
  },
  config = function(_, opts)
    -- This protected call prevents the crash if the plugin isn't installed yet
    local status_ok, configs = pcall(require, "nvim-treesitter.configs")
    if not status_ok then
      return
    end
    configs.setup(opts)
  end,
}
