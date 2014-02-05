# creating folders
mkdir ~/.config

# install dependencies
# TODO move install after spotify configuration.
sudo apt-get install -y xorg awesome awesome-extra git alsa-utils firefox \
ubuntu-restrcted-extras

# install spotify
sudo chmod 777 /etc/apt/sources.list
sudo echo "deb http://repository.spotify.com stable non-free" >> /etc/apt/sources.list
sudo chmod 644 /etc/apt/sources.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59
sudo apt-get update
sudo apt-get install -y spotify-client

# set desktop background
# todo: create desktop background with useful info. 

# Configure sound
# todo get the current user
sudo adduser <current user> audio

# Configure Awesome and xorg  
rm ~/.xinitrc
ln -s ~/simpleBarPC/.xinitrc ~/.xinitrc
rm ~/.config/awesome
ln -s ~/simpleBarPC/.config/awesome ~/.config/awesome

# configure auto start of x and awesome
echo '
if [ $(pidof awesome|wc -w) -eq 0 ]; then
	xinit
fi
' >> ~/.bashrc

# Cleaning up 
rm ~/setup.sh
echo "Now you should reboot, and enjoy"

