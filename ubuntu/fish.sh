sudo apt-get install -y fish #install tmux
sudo chsh -s /usr/bin/fish # make it default
echo "set -g -x fish_greeting ''" >> ~/.config/fish/config.fish # set no greetings

# configure RVM to use fish
curl -L --create-dirs -o ~/.config/fish/functions/rvm.fish https://raw.github.com/lunks/fish-nuggets/master/functions/rvm.fish

echo "rvm default" >> ~/.config/fish/config.fish
