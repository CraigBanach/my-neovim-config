# Git in Neovim

This config keeps git workflow mostly terminal-first, with Neovim as your editor and diff viewer.

## Quick Terminal Flow

From your project root:

```bash
git status
git add .
git commit
git push
```

Set Neovim as your git editor once:

```bash
git config --global core.editor "nvim"
```

## Useful `:terminal` Flow Inside Neovim

- Open terminal split: `:terminal`
- Run git commands from there:
  - `git status`
  - `git diff`
  - `git log --oneline --graph --decorate -20`
- Exit terminal mode back to normal mode: `<C-\\><C-n>`

## Reviewing Changes in Neovim

- Open changed file from `git status`
- Use search (`/pattern`) and jumps (`n`/`N`) to review edits quickly
- Compare against git version in a vertical diff:

```vim
:vert new | r !git show HEAD:%
:setlocal buftype=nofile bufhidden=wipe noswapfile
:windo diffthis
```

When done:

```vim
:windo diffoff
```

## Commit Message Tips

- Keep first line short and action-oriented
- Good examples:
  - `fix: handle empty csv rows in parser`
  - `feat: add venue breakdown command`
  - `chore: simplify lsp setup`

## Handy Git Aliases (Optional)

```bash
git config --global alias.st status
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.lg "log --oneline --graph --decorate"
```

Then use:

```bash
git st
git lg -20
```
