<img width="1640" height="664" alt="JonnyVimLogo" src="https://github.com/user-attachments/assets/52163846-7e71-4bc4-8f6b-464158cdfcf8" />

<div align="center"><p>
  A minimalistic and simple NeoVim "distro" focused on productivity
</div>

---

<div align="center"><h2>
  Showcase</h2>
</div>
<img width="2552" height="1050" alt="2026-04-06-193416_hyprshot" src="https://github.com/user-attachments/assets/ace02371-0b8d-47da-bbdb-93f33dd8e599" />

This is my personal NeoVim "distro"/config. It's a minimalistic but functional code editor ready to go for C/C++, C#, and Web development and is easiliy extendable. Never touch the mouse again!

This config focuses on keeping as close to NeoVim as possible keeping it minimal and focused. This config is also most powerfull in combination with [Tmux](https://github.com/tmux/tmux).

## Notable features
* Easy lsp configuration with [Mason](https://github.com/mason-org/mason.nvim)
* Lsp diagnostics with [Tint Inline Diagnostics](https://github.com/rachartier/tiny-inline-diagnostic.nvim) and [Trouble](https://github.com/folke/trouble.nvim)
* Easily navigate with usefull [Telescope](https://github.com/nvim-telescope/telescope.nvim) shortcuts
* Edit file like a text file with [Oil](https://github.com/stevearc/oil.nvim)
* Web tools with [WebTools](https://github.com/ray-x/web-tools.nvim)
* Ready to go ASP.NET development with [Easy-dotnet](https://github.com/GustavEikaas/easy-dotnet.nvim)
* Debugging with [nvim-dap](https://github.com/mfussenegger/nvim-dap)

## Notable shortcuts
They can all be found in [Remaps](https://github.com/jonesy-b-dev/JonnyVim/blob/main/lua/jonesyConf/core/remaps.lua) and [After Remaps](https://github.com/jonesy-b-dev/JonnyVim/blob/main/lua/jonesyConf/after/remaps.lua)
|Shortcut|Action|
--------|---------
|`<leader>` | Space |
|`<leader>ff` | Search files with telescope |
|`<leader>fg` | Live grep telescope|
|`<leader>fh` | Search files including hidden with telescope|
|`<F2>` | Undotree|
|`<leader>-` | File tree with Oil|
|`<leader>xx` | Diagnostics list|
|`<shift><tab>` | Move buffer back|
|`<alt><tab>` | Move buffer forward|
|`<leader>h` | Swap header/translation unit for C/CPP|
|`<leader>du`| Toggle debug ui |
|``<C>\` ``| Toggle terminal |
| Debugging | Visual Studio style shortcuts|

#### LSP shortcuts
Look in [this file](https://github.com/jonesy-b-dev/JonnyVim/blob/main/lua/jonesyConf/plugins/lsp/lspconfig.lua).

---

# Installation
1. Backup your old Nvim config
2. Clone repository in `~/.config/nvim`
3. Open NeoVim and run `:checkhealth` to see if anything dependency is still missing

---

## ToDo
* [ ] Custom syntax highlighting
