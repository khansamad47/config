sudo apt install git
sudo apt install vim
sudo apt install tmux

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
