CONFIGS=$(find ~ -type d -path "*/myArch/configs")

cp -f $CONFIGS/bashrc ~/.bashrc
cp -f $CONFIGS/vim/vimrc ~/.vimrc 
mkdir -p ~/.vim
cp -rf $CONFIGS/vim/colors ~/.vim/

