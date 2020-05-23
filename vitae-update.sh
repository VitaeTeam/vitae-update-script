#!/usr/bin/env bash
#Copyright (c) 2018 - 2019 The Ohmcoin developers
#Copyright (c) 2018 - 2020 The Vitae developers

#maintained and created by A. LaChasse rasalghul at ohmcoin.org

#The MIT License (MIT)

#Permission is hereby granted, free of charge, to any person obtaining a copy
#of this software and associated documentation files (the "Software"), to deal
#in the Software without restriction, including without limitation the rights
#to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#copies of the Software, and to permit persons to whom the Software is
#furnished to do so, subject to the following conditions:

#The above copyright notice and this permission notice shall be included in
#all copies or substantial portions of the Software.

#THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
#THE SOFTWARE.

#Colors
yellow='\033[1;33m'
green='\033[0;32m'
red='\033[0;31m'
nc='\033[0m'

ver="4.4.2"
url="https://github.com/VitaeTeam/Vitae/releases/download"

if [[ $EUID -ne 0 ]]; then
echo -e "${red}Please run as root or use sudo${nc}" 2>&1
exit 1
else echo -e "${yellow}Downloading Update${nc}" && \
wget $url/v$ver/vitae-$ver-x86_64-linux-gnu.tar.gz && \
echo -e "${yellow}Decompressing Update${nc}" && \
tar -xvzf vitae-$ver-x86_64-linux-gnu.tar.gz && \
echo -e "${yellow}Stopping Vitae this may take awhile${nc}" && \
vitae-cli stop && \
sleep 60 && \
echo -e "${yellow}Backing up old daemon incase of script bomb${nc}" && \
mkdir /usr/local/bin/backup && \
mv /usr/local/bin/vitaed /usr/local/bin/backup/ && \
mv /usr/local/bin/vitae-cli /usr/local/bin/backup/ && \
mv /usr/local/bin/vitae-tx /usr/local/bin/backup/ && \
echo -e "${yellow}Updating Vitae daemon files${nc}" && \
sleep 3 && \
echo -e "${yellow}Installing Vitae daemon files to /usr/local/bin${nc}" && \
sleep 3 && \
mv vitae-$ver/bin/vitaed /usr/local/bin/ && \
mv vitae-$ver/bin/vitae-cli /usr/local/bin/ && \
mv vitae-$ver/bin/vitae-tx /usr/local/bin/ && \
echo -e "${green}Vitae files updated${nc}" && \
sleep 3 && \
echo -e "${yellow}Charging laser weapons${nc}" && \
sleep 3 && \
echo -e "${yellow}Acquiring target${nc}" && \
sleep 3 && \
echo -e "${yellow}Target Aquired preparing to destroy backup files${nc}" && \
sleep 3 && \
echo  -e "${yellow}Firing all lasers${nc}" && \
sleep 3 && \
rm -rf /usr/local/bin/backup/ vitae-$ver-x86_64-linux-* vitae-$ver && \
echo -e "${yellow}Target destroyed${nc}" && \
sleep 3 && \
echo -e "${green}You may now start the Vitae daemon normally ie.${nc}" && \
sleep 3 && \
echo " " && \
echo  -e "${red}vitaed -daemon${nc}" && \
echo " " && \
sleep 3 && \
echo -e "${red}Please make sure to restart your masternode in your controller wallet to complete the upgrade process${nc}"
fi

rm $0
