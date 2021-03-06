# creating folders
mkdir ~/.config

# install spotify
sudo chmod 777 /etc/apt/sources.list
sudo echo "deb http://repository.spotify.com stable non-free" >> /etc/apt/sources.list
sudo chmod 644 /etc/apt/sources.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59
sudo apt-get update

# install dependencies
sudo apt-get install -y xorg awesome awesome-extra git alsa-utils firefox \
ubuntu-restricted-extras spotify-client mingetty

# set desktop background
# todo: create desktop background with useful info. 

# Configure sound
sudo adduser `whoami` audio

# Getting config files
git clone https://github.com/magnuskiro/simpleBarPC.git

# Configure Awesome and xorg  
rm ~/.xinitrc
ln -s ~/simpleBarPC/.xinitrc ~/.xinitrc
rm ~/.config/awesome
ln -s ~/simpleBarPC/.config/awesome ~/.config/awesome

# adding aliases that are useful. 
echo '
alias h="history"
alias l="ls -lAhoF --color --show-control-chars"
' >> ~/.bashrc

# configure auto start of x and awesome
echo '
if [ $(pidof awesome|wc -w) -eq 0 ]; then
	xinit
fi
' >> ~/.bashrc

# Cleaning up 
rm ~/setup.sh
echo "Now you should reboot, and enjoy"

