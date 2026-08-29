# dotfiles-hypr

Config for [Hyprland](https://hyprland.org) (the window manager), theme-integrated via the `theme` submodule.

Part of the [dotfiles-arch](https://github.com/SaratAngajalaoffl/dotfiles-arch) multi-repo dotfiles system.

## Layout

- `config` → `~/.config/hypr` (see `.links`)
- `config/conf/hyprland/colors.lua` is gitignored — it's a symlink to the active theme's colors, required by `look_and_feel.lua` for border colors (see the `theme` submodule)

## Setup

Not used standalone — applied by the parent repo's `install.sh`, which reads `.links` and symlinks `config` into place.
