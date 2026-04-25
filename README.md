# 💤 LazyVim

# ⚡ MahinFlux IDE

A high-performance, keyboard-driven development environment built on **LazyVim**. This configuration is designed for engineers who want the power of a modern IDE without the bloat, telemetry, or "AI slop."

**Pure speed. Pure code.**

---

## ✨ Features

- **Fast Completion:** Powered by `blink.cmp` for near-instant suggestions.
- **Deep Language Support:** Optimized configurations for **Go, Python, TypeScript, and Web** development.
- **Blazing Search:** `fzf-lua` integration for lightning-fast file and text searching.
- **Clean UI:** Uses the high-contrast `oxocarbon` / `tokyonight` aesthetic for focus.
- **No AI Bloat:** Only the tools that make you a better coder, not the ones that code for you.

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
