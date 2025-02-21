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

CONFIGS=$(find ~ -type d -path "*/myArch/configs")

cp -f $CONFIGS/bashrc ~/.bashrc
cp -f $CONFIGS/vim/vimrc ~/.vimrc 
mkdir -p ~/.vim
cp -rf $CONFIGS/vim/colors ~/.vim/
# cp -rf ./configs/TERMINAL/alacritty/ ~/.config/
# mkdir -p ~/.config/xmonad
# cp -f ./configs/WM/xmonad/xmonad.hs ~/.config/xmonad/xmonad.hs
# cp -rf ./configs/EDITOR/nvim ~/.config/
# cp -rf ./configs/TERMINAL/tmux ~/.config/

echo -e "${cyan}"
echo "  bashrc ✓" && sleep 0.3
echo "  vimrc ✓" && sleep 0.3
# echo "  alacritty ✓" && sleep 0.3
# echo "  xmonad ✓" && sleep 0.3
# echo "  neovim ✓" && sleep 0.3
# echo "  tmux ✓" && sleep 0.3
echo -e "${reset}"
#__________________________________________________________#

## Downloads _______________________________________________#
echo -e "${red} Downloading Packages ! ${reset}" && sleep 0.3 
#sudo pacman -Syy neofetch vim neovim git lsd alacritty evince tree htop tmux
#git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
#git clone --depth 1 https://github.com/wbthomason/packer.nvim\ ~/.local/share/nvim/site/pack/packer/start/packer.nvim
echo -e "${green} Done !!!!${reset}"

source ~/.bashrc
