# air-duster.nvim

A Neovim plugin for removing trailing white spaces and tabs

## Installation
With [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
  {
    "getty104/air-duster.nvim",
    config = function()
      require("air-duster").setup()
    end,
  },
```

With [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use({
  "getty104/air-duster.nvim",
  config = function()
    require("air-duster").setup()
  end,
})
```

## Usage

When you call the `setup()` function, the following commands are activated.

- `RemoveDust`
  - Remove trailing white spaces and tabs
- `RemoveWhiteSpaces`
  - Remove trailing white spaces
- `RemoveTabs`
  - Remove trailing tabs

## Autocmd Examble
If you want to remove trailing white spaces and tabs, you can implement it with `nvim_create_autocmd`

```lua
local function RemoveDust()
  if vim.bo.filetype ~= "markdown" then
    vim.api.nvim_exec("RemoveWhiteSpaces", false)
  end

  vim.api.nvim_exec("RemoveTabs", false)
end

vim.api.nvim_create_augroup("handler", { clear = true })
vim.api.nvim_create_autocmd("BufWritePre", {
  group = "handler",
  pattern = "*",
  callback = RemoveDust,
})
```

## License

[MIT License](/LICENSE)
