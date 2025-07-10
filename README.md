# falcon-nvim
My Neovim configuration

## Plugins

### Core
- [lazy.nvim](https://github.com/folke/lazy.nvim) - Plugin manager
- [catppuccin/nvim](https://github.com/catppuccin/nvim) - Soothing pastel theme for Neovim

### UI & Experience
- [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) - A lua fork of vim-devicons
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) - A blazing fast and easy to configure neovim statusline plugin
- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) - A snazzy bufferline for Neovim
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) - Indent guides for Neovim
- [nvim-colorizer.lua](https://github.com/catgoose/nvim-colorizer.lua) - The fastest Neovim colorizer
- [noice.nvim](https://github.com/folke/noice.nvim) - Highly experimental plugin that completely replaces the UI for messages, cmdline and the popupmenu

### Completion & Editing
- [blink.cmp](https://github.com/saghen/blink.cmp) - A blazingly fast autocompletion plugin
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip) - Snippet Engine for Neovim written in Lua
- [friendly-snippets](https://github.com/rafamadriz/friendly-snippets) - Set of preconfigured snippets for different languages
- [nvim-autopairs](https://github.com/windwp/nvim-autopairs) - A super powerful autopair plugin for Neovim
- [lazydev.nvim](https://github.com/folke/lazydev.nvim) - Neovim setup for init.lua and plugin development

### LSP & Language Support
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - Quickstart configs for Nvim LSP
- [mason.nvim](https://github.com/mason-org/mason.nvim) - Portable package manager for Neovim
- [mason-lspconfig.nvim](https://github.com/mason-org/mason-lspconfig.nvim) - Extension to mason.nvim that makes it easier to use lspconfig with mason.nvim
- [mason-tool-installer.nvim](https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim) - Install and upgrade third party tools automatically
- [fidget.nvim](https://github.com/j-hui/fidget.nvim) - Standalone UI for nvim-lsp progress
- [go.nvim](https://github.com/ray-x/go.nvim) - A feature-rich Go development plugin

### Treesitter
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - Nvim Treesitter configurations and abstraction layer

### Git
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) - Git integration for buffers
- [barbecue.nvim](https://github.com/utilyre/barbecue.nvim) - A VS Code like winbar for Neovim

### Search & Navigation
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - Find, Filter, Preview, Pick. All lua, all the time
- [telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim) - FZF sorter for telescope written in c
- [telescope-ui-select.nvim](https://github.com/nvim-telescope/telescope-ui-select.nvim) - It sets vim.ui.select to telescope
- [plenary.nvim](https://github.com/nvim-lua/plenary.nvim) - All the lua functions I don't want to write twice

### Debugging
- [nvim-dap](https://github.com/mfussenegger/nvim-dap) - Debug Adapter Protocol client implementation for Neovim
- [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui) - A UI for nvim-dap
- [nvim-dap-go](https://github.com/leoluz/nvim-dap-go) - An extension for nvim-dap providing configurations for launching go debugger
- [mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim) - Blazingly fast automatic setup of debuggers for nvim-dap

### Utilities
- [snacks.nvim](https://github.com/folke/snacks.nvim) - A collection of utilities for Neovim
- [which-key.nvim](https://github.com/folke/which-key.nvim) - Create key bindings that stick
- [render-markdown.nvim](https://github.com/ellisonleao/glow.nvim) - A markdown preview directly in your neovim
- [nvim-notify](https://github.com/rcarriga/nvim-notify) - A fancy, configurable, notification manager for NeoVim
- [nui.nvim](https://github.com/MunifTanjim/nui.nvim) - UI Component Library for Neovim
- [nvim-nio](https://github.com/nvim-neotest/nvim-nio) - A library for asynchronous IO in Neovim

### Keymaps
- Space is the leader key
- `<leader>e` - Toggle file explorer
- `<leader>ff` - Find files
- `<leader>fg` - Live grep
- `<leader>fb` - Find buffers
- `<leader>gd` - Go to definition
- `<leader>gr` - Go to references
- `<leader>ca` - Code actions
- `<leader>rn` - Rename symbol
- `<leader>d` - Show diagnostics
- `<leader>nh` - Clear search highlights
- `<leader>ub` - Toggle background
- `<leader>us` - Toggle spelling
- `<leader>uw` - Toggle wrap
- `<leader>ul` - Toggle line numbers
- `<leader>ud` - Toggle diagnostics
- `<leader>uT` - Toggle treesitter
- `<leader>uh` - Toggle inlay hints
- `<leader>ug` - Toggle indent guides
- `<leader>uD` - Toggle dim inactive
- `<leader>z` - Toggle zen mode
- `<leader>Z` - Toggle zoom
- `<leader>.` - Toggle scratch buffer
- `<leader>tf` - Toggle floating terminal
- `<leader>tv` - Open terminal
- `<leader>cc` - Copilot chat toggle
- `<leader>cr` - Copilot reset
- `<leader>cf` - Copilot fix
- `<leader>ce` - Copilot explain
- `<leader>co` - Copilot optimize
- `<leader>cw` - Copilot review
- `<leader>cm` - Copilot models

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

## Features
- LSP support with automatic server installation
- Treesitter syntax highlighting
- Git integration with signs and blame
- Fuzzy finding with Telescope
- Debugging support with DAP
- Autocompletion with snippets
- Git integration
- Terminal integration
- Markdown preview
- Zen mode
- Scratch buffers
- And much more!

## Installation
1. Clone this repository to `~/.config/nvim`
2. Install a Nerd Font (optional but recommended)
3. Start Neovim and wait for plugins to install
4. Enjoy your new Neovim setup!
