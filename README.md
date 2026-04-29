---

````markdown
# 💤 LazyVim

# ⚡ MahinFlux IDE

A high-performance, keyboard-driven development environment built on **LazyVim**. This configuration is designed for engineers who want the power of a modern IDE without the bloat, telemetry, or unnecessary abstractions.

**Pure speed. Pure code.**

---

## ✨ Features

- **Fast Completion:** Powered by `blink.cmp` for near-instant suggestions.
- **Deep Language Support:** Optimized for **Go, Python, TypeScript, and Web** development.
- **Blazing Search:** `fzf-lua` integration for fast file and text navigation.
- **Clean UI:** High-contrast `tokyonight` modified aesthetic.
- **Minimalist Philosophy:** No AI clutter .

---

## 📂 Project Structure

```text
├── init.lua             # Entry point
├── lua
│   ├── config
│   │   ├── lazy.lua     # Plugin manager & Extras
│   │   ├── keymaps.lua  # Custom shortcuts
│   │   └── options.lua  # Vim settings
│   └── plugins          # Modular plugin configs
│       ├── lsp.lua      # Intelligence & Diagnostics
│       ├── theme.lua    # Colors & Aesthetics
│       └── web.lua      # Frontend toolchain
└── stylua.toml          # Lua formatting
```

````

---

## 🔤 Font

Use **CaskaydiaCove Nerd Font Mono** for proper icon rendering and best visual alignment with the theme.

---

## 📦 Installation

### 1. Prerequisites

Install the following dependencies:

- **Neovim** (latest stable recommended)
- **Git** (latest stable recommended)
- **Node.js** (latest stable recommended)
- **Python** ≥  (latest stable recommended)
- **Go** ≥ (latest stable recommended)
- **C compiler** (`gcc` or `clang`)
- **ripgrep**
- **fd** (optional but recommended)
- **curl**

---

### 2. Install Dependencies

#### Ubuntu / Debian

```bash
sudo apt update
sudo apt install -y neovim git curl ripgrep fd-find build-essential nodejs npm python3 python3-pip golang
```

#### Arch Linux

```bash
sudo pacman -S neovim git curl ripgrep fd nodejs npm python go base-devel gcc
```

#### macOS (Homebrew)

```bash
brew install neovim git ripgrep fd node python go gcc
```

---

### 3. Backup Existing Config (Optional but Recommended)

```bash
mv ~/.config/nvim ~/.config/nvim.backup
mv ~/.local/share/nvim ~/.local/share/nvim.backup
mv ~/.local/state/nvim ~/.local/state/nvim.backup
mv ~/.cache/nvim ~/.cache/nvim.backup
```

---

### 4. Install MahinFlux IDE

```bash
git clone https://github.com/mahinflux/IDE.git ~/.config/nvim ``` ---

### 5. First Launch

```bash
nvim
```

On first run:

- Plugins are installed automatically via `lazy.nvim`
- LSP servers are installed via Mason
- Treesitter parsers are compiled

Do not exit until installation completes.

---

### 6. Verify Setup

Inside Neovim:

```vim
:checkhealth
```

Fix any missing dependencies reported.

---

### 7. Optional Language Tooling

Install additional tools depending on your workflow:

```bash
# Python
pip install pynvim black isort

# Node.js
npm install -g typescript typescript-language-server

# Go
go install golang.org/x/tools/gopls@latest
```

---

### 8. Updating

```vim
:Lazy update
```

---

### 9. Uninstall

```bash
rm -rf ~/.config/nvim ~/.local/share/nvim ~/.cache/nvim ~/.local/state/nvim
```

---

## ⚙️ Philosophy

MahinFlux IDE is built on a simple premise:

- Speed over features
- Control over abstraction
- Signal over noise

If a tool doesn't make you faster or sharper, it doesn't belong here.

---

## 📄 License

MIT (-----------)

---

## 🚧 Notes

- Replace the repository URL with your actual repo
- Ensure your terminal supports Nerd Fonts
- Keep dependencies updated to avoid LSP/toolchain breakage

```

---
Happy Coding 💖💖

```
````
