# update-script
This script is used to quickly update nodes on vps servers.

Example:
wget https://github.com/VitaeTeam/Vitae/releases/download/github_version_tag/vitae-version_number-linux.tar.gz && tar -xzvf vitae-version_number-linux.tar.gz  && sudo ./update.sh && vitaed -arguments

Usage if:
github_version_tag = v4.4.0.3
version_number = 4.4.0.3

wget https://github.com/VitaeTeam/Vitae/releases/download/v4.4.0.3/vitae-4.4.0.3-linux.tar.gz && tar -xzvf vitae-4.4.0.3-linux.tar.gz  && sudo ./update.sh && vitaed -daemon -txindex


Warning, this script is OCD and likes to clean up after itself in an agressive manner ie. rm -rf /usr/local/bin/backup/ vitae-* is used in the script. If you have anything in your directory that you run this script it in it WILL delete anything that begins with the name "vitae-".
