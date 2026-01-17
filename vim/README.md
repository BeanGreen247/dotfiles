# Vim Configuration

Modern Vim configuration with IDE-like features, cross-platform compatibility, and extensive plugin support.

## 🚀 Features

### Core Features
- **Auto-completion** - Intelligent code completion with CoC
- **Fuzzy finding** - Fast file/buffer navigation with FZF
- **Git integration** - Built-in Git commands and gutter
- **Syntax highlighting** - Multi-language support
- **Linting & formatting** - Real-time error checking with ALE
- **File explorer** - NERDTree with icons
- **Status line** - Beautiful airline status bar with mode-specific shortcuts
- **Persistent undo** - Never lose your changes
- **Smart cursorline** - Underline-only highlight for current line

### Status Line Features

The status line dynamically shows context-aware shortcuts based on your current mode:

- **Normal Mode**: Shows file operations, navigation, and git shortcuts
- **Insert Mode**: Shows completion and editing shortcuts
- **Visual Mode**: Shows selection and manipulation shortcuts
- **Command Mode**: Shows command-line editing shortcuts

**Example status line sections:**
```
NORMAL  [git:main*]  shortcuts...  80%  120:45
INSERT  modified     shortcuts...  50%  45:12
VISUAL  [readonly]   shortcuts...  10%  5:8
```

### Plugin Manager
Uses **vim-plug** for fast, parallel plugin management.

## 📥 Installation

### Minimal Configuration (No Internet Dependencies)

For systems without internet access or when you want a lightweight setup:

```bash
# Link the minimal configuration
ln -sf ~/dotfiles/vim/vimrc-minimal ~/.vimrc

# Open Vim - everything works immediately!
vim
```

**Minimal config features:**
- ✅ No plugins required
- ✅ No internet connection needed
- ✅ Works on any Unix system
- ✅ Uses built-in `netrw` file explorer
- ✅ All essential keybindings included
- ✅ Persistent undo, backups, swap files
- ✅ Syntax highlighting and indentation
- ✅ Text objects for brackets/quotes
- ✅ Simple but functional status line

### Full Configuration (With Plugins)

For development machines with internet access:

```bash
# Link the full configuration
ln -sf ~/dotfiles/vim/vimrc ~/.vimrc

# Open Vim (plugins will auto-install)
vim
```

### Prerequisites

```bash
# Linux (Debian/Ubuntu)
sudo apt install vim curl git

# macOS
brew install vim

# Windows (Git Bash)
# Download Vim from https://www.vim.org/download.php
```

### Quick Install

```bash
# Backup existing config
mv ~/.vimrc ~/.vimrc.backup 2>/dev/null
mv ~/.vim ~/.vim.backup 2>/dev/null

# Link new config
ln -sf ~/dotfiles/vim/vimrc ~/.vimrc

# Open Vim (plugins will auto-install)
vim
```

### Manual Plugin Install

If auto-install fails:
```vim
:PlugInstall
```

## ⌨️ Key Bindings

### Leader Key
- **Leader**: `Space`
- **Local Leader**: `,`

### File Operations
- `<leader>w` - Save file
- `<leader>q` - Quit
- `<leader>x` - Save and quit
- `<leader>Q` - Force quit all

### Navigation
- `<C-h/j/k/l>` - Move between windows
- `<leader>bn/bp` - Next/previous buffer
- `<leader>bd` - Delete buffer
- `<leader>1-5` - Switch to tab 1-5

### File Finding (FZF)
- `<leader>ff` - Find files
- `<leader>fg` - Find git files
- `<leader>fb` - Find buffers
- `<leader>fh` - Find history
- `<leader>fl` - Find lines
- `<leader>fr` - Ripgrep search

### File Explorer (NERDTree)
- `<leader>n` - Toggle NERDTree
- `<leader>f` - Find current file in tree

### Code Navigation (CoC)
- `gd` - Go to definition
- `gy` - Go to type definition
- `gi` - Go to implementation
- `gr` - Find references
- `K` - Show documentation
- `<leader>rn` - Rename symbol
- `<leader>fmt` - Format code

### Git Operations
- `<leader>gn` - Next git hunk
- `<leader>gp` - Previous git hunk
- `<leader>gs` - Stage hunk
- `<leader>gu` - Undo hunk

### Editing
- `<A-j/k>` - Move line up/down
- `<leader><space>` - Clear search highlight
- `<leader>u` - Toggle undo tree
- `gcc` - Toggle comment (line)
- `gc` - Toggle comment (visual)

### Window Management
- `<leader>=` - Equalize windows
- `<leader>+/-` - Resize vertically
- `<leader></>` - Resize horizontally

### Visual Mode
- `ib/iB/is/iS` - Select inside brackets (shorthand)
- `ab/aB/as/aS` - Select around brackets (shorthand)
- `vi(/{/[/<` - Select inside specific bracket type
- `va(/{/[/<` - Select around specific bracket type
- `vi"/'/\`` - Select inside quotes
- `%` or `<leader>%` - Jump to matching bracket
- `>/<` - Indent/unindent (maintains selection)
- `gc` - Comment selection
- `y/d/c` - Yank/delete/change selection

## 🔌 Installed Plugins

### Essential
- **vim-plug** - Plugin manager
- **fzf.vim** - Fuzzy finder
- **NERDTree** - File explorer
- **vim-airline** - Status line

### Code Intelligence
- **coc.nvim** - LSP & completion
- **copilot.vim** - GitHub Copilot
- **ALE** - Linting & fixing
- **vim-polyglot** - Syntax for all languages

### Git
- **vim-fugitive** - Git commands
- **vim-gitgutter** - Git diff in gutter

### Editing
- **nerdcommenter** - Easy commenting
- **vim-surround** - Surround text objects
- **auto-pairs** - Auto-close brackets
- **vim-multiple-cursors** - Multiple cursors
- **easymotion** - Fast motion

### Utilities
- **undotree** - Visualize undo history
- **ultisnips** - Snippet engine
- **vim-snippets** - Snippet collection

### Themes
- **gruvbox** - Default theme
- **onedark** - Alternative theme

## 🎨 Customization

### Change Color Scheme

Edit `~/.vimrc`:
```vim
colorscheme onedark  " or gruvbox, etc.
```

### Add Custom Plugins

Edit `~/.vimrc` between `plug#begin()` and `plug#end()`:
```vim
Plug 'username/repository'
```

Then run `:PlugInstall`

### Machine-Specific Settings

Create `~/.vimrc.local` for settings that shouldn't be in version control:
```vim
" Example: Work-specific settings
set tabstop=2
set shiftwidth=2
```

## ⚙️ CoC Extensions

Auto-installed extensions:
- `coc-json` - JSON support
- `coc-tsserver` - TypeScript/JavaScript
- `coc-html` - HTML
- `coc-css` - CSS/SCSS
- `coc-pyright` - Python
- `coc-sh` - Shell scripts
- `coc-snippets` - Snippets integration
- `coc-pairs` - Auto-pairs

### Install Additional CoC Extensions

```vim
:CocInstall coc-go coc-rust-analyzer
```

## 📝 Language Support

Pre-configured for:
- **Python** - 4 spaces, black formatting
- **JavaScript/TypeScript** - 2 spaces, prettier + eslint
- **HTML/CSS** - 2 spaces, prettier
- **Shell** - 2 spaces, shellcheck
- **JSON** - 2 spaces
- **Markdown** - Soft wrap

## 🐛 Troubleshooting

### Plugins not installing
```vim
:PlugInstall
:PlugUpdate
```

### CoC not working
```bash
# Check Node.js is installed
node --version

# Should be v14+
# If not: sudo apt install nodejs npm
```

### NERDTree icons not showing
Install a Nerd Font:
```bash
# Linux
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts
curl -fLo "Fira Code Nerd Font.ttf" \
  https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/FiraCode/Regular/complete/Fira%20Code%20Regular%20Nerd%20Font%20Complete.ttf
fc-cache -fv

# Then set terminal font to "FiraCode Nerd Font"
```

### FZF not found
```bash
# Install fzf
sudo apt install fzf  # Linux
brew install fzf      # macOS
choco install fzf     # Windows
```

### Slow startup
Disable unused plugins or lazy-load them:
```vim
" Lazy load plugin
Plug 'username/plugin', { 'on': 'Command' }
```

## 📚 Useful Commands

### Vim Commands
- `:Vimrc` - Quick edit vimrc
- `:Source` - Reload vimrc
- `:PlugInstall` - Install plugins
- `:PlugUpdate` - Update plugins
- `:PlugClean` - Remove unused plugins

### CoC Commands
- `:CocInfo` - Show CoC info
- `:CocConfig` - Edit CoC config
- `:CocList extensions` - List extensions
- `:CocRestart` - Restart CoC server

### Git Commands (Fugitive)
- `:Git` or `:G` - Git status
- `:Git commit` - Commit
- `:Git push` - Push
- `:Git pull` - Pull
- `:Git diff` - Diff
- `:Git blame` - Blame

## 🎓 Learning Resources

- [Vim Adventures](https://vim-adventures.com/) - Game to learn Vim
- [Vim Cheat Sheet](https://vim.rtorr.com/) - Quick reference
- [CoC Documentation](https://github.com/neoclide/coc.nvim/wiki)
- [Vim Tips Wiki](https://vim.fandom.com/wiki/Vim_Tips_Wiki)

## 📄 License

MIT License - Feel free to use and modify.

## ⚙️ Customization

### Cursorline Style

The default configuration uses an underline-only cursorline. To customize:

```vim
" Full line highlight (original style)
set cursorlineopt=both
highlight CursorLine cterm=NONE gui=NONE ctermbg=236 guibg=#2c323c

" Underline only (default in this config)
set cursorlineopt=number
highlight CursorLine cterm=underline gui=underline ctermbg=NONE guibg=NONE

" Line number only
set cursorlineopt=number
highlight CursorLine cterm=NONE gui=NONE ctermbg=NONE guibg=NONE
```

### Status Line Customization

Disable mode shortcuts (show default airline sections):
```vim
" Remove the ModeShortcuts function call
let g:airline_section_x = airline#section#create_right(['filetype'])
```

Add custom shortcuts:
```vim
function! ModeShortcuts()
    " Add your custom shortcuts here
    return ' Custom: shortcuts here '
endfunction
```

## 🎯 Configuration Comparison

| Feature | Minimal | Full |
|---------|---------|------|
| **Plugins** | None (built-in only) | 20+ plugins |
| **File Explorer** | netrw (built-in) | NERDTree + icons |
| **Fuzzy Finding** | Basic wildmenu | FZF |
| **Completion** | Built-in omnifunc | CoC (LSP) + Copilot |
| **Git Integration** | None | Fugitive + GitGutter |
| **Linting** | None | ALE |
| **Status Line** | Simple built-in | Airline |
| **Dependencies** | None | Internet + Node.js |
| **Startup Time** | <50ms | ~200ms |

## 🔧 Minimal Config Key Bindings

All the essential keybindings work in both configurations:

### File Operations
- `<leader>w` - Save
- `<leader>q` - Quit
- `<leader>n` - Open file explorer (netrw)
- `<leader>f` - Explore current file's directory

### Netrw File Explorer (Minimal Config)
- `<CR>` - Open file/directory
- `-` - Go up a directory
- `d` - Create directory
- `%` - Create new file
- `D` - Delete file/directory
- `R` - Rename file

## 💡 Switching Between Configurations

```bash
# Use minimal
ln -sf ~/dotfiles/vim/vimrc-minimal ~/.vimrc

# Use full
ln -sf ~/dotfiles/vim/vimrc ~/.vimrc

# Reload in current Vim session
:source ~/.vimrc
```

## 🚀 Quick Start for New Servers

```bash
# Copy minimal config to new server
scp ~/dotfiles/vim/vimrc-minimal user@server:~/.vimrc

# Or inline installation
ssh user@server 'mkdir -p ~/.vim/{undo,backup,swap}'
scp ~/dotfiles/vim/vimrc-minimal user@server:~/.vimrc
```
