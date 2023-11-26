#!/bin/bash

echo 
echo -e '\e[31m
    __    __  __  ____  _____    
   /__\  (  )(  )(_  _)(  _  )   
  /(__)\  )(__)(   )(   )(_)(    
 (__)(__)(______) (__) (_____)   
  ____  ____  ____  ____    __   
 ( ___)(  _ \(_  _)(  _ \  /__\  
  )__)  )   / _)(_  )(_) )/(__)\ 
 (__)  (_)\_)(____)(____/(__)(__)

\e]0m'
												   
echo -e "\e[33m By Kamaldeep Bhati (@DarkLotusKDB) <3\n\e[0m"

#termux-setup-storage
apt-get update
pkg install root-repo
apt-get install -y git curl wget command-not-found sed

mkdir -p downloads

arc="arm64"

echo -e "\n\n\e[32m[+] Downloading latest Frida server\e[0m"
            
            latestBuild=$(curl --silent "https://api.github.com/repos/frida/frida/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')
            echo "Latest Frida Version: $latestBuild"
            link="https://github.com/frida/frida/releases/download/${latestBuild}/frida-server-${latestBuild}-android-${arc}.xz" 
            cd downloads
            wget "$link"
            unxz frida-server-${latestBuild}-android-${arc}.xz
            rm -rf ../frida-server &> /dev/null
            mv frida-server-${latestBuild}-android-${arc} ../frida-server
            chmod +x ../frida-server

echo -e "\n\n\e[32m[+] Configuring Frida server auto start\e[0m"
    cd
    mv .bashrc .oldbashrc &> /dev/null
    sed -i '/frida-server/d' .bashrc &> /dev/null
    sed -i '/H && sh/d' .bashrc &> /dev/null
    echo -e 'su -c "/data/data/com.termux/files/home/auto-launch-frida-server/frida-server -D &"\nsu -c "export PATH=/data/data/com.termux/files/usr/bin:$PATH && sh"' >> .bashrc
echo -e '\nDone, All Set!!'

echo
echo -e "Thank You,\nKamaldeep Bhati (@DarkLotusKDB)"
echo
echo -e "\e[31mHappy Hacking :-)\e[0m"
echo

