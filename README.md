# My Neovim Config

A minimal Neovim setup focused on:
- fast startup
- clean defaults
- Rust development
- low plugin overhead

## Philosophy

This config is intentionally small.

The goal is not to endlessly tweak Neovim, but to have a reliable editor that:
- gets out of the way
- integrates with LSP
- supports a strong Rust workflow

## Structure

- `init.lua` → entry point
- `lua/config/*` → core config (options, keymaps, autocmds, lazy setup)
- `lua/plugins/*` → plugin definitions

## Keymaps

### Files
- `<leader>pv` → open file explorer
- `<leader>ff` → find files
- `<leader>fg` → grep
- `<leader>fb` → buffers

### Diagnostics
- `<leader>e` → show diagnostics
- `[d` / `]d` → navigate diagnostics

### LSP
- `gd` → go to definition
- `gr` → references
- `K` → hover
- `<leader>rn` → rename
- `<leader>ca` → code actions

## Rust Workflow

Typical workflow:

1. Open project
2. Run `cargo check` in a terminal
3. Use LSP for navigation, rename, hover
4. Run `cargo test`
5. Save file → auto format via rustfmt

Rust setup:

```bash
rustup default stable
rustup component add rust-analyzer rustfmt clippy
```

## Principles

- keep it minimal
- avoid plugin bloat
- prefer built-in LSP
- only add tools when friction appears

## Future additions

Only add when needed:
- debugging (nvim-dap + codelldb)
- git integration
- statusline

## Rule

If you are spending more time configuring Neovim than writing Rust, remove something.
