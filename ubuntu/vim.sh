sudo apt-get purge -y vim
rm .vim .vimrc .viminfo  -rf

sudo apt-get install ack-grep -y #install ack-grep
sudo apt-get install build-essential cmake -y #install build-essential cmake
sudo apt-get install python-dev -y #install python-dev
sudo add-apt-repository ppa:jonathonf/vim -y
sudo apt-get install vim-gnome -y #install vim
sudo apt-get install silversearcher-ag -y

rm ~/.vimrc
ln -s ~/.config/shared/dotfiles/.vimrc ~/.vimrc
mkdir ~/.vim
mkdir ~/.vim/colors
ln -s ~/.config/shared/vendor/monokai-phoenix.vim ~/.vim/colors/

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim #copy plug
vim +PlugInstall +qall #install plugins

tic ~/.config/shared/vendor/xterm-256color-italic.terminfo
echo 'export TERM=xterm-256color-italic' >> ~/.zshrc
