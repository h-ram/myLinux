#!/bin/bash


echo "Setting Configuration file"

CONFIGS=$(find ~ -type d -path "*/myLinux/configs")

cp -f $CONFIGS/bashrc ~/.bashrc
cp -f $CONFIGS/vim/vimrc ~/.vimrc 
mkdir -p ~/.vim && cp -rf $CONFIGS/vim/colors ~/.vim/
# cp -rf ./configs/TERMINAL/alacritty/ ~/.config/
# mkdir -p ~/.config/xmonad
# cp -f ./configs/WM/xmonad/xmonad.hs ~/.config/xmonad/xmonad.hs
# cp -rf ./configs/EDITOR/nvim ~/.config/
# cp -rf ./configs/TERMINAL/tmux ~/.config/

echo "  bashrc ✓" && sleep 0.3
echo "  vimrc ✓" && sleep 0.3
# echo "  alacritty ✓" && sleep 0.3
# echo "  xmonad ✓" && sleep 0.3
# echo "  neovim ✓" && sleep 0.3
# echo "  tmux ✓" && sleep 0.3


