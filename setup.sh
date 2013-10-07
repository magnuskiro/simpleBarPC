
# install dependencies
sudo apt-get install -y awesome git

# get files needed

# remove files not needed

# install sound

# install spotify
sudo echo "deb http://repository.spotify.com stable non-free" >> /etc/apt/sources.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59
sudo apt-get update
sudo apt-get install -y spotify-client

# install firefox / or something like that. 

# set desktop background

# create launchers for 
	## spotify	
	## firefox

# link files to correct folders. 
ln -s ~/simpleBarPC/.xinitrc ~/.xinitrc
ln -s ~/simpleBarPC/.config/awesome ~/.config/awesome
#
echo "Now you should reboot, and enjoy"
sudo adduser kiro audio
sudo adduser kiro audio
