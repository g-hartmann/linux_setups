sudo apt update && sudo apt upgrade
sudo apt install vim git cmake openssh python3

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
git checkout ~/.vim/vimrc
git checkout ~/.bashrc
git pull

cd ~/.vim/bundle/YouCompleteMe/
python3 install.py
vim +PluginInstall +qall

source ~/.bashrc
