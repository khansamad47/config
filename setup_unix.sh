RESTART_REQUIRED=0

sudo apt install git
sudo apt install vim
sudo apt install tmux
sudo apt install ripgrep

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
yes | ~/.fzf/install 

export FZF_BASE=~/.fzf

# cppcodegen
git clone git@bbgithub.dev.bloomberg.com:akhan323/cppcodegen.git /opt/cppcodegen
ln -s /opt/cppcodegen/driver.py /bin/cppcodegen

# when-changed
wget https://github.com/joh/when-changed/archive/master.zip -P /tmp
pip3.11 install /tmp/master.zip

# jumpdir
git clone https://github.com/khansamad47/jumpdir.git /opt/jumpdir

# Setup neo-vim configuration
git clone https://github.com/khansamad47/nvim.git ~/nvim
mv ~/nvim  ~/.config/nvim

# Git setup
git config --global core.editor "vim"
git config --global user.email "khan.samad47@gmail.com"
git config --global user.name "Samad Khan"

mkdir -vp $HOME/bin
mkdir -vp $HOME/tmp

# Memory monitoring wiget
read -p "Do you want to install conky(memory monitoring widget)? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    sudo apt install conky-all
    sudo apt-add-repository -y ppa:teejee2008/ppa
    sudo apt-get update
    sudo apt-get install conky-manager # This is a ui to configure conky
fi

echo "You may have to run source ~/.bashrc"
