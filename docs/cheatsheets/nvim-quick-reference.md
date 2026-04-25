# Neovim Quick Reference

## Core

- Leader key: `Space`
- File explorer: `<leader>pv`
- Quit window: `:q`
- Save file: `:w`
- Save and quit: `:wq`

## Windows and Quickfix

- Vertical split: `:vs`
- Horizontal split: `:sp`
- Move windows: `<C-w>h` / `<C-w>j` / `<C-w>k` / `<C-w>l`
- Open quickfix list: `:copen`
- Close quickfix list: `:cclose`
- Next/prev quickfix item: `:cnext` / `:cprev`

## Search and Navigation

- Find files: `<leader>ff`
- Live grep: `<leader>fg`
- Buffers: `<leader>fb`
- Help tags: `<leader>fh`

## LSP and Diagnostics

- Go to definition: `gd`
- Find references: `gr`
- Hover docs: `K`
- Rename symbol: `<leader>rn`
- Code action: `<leader>ca`
- Line diagnostics: `<leader>e`
- Prev/next diagnostic: `[d` / `]d`
- LSP status: `:LspInfo`

## Markdown

- Toggle in-editor markdown rendering: `<leader>mp`
- Command: `:RenderMarkdown toggle`

## Terminal Mode

- Open terminal in current window: `:terminal`
- Exit terminal mode to normal mode: `<C-\\><C-n>`
- Use window moves from normal mode: `<C-w>h` / `<C-w>j` / `<C-w>k` / `<C-w>l`

## tmux Essentials (WSL)

- Start tmux session: `tmux new -s parkrun`
- Prefix key: `Ctrl-a` (custom) or `Ctrl-b` (default)
- New pane left/right: `<prefix> %`
- New pane top/bottom: `<prefix> "`
- Move pane focus: `<prefix>` + arrow key
- Zoom current pane: `<prefix> z`

## Telescope Tips

- In picker, use `<C-j>`/`<C-k>` to move selection
- Use `<CR>` to open selection
- Use `<Esc>` to close picker
