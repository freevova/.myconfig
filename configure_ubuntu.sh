#!/bin/sh

chmod 777 ~/.private_config/ubuntu/tmux.sh
chmod 777 ~/.private_config/ubuntu/vim.sh
chmod 777 ~/.private_config/ubuntu/fish.sh

ln ~/.private_config/shared/dotfiles/.rubocop.yml ~/
ln ~/.private_config/shared/dotfiles/.config.reek ~/
ln ~/.private_config/shared/dotfiles/.eslintrc ~/

~/.private_config/ubuntu/tmux.sh
~/.private_config/ubuntu/vim.sh
~/.private_config/ubuntu/fish.sh
