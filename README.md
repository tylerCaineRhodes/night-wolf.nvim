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
    -- Setup with default settings (gray variant)
    require("night-wolf").setup()

    -- Apply the colorscheme
    vim.cmd("colorscheme night-wolf")
  end,
}
```

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "tylerCaineRhodes/night-wolf.nvim",
  config = function()
    require("night-wolf").setup()
    vim.cmd("colorscheme night-wolf")
  end
}
```

## Configuration

You can configure the theme variant:

```lua
require("night-wolf").setup({
  variant = "gray", -- Options: "gray" (default), "black", "dark-blue", "dark-gray"
})
```

To switch variants at runtime:

```lua
-- Switch to a different variant
require("night-wolf").setup({ variant = "dark-blue" })
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
