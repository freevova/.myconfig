brew update
brew install macvim --with-override-system-vim
# TODO install silver searcher!!!

rm ~/.vimrc
ln -s ~/.config/shared/dotfiles/.vimrc ~/.vimrc
mkdir ~/.vim
mkdir ~/.vim/colors
ln -s ~/.config/shared/vendor/monokai-phoenix.vim ~/.vim/colors/monokai-phoenix.vim

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim #copy plug
vim +PlugInstall +qall #install plugins

