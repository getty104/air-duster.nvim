local api = require("air-duster.api")
local config = require("air-duster.config")

local M = {}

M.setup = function(_args)
  vim.api.nvim_create_user_command("RemoveDust", function()
    api.remove_trailing_white_spaces()
    api.remove_trailing_tabs()
  end, {
    desc = "Remove trailing white spaces and tabs",
  })

  vim.api.nvim_create_user_command("RemoveWhiteSpaces", function()
    api.remove_trailing_white_spaces()
  end, {
    desc = "Remove trailing white spaces",
  })

  vim.api.nvim_create_user_command("RemoveTabs", function()
    api.remove_trailing_white_spaces()
  end, {
    desc = "Remove trailing tabs",
  })
end

return M
