
#  Dotfiles + NixOS Config

Modular, minimal dotfiles setup with each program in its own Git repo.

---

## 󰣇 System Info

- **OS**: Arch Linux
- **Compositor**: Hyprland  
- **Terminal**: Kitty  
- **Shell**: ZSH  
- **Desktop Shell**: Ags
- **Wallpaper**: swww  
- **Launcher**: Ags / Rofi  
- **File Explorer**: Ranger + Nemo  
- **Audio**: Pipewire + Wireplumber  


---

##  Requirements

- Arch Linux
- AUR access
- Bash, `git`, and `vim` (for setup convenience)

---

##  Structure

Each subdirectory is a Git submodule representing a single program or config:

```
dotfiles/
├── nvim/             # Neovim config
├── hypr/             # Hyprland config
├── ags/              # Ags config
├── link-dots.sh      # Symlinks all configs to ~/.config/
└── README.md
```

Each config lives in its own repo, tracked as a submodule. This keeps everything modular and version-controlled.

---

##   Linking Configs

Use the script to symlink configs into `~/.config`:

```bash
./link-dots.sh
```

---
