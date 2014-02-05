simpleBarPC
===========

Minimum setup of a pc running web browser and spotify.

Based on ubuntu server and awesome. 

## Install 
* Do a clean install of ubuntu server.
* Then execute: 
  * wget https://raw.github.com/magnuskiro/simpleBarPC/master/setup.sh && chmod 755 setup.sh && ./setup.sh

## Getting a shell running properly 
You have to kill awesome to get to a functioning terminal. 

* super + r
* killall awesome

## Sound control
* ctrl + up = increase volume
* ctrl + down = decrease volume
* ctrl + space = mute

# sound config
create a file called .asoundrc in the home folder. 
then ad: 


 defaults.ctl.card 1
 defaults.pcm.card 1
 defaults.timer.card 1

the number matches the sound card in /proc/asound/cards

