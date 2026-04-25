# Window Navigation

## Create Splits

- Horizontal split: `:split` or `:sp`
- Vertical split: `:vsplit` or `:vs`
- Open file in vertical split: `:vs path/to/file`
- Open file in horizontal split: `:sp path/to/file`

## Move Between Windows

- Left: `<C-w>h`
- Down: `<C-w>j`
- Up: `<C-w>k`
- Right: `<C-w>l`
- Next window: `<C-w>w`

## Resize Windows

- Increase height: `<C-w>+`
- Decrease height: `<C-w>-`
- Increase width: `<C-w>>`
- Decrease width: `<C-w><`
- Equalize sizes: `<C-w>=`

## Window Layout Actions

- Close current window: `:q`
- Keep only current window: `:only`
- Move current window to a new tab: `<C-w>T`

## Tabs (Separate Layouts)

- New tab: `:tabnew`
- Next tab: `gt`
- Previous tab: `gT`
- Close tab: `:tabclose`

## Practical Flows

- Code + tests side-by-side: `:vs` then switch with `<C-w>h/l`
- Read docs while editing: `:sp README.md`
- Reset messy layout: `<C-w>=` then `:only` if needed

## WSL + tmux + Neovim Flow

- Keep Neovim focused on editing and navigation.
- Use tmux panes for context switching:
  - Pane 1: `nvim .`
  - Pane 2: `opencode`
  - Pane 3: shell tools (`yazi`, `cargo check`, git)
- In Neovim, use `:vs path/to/file` and `:sp path/to/file` for temporary local views.
- Use `:copen` after build/check commands to jump errors quickly.
