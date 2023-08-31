red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
blue="\033[1;34m"
purple="\033[1;35m"
cyan="\033[1;36m"
reset="\033[m"

echo -e "${red}" && sleep 0.3
echo -e "=================================================" 
echo -e "================= INSTALLING ====================" 
echo -e "================================================="
# Configurations __________________________________________#

cp ./configs/SHELL/bash/bashrc ~/.bashrc
cp ./configs/EDITOR/vim/vimrc ~/.vimrc 
mkdir -p ~/.vim
cp -r ./configs/EDITOR/vim/colors ~/.vim/colors
mkdir -p ~/.config/alacritty/
cp ./configs/TERMINAL/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
mkdir -p ~/.config/xmonad
cp ./configs/WM/xmonad/xmonad.hs ~/.config/xmonad/xmonad.hs
mkdir -p ~/.config/nvim
cp -r ./configs/EDITOR/nvim ~/.config/nvim

echo -e "${cyan}"
echo "  bashrc ✓" && sleep 0.3
echo "  vimrc ✓" && sleep 0.3
echo "  alacritty ✓" && sleep 0.3
echo "  xmonad ✓" && sleep 0.3
echo "  neovim ✓" && sleep 0.3
echo -e "${reset}"
#__________________________________________________________#

## Downloads _______________________________________________#
echo -e "${red} Downloading Packages ! ${reset}" && sleep 0.3 
#sudo pacman -Syy neofetch vim neovim git lsd alacritty evince tree htop 


echo -e "${green} Done !!!!${reset}"
