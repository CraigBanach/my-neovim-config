# Rust Workflow in This Neovim Setup

## One-Time Setup

Install Rust and required components:

```bash
rustup default stable
rustup component add rust-analyzer rustfmt clippy
```

Optional checks:

```bash
rustup --version
rustc --version
cargo --version
```

## What This Config Does for Rust

- Uses LSP via `rust_analyzer`
- Formats on save (when formatter support is available)
- Uses 4-space indentation for Rust buffers
- Gives LSP keymaps for jump/rename/actions

## Daily Rust Loop

1. Open project: `nvim .`
2. Open code and navigate with:
   - `gd` definition
   - `gr` references
   - `K` hover docs
3. Refactor with:
   - `<leader>rn` rename symbol
   - `<leader>ca` code action
4. Save files to format automatically
5. Run checks in terminal:

```bash
cargo check
cargo clippy
cargo test
```

## Diagnostics and Health

- Show line diagnostics: `<leader>e`
- Prev/next diagnostics: `[d` / `]d`
- Confirm LSP attached in a Rust buffer:

```vim
:LspInfo
```

## Common Problems

- `rust_analyzer` not attaching:
  - open a `.rs` file (not plain text)
  - run `:LspInfo`
  - ensure `rust-analyzer` component is installed
- Formatting not happening:
  - run `rustup component add rustfmt`
  - run `:LspInfo` and verify LSP attached
- Clippy checks missing:
  - run `rustup component add clippy`

## Suggested Project Terminal Shortcuts

In a second terminal pane/tab while coding:

```bash
cargo check --all-targets
cargo test
```

For tighter feedback during development:

```bash
cargo clippy --all-targets -- -D warnings
```
