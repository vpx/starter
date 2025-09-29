### My neovim setup, based on NvChad.

## Usage instructions

1. Download and install [Neovim 0.11.4](
https://github.com/neovim/neovim/releases/tag/v0.11.4).

2. Clone this repository as `~/.config/nvim`:
```
mv ~/.config/nvim ~/.config/nvim.old 2>/dev/null
git clone https://github.com/crimilo/starter ~/.config/nvim
```

3. Open Neovim and run `!Mason` to display the mason UI and install your 
desired language servers (update `lspconfig.lua` accordingly).

4. Enjoy!
