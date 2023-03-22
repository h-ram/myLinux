
DIR="${HOME}/files/myArch_Git"
read -p $'\e[32mRepo Absolute PATH :\e[0m ' myPATH

#__________________________________________________________#
rm -rfv ~/.bashrc > logs
rm -rfv ~/.config/kitty >> logs
rm -rfv ~/.vimrc >> logs 
rm -rfv ~/.xmonad >> logs 

ln -sv ${DIR}/configs/SHELL/bash/bashrc ~/.bashrc >> logs
ln -sv ${DIR}/configs/TERMINAL/kitty ~/.config/kitty >> logs 
ln -sv ${DIR}/configs/EDITOR/vim/vimrc ~/.vimrc >> logs 
ln -sv ${DIR}/configs/WM/xmonad ~/.xmonad >> logs 

#__________________________________________________________#

echo -e $"\e[31m================= FINISHED =================\e[0m"
read -p $'\e[33mWant to read installation Logs ?\e[0m (Y/N)' yn
case $yn in 
	[yY] ) less logs;rm logs;;
	* ) rm logs;exit;;
esac
done
