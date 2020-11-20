#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -svn $DIR/nvim $HOME/.config/nvim

ln -svn $DIR/compton.conf $HOME/.config/compton.conf

ln -svn $DIR/termite $HOME/.config/termite

ln -svn $DIR/polybar $HOME/.config/polybar

ln -svn $DIR/i3 $HOME/.config/i3

ln -svn $DIR/dunst $HOME/.config/dunst

ln -svn $DIR/rofi $HOME/.config/rofi

ln -svn $DIR/sway $HOME/.config/sway
ln -svn $DIR/waybar $HOME/.config/waybar

ln -svn $DIR/emacs $HOME/.emacs.d

ln -svn $DIR/user-dirs.dirs $HOME/.config/user-dirs.dirs

ln -svn $DIR/fish $HOME/.config/fish

