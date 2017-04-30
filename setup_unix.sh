sudo apt install git
sudo apt install vim
sudo apt install tmux

# Git setup
git config --global core.editor "vim"

# Python Stuff
sudo apt install virtualenv
sudo apt install spyder

# LaTeX editor
sudo apt install gummi

mkdir -vp $HOME/bin
mkdir -vp $HOME/tmp

# Directory for python environments
mkdir -vp $HOME/.virtualenv

# This is required so that tmux can use .bashrc
echo 'source $HOME/.bashrc' >> $HOME/.bash_profile

# Memory monitoring wiget
sudo apt install conky-all
sudo apt-add-repository -y ppa:teejee2008/ppa
sudo apt-get update
sudo apt-get install conky-manager # This is a ui to configure conky
