# creating folders
mkdir ~/.config

# install dependencies
sudo apt-get install -y xorg awesome awesome-extra git alsa-utils firefox

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
sudo adduser kiro audio

# Configure Awesome and xorg  
rm ~/.xinitrc
ln -s ~/simpleBarPC/.xinitrc ~/.xinitrc
rm ~/.config/awesome
ln -s ~/simpleBarPC/.config/awesome ~/.config/awesome

# create launchers for 
	# spotify	
	# firefox

# configure auto start of x and awesome
echo "startx" >> ~/.bashrc

#
echo "Now you should reboot, and enjoy"
