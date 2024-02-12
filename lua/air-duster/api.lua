local Api = {}

Api.remove_trailing_white_spaces = function()
  local cursor = vim.api.nvim_win_get_cursor(0)
  vim.api.nvim_exec("%s/\\s\\+$//ge", false)
  vim.api.nvim_win_set_cursor(0, cursor)
end

Api.remove_trailing_tabs = function()
  local cursor = vim.api.nvim_win_get_cursor(0)
  vim.api.nvim_exec("%s/\\t/  /ge", false)
  vim.api.nvim_win_set_cursor(0, cursor)
end

return Api
