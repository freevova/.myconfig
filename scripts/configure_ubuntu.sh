#!/bin/sh

chmod 777 ~/.config/ubuntu/tmux.sh
chmod 777 ~/.config/ubuntu/vim.sh
chmod 777 ~/.config/ubuntu/fish.sh

ln ~/.config/shared/dotfiles/.rubocop.yml ~/
ln ~/.config/shared/dotfiles/.config.reek ~/
ln ~/.config/shared/dotfiles/.eslintrc ~/

~/.config/ubuntu/tmux.sh
~/.config/ubuntu/vim.sh
~/.config/ubuntu/fish.sh
