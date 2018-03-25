sudo apt-get purge -y tmux
rm ~/.tmux ~/.tmux.conf -rf

sudo apt-get install -y python-software-properties software-properties-common #install dependencies
sudo add-apt-repository -y ppa:pi-rho/dev #add repository
sudo apt-get update #update list
sudo apt-get install -y tmux #install tmux

rm ~/.tmux.conf
ln -s ~/.private_config/ubuntu/dotfiles/.tmux.conf ~/.tmux.conf
sudo ln -s ~/.private_config/shared/scripts/init_session.sh /usr/bin/

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm #install tpm

tmux source ~/.tmux.conf
