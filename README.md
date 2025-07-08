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
- **[Alpha](https://github.com/goolord/alpha-nvim)** - Dashboard
- **[Lualine](https://github.com/nvim-lualine/lualine.nvim)** - Status line
- **[Bufferline](https://github.com/akinsho/bufferline.nvim)** - Tab line
- **[Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim)** - Indent guides
- **[Colorizer](https://github.com/norcalli/nvim-colorizer.lua)** - Color highlighting
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

## ⌨️ Key Mappings

### Leader Key
The leader key is set to `<Space>`. All custom keymaps use this as a prefix.

### File Operations
- `<C-s>` - Save file
- `<C-q>` - Quit
- `<leader>e` - Find files (Telescope)

### Buffer Management
- `<Tab>` - Next buffer
- `<S-Tab>` - Previous buffer
- `<leader>x` - Delete current buffer
- `<leader>b` - New buffer
- `<leader><leader>` - Find existing buffers

### Window Management
- `<leader>v` - Split window vertically
- `<leader>h` - Split window horizontally
- `<leader>xs` - Close current window
- `<leader><Arrow>` - Navigate between windows
- `<leader>r[W/H]` - Resize windows

### Search & Navigation
- `<leader>sf` - Find files
- `<leader>sg` - Live grep
- `<leader>sw` - Search current word
- `<leader>sh` - Search help tags
- `<leader>sk` - Search keymaps
- `<leader>sd` - Search diagnostics
- `<leader>/` - Fuzzy search in current buffer

### LSP & Diagnostics
- `<leader>dp` - Previous diagnostic
- `<leader>dn` - Next diagnostic
- `<leader>d` - Show diagnostic float
- `<leader>q` - Open diagnostics list



### Terminal
- `<leader>tv` - Open terminal in split
- `<leader>tf` - Toggle floating terminal
- `<Esc><Esc>` - Exit terminal mode

### Snacks.nvim (Advanced Pickers & Utilities)
- `<leader><space>` - Smart find files
- `<leader>,` - Buffer picker
- `<leader>:` - Command history
- `<leader>n` - Notification history
- `<leader>e` - File explorer
- `<leader>ff` - Find files
- `<leader>fg` - Find git files
- `<leader>fr` - Recent files
- `<leader>gb` - Git branches
- `<leader>gs` - Git status
- `<leader>sg` - Grep
- `<leader>sw` - Grep word/selection
- `<leader>sk` - Keymaps
- `<leader>sd` - Diagnostics
- `<leader>z` - Toggle zen mode
- `<leader>gg` - Lazygit
- `<c-/>` - Toggle terminal

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
