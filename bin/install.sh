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
BIN=$(find ~ -type d -path "*/myLinux/bin")
source $BIN/set-configs.sh
source $BIN/download-packages.sh

source ~/.bashrc
echo -e "${reset}"
