RESTART_REQUIRED=0

sudo apt install git
sudo apt install vim
sudo apt install tmux

# Git setup
git config --global core.editor "vim"
git config --global user.email "khan.samad47@gmail.com"
git config --global user.name "Samad Khan"

# Python Stuff
sudo apt install virtualenv
# Directory for python environments
mkdir -vp $HOME/.virtualenv
read -p "Do you want to install Sypder(Python IDE)? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    sudo apt install spyder
fi

# LaTeX editor
read -p "Do you want to install Gummi(LaTeX IDE)? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    sudo apt install gummi
fi

mkdir -vp $HOME/bin
mkdir -vp $HOME/tmp

# This is required so that tmux can use .bashrc
echo 'source $HOME/.bashrc' >> $HOME/.bash_profile

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


# Install jumpdir
read -p "Do you want to install jumpdir? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    git clone https://github.com/khansamad47/jumpdir.git
    ./jumpdir/install.sh
    rm -rf jumpdir
    $RESTART_REQUIRE=1
fi

echo "You may have to run source ~/.bashrc"
