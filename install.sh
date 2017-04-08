DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -s $DIR/vim $HOME/.vim
ln -s $DIR/vimrc $HOME/.vimrc

ln -s $DIR/Xresources $HOME/.Xresources
xrdb $HOME/.Xresources

ln -s $DIR/compton.conf $HOME/.config/compton.conf

ln -s $DIR/termite $HOME/.config/termite

ln -s $DIR/polybar $HOME/.config/polybar

ln -s $DIR/i3 $HOME/.config/i3

ln -s $DIR/dunst $HOME/.config/dunst
