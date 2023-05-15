# Neovim

Copy my nvim config to your .config

`cp -r dotfiles/nvim ~/.config`

Make sure to have neovim installed in python3 for Vimspector

`pip3 install neovim`

Install Plugins

```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
nvim
:PlugInstall
:UpdateRemotePlugins
```
