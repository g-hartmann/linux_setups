sudo apt update && sudo apt upgrade
sudo apt install vim
sudo apt install git
sudo apt install cmake
sudo apt install openssh

if [ ! -f $HOME/.ssh/id_rsa ]; then
	ssh-keygen -b 4096
fi
cat ~/.ssh/id_rsa.pub
echo ''
echo '*** Copy key with CTRL-SHIFT-C and add to github ***'

cd ~
echo '*** adding hartmann.gregor@outlook.com to git config ***'
git init
git config --global user.email "hartmann.gregor@outlook.com"
git config --global user.name "Gregor Hartmann"
git remote add origin https://github.com/g-hartmann/dotfiles.git
git fetch
git reset origin/master
git submodule update --init --recursive
# git restore ~/.gitmodules
git restore ~/.vim/vimrc
git restore ~/.bashrc
git pull

cd ~/.vim/bundle/YouCompleteMe/
python3 install.py
vim +PluginInstall +qall

source ~/.bashrc
