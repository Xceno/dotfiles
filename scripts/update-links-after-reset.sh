#!/bin/bash

set -ve

ln -sf ~/dev/dotfiles/tmux/.tmux.conf ~/.tmux.conf
ln -sf ~/dev/dotfiles/tmux/.tmuxinator ~/.tmuxinator
ln -sf ~/dev/dotfiles/vim/.vimrc ~/.vimrc
ln -sf ~/dev/dotfiles/alias/.zsh_aliases ~/.zsh_aliases
ln -sf ~/dev/dotfiles/alias/.zshrc ~/.zshrc
ln -sf ~/dev/dotfiles/git/.gitconfig ~/.gitconfig
ln -sf ~/dev/dotfiles/alias/.functions ~/.functions
ln -sf ~/dev/dotfiles/vscode/keybindings.json ~/.config/Code/User/keybindings.json
ln -sf ~/dev/dotfiles/vscode/settings.json ~/.config/Code/User/settings.json
ln -sf ~/dev/dotfiles/emacs/.doom.d ~/.doom.d

echo "Links updated"
