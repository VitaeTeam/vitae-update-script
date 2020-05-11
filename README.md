# update-script
This script is used to quickly update nodes on vps servers.

Prerequisites
wget

sudo apt install wget

Example(installs wget and starts daemon):
sudo apt install wget && wget https://raw.githubusercontent.com/VitaeTeam/vitae-update-script/master/vitae-update.sh  && chmod 755 vitae-update.sh && sudo ./vitae-update.sh && vitaed -daemon

Warning, this script has OCD and likes to clean up after itself in an agressive manner ie. rm -rf /usr/local/bin/backup/ vitae-$ver-x86_64-linux-* is used in the script. If you have anything in your directory that you run this script in it WILL delete anything that begins with the name "vitae-$ver-x86_64-linux-*".