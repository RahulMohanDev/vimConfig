# Neovim Keybindings Cheatsheet

**Leader key: Space**

## Navigation & Files

| Keybinding | Action |
|------------|--------|
| `<leader>pv` | Open file explorer (netrw) |
| `<leader>pf` | Find files (Telescope) |
| `Ctrl+p` | Find git files |
| `<leader>fb` | List open buffers |
| `<leader>ps` | Live grep (global search) |
| `<leader>pw` | Search word under cursor |
| `<leader>s` | Search in subfolder |

## Harpoon (Quick File Switching)

| Keybinding | Action |
|------------|--------|
| `<leader>a` | Add file to Harpoon |
| `Ctrl+e` | Toggle Harpoon menu |
| `Ctrl+h` | Jump to Harpoon file 1 |
| `Ctrl+t` | Jump to Harpoon file 2 |
| `Ctrl+n` | Jump to Harpoon file 3 |
| `Ctrl+s` | Jump to Harpoon file 4 |

## LSP

| Keybinding | Action |
|------------|--------|
| `gd` | Go to definition |
| `K` | Hover documentation |
| `<leader>vd` | Show diagnostics float |
| `[d` | Next diagnostic |
| `]d` | Previous diagnostic |
| `<leader>vca` | Code actions |
| `<leader>vrr` | Find all references |
| `<leader>vrn` | Rename symbol |
| `Ctrl+h` (insert) | Signature help |

## Autocomplete (nvim-cmp)

| Keybinding | Action |
|------------|--------|
| `Ctrl+p` | Select previous item |
| `Ctrl+n` | Select next item |
| `Ctrl+y` | Confirm selection |
| `Ctrl+Space` | Trigger completion |

## Git

| Keybinding | Action |
|------------|--------|
| `<leader>gs` | Open Fugitive (git status) |
| `<leader>b` | Toggle inline git blame |

## Terminal

| Keybinding | Action |
|------------|--------|
| `<leader>t` | Toggle floating terminal |
| `<leader>q` (terminal mode) | Close floating terminal |

## Editing

| Keybinding | Action |
|------------|--------|
| `J` (visual) | Move selection down |
| `K` (visual) | Move selection up |
| `J` (normal) | Join lines (cursor stays) |
| `<leader>p` (visual) | Paste without yanking |
| `<leader>y` | Yank to system clipboard |
| `<leader>Y` | Yank line to system clipboard |
| `<leader>d` | Delete without yanking |
| `Ctrl+c` (insert) | Exit insert mode |
| `Q` | Disabled |
| `gc` / `gcc` | Toggle comment (Comment.nvim) |

## Utilities

| Keybinding | Action |
|------------|--------|
| `<leader>u` | Toggle undo tree |
| `Ctrl+d` | Half page down (centered) |
| `Ctrl+u` | Half page up (centered) |
| `n` / `N` | Next/prev search (centered) |
| `Ctrl+f` | Open tmux sessionizer |
