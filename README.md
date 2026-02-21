## 🖥️ System Specifications

### Software Environment
| Component | Choice | Description |
| :--- | :--- | :--- |
| **Operating System** | Arch Linux | Rolling release, minimal base |
| **Window Manager** | i3-wm | Tiling window manager|
| **Compositor** | xcompmgr | Lightweight X11 transparency and shadows |
| **Status Bar** | Polybar | Custom "Island" layout with ARGB transparency |
| **Notifications** | Dunst | Minimalist daemon (Tokyo Night theme) |
| **Terminal** | Alacritty | GPU-accelerated with 0.85 opacity |

### Visual Identity
* **Theme:** Tokyo Night (Storm variant)
* **Main Background:** `#1a1b26` (Transparent via `#CC` prefix)
* **Accent Color:** `#7aa2f7` (Soft Blue)
* **Font:** JetBrains Mono Nerd Font (for icons/ligatures)

### Optimization for Older Hardware
* **Compositor:** Using `xcompmgr -c -C` to disable shadows on the status bar, reducing CPU draw.
* **Lock Screen:** Utilizing `i3lock-color` over heavy QML shells for faster wake times.
* **Process Management:** Minimized background daemons; using `pkill` and `exec_always` in i3 config to prevent zombie processes on reload.
