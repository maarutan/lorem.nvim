# lorem.nvim

A Neovim plugin for generating and formatting lorem ipsum text directly in your editor. Designed to enhance productivity and simplify lorem ipsum generation with customizable options.

## Features

- Generate lorem ipsum text dynamically using keywords (`loremX` for words, `ploremX` for paragraphs).
- Configurable text formatting for line width and paragraph structure.
- Easy-to-use key mappings for inserting and formatting text.
- Toggleable text formatter for ultimate control over output.

---

## Installation

You can install `lorem.nvim` using either [Lazy.nvim](https://github.com/folke/lazy.nvim) or [packer.nvim](https://github.com/wbthomason/packer.nvim).

### Using Lazy.nvim

```lua
{
  "maarutan/lorem.nvim",
  config = function()
    require("lorem").setup()
  end,
}
```

### Using Packer.nvim

```lua
use {
  "maarutan/lorem.nvim",
  config = function()
    require("lorem").setup()
  end,
}
```

---

## Getting Started

After installing, initialize the plugin with:

```lua
require("lorem").setup({
  -- Optional configuration options
})
```

### Example Usage

Use the following commands directly in insert mode to generate lorem ipsum text:

- `lorem10`: Generates 10 words of lorem ipsum text.
- `plorem2`: Generates 2 paragraphs of lorem ipsum text.

![Example Usage](https://user-images.githubusercontent.com/example/example.gif)

---

## Configuration

You can customize the plugin with the following options:

```lua
require("lorem").setup({
  paragraph_length = 50,       -- Default paragraph length in words
  formatter_enabled = true,   -- Enable/disable text formatting
  complete_mappings = { "<Tab>", "<CR>" }, -- Key mappings for completing lorem commands
  default_lorem_length = 5,   -- Default number of words for "loremX"
  line_width = 80,            -- Maximum line width for formatted text
  lorem_text = [[             -- Custom lorem ipsum text
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tempus vel nisl eget facilisis.
    (truncated for brevity in this example)
  ]],
})
```

---

## Commands and Key Mappings

- **`loremX`**: Generate X number of lorem ipsum words (e.g., `lorem10`).
- **`ploremX`**: Generate X paragraphs of lorem ipsum text (e.g., `plorem2`).

### Key Mappings

The plugin automatically binds `<Tab>` and `<CR>` for inserting lorem ipsum text when appropriate. You can customize these in the setup options.

---

## License

`lorem.nvim` is released under the [MIT License](https://opensource.org/licenses/MIT).

---

## Contributing

Feel free to submit issues and pull requests on the [GitHub Repository](https://github.com/maarutan/lorem.nvim). For any questions, reach out to the maintainer at maratarzymatov288@gmail.com.

---

## Acknowledgments

Special thanks to all contributors and the Neovim community for their continuous support.

# lorem.nvim

A Neovim plugin for generating and formatting lorem ipsum text directly in your editor. Designed to enhance productivity and simplify lorem ipsum generation with customizable options.

## Features

- Generate lorem ipsum text dynamically using keywords (`loremX` for words, `ploremX` for paragraphs).
- Configurable text formatting for line width and paragraph structure.
- Easy-to-use key mappings for inserting and formatting text.
- Toggleable text formatter for ultimate control over output.

---

## Installation

You can install `lorem.nvim` using either [Lazy.nvim](https://github.com/folke/lazy.nvim) or [packer.nvim](https://github.com/wbthomason/packer.nvim).

### Using Lazy.nvim

```lua
{
  "maarutan/lorem.nvim",
  config = function()
    require("lorem").setup()
  end,
}
```

### Using Packer.nvim

```lua
use {
  "maarutan/lorem.nvim",
  config = function()
    require("lorem").setup()
  end,
}
```

---

## Getting Started

After installing, initialize the plugin with:

```lua
require("lorem").setup({
  -- Optional configuration options
})
```

### Example Usage

Use the following commands directly in insert mode to generate lorem ipsum text:

- `lorem10`: Generates 10 words of lorem ipsum text.
- `plorem2`: Generates 2 paragraphs of lorem ipsum text.

![Example Usage](https://user-images.githubusercontent.com/example/example.gif)

---

## Configuration

You can customize the plugin with the following options:

```lua
require("lorem").setup({
  paragraph_length = 50,       -- Default paragraph length in words
  formatter_enabled = true,   -- Enable/disable text formatting
  complete_mappings = { "<Tab>", "<CR>" }, -- Key mappings for completing lorem commands
  default_lorem_length = 5,   -- Default number of words for "loremX"
  line_width = 80,            -- Maximum line width for formatted text
  lorem_text = [[             -- Custom lorem ipsum text
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tempus vel nisl eget facilisis.
    (truncated for brevity in this example)
  ]],
})
```

---

## Commands and Key Mappings

- **`loremX`**: Generate X number of lorem ipsum words (e.g., `lorem10`).
- **`ploremX`**: Generate X paragraphs of lorem ipsum text (e.g., `plorem2`).

### Key Mappings

The plugin automatically binds `<Tab>` and `<CR>` for inserting lorem ipsum text when appropriate. You can customize these in the setup options.

---

## License

`lorem.nvim` is released under the [MIT License](https://opensource.org/licenses/MIT).

---

## Contributing

Feel free to submit issues and pull requests on the [GitHub Repository](https://github.com/maarutan/lorem.nvim). For any questions, reach out to the maintainer at maratarzymatov288@gmail.com.

---

## Acknowledgments

Special thanks to all contributors and the Neovim community for their continuous support.

# lorem.nvim

A Neovim plugin for generating and formatting lorem ipsum text directly in your editor. Designed to enhance productivity and simplify lorem ipsum generation with customizable options.

## Features

- Generate lorem ipsum text dynamically using keywords (`loremX` for words, `ploremX` for paragraphs).
- Configurable text formatting for line width and paragraph structure.
- Easy-to-use key mappings for inserting and formatting text.
- Toggleable text formatter for ultimate control over output.

---

## Installation

You can install `lorem.nvim` using either [Lazy.nvim](https://github.com/folke/lazy.nvim) or [packer.nvim](https://github.com/wbthomason/packer.nvim).

### Using Lazy.nvim

```lua
{
  "maarutan/lorem.nvim",
  config = function()
    require("lorem").setup()
  end,
}
```

### Using Packer.nvim

```lua
use {
  "maarutan/lorem.nvim",
  config = function()
    require("lorem").setup()
  end,
}
```

---

## Getting Started

After installing, initialize the plugin with:

```lua
require("lorem").setup({
  -- Optional configuration options
})
```

### Example Usage

Use the following commands directly in insert mode to generate lorem ipsum text:

- `lorem10`: Generates 10 words of lorem ipsum text.
- `plorem2`: Generates 2 paragraphs of lorem ipsum text.

![Example Usage](https://user-images.githubusercontent.com/example/example.gif)

---

## Configuration

You can customize the plugin with the following options:

```lua
require("lorem").setup({
  paragraph_length = 50,       -- Default paragraph length in words
  formatter_enabled = true,   -- Enable/disable text formatting
  complete_mappings = { "<Tab>", "<CR>" }, -- Key mappings for completing lorem commands
  default_lorem_length = 5,   -- Default number of words for "loremX"
  line_width = 80,            -- Maximum line width for formatted text
  lorem_text = [[             -- Custom lorem ipsum text
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tempus vel nisl eget facilisis.
    (truncated for brevity in this example)
  ]],
})
```

---

## Commands and Key Mappings

- **`loremX`**: Generate X number of lorem ipsum words (e.g., `lorem10`).
- **`ploremX`**: Generate X paragraphs of lorem ipsum text (e.g., `plorem2`).

### Key Mappings

The plugin automatically binds `<Tab>` and `<CR>` for inserting lorem ipsum text when appropriate. You can customize these in the setup options.

---

## License

`lorem.nvim` is released under the [MIT License](https://opensource.org/licenses/MIT).

---

## Contributing

Feel free to submit issues and pull requests on the [GitHub Repository](https://github.com/maarutan/lorem.nvim). For any questions, reach out to the maintainer at maratarzymatov288@gmail.com.

---

## Acknowledgments

Special thanks to all contributors and the Neovim community for their continuous support.

# lorem.nvim

A Neovim plugin for generating and formatting lorem ipsum text directly in your editor. Designed to enhance productivity and simplify lorem ipsum generation with customizable options.

## Features

- Generate lorem ipsum text dynamically using keywords (`loremX` for words, `ploremX` for paragraphs).
- Configurable text formatting for line width and paragraph structure.
- Easy-to-use key mappings for inserting and formatting text.
- Toggleable text formatter for ultimate control over output.

---

## Installation

You can install `lorem.nvim` using either [Lazy.nvim](https://github.com/folke/lazy.nvim) or [packer.nvim](https://github.com/wbthomason/packer.nvim).

### Using Lazy.nvim

```lua
{
  "maarutan/lorem.nvim",
  config = function()
    require("lorem").setup()
  end,
}
```

### Using Packer.nvim

```lua
use {
  "maarutan/lorem.nvim",
  config = function()
    require("lorem").setup()
  end,
}
```

---

## Getting Started

After installing, initialize the plugin with:

```lua
require("lorem").setup({
  -- Optional configuration options
})
```

### Example Usage

Use the following commands directly in insert mode to generate lorem ipsum text:

- `lorem10`: Generates 10 words of lorem ipsum text.
- `plorem2`: Generates 2 paragraphs of lorem ipsum text.

![Example Usage](https://user-images.githubusercontent.com/example/example.gif)

---

## Configuration

You can customize the plugin with the following options:

```lua
require("lorem").setup({
  paragraph_length = 50,       -- Default paragraph length in words
  formatter_enabled = true,   -- Enable/disable text formatting
  complete_mappings = { "<Tab>", "<CR>" }, -- Key mappings for completing lorem commands
  default_lorem_length = 5,   -- Default number of words for "loremX"
  line_width = 80,            -- Maximum line width for formatted text
  lorem_text = [[             -- Custom lorem ipsum text
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tempus vel nisl eget facilisis.
    (truncated for brevity in this example)
  ]],
})
```

---

## Commands and Key Mappings

- **`loremX`**: Generate X number of lorem ipsum words (e.g., `lorem10`).
- **`ploremX`**: Generate X paragraphs of lorem ipsum text (e.g., `plorem2`).

### Key Mappings

The plugin automatically binds `<Tab>` and `<CR>` for inserting lorem ipsum text when appropriate. You can customize these in the setup options.

---

## License

`lorem.nvim` is released under the [MIT License](https://opensource.org/licenses/MIT).

---

## Contributing

Feel free to submit issues and pull requests on the [GitHub Repository](https://github.com/maarutan/lorem.nvim). For any questions, reach out to the maintainer at maratarzymatov288@gmail.com.

---

## Acknowledgments

Special thanks to all contributors and the Neovim community for their continuous support.
