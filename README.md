# Night Wolf Theme for Neovim

A dark theme for Neovim with multiple variants, ported from the popular Night Wolf VSCode theme.

## Features

- Multiple variants: Gray (default), Black, Dark Blue, and Dark Gray
- Full support for Treesitter syntax highlighting
- Language-specific highlighting
- LSP semantic highlighting support
- Support for popular plugins like NeoTree

## Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

Add the following to your Neovim configuration:

```lua
-- In your init.lua or plugin configuration file
return {
  "tylerCaineRhodes/night-wolf.nvim",
  lazy = false, -- load during startup
  priority = 1000, -- load this before other plugins
  config = function()
    -- Apply the colorscheme (default gray variant)
    vim.cmd("colorscheme night_wolf")

    -- Or choose another variant:
    -- vim.cmd("colorscheme night_wolf_black")
    -- vim.cmd("colorscheme night_wolf_dark_blue")
    -- vim.cmd("colorscheme night_wolf_dark_gray")
  end,
}
```

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "tylerCaineRhodes/night-wolf.nvim",
  config = function()
    vim.cmd("colorscheme night_wolf") -- Or any other variant
  end
}
```

## Using Theme Variants

Each theme variant is available as a separate colorscheme:

```vim
" In Vim/Neovim command line
:colorscheme night_wolf            " Gray variant (default)
:colorscheme night_wolf_black      " Black variant
:colorscheme night_wolf_dark_blue  " Dark Blue variant
:colorscheme night_wolf_dark_gray  " Dark Gray variant
```

Or in your configuration file:

```lua
-- In your init.lua
vim.cmd("colorscheme night_wolf_dark_blue") -- Choose your preferred variant
```

## Configuration

You can also configure the theme programmatically:

```lua
-- Setup and load with specific variant
require("night-wolf").setup({
  variant = "dark-blue", -- Options: "gray" (default), "black", "dark-blue", "dark-gray"
})
require("night-wolf").load() -- Apply the configured variant
```

To switch variants at runtime:

```lua
-- Switch to a different variant
require("night-wolf").setup({ variant = "black" })
require("night-wolf").load()
```

## Theme Variants

- **Gray**: The default variant with a medium gray background
- **Black**: A deeper, darker variant with near-black backgrounds
- **Dark Blue**: A navy blue variant for a cooler look
- **Dark Gray**: A darker gray variant, between Gray and Black

## Development

This theme was converted from the original [Night Wolf Theme](https://github.com/manutero/Night-Wolf-Themes) for Visual Studio Code.

To modify or customize the theme:

1. Edit the color definitions in `lua/night-wolf/colors*.lua` files
2. Adjust highlight groups in `lua/night-wolf/init.lua`

## License

MIT

## Credits

- Original VSCode theme by [Manual Otero](https://github.com/manutero/Night-Wolf-Themes)
