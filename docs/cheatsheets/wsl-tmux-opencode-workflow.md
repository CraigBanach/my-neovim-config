# WSL + tmux + OpenCode Workflow

Use this setup to switch quickly between coding, assistant help, and project tools without leaving one terminal tab.

## Recommended Pane Layout

- Pane 1 (left): `nvim .`
- Pane 2 (top-right): `opencode`
- Pane 3 (bottom-right): project shell (`cargo check`, git, `yazi`)

## Why This Works

- Keeps Neovim clean and focused on editing.
- Keeps OpenCode visible without replacing your editor context.
- Gives a dedicated command pane for fast check-test-fix loops.

## Minimal tmux Movements

- Move pane focus: `<prefix> + arrow key`
- Zoom current pane temporarily: `<prefix> z`
- Split vertical: `<prefix> %`
- Split horizontal: `<prefix> "`

## Daily Loop

1. Start tmux session in project root.
2. Open the 3-pane layout.
3. Edit in Neovim, ask OpenCode in pane 2, run checks in pane 3.
4. Use Neovim quickfix (`:copen`, `:cnext`, `:cprev`) to walk failures.

## Optional Next Improvements

- Add tmux session restore for persistent layouts.
- Add tmux keybindings for direct pane jumps.
- Add shell aliases for `cargo check`, `cargo test`, and git status.
