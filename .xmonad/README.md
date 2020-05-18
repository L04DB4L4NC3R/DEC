# My Xmonad Configuration (xmonad.hs) 

![Screenshot of my desktop](https://gitlab.com/dwt1/dotfiles/raw/master/.screenshots/dotfiles05.png) 

Xmonad is a tiling window manager for X. Windows are arranged
automatically to tile the screen without gaps or overlap, maximising
screen use. Window manager features are accessible from the keyboard:
a mouse is optional. xmonad is written, configured and extensible in
Haskell. Custom layout algorithms, key bindings and other extensions
may be written by the user in config files. Layouts are applied
dynamically, and different layouts may be used on each
workspace. Xinerama is fully supported, allowing windows to be tiled
on several physical screens.

This directory houses my personal xmonad configuration (xmonad.hs).  To check out my config, you will need to have xmonad, xmonad-contrib and xmobar installed.   Then you need to place the xmonad.hs file in ~/.xmonad or in ~/.config/xmonad/.  Then recompile xmonad and restart xmonad.

# My Keybindings

The MODKEY is set to the Super key (aka the Windows key).  I try to keep the
keybindings consistent with all of my window managers.

| Keybinding | Action |
| :--- | :--- |
| `MODKEY + RETURN` | opens terminal (alacritty is the terminal but can be easily changed) |
| `MODKEY + SHIFT + RETURN` | opens run launcher (dmenu is the run launcher but can be easily changed) |
| `MODKEY + TAB` | rotates through the available layouts |
| `MODKEY + SHIFT + c` | closes window with focus |
| `MODKEY + SHIFT + r` | restarts xmonad |
| `MODKEY + SHIFT + q` | quits xmonad |
| `MODKEY + 1-9` | switch focus to workspace (1-9) |
| `MODKEY + SHIFT + 1-9` | send focused window to workspace (1-9) |
| `MODKEY + j` | windows focus down (switches focus between windows in the stack) |
| `MODKEY + k` | windows focus up (switches focus between windows in the stack) |
| `MODKEY + SHIFT + j` | windows swap down (swap windows in the stack) |
| `MODKEY + SHIFT + k` | windows swap up (swap the windows in the stack) |
| `MODKEY + h` | shrink window (decreases window width) |
| `MODKEY + l` | expand window (increases window width) |
| `MODKEY + w` | switches focus to monitor 1 |
| `MODKEY + e` | switches focus to monitor 2 |
| `MODKEY + r` | switches focus to monitor 3 |
| `MODKEY + period` | switch focus to next monitor |
| `MODKEY + comma` | switch focus to prev monitor |

