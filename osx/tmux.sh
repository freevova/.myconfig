brew install tmux
brew install reattach-to-user-namespace

rm ~/.tmux.conf
ln -s ~/.config/osx/dotfiles/.tmux.conf ~/.tmux.conf
tic ~/.config/shared/vendor/xterm-256color-italic.terminfo

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm #install tpm

tmux source ~/.tmux.conf
