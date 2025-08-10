# falcon-nvim

A modern, feature-rich Neovim configuration built with Lua and Lazy.nvim package manager.

## ✨ Features

- 🎨 **Beautiful UI**: Catppuccin theme with transparent background
- 🔍 **Fuzzy Finder**: Telescope for file navigation and search
- 🚀 **Fast Completion**: Blink.cmp with LSP integration
- 🐛 **Debugging**: DAP support with UI
- 📝 **Git Integration**: Git signs and status indicators
- 🌳 **Syntax Highlighting**: Tree-sitter for enhanced syntax
- 📊 **Status Line**: Lualine with comprehensive information
- 🎯 **Keymaps**: Which-key for discoverable keybindings

## 🚀 Quick Start

### Prerequisites

- Neovim 0.9.0 or higher
- Git
- A Nerd Font (recommended for icons)

### Installation

1. **Backup your existing Neovim config** (if any):
   ```bash
   mv ~/.config/nvim ~/.config/nvim.backup
   ```

2. **Clone this repository**:
   ```bash
   git clone https://github.com/yourusername/falcon-nvim ~/.config/nvim
   ```

3. **Start Neovim**:
   ```bash
   nvim
   ```

   The first time you run Neovim, it will automatically install all plugins.

## 📦 Installed Plugins

### Core Plugins
- **[Lazy.nvim](https://github.com/folke/lazy.nvim)** - Fast plugin manager
- **[Catppuccin](https://github.com/catppuccin/nvim)** - Soothing color scheme
- **[Telescope](https://github.com/nvim-telescope/telescope.nvim)** - Fuzzy finder
- **[Tree-sitter](https://github.com/nvim-treesitter/nvim-treesitter)** - Syntax highlighting
- **[LSP Config](https://github.com/neovim/nvim-lspconfig)** - Language Server Protocol

### UI & Experience
- **[Lualine](https://github.com/nvim-lualine/lualine.nvim)** - Status line
- **[Bufferline](https://github.com/akinsho/bufferline.nvim)** - Tab line
- **[Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim)** - Indent guides
- **[Colorizer](https://github.com/catgoose/nvim-colorizer.lua)** - Color highlighting
- **[Noice](https://github.com/folke/noice.nvim)** - UI improvements
- **[Which Key](https://github.com/folke/which-key.nvim)** - Key binding discovery

### Development Tools
- **[Blink.cmp](https://github.com/saghen/blink.cmp)** - Fast completion
- **[LuaSnip](https://github.com/L3MON4D3/LuaSnip)** - Snippet engine
- **[Mason](https://github.com/mason-org/mason.nvim)** - Package manager for LSP/DAP
- **[DAP](https://github.com/mfussenegger/nvim-dap)** - Debug adapter protocol
- **[Go.nvim](https://github.com/ray-x/go.nvim)** - Go development support

### Git Integration
- **[Gitsigns](https://github.com/lewis6991/gitsigns.nvim)** - Git status in gutter
- **[Barbecue](https://github.com/utilyre/barbecue.nvim)** - Context navigation

### Productivity & Utilities
- **[Snacks.nvim](https://github.com/folke/snacks.nvim)** - Comprehensive picker and utility functions
- **[Render Markdown](https://github.com/MeanderingProgrammer/render-markdown.nvim)** - Markdown preview

## ⌨️ Key Mappings

### Leader Key
The leader key is set to `<Space>`. All custom keymaps use this as a prefix.

### File Operations
- `<leader>e` - File explorer (Snacks)
- `<leader>ff` - Find files
- `<leader>fg` - Find git files
- `<leader>fr` - Recent files

### Buffer Management
- `<leader>,` - Buffer picker
- `<leader>bd` - Delete buffer
- `<leader><leader>` - Find existing buffers (Telescope)

### Search & Navigation
- `<leader>sf` - Find files (Telescope)
- `<leader>sg` - Live grep (Telescope)
- `<leader>sw` - Search current word (Telescope)
- `<leader>sh` - Search help tags (Telescope)
- `<leader>sk` - Search keymaps (Telescope)
- `<leader>sd` - Search diagnostics (Telescope)
- `<leader>/` - Fuzzy search in current buffer (Telescope)

### LSP & Diagnostics
- `gd` - Go to definition
- `gD` - Go to declaration
- `gr` - Go to references
- `gI` - Go to implementation
- `gy` - Go to type definition
- `<leader>ss` - LSP symbols
- `<leader>sS` - Workspace symbols

### Git Operations
- `<leader>gb` - Git branches
- `<leader>gl` - Git log
- `<leader>gL` - Git log line
- `<leader>gs` - Git status
- `<leader>gS` - Git stash
- `<leader>gd` - Git diff hunks
- `<leader>gf` - Git log file
- `<leader>gg` - Lazygit

### Snacks.nvim (Advanced Pickers & Utilities)
- `<leader><space>` - Smart find files
- `<leader>:` - Command history
- `<leader>n` - Notification history
- `<leader>z` - Toggle zen mode
- `<leader>Z` - Toggle zoom
- `<leader>.` - Toggle scratch buffer
- `<leader>S` - Select scratch buffer
- `<leader>cR` - Rename file
- `<leader>gB` - Git browse

### Debug Keymaps
- `<F5>` - Start/Continue debugging
- `<F1>` - Step into
- `<F2>` - Step over
- `<F3>` - Step out
- `<leader>b` - Toggle breakpoint
- `<leader>B` - Set conditional breakpoint
- `<F7>` - Toggle debug UI

### Terminal
- `<C-/>` or `<C-_>` - Toggle terminal
- `<Esc><Esc>` - Exit terminal mode

### Utility Toggles
- `<leader>us` - Toggle spelling
- `<leader>uw` - Toggle wrap
- `<leader>uL` - Toggle relative line numbers
- `<leader>ud` - Toggle diagnostics
- `<leader>ul` - Toggle line numbers
- `<leader>uc` - Toggle conceal
- `<leader>uT` - Toggle treesitter
- `<leader>uh` - Toggle inlay hints
- `<leader>ug` - Toggle indent guides
- `<leader>ub` - Toggle background
- `<leader>uD` - Toggle dim inactive

## 🎨 Theme

This configuration uses the **Catppuccin Macchiato** theme with:
- Transparent background
- Italic comments and conditionals
- Enhanced syntax highlighting
- Integration with all major plugins

## 🔧 Configuration Structure

```
~/.config/nvim/
├── init.lua              # Main entry point
├── lua/
│   ├── core/
│   │   ├── options.lua   # Neovim options
│   │   └── keymaps.lua   # Key mappings
│   ├── plugins/          # Plugin configurations
│   │   ├── lsp/          # LSP configurations
│   │   └── ...           # Other plugin configs
│   └── user/             # User customizations
└── lazy-lock.json        # Plugin lock file
```

## 🚀 Getting Started Tips

1. **Install a Nerd Font** for proper icon display
2. **Install language servers** for your preferred languages
3. **Customize the configuration** in `lua/user/` directory

## 🔧 Customization

### Adding Custom Plugins
Create a new file in `lua/plugins/` and add it to the plugin list in `init.lua`.

### Modifying Keymaps
Edit `lua/core/keymaps.lua` to customize keybindings.

### Changing Theme
Modify `lua/plugins/catppuccin.lua` to change theme settings.

## 📝 Requirements

- **Neovim**: 0.9.0+
- **Git**: For plugin installation
- **Nerd Font**: For proper icon display
- **Make**: For building some plugins (optional)

## 🤝 Contributing

Feel free to submit issues and enhancement requests!

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

---

**Happy coding with falcon-nvim! 🚀**
