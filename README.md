<!-- filepath: c:\Users\bean\dotfiles\README.md -->
# Dotfiles

Personal shell and editor configuration files optimized for productivity and cross-platform compatibility.

## Repository Structure

```
dotfiles/
├── bashrc/
│   ├── bashrc-linux     # Main config for Linux/Unix systems (install as ~/.bashrc)
│   └── bashrc-windows   # Optimized config for Git Bash on Windows (install as ~/.bash_profile)
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

**Two optimized variants for different platforms:**

| Feature | Linux/Unix | Windows Git Bash |
|---------|------------|------------------|
| File Name | `.bashrc` | `.bash_profile` |
| Execution Timer | High precision | High precision |
| History Size | 10k / 20k | 10k / 20k |
| Git Integration | Full + dirty check | Full + dirty check |
| Git Dirty Indicator | `*` (unstaged) `+` (staged) | `*` (unstaged) `+` (staged) |
| Prompt Updates | Every command | Every command |
| System Commands | Linux native | Windows compatible |
| Best For | Linux/Unix/macOS | Git Bash on Windows |

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

All configurations include a feature-rich, color-coded prompt with execution timing and git integration:

**Linux/Unix Example:**
```
[457ms] bean@Ashblade ~/dotfiles git:(master)
$ 
[156ms] bean@Ashblade ~/dotfiles git:(master)
$ 
[310ms] bean@Ashblade ~/dotfiles git:(master)
$ 
```

**Windows Git Bash Example:**
```
[446ms] bean@Ashblade ~/dotfiles git:(master*)
$ 
[445ms] bean@Ashblade ~/dotfiles git:(master*)
$ 
[429ms] bean@Ashblade ~/dotfiles git:(master*)
$ 
```

**Prompt Format:** `[time] user@host /path git:(branch)`

**Git Status Indicators:**
- `git:(master)` - Clean working directory
- `git:(master*)` - Unstaged changes present
- `git:(master+)` - Staged changes present
- `git:(master*+)` - Both unstaged and staged changes
- `git:(a1b2c3d)` - Detached HEAD state (shows short commit hash)

**Execution Timer:**
- Shows command execution time with millisecond precision
- Formats automatically: `450ms`, `2.5s`, `3m15s`, `1h30m45s`
- Updates only after actual command execution (not on empty prompts)

### Key Prompt Features

- **Execution timer**: Millisecond precision timing for each command
- **Git integration**: Current branch with dirty status indicators
- **Two-line layout**: Clean separation of info and command input
- **Color-coded**: Easy visual scanning of status information
- **Performance optimized**: Fast git branch detection without external commands

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

- **Linux/Unix**: Full-featured with native command support
- **macOS**: Darwin-specific compatibility
- **Windows (Git Bash)**: Optimized with Windows-specific aliases and commands
- **Raspberry Pi**: Use Linux config with lightweight settings

## Installation

### Quick Install (Linux/Unix)

```bash
# Clone the repository
git clone https://github.com/BeanGreen247/dotfiles.git ~/dotfiles

# Backup existing configs
cp ~/.bashrc ~/.bashrc.backup 2>/dev/null
cp ~/.vimrc ~/.vimrc.backup 2>/dev/null

# Link configurations (Linux/Unix uses .bashrc)
ln -sf ~/dotfiles/bashrc/bashrc-linux ~/.bashrc
ln -sf ~/dotfiles/vim/vimrc ~/.vimrc

# Reload
source ~/.bashrc
vim  # Plugins auto-install on first run
```

### Windows (Git Bash)

**IMPORTANT:** On Windows Git Bash, the bash configuration must be installed as `.bash_profile`, not `.bashrc`. Git Bash sources `.bash_profile` for login shells.

```bash
# Clone the repository
git clone https://github.com/BeanGreen247/dotfiles.git ~/dotfiles

# Backup existing configs
cp ~/.bash_profile ~/.bash_profile.backup 2>/dev/null
cp ~/.vimrc ~/.vimrc.backup 2>/dev/null

# Link configurations (Windows uses .bash_profile)
ln -sf ~/dotfiles/bashrc/bashrc-windows ~/.bash_profile
ln -sf ~/dotfiles/vim/vimrc ~/.vimrc

# Reload
source ~/.bash_profile
vim  # Plugins auto-install on first run
```

### Raspberry Pi

```bash
git clone https://github.com/BeanGreen247/dotfiles.git ~/dotfiles
ln -sf ~/dotfiles/bashrc/bashrc-linux ~/.bashrc
ln -sf ~/dotfiles/vim/vimrc-rpi ~/.vimrc
source ~/.bashrc
```

### Minimal Setup (Servers/SSH)

For systems without internet or minimal resources:

```bash
# Minimal Vim (no plugins)
ln -sf ~/dotfiles/vim/vimrc-minimal ~/.vimrc

# Use standard bash config
ln -sf ~/dotfiles/bashrc/bashrc-linux ~/.bashrc
```

## Configuration Details

### Bash: Linux/Unix (`bashrc/bashrc-linux`)

**Installation:** Copy to `~/.bashrc`

**Best for:** Linux, Unix, macOS systems

**Features:**
- High-precision execution timer with automatic formatting
- Git integration with dirty status indicators (`*` for unstaged, `+` for staged)
- 10,000 command history in memory (20,000 in file)
- Git dirty status check on every prompt (can be disabled for speed)
- Extensive shell options (histappend, checkwinsize, cdspell, etc.)
- 60+ git aliases, docker shortcuts, development tools
- Enhanced readline with prefix-based history search
- Optional fuzzy search with fzf integration

**System Requirements:**
- `bash` 4.0+
- `date` (for timing)
- `git` (for git integration)
- Optional: `fzf` (for fuzzy search)

**Performance tuning:**
```bash
# Skip git dirty check for faster prompts
export BASHRC_SKIP_GIT_DIRTY=1
```

### Bash: Windows (`bashrc/bashrc-windows`)

**Installation:** Copy to `~/.bash_profile` (NOT `.bashrc`)

**Best for:** Git Bash on Windows

**Key Differences from Linux:**
- Uses `.bash_profile` instead of `.bashrc` (required for Git Bash)
- Windows-specific aliases (`cls`, `open`, `explorer`, `notepad`)
- Optimized for Windows file system and Git Bash environment
- Windows-compatible symlink handling
- Same execution timer and git integration as Linux version

**Performance tuning:**
```bash
# Skip git dirty check for faster prompts
export BASHRC_SKIP_GIT_DIRTY=1
```

**Windows-specific features:**
```bash
# Windows symlink support
export MSYS=winsymlinks:nativestrict
export CYGWIN=winsymlinks:nativestrict

# Windows-friendly aliases
alias open='start'              # Open files with default program
alias explorer='explorer.exe'   # Open Windows Explorer
alias notepad='notepad.exe'     # Open Notepad
alias cls='clear'               # Windows-style clear
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
- **White (37)**: Execution time
- **Yellow (33)**: Git branch and dirty indicators
- **Blue (94)**: Username and hostname
- **White (37)**: Current path

### Environment Variables

```bash
export EDITOR=vim
export VISUAL=vim
export PAGER=less
export PROJECT_DIR="$HOME/code"       # Adjust to your project directory
```

### External Configuration Files

The bashrc sources additional files if they exist:
- `~/.bash_aliases` - Custom aliases
- `~/.bash_local` - Machine-specific configuration

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
- `extract` - Extract common archive formats (tar.gz, zip, 7z, etc.)

### Git (60+ aliases)
- **Short**: `g`, `gs`, `ga`, `gc`, `gp`, `gd`, `gb`, `gco`
- **Workflow**: `wip`, `undo`, `melt`, `nuke`
- **Advanced**: `gaa`, `gcm`, `gca`, `gcan`, `gpf`, `gpl`, `gf`, `gl`
- **Full list** in bashrc files

### Docker
- `d`, `dc`, `dps`, `dpsa`, `di` - Docker shortcuts

### System
- `myip` - Show public IP
- `ports` - Show open ports
- `h` - History
- `c`, `cls` - Clear screen
- `q` - Exit

### Development
- **Python**: `py`, `py3`, `venv`
- **Node**: `ni`, `nr`, `ns`

### Windows-Specific (bashrc-windows only)
- `open` - Open files with default program
- `explorer` - Open Windows Explorer
- `notepad` - Open Notepad
- `cls` - Clear screen (Windows style)

## System Requirements

### Bash Requirements

**Minimum:**
- Bash 4.0+
- `date` (for execution timing)

**Recommended:**
- `git` (for git integration)
- `fzf` (for fuzzy search)

**Optional:**
- `xclip` or `pbcopy` (clipboard integration)

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

**Slow prompt (git dirty check):**
```bash
# Add to ~/.bash_local
export BASHRC_SKIP_GIT_DIRTY=1
```

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
scoop install fzf         # Windows (alternative)
```

**Windows: Config not loading:**
Make sure you're using `.bash_profile`, not `.bashrc`:
```bash
# Check which file Git Bash is using
echo $BASH_SOURCE

# Should be installed as ~/.bash_profile on Windows
ln -sf ~/dotfiles/bashrc/bashrc-windows ~/.bash_profile
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

**Understanding git dirty indicators:**
```bash
# Clean repo
git:(master)

# You edited files but haven't staged them
git:(master*)

# You staged changes with 'git add'
git:(master+)

# You have both unstaged and staged changes
git:(master*+)
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
# Linux/Unix - use .bashrc
ln -sf ~/dotfiles/bashrc/bashrc-linux ~/.bashrc
source ~/.bashrc

# Windows - use .bash_profile
ln -sf ~/dotfiles/bashrc/bashrc-windows ~/.bash_profile
source ~/.bash_profile

# Use full Vim config
ln -sf ~/dotfiles/vim/vimrc ~/.vimrc

# Use minimal Vim
ln -sf ~/dotfiles/vim/vimrc-minimal ~/.vimrc

# Use RPi Vim
ln -sf ~/dotfiles/vim/vimrc-rpi ~/.vimrc

# Reload Vim
:source ~/.vimrc             # In Vim (or restart)
```

### Installation for New Servers

```bash
# One-liner for minimal setup
ssh user@server 'mkdir -p ~/.vim/{undo,backup,swap}'
scp ~/dotfiles/bashrc/bashrc-linux user@server:~/.bashrc
scp ~/dotfiles/vim/vimrc-minimal user@server:~/.vimrc
```

## History Configuration

| Config | Memory | File | Features |
|--------|--------|------|----------|
| Linux/Unix | 10,000 | 20,000 | Timestamps, dedup, ignore common |
| Windows | 10,000 | 20,000 | Same + `cls` |

## Platform Differences Summary

| Feature | Linux/Unix | Windows Git Bash |
|---------|-----------|------------------|
| **Config File** | `~/.bashrc` | `~/.bash_profile` |
| **Execution Timer** | ✓ High precision | ✓ High precision |
| **Git Integration** | ✓ Full | ✓ Full |
| **Git Dirty Check** | ✓ Optional | ✓ Optional |
| **History Search** | ✓ Prefix + fzf | ✓ Prefix + fzf |
| **Windows Aliases** | ✗ | ✓ (`cls`, `open`, etc.) |
| **Symlink Support** | ✓ Native | ✓ MSYS/Cygwin |

## Contributing

Feel free to fork and customize for your own use. Pull requests for bug fixes are welcome.

## License

MIT License - Feel free to use and modify as needed.

## Resources

### Bash

**Official Documentation:**
- [GNU Bash Manual](https://www.gnu.org/software/bash/manual/) - Official Bash reference
- [Bash Reference Manual](https://www.gnu.org/savannah-checkouts/gnu/bash/manual/bash.html) - Complete Bash documentation

**Prompt & Customization:**
- [Bash Prompt HOWTO](https://tldp.org/HOWTO/Bash-Prompt-HOWTO/) - Guide to customizing bash prompts
- [ANSI Color Codes](https://en.wikipedia.org/wiki/ANSI_escape_code) - Terminal color and formatting codes
- [Bash-it](https://github.com/Bash-it/bash-it) - Community Bash framework
- [Oh My Bash](https://github.com/ohmybash/oh-my-bash) - Bash configuration framework
- [Starship Prompt](https://starship.rs/) - Cross-shell prompt (alternative approach)

**History & Readline:**
- [GNU Readline Documentation](https://tiswww.case.edu/php/chet/readline/rluserman.html) - Readline library reference
- [Bash History Tricks](https://www.digitalocean.com/community/tutorials/how-to-use-bash-history-commands-and-expansions) - History management guide
- [FZF](https://github.com/junegunn/fzf) - Command-line fuzzy finder
- [FZF Examples](https://github.com/junegunn/fzf/wiki/examples) - FZF usage examples

**Git Integration:**
- [Git Bash Completion](https://github.com/git/git/blob/master/contrib/completion/git-completion.bash) - Official Git completion script
- [Git Prompt Script](https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh) - Official Git prompt helper
- [Pro Git Book](https://git-scm.com/book/en/v2) - Comprehensive Git guide

**Performance & Optimization:**
- [Bash Performance Tips](https://www.tldp.org/LDP/abs/html/optimizations.html) - Shell script optimization
- [Linux Performance](http://www.brendangregg.com/linuxperf.html) - System performance analysis
- [Shell Startup Files](https://blog.flowblok.id.au/2013-02/shell-startup-scripts.html) - Understanding shell initialization

**Windows Git Bash:**
- [Git for Windows](https://gitforwindows.org/) - Official Git Bash for Windows
- [MSYS2](https://www.msys2.org/) - Unix-like environment for Windows
- [Windows Terminal](https://github.com/microsoft/terminal) - Modern terminal for Windows

**Advanced Bash:**
- [Advanced Bash-Scripting Guide](https://tldp.org/LDP/abs/html/) - Comprehensive Bash scripting
- [Bash Hackers Wiki](https://wiki.bash-hackers.org/) - Community knowledge base
- [ShellCheck](https://www.shellcheck.net/) - Shell script analysis tool

### Vim

**Official Documentation:**
- [Vim Documentation](https://www.vim.org/docs.php) - Official Vim docs
- [Vim User Manual](https://vimhelp.org/) - Complete Vim reference
- [Neovim Documentation](https://neovim.io/doc/) - Neovim reference

**Learning Resources:**
- [Vim Cheat Sheet](https://vim.rtorr.com/) - Quick reference guide
- [OpenVim Tutorial](https://www.openvim.com/) - Interactive Vim tutorial
- [Vim Adventures](https://vim-adventures.com/) - Learn Vim through a game
- [Vim Golf](https://www.vimgolf.com/) - Vim challenges and solutions
- [Practical Vim](https://pragprog.com/titles/dnvim2/practical-vim-second-edition/) - Book by Drew Neil

**Plugin Management:**
- [vim-plug](https://github.com/junegunn/vim-plug) - Minimalist plugin manager
- [Vundle](https://github.com/VundleVim/Vundle.vim) - Alternative plugin manager
- [pathogen](https://github.com/tpope/vim-pathogen) - Simple plugin loader
- [VimAwesome](https://vimawesome.com/) - Plugin discovery

**Essential Plugins (used in configs):**
- [CoC (Conqueror of Completion)](https://github.com/neoclide/coc.nvim) - LSP client and completion
- [CoC Documentation](https://github.com/neoclide/coc.nvim/wiki) - CoC setup and configuration
- [GitHub Copilot](https://github.com/github/copilot.vim) - AI pair programmer
- [NERDTree](https://github.com/preservim/nerdtree) - File system explorer
- [vim-devicons](https://github.com/ryanoasis/vim-devicons) - File type icons
- [fzf.vim](https://github.com/junegunn/fzf.vim) - Fuzzy finder integration
- [vim-fugitive](https://github.com/tpope/vim-fugitive) - Git integration
- [vim-gitgutter](https://github.com/airblade/vim-gitgutter) - Git diff in sign column
- [ALE](https://github.com/dense-analysis/ale) - Asynchronous linting
- [vim-airline](https://github.com/vim-airline/vim-airline) - Status line
- [gruvbox](https://github.com/morhetz/gruvbox) - Color scheme
- [vim-surround](https://github.com/tpope/vim-surround) - Surrounding text objects
- [auto-pairs](https://github.com/jiangmiao/auto-pairs) - Auto-close brackets
- [NERDCommenter](https://github.com/preservim/nerdcommenter) - Comment shortcuts

**Themes & Appearance:**
- [Nerd Fonts](https://www.nerdfonts.com/) - Iconic fonts for file icons
- [Powerline Fonts](https://github.com/powerline/fonts) - Fonts for status lines
- [Vim Color Schemes](https://vimcolors.com/) - Theme gallery

**Configuration & Dotfiles:**
- [Vim Tips Wiki](https://vim.fandom.com/wiki/Vim_Tips_Wiki) - Community tips
- [Learn Vimscript the Hard Way](https://learnvimscriptthehardway.stevelosh.com/) - Vimscript guide
- [The Ultimate vimrc](https://github.com/amix/vimrc) - Popular config example
- [thoughtbot dotfiles](https://github.com/thoughtbot/dotfiles) - Well-documented dotfiles

**Language Server Protocol (LSP):**
- [LSP Specification](https://microsoft.github.io/language-server-protocol/) - LSP documentation
- [CoC Extensions](https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions) - Language support
- [coc-settings.json](https://github.com/neoclide/coc.nvim/wiki/Using-the-configuration-file) - CoC configuration

**Performance & Optimization:**
- [Vim Performance Tips](https://stackoverflow.com/questions/4468816/how-do-i-improve-vim-performance) - Speed optimization
- [Profiling Vim](https://stackoverflow.com/questions/12213597/how-to-see-which-plugins-are-making-vim-slow) - Finding bottlenecks
- [Vim Startup Time](https://github.com/tweekmonster/startuptime.vim) - Analyze startup

**Minimal/Embedded Systems:**
- [Vim on Raspberry Pi](https://www.raspberrypi.org/documentation/linux/usage/text-editors.md) - Pi-specific tips
- [Embedded Vim](https://www.vim.org/scripts/script.php?script_id=1658) - Lightweight configurations
- [BusyBox Vi](https://www.busybox.net/downloads/BusyBox.html#vi) - Minimal vi implementation

**Community & Support:**
- [r/vim](https://www.reddit.com/r/vim/) - Reddit community
- [Vi and Vim Stack Exchange](https://vi.stackexchange.com/) - Q&A site
- [Vim IRC](https://www.vim.org/community.php) - Live chat support
- [Vim Meetups](https://www.meetup.com/topics/vim/) - Local user groups

### Cross-Platform Development

**Terminal Emulators:**
- [Windows Terminal](https://github.com/microsoft/terminal) - Modern Windows terminal
- [Alacritty](https://github.com/alacritty/alacritty) - GPU-accelerated terminal
- [iTerm2](https://iterm2.com/) - macOS terminal replacement
- [Kitty](https://sw.kovidgoyal.net/kitty/) - Fast, feature-rich terminal
- [WezTerm](https://wezfurlong.org/wezterm/) - Cross-platform terminal

**Dotfile Management:**
- [GNU Stow](https://www.gnu.org/software/stow/) - Symlink farm manager
- [chezmoi](https://www.chezmoi.io/) - Dotfile manager with templating
- [yadm](https://yadm.io/) - Yet Another Dotfiles Manager
- [Dotbot](https://github.com/anishathalye/dotbot) - Configuration installer

**General Resources:**
- [The Art of Command Line](https://github.com/jlevy/the-art-of-command-line) - Command line mastery
- [Awesome Shell](https://github.com/alebcay/awesome-shell) - Curated shell resources
- [Awesome Vim](https://github.com/akrawchyk/awesome-vim) - Curated Vim resources
- [Awesome Dotfiles](https://github.com/webpro/awesome-dotfiles) - Dotfile resources

### Tools & Utilities

**File Management:**
- [ranger](https://github.com/ranger/ranger) - Terminal file manager
- [lf](https://github.com/gokcehan/lf) - Terminal file manager in Go
- [nnn](https://github.com/jarun/nnn) - Fast terminal file manager

**Search & Navigation:**
- [ripgrep](https://github.com/BurntSushi/ripgrep) - Fast grep alternative
- [fd](https://github.com/sharkdp/fd) - Fast find alternative
- [z](https://github.com/rupa/z) - Jump to frequent directories
- [autojump](https://github.com/wting/autojump) - Directory navigation

**System Monitoring:**
- [htop](https://github.com/htop-dev/htop) - Interactive process viewer
- [btop](https://github.com/aristocratos/btop) - Resource monitor
- [glances](https://github.com/nicolargo/glances) - System monitoring tool

---

**Last Updated:** February 2026