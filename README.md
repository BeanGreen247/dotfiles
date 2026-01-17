# Dotfiles

Personal shell and editor configuration files optimized for productivity and cross-platform compatibility.

## Repository Structure

```
dotfiles/
├── bashrc/
│   ├── bashrc           # Main config for Linux/macOS
│   └── bashrc-windows   # Optimized config for Git Bash on Windows
├── vim/
│   ├── vimrc            # Full-featured Vim with plugins
│   ├── vimrc-minimal    # Minimal Vim (no plugins)
│   ├── vimrc-rpi        # Raspberry Pi optimized
│   ├── shortcuts-reference.vim  # Complete keybinding reference
│   └── README.md        # Detailed Vim documentation
└── old/
    ├── bashrc/          # Original bashrc configurations
    └── vim/             # Original vim configurations
```

## Features Overview

### Bash Configurations

**Three variants to match your environment:**

| Feature | Linux/macOS | Windows | RPi |
|---------|-------------|---------|-----|
| System Stats | Real-time | Cached (5 cmd) | Disabled |
| History Size | 50k / 100k | 10k / 20k | 10k / 20k |
| Git Integration | Full + dirty check | Optional dirty | Full |
| Prompt Updates | Every command | Every command | Every command |
| Best For | Dev machines | Git Bash | Embedded systems |

### Vim Configurations

**Three variants for different needs:**

| Feature | Full | Minimal | RPi |
|---------|------|---------|-----|
| Plugins | 20+ | None | None |
| Dependencies | Internet + Node.js | None | None |
| File Browser | NERDTree + icons | netrw (built-in) | netrw |
| Completion | CoC (LSP) + Copilot | Built-in omnifunc | Built-in |
| Startup Time | ~200ms | <50ms | <50ms |
| Memory Usage | ~50MB | ~5MB | ~3MB |
| Best For | Development | Servers/SSH | Raspberry Pi |

## Bash Features

### Modern Bash Prompt

All configurations include a feature-rich, color-coded prompt:

- **Exit status indicator**: Color-coded (green=success, yellow=interrupted, red=error)
- **Execution timer**: Millisecond precision timing for each command
- **System monitoring**: Real-time or cached CPU and RAM usage
- **Git integration**: Current branch and dirty status indicator
- **Two-line layout**: Clean separation of info and command input

**Example prompt:**
```
[0|45ms|8.2%|2847M] bean@hostname ~/projects/myapp git:main*
$ 
```

Format: `[exit_code|time|cpu|memory] user@host /path git:branch`

### History-Based Autosuggestions

All configurations include intelligent command suggestions:

**Built-in Features (no dependencies):**
- **Prefix matching**: Type a command, press ↑/↓ to search matching history
- **Smart completion**: Tab completion with colors and statistics
- **Quick navigation**: Standard readline navigation keys
- **Case-insensitive**: Automatically matches commands regardless of case

**Key Bindings:**
- `↑/↓` - Search history with prefix matching
- `Tab` - Show completions with colors
- `→` - Move forward character by character
- `Ctrl+F` - Move forward word by word
- `End` - Jump to end of line
- `Ctrl+R` - Fuzzy search with fzf (if installed)

**Enhanced with fzf (recommended):**
```bash
# Linux
sudo apt install fzf

# macOS  
brew install fzf

# Windows
choco install fzf
# or: scoop install fzf
```

Once installed, fuzzy search with `Ctrl+R`:
- Type to filter commands
- `Enter` to select
- `Ctrl+Y` to copy to clipboard (Linux/macOS with xclip)

### Cross-Platform Support

- **Linux**: Full-featured with `top` and `/proc/meminfo` integration
- **macOS**: Darwin-specific system stats using `vm_stat` and `ps`
- **Windows (Git Bash)**: Optimized with cached stats and `wmic` integration
- **Raspberry Pi**: Lightweight with minimal SD card writes

## Installation

### Quick Install (Linux/macOS)

```bash
# Clone the repository
git clone https://github.com/BeanGreen247/dotfiles.git ~/dotfiles

# Backup existing configs
cp ~/.bashrc ~/.bashrc.backup 2>/dev/null
cp ~/.vimrc ~/.vimrc.backup 2>/dev/null

# Link configurations
ln -sf ~/dotfiles/bashrc/bashrc ~/.bashrc
ln -sf ~/dotfiles/vim/vimrc ~/.vimrc

# Reload
source ~/.bashrc
vim  # Plugins auto-install on first run
```

### Windows (Git Bash)

```bash
git clone https://github.com/BeanGreen247/dotfiles.git ~/dotfiles
ln -sf ~/dotfiles/bashrc/bashrc-windows ~/.bashrc
ln -sf ~/dotfiles/vim/vimrc ~/.vimrc
source ~/.bashrc
```

### Raspberry Pi

```bash
git clone https://github.com/BeanGreen247/dotfiles.git ~/dotfiles
ln -sf ~/dotfiles/bashrc/bashrc ~/.bashrc  # Or use bashrc-windows if using Git Bash
ln -sf ~/dotfiles/vim/vimrc-rpi ~/.vimrc
source ~/.bashrc
```

### Minimal Setup (Servers/SSH)

For systems without internet or minimal resources:

```bash
# Minimal Vim (no plugins)
ln -sf ~/dotfiles/vim/vimrc-minimal ~/.vimrc

# Use standard bash config or minimal modifications
ln -sf ~/dotfiles/bashrc/bashrc ~/.bashrc
```

## Configuration Details

### Bash: Linux/macOS (`bashrc/bashrc`)

**Best for:** Development workstations

**Features:**
- Full system monitoring updated every prompt
- 50,000 command history in memory (100,000 in file)
- Git dirty status check on every prompt
- Extensive shell options (globstar, cdspell, dirspell, nocaseglob)
- 60+ git aliases, docker shortcuts, development tools
- Web search functions (wiki, ddg)
- Weather reports

**System Requirements:**
- `bash` 4.0+
- `top`, `awk`, `sed` (for system stats)
- `git` (for git integration)
- Optional: `fzf`, `neofetch`

### Bash: Windows (`bashrc/bashrc-windows`)

**Best for:** Git Bash on Windows

**Optimizations:**
- Cached system stats (updates every 1 command by default)
- Reduced history size (10,000 commands)
- Optional git dirty check skip for speed
- Simplified time calculations (no `awk` dependency)
- Windows-specific aliases (`cls`, `open`, `explorer`)

**Performance tuning:**
```bash
# Skip git dirty check for faster prompts
export BASHRC_SKIP_GIT_DIRTY=1

# Adjust stats update frequency (default: 1)
export STATS_UPDATE_INTERVAL=5
```

**Key bindings:**
- `↑/↓` - Search history with prefix matching
- `Ctrl+R` - Fuzzy history search (requires fzf)
- `→/Ctrl+F/End` - Navigation keys

### Vim: Full Featured (`vim/vimrc`)

**Best for:** Development with full IDE features

**Plugins (auto-installed):**
- **Navigation**: FZF, NERDTree, vim-devicons
- **Completion**: CoC (LSP), GitHub Copilot
- **Git**: vim-fugitive, vim-gitgutter
- **Editing**: NERDCommenter, vim-surround, auto-pairs
- **Linting**: ALE (with auto-fix)
- **Themes**: Gruvbox, OneDark
- **Status**: Airline with powerline fonts

**Key Mappings (Space as leader):**
- `<Space>w/q/x` - Save/Quit/Save&Quit
- `<Space>n` - Toggle NERDTree
- `<Space>ff` - Fuzzy find files
- `<Space>fg` - Find git files
- `<Space>fb` - Find buffers
- `gd` - Go to definition
- `gr` - Find references
- `K` - Show documentation

### Vim: Minimal (`vim/vimrc-minimal`)

**Best for:** Servers, SSH sessions, minimal environments

**Features:**
- Zero dependencies - works anywhere Vim is installed
- Built-in netrw file explorer (instead of NERDTree)
- All essential keybindings preserved
- Persistent undo, backups, swap files
- Text objects for brackets/quotes
- Language-specific indentation
- Simple but functional status line

**Advantages:**
- Fast startup (<50ms)
- No internet required
- Works on any Unix system
- Perfect for emergency editing
- Minimal memory footprint (~5MB)

### Vim: Raspberry Pi (`vim/vimrc-rpi`)

**Best for:** Embedded systems and resource-constrained environments

**Optimizations:**
- No backup/swap files (SD card longevity)
- Reduced history (500 vs 1000)
- No sign column (save screen space)
- Syntax highlighting limited to 200 columns
- Disabled folding (performance)
- Reduced scrolloff for small screens
- Minimal viminfo settings
- Selective whitespace trimming

**SD Card Protection:**
- `set nobackup` - No backup files
- `set noswapfile` - No swap files
- `set updatecount=100` - Reduced write frequency
- Trimming only on save for specific file types

## Customization

### Color Scheme

**Bash prompt colors:**
- **Gray (90)**: Brackets and separators
- **Green (32)**: Success status (exit 0)
- **Yellow (33)**: Interrupted status (exit 130)
- **Red (31)**: Error status (exit code > 0)
- **Cyan (36)**: Execution time
- **Magenta (35)**: CPU usage
- **Yellow (33)**: Memory usage and git info
- **Blue (94)**: Username and hostname
- **White (37)**: Current path

### Environment Variables

```bash
export EDITOR=vim
export VISUAL=vim
export PAGER=less
export PROJECT_DIR="$HOME/CODE"       # or ~/code on Windows
```

### External Configuration Files

The bashrc sources additional files if they exist:
- `~/.bash_aliases` - Custom aliases
- `~/.bash_local` - Machine-specific configuration
- `~/.bash_functions` - Custom functions

The vimrc sources:
- `~/.vimrc.local` - Machine-specific Vim settings

## Included Aliases

### Navigation
- `..`, `...`, `....` - Quick directory traversal
- `home` - Go to home directory
- `-` - Go to previous directory

### File Operations
- `ll`, `la`, `l`, `lt`, `lsize` - Various ls shortcuts
- `cp`, `mv`, `rm` - Safe interactive versions
- `mkcd` - Create directory and cd into it

### Git (60+ aliases)
- **Short**: `g`, `gs`, `ga`, `gc`, `gp`, `gd`, `gb`, `gco`
- **Workflow**: `wip`, `undo`, `melt`, `nuke`
- **Advanced**: `gri`, `gpf`, `branches`, `news`
- **Full list** in bashrc files

### Docker
- `d`, `dc`, `dps`, `dpsa`, `di` - Docker shortcuts
- `dclean`, `dcleanall` - Cleanup commands

### System
- `myip` - Show public IP
- `ports` - Show open ports
- `duh` - Disk usage sorted by size
- `weather <location>` - Get weather report (requires curl)

### Development
- **Python**: `py`, `venv`, `activate`
- **Node**: `ni`, `nr`, `ns`, `nt`

## System Requirements

### Bash Requirements

**Minimum:**
- Bash 4.0+
- `grep`, `sed`, `date`

**Recommended:**
- `awk` (for time formatting on Linux/macOS)
- `top` (Linux), `vm_stat` (macOS), or `wmic` (Windows)
- `git` (for git integration)
- `fzf` (for fuzzy search)

**Optional:**
- `neofetch` (welcome message)
- `xclip` or `pbcopy` (clipboard integration)
- `ripgrep` or `ag` (fast grep)

### Vim Requirements

**Full config:**
- Vim 8.0+ or Neovim
- `curl` (for plugin installation)
- Node.js 14+ (for CoC)
- `git` (for plugins)

**Minimal/RPi config:**
- Vim 7.4+ (any version)
- No external dependencies

## Troubleshooting

### Bash Issues

**Slow prompt on Windows:**
```bash
export BASHRC_SKIP_GIT_DIRTY=1
export STATS_UPDATE_INTERVAL=10
```

**System stats show "N/A":**
- Linux: `sudo apt install procps`
- macOS: Ensure `vm_stat` is available
- Windows: Verify `wmic.exe` is in PATH

**Git info not showing:**
```bash
which git
git --version
```

**Fuzzy search (Ctrl+R) not working:**
```bash
# Install fzf
sudo apt install fzf      # Linux
brew install fzf          # macOS
choco install fzf         # Windows
```

### Vim Issues

**Plugins not loading (full config):**
```vim
:PlugInstall
:PlugUpdate
```

**CoC errors:**
```bash
# Check Node.js version (needs v14+)
node --version

# Restart CoC
:CocRestart
```

**Gruvbox theme not working:**
The config automatically falls back to built-in `desert` theme if gruvbox isn't installed. Run `:PlugInstall` to install all plugins.

**NERDTree icons not showing:**
Install a Nerd Font and set it in your terminal.

## Tips & Tricks

### Bash Tips

**History search:**
```bash
# Type partial command, press ↑ to search
git check                    # Press ↑ to find "git checkout main"

# Fuzzy search with Ctrl+R (requires fzf)
# Type any part of command, fuzzy matches appear
```

**Git workflow:**
```bash
wip                          # Quick WIP commit
gaa && gcm "feat: new feature"  # Stage all and commit
melt                         # Amend without changing message
nuke                         # Reset hard and clean
```

### Vim Tips

**File navigation:**
```vim
<Space>n                     " Toggle file explorer
<Space>ff                    " Fuzzy find files
<Space>fb                    " Find open buffers
```

**Code navigation:**
```vim
gd                           " Go to definition
gr                           " Find references  
K                            " Show documentation
<Space>rn                    " Rename symbol
```

**Bracket selection (visual mode):**
```vim
vib                          " Select inside parentheses
vaB                          " Select around braces
vi"                          " Select inside quotes
```

## Quick Reference

### Switching Configurations

```bash
# Use full bash config
ln -sf ~/dotfiles/bashrc/bashrc ~/.bashrc

# Use Windows-optimized bash
ln -sf ~/dotfiles/bashrc/bashrc-windows ~/.bashrc

# Use full Vim config
ln -sf ~/dotfiles/vim/vimrc ~/.vimrc

# Use minimal Vim
ln -sf ~/dotfiles/vim/vimrc-minimal ~/.vimrc

# Use RPi Vim
ln -sf ~/dotfiles/vim/vimrc-rpi ~/.vimrc

# Reload
source ~/.bashrc             # Bash
:source ~/.vimrc             # Vim (or restart)
```

### Installation for New Servers

```bash
# One-liner for minimal setup
ssh user@server 'mkdir -p ~/.vim/{undo,backup,swap}'
scp ~/dotfiles/bashrc/bashrc user@server:~/.bashrc
scp ~/dotfiles/vim/vimrc-minimal user@server:~/.vimrc
```

## History Configuration

| Config | Memory | File | Features |
|--------|--------|------|----------|
| Linux/macOS | 50,000 | 100,000 | Timestamps, dedup, ignore common |
| Windows | 10,000 | 20,000 | Same + `cls` |
| RPi | 10,000 | 20,000 | Same |

## Contributing

Feel free to fork and customize for your own use. Pull requests for bug fixes are welcome.

## License

MIT License - Feel free to use and modify as needed.

## Resources

### Bash
- [Bash Prompt HOWTO](https://tldp.org/HOWTO/Bash-Prompt-HOWTO/)
- [ANSI Color Codes](https://en.wikipedia.org/wiki/ANSI_escape_code)
- [Oh My Bash](https://github.com/ohmybash/oh-my-bash)
- [Starship Prompt](https://starship.rs/) (alternative)
- [FZF](https://github.com/junegunn/fzf) (fuzzy finder)

### Vim
- [Vim Cheat Sheet](https://vim.rtorr.com/)
- [CoC Documentation](https://github.com/neoclide/coc.nvim/wiki)
- [Vim Tips Wiki](https://vim.fandom.com/wiki/Vim_Tips_Wiki)
- [Vim Adventures](https://vim-adventures.com/) (learn Vim as a game)

---

**Last Updated:** 2026
**Maintained by:** bean
