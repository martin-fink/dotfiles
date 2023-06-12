# Dotfiles

## Installing

```shell
git clone --recurse-submodules git@github.com:martin-fink/dotfiles.git
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git dotfiles/oh-my-zsh/custom/themes/powerlevel10k
ln -s ~/dotfiles/zshrc .zshrc
ln -s ~/dotfiles/oh-my-zsh .oh-my-zsh
ln -s ~/dotfiles/tmux.conf .tmux.conf
./dotfiles/fzf/install
```

