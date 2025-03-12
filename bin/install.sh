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
echo -e "${reset}"

####################################################
############### Copying Configrations ##############
####################################################

BIN=$(find ~ -type d -path "*/myLinux/bin")
source $BIN/set-configs.sh

####################################################
############### Installing packages ################
####################################################

source $BIN/download-packages.sh
source ~/.bashrc

####################################################
################## Setting up git ##################
####################################################

GIT_NAME=$(git config --global user.name)
GIT_EMAIL=$(git config --global user.email)

# Check if name and email is set
if [ -z "$GIT_NAME" ] || [ -z "$GIT_EMAIL" ]; then
    echo "! Git name and email are not set!"
    read -p "Enter your name: " NEW_NAME
    read -p "Enter your email: " NEW_EMAIL
    git config --global user.name "$NEW_NAME"
    git config --global user.email "$NEW_EMAIL"
fi

git config --global user.name NEW_NAME 
git config --global user.email NEW_EMAIL

git config --global init.defaultBranch main
git config --global core.editor "vim"
git config --global color.ui auto

git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.cm commit
git config --global alias.st status
git config --global alias.graph "log --oneline --graph --all --decorate"
git config --global alias.undo "reset --soft HEAD~1"   # Undo last commit
git config --global alias.bu "!git commit -am '[backup]' && git push origin main"   

git config --global credential.helper store  # Store Credentials (Avoid Password Prompts)

git config --global core.autocrlf input # Fix Line Ending Issues (For cross-platform development)



