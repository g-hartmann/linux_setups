sudo pacman -Syu
sudo pacman -S vim
sudo pacman -S git
sudo pacman -S cmake

ssh-keygen -b 4096
cat ~/.ssh/id_rsa.pub
echo ''
echo '*** Copy key with CTRL-SHIFT-C and add to github ***'

cd ~
echo '*** adding hartmann.gregor@outlook.com to git config ***'
git init
git config --global user.email "hartmann.gregor@outlook.com"
git config --global user.name "Gregor Hartmann"
git fetch
git reset origin/master
git submodule update --init --recursive
git restore ~/.bashrc.gitmodules
git restore ~/.vim/vimrc
git restore ~/.bashrc
git pull

cd ~/.vim/bundle/YouCompleteMe/
python3 install.py
vim +PluginInstall +qall

source ~/.bashrc
